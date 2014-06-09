require 'open-uri'
require "rss"
require "pry"

def save_post attributes
  Article.create(attributes)
    # feed
    # title
    # content
    # image

end

def parse_rss_item item
  rss_title = "rss item title -> #{item.css("title").inner_text}"
  rss_description "rss item description -> #{item.css("description").inner_text}"
  rss_link "rss item link -> #{item.css("link").inner_text}"
end


def parse_atom_entry entry
  atom_title = "atom entry title -> #{entry.css("title").inner_text}"
  atom_description = "atom entry summary -> #{entry.css("summary").inner_text}"
  atom_link = "rss entry link -> #{entry.css("link").inner_text}"
end

def parse_feed feed_url
  open(feed_url) do |rss|
    xml_doc = Nokogiri::XML(rss)
    if xml_doc.css("channel").present? #rss
      xml_doc.css("channel item").each{ |item| parse_rss_item(item) }
    elsif xml_doc.css("feed") #atom
      xml_doc.css("feed entry").each{ |entry| parse_atom_entry(entry) }
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
      parse_feed feed.url
    end
  end
end

