require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist

Capybara.run_server = false
Capybara.app_host = 'http://www.google.com'

