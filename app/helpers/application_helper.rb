module ApplicationHelper
  def gravatar_image email
    hash_email = Digest::MD5.hexdigest(email.downcase)
    image_tag "http://www.gravatar.com/avatar/#{hash_email}", width: 200 
  end
end

# { style: "border-radius: 50%; margin-top: 30px;" }