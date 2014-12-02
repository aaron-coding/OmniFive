json.extract!(@order, :id, :buyer_id, :total_price)

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

json.gig_extras (@order.order_extras) do |extra|
  json.id extra.gig_extra.id
  # json.gig_id extra.gig_extra.gig_id 
  json.title extra.gig_extra.title
  json.price extra.gig_extra.price
end

