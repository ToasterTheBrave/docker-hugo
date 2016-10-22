#!/bin/bash

if [ -z "$HUGO_BASEURL" ]; then export HUGO_BASEURL="http://example.com/"; fi
if [ -z "$HUGO_TITLE" ]; then export HUGO_TITLE="Your Title"; fi
if [ -z "$HUGO_COPYRIGHT" ]; then export HUGO_COPYRIGHT="(c) 2015 yourname."; fi
if [ -z "$HUGO_LANGUAGECODE" ]; then export HUGO_LANGUAGECODE="en-EN"; fi
if [ -z "$HUGO_METADATAFORMAT" ]; then export HUGO_METADATAFORMAT="yaml"; fi
if [ -z "$HUGO_THEME" ]; then export HUGO_THEME="hyde-x"; fi
if [ -z "$HUGO_PAGINATE" ]; then export HUGO_PAGINATE=10; fi
if [ -z "$HUGO_PAGINATEPATH" ]; then export HUGO_PAGINATEPATH="page"; fi
if [ -z "$HUGO_DISQUSSHORTNAME" ]; then export HUGO_DISQUSSHORTNAME=""; fi
if [ -z "$HUGO_POST" ]; then export HUGO_POST="/:year/:month/:day/:slug/"; fi
if [ -z "$HUGO_CODE" ]; then export HUGO_CODE="/:slug/"; fi
if [ -z "$HUGO_TAG" ]; then export HUGO_TAG="tags"; fi
if [ -z "$HUGO_TOPIC" ]; then export HUGO_TOPIC="topics"; fi
if [ -z "$HUGO_NAME" ]; then export HUGO_NAME="Your Name"; fi
if [ -z "$HUGO_EMAIL" ]; then export HUGO_EMAIL="no-reply@example.com"; fi
if [ -z "$HUGO_BRAND" ]; then export HUGO_BRAND="foobar"; fi
if [ -z "$HUGO_TOPLINE" ]; then export HUGO_TOPLINE="few words about your site"; fi
if [ -z "$HUGO_FOOTLINE" ]; then export HUGO_FOOTLINE="code with <i class='fa fa-heart'></i>"; fi
if [ -z "$HUGO_SIDEBAR" ]; then export HUGO_SIDEBAR="left"; fi
if [ -z "$HUGO_HOME" ]; then export HUGO_HOME="home"; fi
if [ -z "$HUGO_HIGHLIGHT" ]; then export HUGO_HIGHLIGHT="default"; fi
if [ -z "$HUGO_GOOGLEANALYTICS" ]; then export HUGO_GOOGLEANALYTICS="Your Google Analytics tracking code"; fi
if [ -z "$HUGO_GITHUB" ]; then export HUGO_GITHUB=""; fi
if [ -z "$HUGO_BITBUCKET" ]; then export HUGO_BITBUCKET=""; fi
if [ -z "$HUGO_LINKEDIN" ]; then export HUGO_LINKEDIN=""; fi
if [ -z "$HUGO_GOOGLEPLUS" ]; then export HUGO_GOOGLEPLUS=""; fi
if [ -z "$HUGO_FACEBOOK" ]; then export HUGO_FACEBOOK=""; fi
if [ -z "$HUGO_TWITTER" ]; then export HUGO_TWITTER=""; fi
if [ -z "$HUGO_YOUTUBE" ]; then export HUGO_YOUTUBE=""; fi
if [ -z "$HUGO_FLATTR" ]; then export HUGO_FLATTR=""; fi
if [ -z "$HUGO_SECONDARY_THEME" ]; then export HUGO_SECONDARY_THEME="theme-base-08"; fi
if [ -z "$HUGO_TAGLINE" ]; then export HUGO_TAGLINE="Tagline"; fi
if [ -z "$HUGO_ANGLEDQUOTES" ]; then export HUGO_ANGLEDQUOTES=true; fi
if [ -z "$HUGO_FRACTIONS" ]; then export HUGO_FRACTIONS=false; fi
if [ -z "$HUGO_HREFTARGETBLANK" ]; then export HUGO_HREFTARGETBLANK=false; fi
if [ -z "$HUGO_LATEXDASHES" ]; then export HUGO_LATEXDASHES=true; fi
if [ -z "$HUGO_PLAINIDANCHORS" ]; then export HUGO_PLAINIDANCHORS=true; fi
if [ -z "$HUGO_EXTENSIONS" ]; then export HUGO_EXTENSIONS="[]"; fi
if [ -z "$HUGO_EXTENSIONMASK" ]; then export HUGO_EXTENSIONMASK="[]"; fi

# Run docker templating
dockerize \
    -template=/app/templates/config.toml.tmpl:/app/site/config.toml

# Exec our CMD
exec "$@"
