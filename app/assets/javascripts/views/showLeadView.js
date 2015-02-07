var App = App || {};

App.ShowLeadView = Backbone.View.extend ({

  render: function() {
    this.$el.html(JST['leads/show'](this.model.toJSON()));
    return this;
   }

});