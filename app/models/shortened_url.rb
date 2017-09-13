class ShortenedUrl < ActiveRecord::Base

  # model is dealing with the generation of a url
  include ActionDispatch::Routing::UrlFor

  UNIQUE_KEY_LENGTH = 5
  
  # generate a shortened link from a url
 
  def self.generate(orig_url)
    # generate a unique key for the link
    begin
      # has about 50 million possible combinations
      unique_key = self.generate_random_string(UNIQUE_KEY_LENGTH)
    end while ShortenedUrl.find_by_unique_key unique_key

    # create the shortened link, storing it
    shortenedUrl = ShortenedUrl.create(:url => orig_url, :unique_key => unique_key)
  end
 
  # generate a random string
  def self.generate_random_string(size = 6)
  	
    # not doing uppercase as url is case insensitive
    charset = ('a'..'z').to_a + (0..9).to_a
    (0...size).map{ charset.to_a[rand(charset.size)] }.join
  end
end
