class SelectCities
  def self.get_cities
    response = RestClient.get('http://localhost:3000/cities',)
    JSON.parse(response)
  end
end
