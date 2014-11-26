Gigrr.Models.Gig = Backbone.Model.extend({
  urlRoot: "/api/gigs",
  extras: function(){
    if (!this._extras){
      this._extras = new Gigrr.Collections.GigExtras([], {})
    }
    
    return this._extras;
  },

  parse: function(response){
    if (response.gigextras){
      var extras = response.gigextras;
      this.extras().set(extras);
      delete response.gigextras
    }
  
    return response;    
  }
});
