# net/http library

require 'net/http'
uri = URI('https://ruby-doc.org')
p uri.host
p uri.port
http_request = Net::HTTP.new(uri.host, uri.port)
http_request.use_ssl = true
p http_request
response = http_request.get('/')
puts response.body.force_encoding('ISO-8859-1')

# using installed gems
require 'chronic'
puts Chronic.parse('may 2023')