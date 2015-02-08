var App = App || {};

App.LeadView = Backbone.View.extend({
  tagName: 'tr',

  render: function() {
    this.$el.html(JST['leads/lead'](this.model.toJSON()));
    return this;
  }
});