module GoogleScraper
  class Engine

    include Capybara::DSL

    attr_reader :search_results

    def query(keyword)
      visit "/search?q=#{URI.escape(keyword)}&noj=1"
      build_results_for(keyword)
      @search_results
    end

    def build_results_for(keyword)
      @search_results = []

      rank = 0
      GoogleScraper.max_page_number.times do |page_number|
        all('#search .g').each_with_index do |result, page_pos|
          rank += 1
          @search_results << SearchResult.new(result, keyword, rank, page_pos+1, page_number+1)
        end
        next_page_link.click
      end
    end

  private
    def next_page_link
      find('#pnnext')
    end
  end
end