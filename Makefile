clean:
	rm -rf _site .sass-cache

install:
	bundle install

build:
	bundle exec jekyll build

run:
	bundle exec jekyll serve
