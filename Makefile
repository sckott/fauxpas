generate:
	(cd extra && ./generate.R)

README.md: README.Rmd
	${RSCRIPT} -e 'library(methods); devtools::load_all(); knitr::knit("README.Rmd")'
	sed -i.bak 's/[[:space:]]*$$//' $@
	rm -f $@.bak

.PHONY: generate README.md
