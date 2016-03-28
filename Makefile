.PHONY: all
all: sign verify

.PHONY: sign
sign: constitution.md.sig code-of-conduct.md.sig list-of-assets.md.sig roll.md.sig

.PHONY: force-sign-all
force-sign-all:
	-rm *.sig
	$(MAKE) sign

constitution.md.sig: constitution.md
	gpg -o constitution.md.sig -u c55309ab --detach-sig -a constitution.md

code-of-conduct.md.sig: code-of-conduct.md
	gpg -o code-of-conduct.md.sig -u c55309ab --detach-sig -a code-of-conduct.md

list-of-assets.md.sig: list-of-assets.md
	gpg -o list-of-assets.md.sig -u c55309ab --detach-sig -a list-of-assets.md

roll.md.sig: roll.md
	gpg -o roll.md.sig -u c55309ab --detach-sig -a roll.md

.PHONY: verify
.DEFAULT_GOAL := verify
verify:
	@echo "\n\033[1;32mVerifying constitution...\033[0m"
	gpg --verify constitution.md.sig constitution.md
	@echo "\n\033[1;32mVerifying code of conduct...\033[0m"
	gpg --verify code-of-conduct.md.sig code-of-conduct.md
	@echo "\n\033[1;32mVerifying list of assets...\033[0m"
	gpg --verify list-of-assets.md.sig list-of-assets.md
	@echo "\n\033[1;32mVerifying member roll...\033[0m"
	gpg --verify roll.md.sig roll.md
