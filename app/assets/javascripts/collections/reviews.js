Gigrr.Collections.Reviews = Backbone.Collection.extend({

  model: Gigrr.Models.Review,
  initialize: function(default_col, options){
    this.gig_id = options.gig_id || null;
    this.user_id = options.user_id || null;
  },

  url: function(){
    if (this.gig_id !== null) {
      return "/api/gigs/" + this.gig_id + "/reviews"
    } else if (this.user_id !== null) {
      return "/api/users/" + this.user_id + "/reviews"  
    }
  }
  
});
