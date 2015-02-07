var App = App || {}

App.Router = Backbone.Router.extend({

  openPage: function(url) {
    this.navigate(url, { trigger: true });
  },

  routes: {
    "leads": "allLeads",
    "dashboard": "theDashboard",
    "": "theDashboard"
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
  }


});



App.router = new App.Router();


$("body").on("click", "a", function(event) {
  event.preventDefault();
  var href = $(this).attr("href");
  App.router.openPage(href);

});



