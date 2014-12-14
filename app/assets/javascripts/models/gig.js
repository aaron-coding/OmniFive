Gigrr.Models.Gig = Backbone.Model.extend({
  urlRoot: "/api/gigs",
  creator: function(){  
    return this._creator;
  },
  
  extras: function(){
    if (!this._extras){
      this._extras = new Gigrr.Collections.GigExtras([], {
        gig_id: this.id
      })
    }
  
    return this._extras;
  },
  
  liked: function(){
    return this._liked;
  },

  parse: function(response){
    if (response.gigextras){
      var extras = response.gigextras;
      this.extras().set(extras);
      delete response.gigextras
    }
    
    if (response.creator){
      this._creator = new Gigrr.Models.User(response.creator, {parse: true});
      delete response.creator;
    }
    
    if (response.is_liked){
      this._liked = true;
      delete response.likes;        
    } else {
      this._liked = false;
    }
    
   
      
    return response;    
  }
});
