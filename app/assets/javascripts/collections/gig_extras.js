Gigrr.Collections.GigExtras = Backbone.Collection.extend({

  model: Gigrr.Models.GigExtra,
  initialize: function(default_col, options){
    this.gig_id = options.gig_id;
  }

});
