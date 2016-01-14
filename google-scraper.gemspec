
Gem::Specification.new do |s|
  s.name        = 'google-scraper'
  s.version     = '0.0.1'
  s.date        = '2016-01-13'
  s.summary     = "A Google Search Results Page Scraper written in Ruby"
  s.description = "A Google Search Results Page Scraper written in Ruby"
  s.authors     = ["Gustavo Honorato"]
  s.email       = 'gustavohonorato@gmail.com'
  s.files = Dir.glob("{lib,spec}/**/*") + %w(README.md LICENSE)
  s.require_paths = ["lib"]
  s.homepage    = 'https://github.com/ghonorato/google-scraper'
  s.license       = 'MIT'

  s.add_runtime_dependency 'capybara'
  s.add_runtime_dependency 'poltergeist'
  s.add_development_dependency 'selenium-webdriver'

end