var App = App || {};

App.ContactView = Backbone.View.extend({

  render: function(data) {
    $(".contact-panel-holder").append(JST['contacts/contact'](this.model));
    return this;
  }
});