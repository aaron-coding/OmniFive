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
    this.addCreatorsOtherGigs();
    return this;
  },
  
  addGigExtrasIndex: function(){
    this.extrasIdxView = new Gigrr.Views.GigExtrasIndex({ collection: this.model.extras() })
    this.addSubview(".main-gig-extras", this.extrasIdxView)
  },
  
  addCreatorsOtherGigs: function(){
    // debugger
    if (this.model.get('creator')) {
      var other_gigs = this.model.get('creator').other_gigs;
      var otherGigsCollection = new Gigrr.Collections.Gigs();
      //Make each gig coming back from the server into a Backbone Model
      _.each(other_gigs, function(gig) { 
        var gigModel = new Gigrr.Models.Gig()
        gigModel.set(gig)
        otherGigsCollection.add(gigModel)  
      });
    
      var gigIndexView = new Gigrr.Views.GigsIndex({ collection: otherGigsCollection });
      this.addSubview(".gigs-index", gigIndexView);
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
    if (curTarget.prop("checked")) {  //If checked, add to array of extras and add to total price
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
