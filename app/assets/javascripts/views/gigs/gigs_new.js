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
      error: function(json, msg){
        var text = ""
        msg.responseJSON.forEach(function(msg){ text = text + msg + " \n" })
        alert("Sorry, your gig did not save:\n" + text)
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
    filepicker.constructWidget(this.$('.fp-new-gig'));                   
    return this;
  },  
  
});
