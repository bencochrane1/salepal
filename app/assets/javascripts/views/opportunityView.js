var App = App || {};

App.OpportunityView = Backbone.View.extend({
  tagName: 'div',
  // className: 'opportunity-panel'

  render: function(data) {
    $(".opportunity-panel").append(JST['opportunities/opportunity'](this.model));
    return this;
  }
});