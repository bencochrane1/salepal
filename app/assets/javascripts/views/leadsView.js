var App = App || {};

App.LeadsView = Backbone.View.extend ({

  events: {
    'click tr': 'linkToLeadShow',
    'click .create-new-lead': 'createNewLead'       
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
  },

  createNewLead: function(event, lead) {
    event.preventDefault();
    var title = this.$el.find('#recipient-name').val();
    if (title == "")
      alert("Make sure you enter a lead name :)");
    else {
      var newLead = this.collection.create({ title: title })
    }
    this.$el.find(".modal").fadeOut();
  },

  appendNewLead: function(lead) {
    var leadView = new App.LeadView({ model: lead });
    this.$el.find(".leads-hover").append(leadView.render().el);
  }

});




