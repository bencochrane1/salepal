var App = App || {};

App.LeadsView = Backbone.View.extend ({

  events: {
    'click tr': 'linkToLeadShow',
    'click button.create-new-lead': 'createNewLead',
    'submit form.create-new-lead': 'createNewLead',
    'keyup .search-bar': 'searchLeads',     
    // 'dblclick #page-wrapper': 'dragNewLeads',
    'mousedown window': 'renderFileUploadOutline',
  },

  initialize: function() {
    this.collection.on("add", this.appendNewLead, this);
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
    if (title == "" ) {
      alert("Make sure you enter a lead name :)");
    } else {
      var newLead = this.collection.create({ title: title })
      this.$el.find(".modal").fadeOut();
    }
  },

  appendNewLead: function(lead) {
    var leadView = new App.LeadView({ model: lead });
    this.$el.find(".leads-hover").append(leadView.render().el);
    // if ( $(".lead-add-success").hasClass("hidden") ) {
    //   $(".lead-add-success").Class("hidden");
    // }



    setTimeout(function () {
      if ( $(".lead-add-success").hasClass("hidden") ) {
        $(".lead-add-success").removeClass("hidden");
      }
    }, 2000)
  },

  addAllNewLeads: function() {

  },

  searchLeads: function() {

    var searchInput = $(".search-bar").val();
    // console.log(searchInput);

    if (searchInput === "") {
      this.renderCollection(this.collection);
    } else {
      this.renderCollection(this.collection.filterBySearch(searchInput));   
    }

  },

  renderFileUploadOutline: function() {

    // var isDown;

    $('#page-wrapper').mouseenter(function() {
    console.log("i'm in the mousedown");  
      // var isDown = true;
    // })
    // .mouseup(function() {
    //   var isDown = false;
    // });

    // if (isDown) {
    //   console.log("dragging!");  
    // }

  })}

});




