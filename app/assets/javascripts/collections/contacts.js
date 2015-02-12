var App = App || {}

App.Contacts = Backbone.Collection.extend({
  url: '/api/contacts',
  model: App.Contact,

});
