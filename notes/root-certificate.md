# Root certificate

![Chain of trust diagram](/diagrams/chain-of-trust.png)

A **root certificate** is a public key certificate that identifies a root certificate authority.

A certificate authority will encrypt the digital signature of the certificate it issues using its (super-secret) private key, so that anybody who wants to verify whether a certain server certificate is indeed issued by that CA can just use the *root certificate* to decrypt the digital signature part of the (allegedly) issued certificate.

### Self-signed?

Note that all root CA certificates are “self-signed”, meaning that the digital signature is generated using the certificate’s own private key.

### A "public key certificate"?

Public key certificate = digital certificate = identity certificate

A public key certificate is used to prove the ownership of a public key.

The certificate contains:

- Information about the key
- Information about the identity of its owner (called the subject)
- The digital signature of an entity that has verified the certificate's contents (called the issuer)
