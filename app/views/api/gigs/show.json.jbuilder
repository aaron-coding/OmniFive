json.extract!(@gig, :title, :price, :creator_id, :image_url, :description)
json.gigextras(@gig.extras) do |extra|
  json.id extra.id
  json.title extra.title
  json.price extra.price
end
json.creator do
  json.id @gig.creator.id
  json.username @gig.creator.username
  json.created_at @gig.creator.created_at
end


