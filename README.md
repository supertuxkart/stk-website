# SuperTuxKart Main Website

This is the source code of the SuperTuxKart main website, it is based on [Git-wiki](https://github.com/Drassil/git-wiki-theme) with translation support.

## How to install locally (development)

### With [docker-compose](https://docs.docker.com/compose/install/)

1. install [docker-compose](https://docs.docker.com/compose/install/)
2. run `docker-compose up stk-website`
3. the website will be ready on `http://127.0.0.1:4000/`

### Without docker compose

First of all install the [ruby development environment](https://jekyllrb.com/docs/installation/) using [this guide](https://jekyllrb.com/docs/installation/).

After that install `bundler` using gem and run `bundler install`:
```
$ gem install bundler
$ bundle install
```

Well, now you can run locally the app using:
```
bundle exec jekyll serve
```

If everything succeds, you can visit your website at `http://127.0.0.1:4000/`.
