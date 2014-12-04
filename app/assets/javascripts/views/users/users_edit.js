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
    
    this.model.set($(event.currentTarget).serializeJSON())
    this.model.save({}, {
      success: function(){
        console.log("success!")
      },
      error: function(){
        console.log("error!!")
      }
    })
  },
  
  updateAvatar: function(event){
    console.log("event triggered for avatar")
    $(event.currentTarget)
    debugger
  },
  
  render: function(){
    var renderedContent = this.template({ user: this.model });
    this.$el.html(renderedContent);
    filepicker.constructWidget(this.$('.fp-tagged'));    
    return this;
  },
  
  
  
});
