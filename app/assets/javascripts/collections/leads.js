var App = App || {}

App.Leads = Backbone.Collection.extend({
  url: '/api/leads',
  model: App.Lead,

  filterBySearch: function (searchInput) {

        var matchedLeads = this.filter(function(lead){
            return lead.attributes.title.toLowerCase().indexOf(searchInput.toLowerCase()) !== -1;
        });

        return new App.Leads(matchedLeads);
  }

});
