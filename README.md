# Governance

Documents and resources pertaining to the governance of \[adjective\]\[species\].

This includes:

* The constitution used for governance of \[a\]\[s\] membership
* The \[a\]\[s\] code of conduct

## Verification of signatures

The constitution is digitally signed with a detached signature.  You may verify it with:

```
$ gpg --recv-keys C55309AB
  ...
$ gpg --verify constitution-signature.asc constitution.tex
gpg: Signature made Fri Mar 25 19:06:01 2016 MDT using DSA key ID C55309AB
gpg: checking the trustdb
gpg: 3 marginal(s) needed, 1 complete(s) needed, PGP trust model
gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
gpg: Good signature from "Madison Scott-Clary <madison.scott-clary@canonical.com>"
gpg:                 aka "keybase.io/makyo <makyo@keybase.io>"
gpg:                 aka "Madison Scott-Clary <mjs@mjs-svc.com>"
gpg:                 aka "Madison Scott-Clary <makyo@drab-makyo.com>"
gpg:                 aka "Madison Scott-Clary <matthew.scott@canonical.com>"
gpg:                 aka "Madison Scott-Clary (Makyo at [adjective][species]) <makyo@adjectivespecies.com>"
gpg:                 aka "[jpeg image of size 5531]"
```

Required attributes for validation are that the signature date matches the date in the constitution, and that one line of the signature refers to \[adjective\]\[species\].
