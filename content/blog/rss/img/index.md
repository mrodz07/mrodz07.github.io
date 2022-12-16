---
title: "Qué es RSS y cómo usarlo"
date: 2021-05-06T23:18:23-05:00
draft: false
tags:
  - tecnología
  - rss
categories:
  - tutorial
toc: false

---

### Qué significa RSS

RSS (por sus siglas en inglés: "Really Simple Syndication") es un formato, basado en XML, hecho para difundir información actualizada por Internet. La primera especificación se desarrolló en la década de los noventas y la última data a principios del dos mil; aunque es un formato "viejo" sigue siendo de los más útiles y poco valorados por los internautas actuales.

### Por qué usar RSS

En el Internet de hoy en día nos es necesario otorgar información personal a desarrolladores, compañías y otras entidades para poder mantenernos al tanto de las novedades en el contenido que nos interesa: para poder recibir noticias nuevas de un periódico debes suscribirte con tu correo electrónico, para obtener nuevas de canales en Youtube necesitas hacer una cuenta, etc. Al tener esta información disponible la mayoría de páginas la usan para fastidiarnos con spam, tratando de que entremos a sus sitios para enterarnos de las novedades o en el caso de las redes sociales la usarán para hacernos dependientes a sus servicios, lo cual es peor.

Nosotros podemos obtener actualizaciones de nuestros sitios favoritos sin acceder a ellos, evitando ser bombardeados con publicidad, recomendaciones, vídeos y demás, con ayuda de RSS. Saltando así el intermediario y accediendo a los datos que realmente nos importan, sin distracción alguna, de una manera conveniente y sencilla. Además de poder conservar la información en nuestra computadora si así lo deseamos.

### Cómo usar RSS

Para comenzar a usar RSS necesitamos un lector RSS, este es un programa que desplegará los contenidos del "feed" RSS. Este "feed" es un archivo que se encuentra en un servidor remoto, en el cual se colocará nueva información a lo largo del tiempo.

Si usas linux y quieres un lector para tu interfaz gráfica recomiendo descargar [newsflash](https://gitlab.com/news-flash/news_flash_gtk), si prefieres usar la terminal recomiendo [newsboat](https://newsboat.org/). Para otras plataformas recomendaría [QuiteRSS](https://quiterss.org/), por ser gratis y tener la licencia GPL. 

Después de haber instalado el lector solo se requiere agregar los feeds remotos a la aplicación, los cuales son URLS que apuntan al archivo RSS.

### Obteniendo feeds

- Para obtener feeds de sitios tipo blog podemos intentar escribir en la URL base del blog "/rss" o buscar el símbolo de RSS en la página y copiar el link que nos da.
- Para páginas como youtube y twitter puedes usar "clientes alternos" para obtener feeds, como [Invidious](https://github.com/iv-org/invidious) y [Nitter](https://github.com/zedeus/nitter), aunque en el caso de youtube hay un [método oficial](https://www.crstin.com/es/youtube-rss/) para hacerlo desde la página original.

{{<figure src="icono_rss.svg" title="El logo de RSS" alt="Logotipo del protocolo">}}

Ahora que sabes como usar RSS utilízalo para consumir contenido por internet y asegúrate de contárselo a tus amigos sobre el formato. Si aún no sabes a quien seguir agrega mi feed.
