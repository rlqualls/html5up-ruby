[![Gem Version](https://badge.fury.io/rb/html5up.svg)](https://badge.fury.io/rb/html5up)
[![Build Status](https://travis-ci.org/rlqualls/html5up-ruby.png?branch=master)](https://travis-ci.org/rlqualls/html5up-ruby)

# HTML5UP

**HTML5UP** is a command-line downloader for [html5up.net](http://html5up.net) templates.

## Dependencies

  1. libcurl (the one that ships with OSX should work)

## Installation

    $ gem install html5up

## Installation (development)

    $ git clone https://github.com/rlqualls/html5up-ruby
    $ cd html5up-ruby
    $ bundle
    $ rake install

## Usage Examples

Create a folder out of a template:

    $ html5up new my_project --template hyperspace

Save the original zip file:

    $ html5up new my_project --template hyperspace --save

See what templates are available (not hardcoded, see the latest on the site):

    $ html5up templates

## Support

Make a [new github issue](https://github.com/rlqualls/html5up/issues/new).
