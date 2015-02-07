var App = App || {};

App.LeadsView = Backbone.View.extend ({

  events: {
    'click tr': 'linkToLeadShow'    
  },


  initialize: function() {
    this.collection.on("change", this.appendNewLead, this);
  },

  renderCollection: function (data) {

    this.$el.find("tbody").html("");

    data.each(function(lead){
      var leadView = new App.LeadView({ model: lead });
      this.$el.find("tbody").append(leadView.render().el);
    }, this);
  },

  render: function () {
    this.$el.html(JST['leads/app']());
    this.renderCollection(this.collection);
    return this;
  },

  linkToLeadShow: function(event) {
    var span = $(event.currentTarget).children("span");
    var leadLink = span.attr("data-url");
    App.router.openPage(leadLink);

  }

});