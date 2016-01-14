module GoogleScraper
  class SearchResult

    attr_reader :title, :meta_description, :url, :friendly_url, :keyword, :rank, :page_position, :page_number

    def initialize(result, keyword, rank, page_position, page_number)
      @keyword = keyword
      @rank = rank
      @page_position = page_position
      @page_number = page_number

      @search_result = search_result_flag(result)

      begin
        if @search_result
          build_title(result)
          build_meta_description(result)
          build_url(result)
          build_friendly_url(result)
        end
      rescue => e
        raise SearchResultParseError, "Error parsing result #{@rank} of page number #{@page_number} for keyword '#{@keyword}', reason: #{e.message}"
      end
    end

    def search_result?
      @search_result
    end

  private

    def search_result_flag(result)
      result.has_selector?('h3.r')
    end

    def build_title(result)
      @title = result.find('h3.r').text
    end

    def build_meta_description(result)
      node = result.first('.s .st')
      @meta_description = (node) ? node.text : nil
    end

    def build_url(result)
      @url = result.find('h3.r a')[:href].inspect
    end

    def build_friendly_url(result)
      @friendly_url = result.find('.s .kv').text
    end
  end
end