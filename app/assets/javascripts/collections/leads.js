var App = App || {}

App.Leads = Backbone.Collection.extend({
  url: '/api/leads',
  model: App.Lead

});
