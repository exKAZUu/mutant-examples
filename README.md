# mutant-examples

This repo has examples for ["Mutantion Testing with Mutant"](http://solnic.eu/2013/01/23/mutation-testing-with-mutant.html) 
blog post.

There are two branches:

* full-line-cov - with a spec for `Book#add_page` method with 100% line coverage but missing a lot of mutation-coverage
* full-mut-cov - with a spec for `Book#add_page` which has 100% mutation-coverage

To run specs and mutant:

```
bundle
rspec spec/unit/book_spec.rb
mutant -r book --use rspec '::Book#add_page'
```

Enjoy!
