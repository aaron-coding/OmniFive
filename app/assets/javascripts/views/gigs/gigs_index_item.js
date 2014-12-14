Gigrr.Views.GigsIndexItem = Backbone.View.extend({

  template: JST['gigs/index_item'],
  
  className: 'gigs-index-item',
  
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
    this.liked = false;
    if (this.model.liked()) {
      this.liked = true;
    }
    this.$el.attr("data-href", "#gigs/" + this.model.get("id"));
  },
  
  events: {
    "click .gig-like": "toggleLike",
    "click .inner-gig-index": "navigateToGigUrl"
  },
  
  toggleLike: function(event){
    event.stopPropagation();
    var curTarget = $(event.currentTarget);   
    var typeToUse = this.liked ? "DELETE" : "POST";
    var that = this;
    $.ajax({
      type: typeToUse,
      url: "/api/likes", //custom destroy defined to not to require id
      data: {
        'like': { 'gig_id': this.model.id }
      },
      success: function(){
        that.toggleCallback(curTarget);
      }
    });
  },
  
  toggleCallback: function(curTarget){
    if (this.liked){
      curTarget.removeClass('liked');
      this.liked = false;
    } else {
      curTarget.addClass('liked');      
      this.liked = true;
    }
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
