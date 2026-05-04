# SSH Helpers

## Copy SSH public key from Windows to *nix machines

```powershell
type id_rsa.pub | ssh user@{remote IP} "cat >> .ssh/authorized_keys"
```