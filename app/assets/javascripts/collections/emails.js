var App = App || {}

App.Emails = Backbone.Collection.extend({
  url: '/api/emails',
  model: App.Email
});
