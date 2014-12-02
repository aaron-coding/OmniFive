Gigrr.Collections.Orders = Backbone.Collection.extend({

  model: Gigrr.Models.Order,
  
  url: "/api/orders",
  
  getOrFetch: function(id){
    var model = this.get(id);
    var that = this;
    if (!model){
      model = new Gigrr.Models.Order({id: id})
      model.fetch({
        success: function(){
          that.add(model)
        }
      })
    } else {
      model.fetch();
    }
    
    return model;
  }

});
