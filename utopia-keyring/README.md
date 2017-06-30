The Utopia Repository currently uses two keys for signing:

* [`D5D568B2D34AB32A337944D22EC3F60DE71C0B9D`](https://pgp.mit.edu/pks/lookup?op=vindex&search=0x2EC3F60DE71C0B9D): my (James Lu's) personal key, used to sign most repositories.
* [`4A4A7B0E6EFB2FD90FD4F58C4A8C96B8EEBB01E6`](https://pgp.mit.edu/pks/lookup?op=vindex&search=0x4A8C96B8EEBB01E6): Automatic signing key used to sign nightlies repositories.

#### Package refreshes

To regenerate `archive.asc`, the command is as follows:

```bash
gpg --armor --export SPACE-SEPARATED-LIST-OF-RELEVENT-KEYIDS > archive.asc
```
