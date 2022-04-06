class Nasa
    include HTTParty

    base_uri 'https://api.nasa.gov/planetary/apod'
    
    def self.all
      get('/?api_key=UuMe1hCSuMWgVgafyKOLnAs45Dwp2XfnceNmq3ma&count=5')
    end

    def self.search(value)
      get("?api_key=UuMe1hCSuMWgVgafyKOLnAs45Dwp2XfnceNmq3ma&date=#{value}")
    end

    def self.default
      get('/?api_key=UuMe1hCSuMWgVgafyKOLnAs45Dwp2XfnceNmq3ma&date&concept_tags=True')
    end
end
   
# pp Nasa.all
# pp Nasa.search('2020-01-01'