#!/usr/bin/env bash
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
rails new photos-api --api --skip-git
cd photos-api
bundle add csv
bundle install
rails g scaffold Photographer photographer_id:integer photographer:string photographer_url:string
rails g scaffold Image external_id:integer width:integer height:integer url:string avg_color:string alt:string photographer:references
rails g scaffold Src original:string large2x:string large:string medium:string small:string portrait:string landscape:string tiny:string image:references
