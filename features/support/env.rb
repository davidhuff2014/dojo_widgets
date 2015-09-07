$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib'))

require 'rspec'
require 'dojo_widgets'
require 'page-object'
require 'watir-webdriver'

World(PageObject::PageFactory)

Before do
  @browser = Watir::Browser.new :firefox
end

After do
  @browser.close
end