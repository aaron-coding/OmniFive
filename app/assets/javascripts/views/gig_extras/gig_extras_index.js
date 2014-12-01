Gigrr.Views.GigExtrasIndex = Backbone.CompositeView.extend({

  template: JST['gig_extras/index'],
  
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render);
    //this.$el.addClass("container-fluid")
    this.gigPrice = 5;
  },
  
  events: {
    'change .chkbox input': "updatePrice"
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
    // this.collection.trigger('update-price', extraPrice);
  },
  
  render: function(){
    var renderedContent = this.template();
    this.$el.html(renderedContent);
    this.addGigsExtrasSubviews();
    

    return this;
  },
  
  addGigsExtrasSubviews: function(){
    //All this gig's extras are added to the page as their own view
    var that = this;
    this.collection.each(function(extra) {
      var extraView = new Gigrr.Views.GigExtrasShow({ model: extra });
      that.addSubview(".gig-extras-index", extraView);
    });  
  }

});