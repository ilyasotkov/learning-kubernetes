# How does TLS/SSL actually work?

From: <https://robertheaton.com/2014/03/27/how-does-https-actually-work/>

Great article 👍

## SSL/TLS handshake

Goals of an SSL handshake:

- Client able to authenticate server
  * Optional: server able to authenticate client
- Client and server able to agree on a cypher suite
- Agree on any necessary keys

## Important details

- The client generates a random key to be used for the main, symmetric algorithm. It encrypts it using the agreed-upon cypher suite, and the server’s public key (found on its SSL certificate).

- Client sends this encrypted key to the server, where it is decrypted using the server’s private key.

Now both parties can communicate using symmetric algorithm.

> At its most basic level, an SSL certificate is simply a text file, and anyone with a text editor can create one. You can in fact trivially create a certificate claiming that you are Google Inc. and that you control the domain gmail.com. If this were the whole story then SSL would be a joke; identity verification would essentially be the client asking the server “are you Google?”, the server replying “er, yeah totally, here’s a piece of paper with ‘I am Google’ written on it” and the client saying “OK great, here’s all my data.” The magic that prevents this farce is in the digital signature, which allows a party to verify that another party’s piece of paper really is legit.

😂😂😂
