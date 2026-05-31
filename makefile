# Makefile for Resume, CV, and Cover Letter
# Usage:
#   make all       - Build all PDFs
#   make png       - Generate PNG previews (300 DPI)
#   make resume    - Build resume only
#   make cv        - Build CV only
#   make cover     - Build cover letter only
#   make clean     - Remove build artifacts

XELATEX = xelatex
XELATEX_FLAGS = -interaction=nonstopmode -halt-on-error

RESUME = gaurav_agarwal_resume
CV = gaurav_agarwal_cv
COVER = gaurav_agarwal_cover_letter

RESUME_DEPS = $(RESUME).tex $(wildcard resume/*.tex) awesome-cv.cls
CV_DEPS = $(CV).tex $(wildcard cv/*.tex) $(wildcard resume/education.tex) awesome-cv.cls
COVER_DEPS = $(COVER).tex awesome-cv.cls

.PHONY: all resume cv cover png clean

all: resume cv cover

resume: $(RESUME).pdf
cv: $(CV).pdf
cover: $(COVER).pdf

$(RESUME).pdf: $(RESUME_DEPS)
	$(XELATEX) $(XELATEX_FLAGS) $(RESUME).tex

$(CV).pdf: $(CV_DEPS)
	$(XELATEX) $(XELATEX_FLAGS) $(CV).tex

$(COVER).pdf: $(COVER_DEPS)
	$(XELATEX) $(XELATEX_FLAGS) $(COVER).tex

# Generate PNG previews at 300 DPI (requires poppler-utils: sudo apt install poppler-utils)
png: all
	@mkdir -p png
	pdftoppm -png -r 300 $(RESUME).pdf png/$(RESUME)
	pdftoppm -png -r 300 $(CV).pdf png/$(CV)
	pdftoppm -png -r 300 $(COVER).pdf png/$(COVER)
	@echo "PNG previews generated in png/"
	@ls -la png/*.png

clean:
	rm -f *.aux *.log *.out *.pdf makefile.dep
	rm -rf png/
