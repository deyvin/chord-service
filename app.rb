require 'rubygems'
require 'sinatra'
require 'net/http'
require 'uri'
require 'nokogiri'
require 'json'
require './lib/cifra-club'
require './lib/utils/extend_string'

get '/' do
  erb :index
end

get '/musicas' do
  cifra = CifraClub.new
  cifra.list_of_songs_by(params[:artista]).to_json
end

get "/artistas" do
  cifra = CifraClub.new
  cifra.list_artists_by_letter(params[:letra]).to_json
end