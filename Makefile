LATEXCMD = pdflatex -shell-escape -output-directory build/
export TEXINPUTS=.:content/tex/:
export max_print_line = 1048576

help:
	@echo "This makefile builds ACTL (Algorithm Competition Template Library)"
	@echo ""
	@echo "Available commands are:"
	@echo "	make fast		- to build ACTL, quickly (only runs LaTeX once)"
	@echo "	make kactl		- to build ACTL"
	@echo "	make clean		- to clean up the build process"
	@echo "	make veryclean		- to clean up and remove kactl.pdf"
	@echo "	make help		- to show this information"

fast: | build
	$(LATEXCMD) content/actl.tex </dev/null
	cp build/actl.pdf actl.pdf

actl: | build
	$(LATEXCMD) content/actl.tex && $(LATEXCMD) content/actl.tex
	cp build/actl.pdf actl.pdf

clean:
	cd build && rm -f actl.aux actl.log actl.tmp actl.toc actl.pdf actl.ptc

veryclean: clean
	rm -f actl.pdf

.PHONY: help fast kactl clean veryclean

build:
	mkdir -p build/

