CSS_SRC = $(wildcard css/*.styl)

build: $(CSS_SRC)
	@stylus -c -u ~/node_modules/nib < $(CSS_SRC) > css/build.css

css: $(CSS_SRC)
	@stylus -l -u ~/node_modules/nib < $(CSS_SRC) > css/build.css

clean:
	rm -rf css/build.css

.PHONY: clean css
