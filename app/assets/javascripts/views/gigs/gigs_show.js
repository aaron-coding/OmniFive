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
    return this;
  },
  
  addGigExtrasIndex: function(){
    this.extrasIdxView = new Gigrr.Views.GigExtrasIndex({ collection: this.model.extras() })
    this.addSubview(".main-gig-extras", this.extrasIdxView)
  },
  
  events: {
    'change .chkbox input': 'updatePrice',
    'click button.order-now': 'createOrder'
  },
  
  updatePrice: function(event){
    var curTarget = $(event.currentTarget);
    var extraPrice = curTarget.data("price");
    if (curTarget.prop("checked")) {
      this.gigPrice += extraPrice;
    } else {
      this.gigPrice -= extraPrice;
    }
    $(".gig-final-price").html(this.gigPrice);    
  },
  
  createOrder: function(){
    var that = this;
    var newOrder = new Gigrr.Models.Order({ gig_id: this.model.id })
    // var extras = this.extrasIdxView.selectedExtraIds();
    newOrder.save({gig_extra_ids: [..,]}, { 
      success: function(){
        that.orders.add(newOrder);
        console.log("success!!!")
        Backbone.history.navigate("orders/" + newOrder.id , { trigger: true })
      }
    });
    console.log("create order triggered");
  }
  
   
});
