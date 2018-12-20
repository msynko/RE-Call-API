require 'httparty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')

toronto_wards_json = JSON.parse(toronto_wards_response.body)

#1 Iterate through your new hash and display the name of each ward in the collection.

 toronto_wards_json.each do|ward|
  # puts ward["name"]
end

#2 Pick another URL ("endpoint") from this API and use the same steps as above to make a request to that endpoint and convert the response into a Ruby hash.

candidates = HTTParty.get('https://represent.opennorth.ca/candidates')
candidates_json = JSON.parse(candidates.body)

candidates_json['objects'].each do|candidate|
 puts candidate["first_name"]["last_name"]
end
