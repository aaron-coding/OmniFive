Gigrr.Collections.Gigs = Backbone.Collection.extend({
  model: Gigrr.Models.Gig,
  url: "/api/gigs",
  getOrFetch: function(id){
    var model = this.get(id);
    var that = this;
    if (!model){
      model = new Gigrr.Models.Gig({id: id})
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
