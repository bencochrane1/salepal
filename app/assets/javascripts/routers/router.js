var App = App || {}

App.Router = Backbone.Router.extend({

  openPage: function(url) {
    this.navigate(url, { trigger: true });
  },

  routes: {
    "leads": "allLeads",
    "leads/:id": "showLead",
    "dashboard": "theDashboard",
    "": "theDashboard",
    "smart-views": "smartViews",
    "reporting": "reportingView",
    "tasks": "allTasks"
    
  },

  allLeads: function() {
    var leadsCollection = new App.Leads();
    leadsCollection.fetch().then(function() {
      var leadsView = new App.LeadsView( { collection: leadsCollection });
      $("#container").html(leadsView.render().el);
    });
  },

  theDashboard: function() {
    var dashboardView = new App.DashboardView();
    $("#container").html(dashboardView.render().el);
  },

  // showLead: function(id) {
  //   var newLeadCollection = new App.Leads();
  //   newLeadCollection.fetch().then(function() {
  //     var leadModel = newLeadCollection.get(id);
  //     var showLeadView = new App.ShowLeadView( { model: leadModel });
  //     $("#container").html(showLeadView.render().el);
  //   });
  // }

  showLead: function(id) {

    var newLeadCollection = new App.Leads();
    var newOpportunityCollection = new App.Opportunities();

    newLeadCollection.fetch().then(function() {
      newOpportunityCollection.fetch().then(function() {

      var leadModel = newLeadCollection.get(id);
      var showLeadView = new App.ShowLeadView( { model: leadModel });
      $("#container").html(showLeadView.render().el);

      });

    });
  }

});

App.router = new App.Router();

$("body").on("click", "a", function(event) {
  event.preventDefault();
  var href = $(this).attr("href");
  App.router.openPage(href);

});



