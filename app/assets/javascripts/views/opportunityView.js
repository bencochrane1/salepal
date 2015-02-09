var App = App || {};

App.OpportunityView = Backbone.View.extend({
  // tagName: 'div',
  // className: 'opportunity-panel'

  render: function(data) {
    $(".opportunity-panel-holder").append(JST['opportunities/opportunity'](this.model));
    return this;
  }
});