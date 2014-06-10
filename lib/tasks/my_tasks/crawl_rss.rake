require 'open-uri'
require "rss"
require "pry"

def save_post attributes
  Article.create(attributes)
end

def parse_rss_item(item, feed)

  title = "#{item.css("title").inner_text}"
  description = "#{item.css("description").inner_text}"
  link = "#{item.css("link").inner_text}"

  attributes = {:title => title, :content => description, :url => link, :feed => feed}

  save_post attributes
end

def parse_atom_entry(entry, feed)
  title = "#{entry.css("title").inner_text}"
  description = "#{entry.css("summary").inner_text}"
  link = "#{entry.css("link").attribute("href")}"

  attributes = {:title => title, :content => description, :url => link, :feed => feed}

  save_post attributes

end

def parse_feed(feed)
  open(feed.url) do |rss|
    xml_doc = Nokogiri::XML(rss)
    if xml_doc.css("channel").present? #rss
      xml_doc.css("channel item").each{ |item| parse_rss_item(item, feed) }
    elsif xml_doc.css("feed") #atom
      xml_doc.css("feed entry").each{ |entry| parse_atom_entry(entry, feed) }
    end
  end
end

namespace :crawl do
  desc "Will crawl all feeds in DB"
  task :feeds => :environment do
    puts Feed.all.count
    Feed.all.each do |feed|
      puts "#{feed.title} (#{feed.url})"
      puts "-" * 50
      parse_feed feed
    end
  end
end

