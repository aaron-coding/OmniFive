Gigrr.Models.User = Backbone.Model.extend({
  urlRoot: "/api/users",
  
  gigs: function(){
    if (!this._gigs){
      this._gigs = new Gigrr.Collections.Gigs([], {}) //new collection, but belongs to user 
    }
    
    return this._gigs;
  },

  parse: function(response){
    //Make this use || operator to parse either gigs or other_gigs
    if (response.gigs || response.other_gigs){
      var gigs = response.gigs || response.other_gigs;
      this.gigs().set(gigs, { parse: true });
      delete response.gigs;
    }
    
    return response
  }
  
});