clean:
	rm -rf _site .sass-cache

install:
	bundle install
	yarn install

build:
	bundle exec jekyll build

run:
	bundle exec jekyll serve

lint:
	bundle exec rubocop
	yarn run stylelint "_sass/**/*.scss"

lintfix:
	bundle exec rubocop -a