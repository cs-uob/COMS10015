index.html : index.m4 $(wildcard ./include/*)
	@m4 -I ./include ${<} > ${@}

all   :             index.html

clean :
	@rm --force index.html
