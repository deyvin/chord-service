# Chord service

## A idéia
A idéia inicial do projeto é criar um rest service que recupere dados de um site de cifras para depois integrar com um aplicativo móvel.

## Como Funciona?
Usei para este aplicativo o Sinatra, para rodar a aplicação basta digitar o comando
<br><code>user@server:~$ ruby -rubygems app.rb</code>

Para recuperar a listagem de um certo artista, digite no navegador:
<br><code>http://0.0.0.0:4567/musicas?artista=nirvana</code>

Para recuperar a listagem de artista que inicie com uma determinada letra, digite no navegador:
<br><code>http://0.0.0.0:4567/artistas?letra=a</code>

## Participe
Projeto totalmente aberto a colaboradores, mas não se esqueçam dos testes:
<br><code>user@server:~/chord-service/spec $ rspec cifra_spec.rb</code>

## Autor
<b>Deyvid Nascimento aka Deyvin</b>
Pseudo-músico arrumando um jeito de divertir as 
pessoas com um violão e um iPhone ;)