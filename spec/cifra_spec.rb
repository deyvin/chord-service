require './../lib/cifra-club.rb'
require 'dependencies'

describe CifraClub do
  before(:each) do
    @cifra = CifraClub.new
  end
  
  it "deveria retornar artistas com a letra ''A''" do
    @cifra.list_artists_by_letter("a").length.should > 0 
  end
  
  it "deveria retornar um hash com os campos artista, url" do
    @cifra.list_artists_by_letter("z").first.should include(:name, :uri) 
  end
  
  it "deveria listar musicas de uma certa banda" do
    @cifra.list_of_songs_by("engenheiros do hawaii").length.should > 0
  end
  
  it "deveria retornar um hash com os campos musica, uri" do
    @cifra.list_of_songs_by("engenheiros do hawaii").first.should include(:song, :uri)
  end
end