require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

case ENV["BROWSER"]
when "chrome"
    @drive = :selenium_chrome
when "headless"
    @drive = :selenium_chrome_headless
else
    puts "Invalid Browser"
end

Capybara.configure do |config|
    config.default_driver = @drive
    config.app_host = CONFIG["url"]
    config.default_max_wait_time = 5
end