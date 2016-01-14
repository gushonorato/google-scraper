# Google Scraper

Google Scraper returns all Google Search results in a object oriented fashion. It wraps the boilerplate logic by parsing HTML from Google Search Results Page. All results are obtained directly from Google's SERP and not from deprecated Google Web Search API.

## Installing

Add the line in your gemfile. Version 0.0.1 is not released yet, you have to add a reference to this Github until the release. 

```ruby
gem 'google-scraper', github: 'ghonorato/google-scraper'
```

Because Google Scraper uses [Capybara](https://github.com/jnicklas/capybara) and [Poltergeist](https://github.com/teampoltergeist/poltergeist) for scraping, you must have [PhantonJS](http://phantomjs.org/) installed on your system. 

## Simple example

```ruby
#!/usr/bin/env ruby

require 'google-scraper'

engine = GoogleScraper::Engine.new
results = engine.query(ARGV[0])

results.each do |r| 
  puts "#{r.rank} (Position #{r.page_position} for page #{r.page_number})"
  puts r.title
  puts "-> #{r.url}"
  puts r.friendly_url
  puts r.meta_description
  puts ""
end

```

# Future

- Add tests
- Improve this README
