Gigrr.Views.UsersEdit = Backbone.CompositeView.extend({

  template: JST['users/edit'],
  
  className: "gig-form",
  
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },
  
  events: {
    "submit form": "handleSubmit",
    "change input[type=filepicker]": "updateAvatar"
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
        // $('.gig-form').prepend('<p class="bg-success">Profile Saved!</p>');
        alert("Profile Succesfully saved!")
      },
      error: function(){
        alert("Profile not saved")
      }
    })
  },
  
  updateAvatar: function(event){
    var newAvatar = $(event.currentTarget).serializeJSON().user.image_url;
    this.$el.find(".small-thumb").attr('src', newAvatar);
  },
  
  render: function(){
    var renderedContent = this.template({ user: this.model });
    this.$el.html(renderedContent);
    filepicker.constructWidget(this.$('.fp-tagged'));    
    return this;
  },
  
  
  
});
