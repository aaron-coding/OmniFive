Gigrr.Views.GigsIndexItem = Backbone.View.extend({

  template: JST['gigs/index_item'],
  className: 'gigs-index-item',
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
    this.$el.attr("data-href", "#gigs/" + this.model.get("id"));
  },
  
  events: {
    "click .gig-like": "toggleLike",
    "click .inner-gig-index": "navigateToGigUrl"
  },
  
  toggleLike: function(event){
    console.log(this.model.id);
    
    $.ajax({
      type: "POST",
      url: "/api/likes",
      data: {
        'like': {
          'gig_id': this.model.id
        }
      },
      success: function(){
        alert("Like Saved!")
      }
    });
    
    event.stopPropagation();
  },
  
  navigateToGigUrl: function(event){
    Backbone.history.navigate(this.$el.data("href"), { trigger: true })
  },
  
  render: function(){
    var renderedContent = this.template({ gig: this.model });
    this.$el.html(renderedContent);
    return this;
  }

});
