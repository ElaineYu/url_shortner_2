# require 'uri'
class Url < ActiveRecord::Base
  #Setup validation
    # any non-empty string
          # any non-empty string that starts with "http://" or "https://"
          # any string that Ruby URI module says is valid
          #url =~ /^#{URI::regexp}$/
          # any IRL-looking thing which responds to an HTTP request


  # validates_format_of :website, :with => URI::regexp(%w(http https))
          

  # Use before_save callback in the url
    # Callbacks allow you to trigger logic before or after
    # an alteration of an object's state
  before_save :create_url

  def self.create_url
    
    shortened_url = "http://itybity/" + (rand.to_s[2..11].to_i).to_s(36)
    
    #five_short_urls_array = 5.times.collect {short_url}

  end
end
