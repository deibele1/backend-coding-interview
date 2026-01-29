#!/usr/bin/env bash
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
cd photos-api
rails db:migrate
