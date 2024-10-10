require 'httparty'
require 'json'

Dado("que realize uma request na API de estabelecimentos") do
  @response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT')
  @json_response = JSON.parse(@response.body)
end

Então("deve encontrar a chave {string} no JSON retornado") do |key|
  expect(@json_response).to have_key(key)
end

Então("printar o tipo de estabelecimento") do
  establishments = @json_response['typeOfEstablishment']
  random_establishment = establishments.sample
  puts "Tipo de Estabelecimento Aleatório: #{random_establishment}"
end