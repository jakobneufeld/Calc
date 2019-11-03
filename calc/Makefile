product=.build/release/calc
$(product): Sources
	swift build -c release
all: $(product)

install: $(product)
	@cp Doc/calc.1 /usr/local/share/man/man1/
	@cp .build/release/calc /usr/local/bin/
.PHONY: clean

clean:
	@rm $(product)
