require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  # URL ="https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    # we use the JSON library to parse the API response into nicely formatted JSON
      people = JSON.parse(self.get_response_body)
      people
    end

end