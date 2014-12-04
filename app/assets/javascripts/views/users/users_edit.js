Gigrr.Views.UsersEdit = Backbone.CompositeView.extend({

  template: JST['users/edit'],
  
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },
  
  events: {
    "submit form": "handleSubmit"
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
  
  render: function(){
    var renderedContent = this.template({ user: this.model });
    this.$el.html(renderedContent);
    filepicker.constructWidget(this.$('.fp-tagged'));    
    return this;
  },
  
  
  
});
