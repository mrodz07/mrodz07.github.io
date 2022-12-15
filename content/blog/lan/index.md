---
title: "Configura tu red de casa"
date: 2022-02-05T23:18:23-05:00
draft: false
tags:
  - tecnología
  - redes
categories:
  - tutorial
toc: false

---
Cada vez es más común ver a personas conectándose a cualquier red Internet sin pensar en la seguridad de estas y de sus datos; hace no mucho tiempo yo era uno de estos, aprovechando en cada oportunidad las redes gratuitas, pero después de informarme sobre los [posibles riesgos](https://www.osi.es/es/wifi-publica) que conlleva conectarse a redes abiertas decidí dejar de hacerlo. Aunque muchas veces no necesitamos conectarnos a otra red más que la de nuestra casa para encontrarnos con problemas de seguridad y privacidad que pueden llegar a ser muy graves. Por esta razón me he decidido a escribir esta guía, para que puedas tener una red local más privada y segura, además de esclarecer algunos conceptos sencillos sobre redes.

### Qué es una red y la red de casa

Aunque parezca trivial es pertinente explicar que al hablar de una red nos referimos a un conjunto de computadoras interconectadas que se comunican entre sí (ayudándose de hardware y software, claro). Al distinguirla como red de casa me refiero a un tipo de red muy común que cuenta con un [modem](https://www.profesionalreview.com/2019/01/27/modem-que-es/) (generalmente integrado al router) y un [router](https://www.cisco.com/c/es_mx/solutions/small-business/resource-center/networking/what-is-a-router.html) que actúa como mediador entre varios dispositivos y el Internet. El primer dispositivo que configuraremos será el router, por su primordialidad en la comunicación de toda nuestra red, pero antes debemos conectarnos a nuestra red.

### Cómo conectarse a una red

Hay dos maneras de hacerlo: alambricamente por medio de un cable [Ethernet](https://es.wikipedia.org/wiki/Ethernet) o inalámbricamente ayudándonos del famoso protocolo [Wifi](https://es.wikipedia.org/wiki/Wifi). Esto es muy fácil y si estas leyendo este documento seguramente ya sabes [cómo hacerlo](https://tecnologia-facil.com/como-hacer/como-conectar-una-computadora-una-red/). Aprovecho para comentar que si tienes problemas de velocidad o señal en tu red lo mejor que puedes hacer para solucionarlo es conectar tus dispositivos por medio de cables Ethernet. La conexión alámbrica siempre será más rápida y segura (si la situación no mejora considera adquirir [un buen router](https://www.routersecurity.org/SecureRouters.php), si sigue sin mejorar cambia de proveedor).

### Conectarse al router

Necesitamos conocer la [dirección IP](https://es.wikipedia.org/wiki/Direcci%C3%B3n_IP) de nuestro router para configurarlo. Nuestros dispositivos conocen al router con el nombre de [default gateway](https://es.wikipedia.org/wiki/Puerta_de_enlace_predeterminada) (puerta de enlace predeterminada), así que para saber la dirección del router debemos ver cual es el "default gateway" en cualquiera de nuestros dispositivos. Para obtener la dirección del "default gateway" en linux podemos ingresar el comando "ip route" en cualquier terminal:

{{<highlight console >}}
[mario@linux ~]$ ip route
default via 192.168.0.1 dev wlan0 proto static metric 600
127.0.0.0/8 via 127.0.0.1 dev lo
192.168.0.0/24 dev wlan0 proto kernel scope link src 192.168.0.2 metric 600
{{</highlight>}}

La primera dirección IP que nos aparece es la de nuestro router. También hay maneras sencillas de encontrar la dirección si estamos usando [Windows](http://ordenador.wingwit.com/Redes/other-computer-networking/77405.html) o [MacOS](https://conpilar.es/como-obtener-la-direccion-de-la-puerta-de-enlace-predeterminada-en-mac-os-x/).

### Entrar a la configuración del router

Con la dirección en mano podemos entrar al "panel de control" del router ingresándola en la barra de direcciones de cualquier navegador. Después de entrar a la página nos pedirá identificarnos, lo más probable es que el nombre de usuario y contraseña sean admin, si no es así pregunta a tu [ISP](https://es.ccm.net/contents/700-isp-proveedores-de-servicio-de-internet) o busca el usuario y contraseña predeterminados del modelo de tu router en Internet. Ahora que estas identificado podemos comenzar a configurar el router.

### Configuración del router

- Usuario y contraseña de administrador: Lo primero que debes cambiar, asegúrate de usar una [contraseña segura](https://javiervallejo.com/como-generar-contrasenas-seguras/).
- Nombre de red (SSID): Es el nombre que tu router transmite a dispositivos inalámbricos para que se conecten a tu red. Elige un nombre que no te identifique personalmente, pero que puedas recordar fácilmente. Recuerda que este dato es público.
- Contraseña de red: La contraseña que usarán tus dispositivos inalámbricos para conectarse a tu red. Es muy importante que esta sea una [contraseña segura](https://javiervallejo.com/como-generar-contrasenas-seguras/).
- Seguridad: Encriptación entre tu router y tus dispositivos inalámbricos. Elige WPA2 o cualquiera de sus variaciones, si WPA3 está disponible eligelo, si no encuentras ninguna de las anteriores opciones pide otro router a tu ISP o compra [un buen router](https://www.routersecurity.org/SecureRouters.php).
- Dirección de router y máscara de red: Déjalos como están, configúralos si quieres aprender más sobre redes.
- DHCP: Protocolo que asigna direcciones IP automáticamente a los dispositivos de la red. Recomiendo que se deje encendido, siempre es útil, incluso si usas direcciones estáticas (direcciones que tú elegiste y no las asignadas por DHCP).
- DNS: Protocolo que cambia una URL como [routersecurity.org](https://routersecurity.org/) a una dirección IP que nuestra computadora puede usar. Los servidores DNS que tu ISP configura por defecto son muy malos y pueden llegar a ser un riesgo para tu privacidad, recomiendo cambiarlos por [buenos servidores DNS](https://www.xataka.com/basics/mejores-dns-2019) o, si te animas, puedes hacer [tu propio servidor DNS](https://geekland.eu/instalar-configurar-pi-hole-raspberry-pi/).
- WPS: Protocolo para hacer más sencilla la conexión a tu red inalámbrica. Este protocolo es un peligro para tu red y es importante que lo desactives. Te recomiendo leer más sobre este [terrible protocolo](https://www.routersecurity.org/wps.php).
- UPNP: Protocolo que hace [port forwarding](https://culturacion.com/que-es-port-forwarding/) automáticamente. Creo que es mejor apagarlo. Si quieres hacer "port forwarding" será mejor que lo hagas [manualmente](https://culturacion.com/como-configurar-port-forwarding/) desde la interfaz de tu router.
- [Firwall](https://es.wikipedia.org/wiki/Cortafuegos_(inform%C3%A1tica)): Es, en resumidos términos, un programa (o dispositivo) que filtra las conexiones que se hacen a tu red. Este filtrado se asegura de que tu red permanezca segura y libre de intrusos. No lo desactives por ningún motivo, si lo haces dejarás todos tus dispositivos expuestos a Internet.

### Configuración de dispositivos

Con el router ya configurado la seguridad de nuestra red ha aumentado considerablemente. Lo único que falta es instalar un firewall en nuestros dispositivos para controlar de qué maneras acceden a la red. Esto es un proceso más tardado que configurar nuestro router, pero vale la pena hacerlo para continuar fortaleciendo nuestra red.

- Si usas Linux y no quieres perder tiempo aprendiendo sobre firewalls recomiendo que uses [ufw](https://wiki.debian.org/es/Uncomplicated%20Firewall%20%28ufw%29) junto con su interfaz gráfica [gufw](https://gufw.org/). Si la terminal es lo tuyo y el tema te interesa te sugiero usar [nftables](https://es.wikipedia.org/wiki/Nftables) (aunque [iptables](https://es.wikipedia.org/wiki/Iptables) también está bien).
- Al usar dispositivos móviles android recomiendo [AFWall +](https://github.com/ukanth/afwall) por ser gratis y sencillo de usar.
- Desconozco sobre buen software para MacOS y Windows, aunque sé que incluyen firewalls por defecto. Te recomiendo aprender a usarlas si usas estos sistemas.

Ahora tendrás una red mucho más segura junto con dispositivos protegidos ante la mayoría de amenazas viniendo de la red. Por mi parte esto sería todo, suerte navegando por Internet.

### Notas generales

- Si quieres mejorar el rendimiento de ciertas aplicaciones (videollamadas, videojuegos, etc.) usa port-forwarding (no es la panacea, pero funciona).
- Si te interesa alojar un servidor en tu red ([self-host](https://en.wikipedia.org/wiki/Self-hosting_(web_services)) coloca tu servidor en la [DMZ](https://es.wikipedia.org/wiki/Zona_desmilitarizada_(inform%C3%A1tica)), configura su firewall y después conéctalo a Internet.
- Si tu router es muy viejo pide uno nuevo a tu ISP, o mejor aún [compra un buen router](https://www.routersecurity.org/SecureRouters.php).
- Si quieres conocer más sobre routers y redes locales te recomiendo la página [routersecurity.org](https://routersecurity.org/) es una mina de oro.
