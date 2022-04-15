test-cov: istanbul

istanbul:
	istanbul cover ./node_modules/mocha/bin/_mocha -- -R spec test --recursive

coveralls:
	cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js

mocha_test:
	cp ./node_modules/mocha/mocha.js test_html
	cp ./node_modules/mocha/mocha.css test_html
	cp ./node_modules/should/should.js test_html


releaseIt:
	release-it
	bower register serialijse  https://github.com/erossignon/serialijse.git