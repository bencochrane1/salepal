var App = App || {};

App.LeadView = Backbone.View.extend({
  tagName: 'a',
  className: 'list-group-item',

  render: function() {
    // var flight = this
    this.$el.html(JST['leads/lead'](this.model.toJSON()));
    return this;
  }
});