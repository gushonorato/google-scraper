module GoogleScraper

  class SearchResultParseError < StandardError ; end

  class << self
    attr_accessor :max_page_number

    def configure
      yield self
    end
  end

end

GoogleScraper.configure do |config|
  config.max_page_number = 10
end

require 'capybara'

require 'google_scraper/driver'
require 'google_scraper/engine'
require 'google_scraper/search_result'