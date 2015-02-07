var App = App || {};

App.DashboardView = Backbone.View.extend ({

  render: function () {
    this.$el.html(JST['dashboard/app']());
    return this;
  },


});