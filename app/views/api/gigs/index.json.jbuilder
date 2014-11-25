json.array!(@gigs) do |gig|
  json.title gig.title
  json.price gig.price
  json.creator_id gig.creator_id
end