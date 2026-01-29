# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'

CSV.foreach('../photos.csv', headers: true) do |row|
  photographer = Photographer.create(photographer_id: row['photographer_id'], photographer: row['photographer'], photographer_url: row['photographer_url'])
  image = photographer.images.create(external_id: row['id'], width: row['width'], height: row['height'], url: row['url'], avg_color: row['avg_color'], alt: row['alt'])
  image.create_src(original: row['src.original'], large2x: row['src.large2x'], large: row['src.large'], medium: row['src.medium'], small: row['src.small'], portrait: row['src.portrait'], landscape: row['src.landscape'], tiny: row['src.tiny'])
end
