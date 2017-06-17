require 'rubygems'
require 'Selenium-Webdriver'

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.webpagetest.org"

element = driver.find_element(id:'url')
element.clear

element.send_keys "google.com"
element.submit


for i in (0..@xml_urls.length-1)
     @xml_url = @xml_urls[i]
uri = URI.parse(URI.encode(@xml_url))
response = Net::HTTP.get(URI(https://www.webpagetest.org/))#Send web page test request
parsed_res = Crack::XML.parse(response)#Parse web page test response
status = parsed_res["response"]["statusCode"]# Assigns the HTTP code to status
puts "status: " + status

     until (status.to_i == 200) do
puts "Status Code on getting xmlResult is: #{status.to_s}" #Todo fix this with a hash map
puts "Sleeping #{@waitForXMLResult.to_s}..."
sleep @waitForXMLResult.to_i#Waiting for 10 seconds

uri = URI.parse(URI.encode(@xml_url))
response = Net::HTTP.get(URI(https://www.webpagetest.org/))#Sending the web page test request again
parsed_res = Crack::XML.parse(response)#Parse web page test response
status = parsed_res["response"]["statusCode"]# Assigns the HTTP code to status
    end
end
