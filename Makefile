target=
%.out: %.c
	gcc $< -o $@

.PHONY: check-syntax
check-syntax:
	javac -Xlint $(CHK_SOURCES)
