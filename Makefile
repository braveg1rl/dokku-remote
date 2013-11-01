build:
	mkdir -p lib
	rm -rf lib/*
	node_modules/.bin/coffee --compile -m --output lib/ src/

watch:
	node_modules/.bin/coffee --watch --compile --output lib/ src/
	
test:
	node_modules/.bin/mocha

jumpstart:
	# curl -u 'meryn' https://api.github.com/user/repos -d '{"name":"dokku-remote", "description":"A remote control for the dokku program on your server.","private":false}'
	mkdir -p src
	touch src/dokku-remote.coffee
	mkdir -p test
	touch test/dokku-remote.coffee
	npm install
	git init
	git remote add origin git@github.com:meryn/dokku-remote
	git add .
	git commit -m "jumpstart commit."
	git push -u origin master

.PHONY: test