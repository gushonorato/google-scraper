Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome

Capybara.run_server = false
Capybara.app_host = 'http://www.google.com'