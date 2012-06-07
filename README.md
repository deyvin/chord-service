# Chord service

## A idéia
A idéia inicial do projeto é criar um serviço que recupere dados de um site de cifras para depois integrar com um aplicativo mobile.

## Como Funciona?
Para rodar a aplicação basta digitar o comando
<br><code>user@server:~/chord-service $ ruby -rubygems app.rb</code>

Para recuperar a listagem de um certo artista
<br><code>http://0.0.0.0:4567/musicas?artista=garotos+podres</code>
<br><b>Retorno</b>
<br><pre>
[
	{
		song: "A Internacional",
		uri: "/garotos-podres/a-internacional/"
	},
	{
		song: "Agente Secreto",
		uri: "/garotos-podres/agente-secreto/"
	},
	{
		song: "Ainda Vamo Tocar Bossa-Nova",
		uri: "/garotos-podres/ainda-vamo-tocar-bossa-nova/"
	},
	{
		song: "Anarquia Oi!!",
		uri: "/garotos-podres/anarquia-oi/"
	},
	{
		song: "Anistia",
		uri: "/garotos-podres/anistia/"
	}
]
</pre>

Para recuperar a listagem de artista que inicie com uma determinada letra
<br><code>http://0.0.0.0:4567/artistas?letra=z</code>
<br><b>Retorno</b>
<br><pre>
[
	{
		name: "The Zambonis",
		uri: "/the-zambonis/"
	},
	{
		name: "The Zeest",
		uri: "/the-zeest/"
	},
	{
		name: "The Zico Chain",
		uri: "/the-zico-chain/"
	},
	{
		name: "The Zigners",
		uri: "/the-zigners/"
	},
	{
		name: "The Zolas",
		uri: "/the-zolas/"
	},
	{
		name: "The Zombies",
		uri: "/the-zombies/"
	},
	{
		name: "The Zorden",
		uri: "/the-zorden/"
	},
	{
		name: "The Zutons",
		uri: "/the-zutons/"
	},
	{
		name: "Z.D.S",
		uri: "/zds/"
	},
	{
		name: "Za-M 45",
		uri: "/za-45/"
	},
	{
		name: "Zabili Mi Zolwia",
		uri: "/zabili-mi-zolwia/"
	}
]
</pre>

Para recuperar somente as cifras da música (para uma rápida consulta)
<br><code>http://0.0.0.0:4567/cifras?uri=/nirvana/about-girl/</code>
<br><b>Retorno</b>
<pre>
[
	"Em",
	"G",
	"Em",
	"G",
	"Em",
	"G",
	"Em",
	"G",
	"Em",
	"G",
	"Em",
	"G",
	"Em",
	"G",
	"Em",
	"G",
	"Em",
	"G",
	"C#5",
	"G#5",
	"F#5",
	"C#5",
	"G#5",
	"F#5",
	"E5",
	"A5",
	"C5"
]
</pre>

Para recuperar a cifra completa de uma determinada música
<br><code>http://0.0.0.0:4567/cifra?uri=/nirvana/about-girl/</code>
<br><b>Retorno</b>
<pre>
{
	artist: "Nirvana",
	song: "About a Girl",
	chord: "Intro 8x: Em G
			Primeira Parte:
			Em G Em G
			I need an easy friend
			 Em G Em G
			I do... with an ear to lend
			 Em G Em G
			I do... think you fit this shoe
			 Em G Em G
			I do... won't you have a clue.

			Segunda Parte:
			C#5 G#5 F#5
			 I'll take advantage while
			C#5 G#5 F#5
			You hang me out to dry
			 E5 A5 C5
			But I can't see you every night
			 Em G
			Free.

			( Em G ) (2x) ( Em G ) (2x)
			 I do...

			Primeira Parte: (com variação na letra)
			Em G Em G
			I'm standing in your line
			 Em G Em G
			I do... hope you have the time
			 Em G Em G
			I do... pick a number two
			 Em G Em G
			I do... keep a date with you.

			Segunda Parte:
			C#5 G#5 F#5
			 I'll take advantage while
			C#5 G#5 F#5
			You hang me out to dry
			 E5 A5 C5
			But I can't see you every night
			 Em G
			Free.

			( Em G ) (2x) ( Em G )(2x)
			 I do...

			Solo:
			E|-------------------------------------|
			B|-------------------------------------|
			G|---------7/9---9------12----12-------|
			D|-----5-7-7/9-9---9/12----12----------|
			A|-5h7---------------------------------|
			E|-------------------------------------|


			Frase (opção):

			E|-------------------------------------|
			B|-------------------------------------|
			G|---------7/9---9------12----12-------|
			D|-----5h7-7/9-9---9/12----12----------|
			A|-5h7---------------------------------|
			E|-------------------------------------|


			Intro 8x: Em G

			Primeira Parte:
			Em G Em G
			I need an easy friend
			 Em G Em G
			I do... with an ear to lend
			 Em G Em G
			I do... think you fit this shoe
			 Em G Em G
			I do... won't you have a clue.

			Segunda Parte:
			C#5 G#5 F#5
			 I'll take advantage while
			C#5 G#5 F#5
			You hang me out to dry
			 E5 A5 C5
			But I can't see you every night
			 Em G
			Free.

			Intro 8x: Em G

			I need an easy friend
			I do... with an ear to lend
			I do... think you fit this shoe
			I do... won't you have a clue.

			C#5 G#5 F#5
			 I'll take advantage while
			C#5 G#5 F#5
			You hang me out to dry
			 E5 A5 C5
			But I can't see you every night

			( Em G )(2x)

			 Em G Em G
			 I do... (4x)"
}
</pre>

<p><b>IMPORTANTE!</b> Todos os exemplos citados a cima foram resumidos, os resultados costumam ser bem maiores</p>

## Live Demonstration
~> http://deyvin-chord-server.herokuapp.com/
<br>~> http://deyvin-chord-server.herokuapp.com/musicas?artista=garotos+podres
<br>~> http://deyvin-chord-server.herokuapp.com/artistas?letra=z
<br>~> http://deyvin-chord-server.herokuapp.com/cifras?uri=/nirvana/about-girl/
<br>~> http://deyvin-chord-server.herokuapp.com/cifra?uri=/nirvana/about-girl/

## GitHub Page
~> http://deyvin.github.com/chord-service/

## Participe
Projeto totalmente aberto a colaboradores, mas não se esqueçam dos testes:
<br><code>user@server:~/chord-service $ rspec</code>

## Autor
<b>Deyvid Nascimento aka Deyvin</b>
<br>Pseudo-músico arrumando um jeito de divertir as 
<br>pessoas com um violão e um iPhone ;)