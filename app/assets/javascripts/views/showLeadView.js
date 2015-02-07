var App = App || {};

App.ShowLeadView = Backbone.View.extend ({

  render: function() {
    console.log("lead show render is kicking off")
    console.log(this.$el);
    this.$el.html(JST['leads/show'](this.model.toJSON()));
    return this;
   }

});