json.array!(@gigs) do |gig|
  json.id gig.id
  json.title gig.title
  json.price gig.price
  json.creator_id gig.creator_id
  json.image_url gig.image_url
  if current_user
    json.is_liked gig.liked_by?(current_user)
  end
end

# @likes.each do |like|
#   json.id like.id
# end