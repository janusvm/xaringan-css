# Makefile for xaringan-css
# ------------------------------------------------------------------------------

# Vendored CSS files
CSS_LIB := $(shell find lib -type f -name "*.css")

# R scripts and targets
CSS_SCRIPTS := $(wildcard scripts/*.R)
CSS_FILES := $(patsubst scripts/%.R,gen/%.css,$(CSS_SCRIPTS))

# ------------------------------------------------------------------------------

css: $(CSS_FILES)

$(CSS_FILES): gen/%.css: scripts/%.R $(CSS_LIB)
	Rscript --slave --vanilla $<
