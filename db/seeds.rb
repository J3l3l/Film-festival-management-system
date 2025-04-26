# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# --- Films ---
Film.create!([
  { title: "Sunrise", screening_date: "2025-06-01", venue: "Main Hall", status: "Submitted" },
  { title: "Twilight Dreams", screening_date: "2025-06-02", venue: "Cinema 2", status: "Selected" },
  { title: "City Lights", screening_date: "2025-06-03", venue: "Open Air Theater", status: "Screened" },
  { title: "Moon Over Water", screening_date: "2025-06-04", venue: "Theater 1", status: "Submitted" },
  { title: "Lost Horizons", screening_date: "2025-06-05", venue: "Cinema 3", status: "Selected" }
])

# --- Directors ---
Director.create!([
  { name: "Alice Johnson", nationality: "USA", film_count: 3, relationship_status: "Returning" },
  { name: "Hiro Tanaka", nationality: "Japan", film_count: 1, relationship_status: "First-time" },
  { name: "Elena Garcia", nationality: "Spain", film_count: 2, relationship_status: "Returning" },
  { name: "Samir Patel", nationality: "India", film_count: 1, relationship_status: "First-time" },
  { name: "Liam O'Connor", nationality: "Ireland", film_count: 5, relationship_status: "Returning" }
])
