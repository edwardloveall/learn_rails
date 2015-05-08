## Setup

### Ruby Version Manager

You'll need a ruby version manager. I like chruby as it is very simple.

If you have [brew](http://brew.sh) installed, run:

```shell
brew install chruby ruby-install
```

Then, install a version of ruby:

```shell
ruby_version="$(curl -sSL http://ruby.thoughtbot.com/latest)"
ruby-install "ruby $ruby-version"
```

Then in your `.bashrc` or `.zshrc`

```shell
if [[ -e /usr/local/share/chruby ]]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

chruby ruby-2
```

Then restart your terminal.

Confirm you're on the latest ruby version. Type: `chruby` and you should see something like:

```shell
* ruby-2.2.1
```

The important part is the `*` before one of the ruby versions. If there is no star, type:

```shell
chruby 2.1.1
```

to set the ruby version that you will use to be `2.1.1`. Insert whatever version you installed here.

## Bundler

You'll also need bundler.

```shell
gem install bundler
```
