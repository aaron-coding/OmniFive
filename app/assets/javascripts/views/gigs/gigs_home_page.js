Gigrr.Views.GigsHomePage = Backbone.CompositeView.extend({

  template: JST['gigs/homepage'],
  
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render)
    $(".guest-login").click(this.guestLogin);
  },
  
  guestLogin: function(){
    
    $.ajax({
      type: "POST",
      url: "/session",
      data: {
        'user': {
          'username': 'guest',
          'password': 'password'
        }
      },
      success: function(){
        location.reload(); // refresh page to render new data.
      }
    });
    
  },
  
  render: function(){
    var renderedContent = this.template();
    this.$el.html(renderedContent);
    this.addGigsIndex();
    return this;
  },
  
  addGigsIndex: function(){
    var gigView = new Gigrr.Views.GigsIndex({ collection: this.collection });
    this.addSubview(".gigs-index", gigView);
  }
        
});
