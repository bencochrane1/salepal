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
    App.leadsCollection = new App.Leads();
    App.leadsCollection.fetch().then(function() {
      App.leadsView = new App.LeadsView( { collection: App.leadsCollection });
      $("#container").html(App.leadsView.render().el);
      $('#page-wrapper').dropzone({
          maxFilesize: 10,
          url: $('#csv-upload-form').attr('action'),
          paramName: 'file',
          addRemoveLinks: true,
          success: function(file, response) {
              App.leadsCollection.fetch().then(function () {
                App.leadsView.render();
                $(".lead-add-success").removeClass("hidden");
                if ( !$(".lead-add-success").hasClass("hidden") ) {
                  setTimeout(function () {
                    $(".lead-add-success").addClass("hidden");
                  }, 2000)
                }
              });
          },
          headers: { "X-CSRF-Token": $("meta[name=\"csrf-token\"").attr("content"), "Accepts": "application/json" }
      }); 
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

    App.newLeadCollection = new App.Leads();
    App.newOpportunityCollection = new App.Opportunities();
    App.newEmailCollection = new App.Emails();
    App.newContactCollection = new App.Contacts();

    App.newLeadCollection.fetch().then(function() {

      App.newEmailCollection.fetch({ data: { lead_id: id }}).then(function(email_data) {

          App.newOpportunityCollection.fetch({ data: { lead_id: id }}).then(function(opportunity_data) {

                var leadModel = App.newLeadCollection.get(id);
                App.showLeadView = new App.ShowLeadView( { model: leadModel });
                $("#container").html(App.showLeadView.render().el);

                App.newOpportunitiesView = new App.OpportunitiesView();
                App.newOpportunitiesView.render(opportunity_data);

                App.newEmailsView = new App.EmailsView();
                App.newEmailsView.render(email_data);

          });


      });

    });
  }

});

App.router = new App.Router();

$("body").on("click", "a:not([data-backbone-link=\"false\"])", function(event) {
  event.preventDefault();
  var href = $(this).attr("href");
  App.router.openPage(href);
});

$("body").on("keyup", ".search-bar", function(event) {
  App.router.navigate('leads', { trigger: true });
  App.leadsView.searchLeads();
});

