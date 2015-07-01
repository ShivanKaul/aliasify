# Aliasify

I like setting up aliases to project directories I use a lot. It's kinda annoying though to run `pwd` and then redirecting that to `.bash_aliases` or whatever and then manually adding an alias. So I wrote [aliasify](https://rubygems.org/gems/aliasify).

**[Blogpost](http://shivankaulsahib.me/blog/2015/06/28/aliasify-gem.html).**

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aliasify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aliasify

## Usage

Once the gem is installed (and you've run `rbenv rehash`...), go to your oft-used project directory. Now, run 

    $ aliasify <insert-alias-name-you'd-like-here>   

Now, just `source .bash_aliases` (or whatever file you use to store aliases, the gem will tell you which one you need to source). For example, I used to work on [PrettyPrintGmail](https://github.com/ShivanKaul/PrettyPrintGmail) a lot at one point. So I would set up something like: `aliasify pp`. Then on start-up I could type in `pp` and be taken directly to the directory.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/aliasify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
