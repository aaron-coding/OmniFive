Gigrr.Models.Gig = Backbone.Model.extend({
  urlRoot: "/api/gigs",
  extras: function(){
    if (!this._extras){
      this._gigs = new Gigrr.Collections.Gigs([], {}) //new collection, but
    }
    
    return this._gigs;
  },
     //
  // parse: function(response){
  //   if ()
  // }
});
