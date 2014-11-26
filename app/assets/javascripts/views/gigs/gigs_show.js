Gigrr.Views.GigsShow = Backbone.CompositeView.extend({

  template: JST['gigs/show'],
  
  initialize: function(){
    this.listenTo(this.model, "sync", this.render)
  },
  
  render: function(){
    var renderedContent = this.template({ gig: this.model });
    this.$el.html(renderedContent);
    this.addGigExtrasIndex();
    return this;
  },
  
  addGigExtrasIndex: function(){
    var extrasIdxView = new Gigrr.Views.GigExtrasIndex({ collection: this.model.extras() })
    this.addSubview(".main-gig-extras", extrasIdxView)
  }
   
});
