require: ‘selenium-webdriver’

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.webpagetest.org"

element = driver.find_element(:name, 'q')
element.send_keys "Selenium Tutorials"
element.submit

