Gigrr.Views.GigsShow = Backbone.CompositeView.extend({

  template: JST['gigs/show'],
  
  initialize: function(options){
    this.listenTo(this.model, "sync", this.render);
    this.gigPrice = 5;
    this.orders = options.orders;
  },
  
  render: function(){
    var renderedContent = this.template({ gig: this.model });
    this.$el.html(renderedContent);
    this.addGigExtrasIndex();
    this.addGigReviews();
    this.addCreatorsOtherGigs();
    return this;
  },
  
  addGigExtrasIndex: function(){
    this.extrasIdxView = new Gigrr.Views.GigExtrasIndex({ collection: this.model.extras() })
    this.addSubview(".main-gig-extras", this.extrasIdxView)
  },
  
  addGigReviews: function(){
    var creator = this.model.creator();
    if (creator) {
      var reviewsIndexView = new Gigrr.Views.ReviewsIndex({ });
      this.addSubview(".gig-reviews-wrapper", reviewsIndexView);
    }
  },
  
  addCreatorsOtherGigs: function(){
    var creator = this.model.creator();
    if (creator) {
      var gigIndexView = new Gigrr.Views.GigsIndex({ collection: creator.gigs() });
      this.addSubview(".gigs-index-wrapper", gigIndexView);
    }
  },
  
  events: {
    'change .chkbox input': 'handleChkboxClick',
    'click button.order-now': 'createOrder'
  },
  
  handleChkboxClick: function(event){
    var curTarget = $(event.currentTarget);
    var extraPrice = curTarget.data("price");
    var gigExtraId = curTarget.data("gig-extra-id");
    //If checked, add to array of extras and add to total price
    if (curTarget.prop("checked")) {  
      this.gigPrice += extraPrice;         
      this.selectedExtrasIds().push(gigExtraId)
    } else {
      var idx = this.selectedExtrasIds().indexOf(gigExtraId);
      this.selectedExtrasIds().splice(idx, 1);
      this.gigPrice -= extraPrice;
    }
    $(".gig-final-price").html(this.gigPrice);    
  },
  
  selectedExtrasIds: function(){
    if (!this._selectedExtrasId) {
      this._selectedExtrasId = [];
    }
    return this._selectedExtrasId
  },
  
  createOrder: function(){
    var that = this;
    var newOrder = new Gigrr.Models.Order( { order: { gig_id: this.model.id, gig_extra_ids: this.selectedExtrasIds() }})
    newOrder.save({}, { 
      success: function(){
        that.orders.add(newOrder);
        Backbone.history.navigate("orders/" + newOrder.id , { trigger: true } )
      }
    });
  }
  
   
});
