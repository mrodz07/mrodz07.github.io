---
title: "Guía básica de torrent"
date: 2021-10-29T23:18:23-05:00
draft: false
tags:
  - torrent
  - tecnología
categories:
  - tutorial
toc: false

---
Conversando con mis amigos me percaté que cada vez es más raro encontrar personas que conozcan sobre torrent. Tal vez hayan escuchado el nombre o incluso descargado un archivo con su ayuda, pero finalmente desconocen los puntos clave de la tecnología, lo cual puede resultar hasta peligroso en algunos casos. Por esto me he decidido a escribir una guía básica sobre torrent, para que más personas puedan usarlo con tranquilidad, conociendo lo que hacen y a lo que se exponen.

### Qué es torrent

Torrent (mejor dicho [BitTorrent](https://es.wikipedia.org/wiki/BitTorrent)) es un protocolo de transmisión de archivos. Su principal diferenciador y atractivo es su tecnología [P2P](https://es.wikipedia.org/wiki/P2P) (algo así como usuario a usuario) que lo hace descentralizado y resiliente a cambios. Esto lo hace diametralmente distinto a los protocolos que usamos regularmente al bajar archivos de sitios como Google drive o Dropbox.

### Funcionamiento general

Al transmitir archivos con torrent el usuario no descarga de un servidor central, más bien, se conecta a un grupo de usuarios (llamado swarm en inglés) que le comparten el archivo.
  
Es posible conectarse al swarm de varias maneras, la más conocida es mediante un servidor que conoce a los usuarios dentro del swarm y coordina sus comunicaciones (los llamados [trackers](http://wiki.bitcomet.com/peers_seeds_torrent_tracker_dht_peer_exchange_pex_magnet_links#tracker)), aunque es posible que los miembros del swarm se comuniquen entre ellos ([PEX](http://wiki.bitcomet.com/peers_seeds_torrent_tracker_dht_peer_exchange_pex_magnet_links#peer_exchange_pex)) y compartan una lista de los usuarios dentro del swarm a miembros nuevos ([DHT](http://wiki.bitcomet.com/peers_seeds_torrent_tracker_dht_peer_exchange_pex_magnet_links#dht)), haciendo que el tracker solo apunte a uno de ellos para establecer una conexión, no obstante hay torrents sin trackers que solo usan las dos previas tecnologías y la dirección de un miembro para conectarse al swarm.

Los miembros del swarm pueden tener uno de dos roles: pueden ser "leeches" que descargan el archivo y comparten lo que tienen almacenado a otros o "seeds" que ya han descargado el archivo completo y solo lo comparten. Para comenzar una descarga es necesario que haya al menos un seed y entre más estén en el swarm mejor será la velocidad de transmisión, por lo que al finalizar una descarga es recomendado quedarse dentro del swarm como seed. Aunque puedes desconectarte del swarm en cualquier momento que quieras y volver a conectarte a compartir como seed o descargar como leech. 

### Uso de torrent

Para comenzar a usar el protocolo lo primero que debemos hacer es descargar un cliente de torrent, este es un programa que nos ayudará a comunicarnos por medio del protocolo y gestionará los archivos descargados. Recomiendo usar [Transmission](https://transmissionbt.com/), disponible para Linux, Windows y Mac. Lo considero el mejor por su licencia, simpleza y compatibilidad, aunque puedes usar cualquier otro cliente como [Deluge](https://deluge-torrent.org/) o [Qbittorrent](https://www.qbittorrent.org/).

{{<figure src="transmission_mac.png" title="Transmission ejecutandose en MacOS" alt="Cliente transmission en una Mac">}}

El siguiente paso es conectarnos a un swarm donde se encuentren compartiendo el archivo que queremos. Para establecer conexión con el swarm tenemos que descargar un archivo con terminación .torrent, este contendrá información para consultar a un tracker (o miembro del swarm) y unirnos al swarm, también podemos usar un magnet link que cumplira con la misma función. Para comenzar a descargar necesitamos abrir el archivo .torrent con nuestro cliente o ingresar el magnet link en este. Hay varias maneras de encontrar archivos .torrent o magnet links, yo recomiendo el buscador de [Snowfl](https://snowfl.com/) para hallarlos.

{{<figure src="add_torrent_file.gif" title="Usando .torrent" alt="Añadiendo torrent por medio de un archivo .torrent al cliente">}}

### Precauciones

- No es un secreto que la mayoría de archivos compartidos en los swarms están protegidos por derechos de autor, dependiendo del país donde te encuentres descargar estos archivos puede meterte en problemas, antes de comenzar a descargar cualquier archivo de este tipo entérate de las leyes con respecto al copyright de tu país.
- La naturaleza de este protocolo hace pública tu [direccion IP](https://es.wikipedia.org/wiki/Direcci%C3%B3n_IP) a todos los miembros del swarm, si quieres que esta sea privada a ellos usa una [VPN](https://es.wikipedia.org/wiki/Red_privada_virtual) o un [proxy](https://es.wikipedia.org/wiki/Servidor_proxy) al usar torrent (una VPN puede usarse para evitar las leyes de copyright de tu país, pero ese es otro tema).
- Procura verificar la terminación y el contenido de los torrents que estés descargando, si sospechas de un torrent no lo descargues.

{{<figure src="inspect_torrent.gif" title="Inspeccionando los contenidos de un torrent en transmision" alt="Siempre revisa los contenidos de los torrents antes de descargarlos">}}

Eso sería todo, ahora sabes lo necesario para comenzar a usar torrent. Diviértete torrenteando y no olvides permanecer en el swarm como seed, es muy importante.
