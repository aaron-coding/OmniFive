json.extract!(@order, :id, :buyer_id)

json.gig do
  json.id @order.gig.id
  json.title @order.gig.title
  json.price @order.gig.price
  json.image_url @order.gig.image_url
  json.creator do 
    json.id @order.gig.creator.id
    json.username @order.gig.creator.username
  end
end