var App = App || {};

App.OpportunityView = Backbone.View.extend({
  tagName: 'div',
  // className: 'opportunity-panel'

  render: function() {
    this.$el.html(JST['opportunities/opportunity'](this.model.toJSON()));
    return this;
  }
});