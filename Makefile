.PHONY: all
all: constitution.pdf sign verify

constitution.pdf: constitution.tex
	pdflatex constitution.tex

.PHONY: sign
sign:
	rm *.sig
	gpg -o constitution.pdf.sig -u c55309ab --detach-sig -a constitution.pdf
	gpg -o constitution.tex.sig -u c55309ab --detach-sig -a constitution.tex
	gpg -o code-of-conduct.md.sig -u c55309ab --detach-sig -a code-of-conduct.md
	gpg -o list-of-assets.md.sig -u c55309ab --detach-sig -a list-of-assets.md

.PHONY: verify
.DEFAULT_GOAL := verify
verify:
	@echo "\n\033[1;32mVerifying constitution PDF...\033[0m"
	gpg --verify constitution.pdf.sig constitution.pdf
	@echo "\n\033[1;32mVerifying constitution source...\033[0m"
	gpg --verify constitution.tex.sig constitution.tex
	@echo "\n\033[1;32mVerifying code of conduct...\033[0m"
	gpg --verify code-of-conduct.md.sig code-of-conduct.md
	@echo "\n\033[1;32mVerifying list of assets...\033[0m"
	gpg --verify list-of-assets.md.sig list-of-assets.md
