json.extract!(@gig, :title, :price, :creator_id, :image_url)
json.creator do
  json.id @gig.creator.id
  json.username @gig.creator.username
  json.created_at @gig.creator.created_at
end
  
  
