Gigrr.Models.Order = Backbone.Model.extend({
  urlRoot: "/api/orders",

  gig: function(){
    if (!this._gig){
      this._gig = new Gigrr.Models.Gig([], {})
    }

    return this._gig;
  },

  parse: function(response){
    if (response.gig){
      var gig = response.gig;
      this.gig().set(gig);
      delete response.gig
    }

    return response;
  }
});
