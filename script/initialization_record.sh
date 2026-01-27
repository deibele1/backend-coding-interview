#!/usr/bin/env bash
rails new photos-api --api
cd photos-api
rails g scaffold Photographer id:integer photographer:string url:string
rails g scaffold Src original:string large2x:string large:string medium:string small:string portrait:string landscape:string tiny:string photographer:references
rails g scaffold Image id:integer width:integer height:integer url:string avg_color:string alt:string src:references
