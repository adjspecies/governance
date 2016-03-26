# Verification of signatures

The constitution is digitally signed with a detached signature with the use of gpg.  You may verify it with:

```
$ gpg --recv-keys C55309AB
  ...
$ make

Verifying constitution PDF...
gpg --verify constitution-signature.pdf.asc constitution.pdf
gpg: Signature made Sat Mar 26 11:42:42 2016 MDT using DSA key ID C55309AB
gpg: Good signature from "Madison Scott-Clary <madison.scott-clary@canonical.com>"
gpg:                 aka "keybase.io/makyo <makyo@keybase.io>"
gpg:                 aka "Madison Scott-Clary <mjs@mjs-svc.com>"
gpg:                 aka "Madison Scott-Clary <makyo@drab-makyo.com>"
gpg:                 aka "Madison Scott-Clary <matthew.scott@canonical.com>"
gpg:                 aka "Madison Scott-Clary (Makyo at [adjective][species]) <makyo@adjectivespecies.com>"
gpg:                 aka "[jpeg image of size 5531]"

Verifying constitution source...
gpg --verify constitution-signature.tex.asc constitution.tex
gpg: Signature made Sat Mar 26 11:42:47 2016 MDT using DSA key ID C55309AB
gpg: Good signature from "Madison Scott-Clary <madison.scott-clary@canonical.com>"
gpg:                 aka "keybase.io/makyo <makyo@keybase.io>"
gpg:                 aka "Madison Scott-Clary <mjs@mjs-svc.com>"
gpg:                 aka "Madison Scott-Clary <makyo@drab-makyo.com>"
gpg:                 aka "Madison Scott-Clary <matthew.scott@canonical.com>"
gpg:                 aka "Madison Scott-Clary (Makyo at [adjective][species]) <makyo@adjectivespecies.com>"
gpg:                 aka "[jpeg image of size 5531]"

Verifying code of conduct...
gpg --verify code-of-conduct-signature.asc code-of-conduct.md
gpg: Signature made Sat Mar 26 11:43:04 2016 MDT using DSA key ID C55309AB
gpg: Good signature from "Madison Scott-Clary <madison.scott-clary@canonical.com>"
gpg:                 aka "keybase.io/makyo <makyo@keybase.io>"
gpg:                 aka "Madison Scott-Clary <mjs@mjs-svc.com>"
gpg:                 aka "Madison Scott-Clary <makyo@drab-makyo.com>"
gpg:                 aka "Madison Scott-Clary <matthew.scott@canonical.com>"
gpg:                 aka "Madison Scott-Clary (Makyo at [adjective][species]) <makyo@adjectivespecies.com>"
gpg:                 aka "[jpeg image of size 5531]"
```

Required attributes for validation are that the signature date matches the date in the constitution, and that one line of the signature refers to \[adjective\]\[species\].
