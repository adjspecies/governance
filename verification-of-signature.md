# Verification of signatures

The governance documents are digitally signed with a detached signature with the use of gpg.  You may verify it with:

```
$ gpg --recv-keys C55309AB
  ...
$ make

VVerifying constitution source...
gpg --verify constitution.md.sig constitution.md
gpg: Signature made Sat Mar 26 22:03:31 2016 MDT using DSA key ID C55309AB
gpg: Good signature from "Madison Scott-Clary <madison.scott-clary@canonical.com>"
gpg:                 aka "keybase.io/makyo <makyo@keybase.io>"
gpg:                 aka "Madison Scott-Clary <mjs@mjs-svc.com>"
gpg:                 aka "Madison Scott-Clary <makyo@drab-makyo.com>"
gpg:                 aka "Madison Scott-Clary <matthew.scott@canonical.com>"
gpg:                 aka "Madison Scott-Clary (Makyo at [adjective][species]) <makyo@adjectivespecies.com>"
gpg:                 aka "[jpeg image of size 5531]"

Verifying code of conduct...
gpg --verify code-of-conduct.md.sig code-of-conduct.md
gpg: Signature made Sat Mar 26 22:03:33 2016 MDT using DSA key ID C55309AB
gpg: Good signature from "Madison Scott-Clary <madison.scott-clary@canonical.com>"
gpg:                 aka "keybase.io/makyo <makyo@keybase.io>"
gpg:                 aka "Madison Scott-Clary <mjs@mjs-svc.com>"
gpg:                 aka "Madison Scott-Clary <makyo@drab-makyo.com>"
gpg:                 aka "Madison Scott-Clary <matthew.scott@canonical.com>"
gpg:                 aka "Madison Scott-Clary (Makyo at [adjective][species]) <makyo@adjectivespecies.com>"
gpg:                 aka "[jpeg image of size 5531]"

Verifying list of assets...
gpg --verify list-of-assets.md.sig list-of-assets.md
gpg: Signature made Sat Mar 26 22:03:35 2016 MDT using DSA key ID C55309AB
gpg: Good signature from "Madison Scott-Clary <madison.scott-clary@canonical.com>"
gpg:                 aka "keybase.io/makyo <makyo@keybase.io>"
gpg:                 aka "Madison Scott-Clary <mjs@mjs-svc.com>"
gpg:                 aka "Madison Scott-Clary <makyo@drab-makyo.com>"
gpg:                 aka "Madison Scott-Clary <matthew.scott@canonical.com>"
gpg:                 aka "Madison Scott-Clary (Makyo at [adjective][species]) <makyo@adjectivespecies.com>"
gpg:                 aka "[jpeg image of size 5531]"

Verifying member roll...
gpg --verify roll.md.sig roll.md
gpg: Signature made Sat Mar 26 22:03:37 2016 MDT using DSA key ID C55309AB
gpg: Good signature from "Madison Scott-Clary <madison.scott-clary@canonical.com>"
gpg:                 aka "keybase.io/makyo <makyo@keybase.io>"
gpg:                 aka "Madison Scott-Clary <mjs@mjs-svc.com>"
gpg:                 aka "Madison Scott-Clary <makyo@drab-makyo.com>"
gpg:                 aka "Madison Scott-Clary <matthew.scott@canonical.com>"
gpg:                 aka "Madison Scott-Clary (Makyo at [adjective][species]) <makyo@adjectivespecies.com>"
gpg:                 aka "[jpeg image of size 5531]"
```

Required attributes for validation are that the signature date matches the date in the documents, and that one line of the signature refers to \[adjective\]\[species\].
