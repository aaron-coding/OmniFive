Gigrr.Views.GigsShow = Backbone.CompositeView.extend({

  template: JST['gigs/show'],
  
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
    this.gigPrice = 5;
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
    // var that = this;
    var newOrder = new Gigrr.Models.Order({ gig_id: this.model.id })
    newOrder.save({}, { 
      success: function(){
        console.log("success!!!")
      }
    });
    // $.post( "/api/orders", { 'order[gig_id]': this.model.id } ,function( respData ){
    //   console.log("success!!!");
    //   // debugger
    //   console.log(respData)
    // })
    console.log("create order triggered");
  }
  
   
});
