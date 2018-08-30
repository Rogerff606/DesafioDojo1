require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

#Configurando o driver Capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#setando a configuracao do driver como padrao
Capybara.default_driver = :selenium

#timeout padrao na execucao
Capybara.default_max_wait_time = 15 
      
Capybara.page.driver.browser.manage.window.maximize