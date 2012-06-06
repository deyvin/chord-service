class CifraClub
	def initialize
		@@http = Net::HTTP.new('www.cifraclub.com.br')
	end

  def list_artists_by_letter(letter)

		  doc       = nokogiri("/cifras/letra_#{letter}.htm")
		  artists   = []
		
		  doc.css("ul.lis1 li a").each do |a|
			  artists << {name: a.content.trash_remove, uri: a["href"]}
		  end		
		  artists
	end

	def list_of_songs_by(artist)
		  doc     = nokogiri("/#{artist.urlize}/")
  		songs   = []
		
  		doc.css("a.ac_ol_a").each do |a|
  			songs << {song: a.content, uri: a["href"]}
  		end
  		songs
	end
	
	private
	  def nokogiri(url)
	      resp = @@http.get2(url)
  		  Nokogiri::HTML(resp.body)
	  end
end
