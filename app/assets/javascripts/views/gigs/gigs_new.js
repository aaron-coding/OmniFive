Gigrr.Views.GigsNew = Backbone.View.extend({

  template: JST['gigs/new'],
  className: "gig-form",
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },
  
  events: {
    "submit form": "handleSubmit",
    "change input[type=filepicker]": "updateImage"
  },
  
  handleSubmit: function(event){
    event.preventDefault();
    var ignoreEmpty = function(val, inputName) {
      if (val !== "") {
        return val;
      } 
    }; //This function makes default image not get overridden
    this.model.set($(event.currentTarget).serializeJSON({ parseWithFunction: ignoreEmpty }))
    this.model.save({}, {
      success: function(){
        alert("Gig Succesfully saved!");
        Backbone.history.navigate("gigs/" + this.model.id, {trigger: true})
      }.bind(this),
      error: function(){
        alert("Gig not saved")
      }
    })
  },
  
  updateImage: function(event){
    var newImage = $(event.currentTarget).serializeJSON().gig.image_url;
    this.$el.find(".small-thumb").attr('src', newImage);
  },
  
  render: function(){
    var renderedContent = this.template({ gig: this.model });
    this.$el.html(renderedContent);
    //only construct widget if it isn't there.
    // if ( $(".fp-button").length === 0 ) { 
      filepicker.constructWidget(this.$('.fp-new-gig'));   
    // }
    return this;
  },
  
  
  
});
