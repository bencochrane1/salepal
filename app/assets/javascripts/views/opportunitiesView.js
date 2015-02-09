var App = App || {};

App.OpportunitiesView = Backbone.View.extend ({

  events: {
    'click .create-new-lead': 'createNewOpportunity'       
  },

  // initialize: function() {
  //   this.collection.on("change", this.appendNewOpportunity, this);
  // },

  renderCollection: function (data) {
    $(".opportunity-panel-holder").html("");
    if (data) {
      data.forEach(function(opportunity){
        var opportunityView = new App.OpportunityView({ model: opportunity });
        this.$el.find(".opportunity-panel-holder").append(opportunityView.render().el);
      }, this);
    }
  },

  render: function (data) {
    this.$el.html(JST['leads/show']());
    this.renderCollection(data);
    return this;
  },

  renderOpportunityCreateForm: function() {
    console.log("lets render the opportunity create form")
    // this.$el.find('.input-field').show();
    // this.$el.find(".input-field").html(JST['flights/create-flight-form']());
    // this.$el.find('.create-flight-button').hide();
    // this.$el.find('.input-field-search').hide();
  },

  linkToLeadShow: function(event) {
    // var span = $(event.currentTarget).children("span");
    // var leadLink = span.attr("data-url");
    // App.router.openPage(leadLink);
  },

  createNewOpportunity: function(event, opportunity) {
    // event.preventDefault();
    // var title = this.$el.find('#recipient-name').val();
    // if (title == "")
    //   alert("Make sure you enter a lead name :)");
    // else {
    //   var newLead = this.collection.create({ title: title })
    // }
    // this.$el.find(".modal").fadeOut();
  },

  appendNewOpportunity: function(lead) {
    // var leadView = new App.LeadView({ model: lead });
    // this.$el.find(".leads-hover").append(leadView.render().el);
  }

});




