Gigrr.Models.User = Backbone.Model.extend({
  urlRoot: "/api/users",
  
  gigs: function(){
    if (!this._gigs){
      this._gigs = new Gigrr.Collections.Gigs([], {}) //new collection, but belongs to user 
    }
    
    return this._gigs;
  },
  
  parse: function(response){
    if (response.gigs){
      var gigs = response.gigs;
      this.gigs().set(gigs);
      delete response.gigs;
    }
    return response
  }
  
});
