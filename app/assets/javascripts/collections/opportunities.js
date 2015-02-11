var App = App || {}

App.Opportunities = Backbone.Collection.extend({
  url: '/api/opportunities',
  model: App.Opportunity,

});
