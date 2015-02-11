var App = App || {};

App.EmailView = Backbone.View.extend({
  // tagName: 'div',
  // className: 'opportunity-panel'

  render: function(data) {
    $(".email-panel-holder").append(JST['emails/email'](this.model));
    return this;
  }
});