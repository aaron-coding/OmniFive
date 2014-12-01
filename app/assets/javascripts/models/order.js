Gigrr.Models.Order = Backbone.Model.extend({
  urlRoot: "/api/orders"// ,

//   extras: function(){
//     if (!this._extras){
//       this._extras = new Gigrr.Collections.OrderExtras([], {})
//     }
//
//     return this._extras;
//   },
//
//   parse: function(response){
//     if (response.orderextras){
//       var extras = response.orderextras;
//       this.extras().set(extras);
//       delete response.orderextras
//     }
//
//     return response;
//   }
});
