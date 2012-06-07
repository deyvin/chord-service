require File.dirname(__FILE__) + '/../lib/cifra-club.rb'
require File.dirname(__FILE__) + '/spec_helper.rb'

describe CifraClub do
  before(:each) do
    @cifra = CifraClub.new
    @artista = @cifra.list_of_songs_by("engenheiros do hawaii").first
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
  
  it "deveria retornar as cifras a partir de uma url" do
    @cifra.get_chord_by_uri(@artista[:uri]).should_not == nil
  end
  
  it "deveria retonar um array com as cifras" do
    @cifra.get_chord_by_uri(@artista[:uri]).length.should > 0
  end
  
  it "deveria retonar a letra da musica e a cifra" do
    @cifra.get_song_and_chord_by_uri(@artista[:uri]).should_not == nil
  end
  
  it "deveria retornar artista, musica e cifra" do
    @cifra.get_song_and_chord_by_uri(@artista[:uri]).should include(:artist, :song, :chord)
  end
end