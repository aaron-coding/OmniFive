json.extract!(@user, :id, :username, :creator_desc, :created_at, :image_url)

json.gigs(@user.gigs) do |gig|
  json.id gig.id
  json.title gig.title
  json.price gig.price
  json.image_url gig.image_url
end
