# Diferencias entre udp y tcp? (min 2:46 y 4:15)

Udp tiene menor tamaño de paquetes que TCP(8 frente a 20 bytes), no tiene conexiones y tienes mas control sobre los datos enviados. 
TCP si que hace una conexion pravia a enviar información, si que detecta y corrije errores, si se pierde algun paquete, te lo enviará de nuevo(Upd lo ignora). Tambien te entrega los paquetes en orden(UDP puede desordenartelos)

# ¿Qué aplicaciones usan tcp?  http, smtp, pop, imap, ssh
Muchas aplicaciones que requieren transmisión confiable y segura de datos, como navegadores web, correo electrónico, bases de datos, VPNs y sistemas de mensajería instantánea, utilizan el protocolo TCP.
# ¿Qué aplicaciones usan udp?
Las aplicaciones que priorizan la velocidad sobre la confiabilidad en la transmisión de datos, como el streaming de video y audio como YouTube, videollamadas como Zoom, juegos en línea, y algunos protocolos de red como DNS y DHCP, suelen usar UDP
# ¿Qué capa almacena el puerto?
En la capa de transporte.
# ¿Qué capa almacena la dirección IP?
En la capa de red
# ¿Qué es three-way handshake?
Es el metodo que usa TCP para hacer una conexion entre dispositivos. Se considera como completa cuando el cliente envia una peticion al servidor(SYN), este envia un paquete SYN-ACK al cliente confirmando la recepción del SYN y solicitando sincronización y por último el cliente debe de enviar un ultimo paquete de ACK.
Y asi se logra una transferencia de datos fiable.
https://www.youtube.com/watch?v=Vdc8TCESIg8
