var App = App || {};

App.LeadsView = Backbone.View.extend ({

  events: {
    'click tr': 'linkToLeadShow',
    // 'submit form': 'createFlight',
    // 'click .cancel-flight': 'cancelFlight',
    // 'keyup .origin': 'searchFlights',
    // 'keyup .destination': 'searchFlights',      
  },


  initialize: function() {
    this.collection.on("change", this.appendNewLead, this);
  },

  // cancelLead: function() {
  //   this.$el.find('.input-field-search').show();
  //   this.$el.find('.create-flight-button').show();
  //   this.$el.find('.input-field').hide();

  // },

  renderCollection: function (data) {

    this.$el.find("tbody").html("");

    data.each(function(lead){
      var leadView = new App.LeadView({ model: lead });
      this.$el.find("tbody").append(leadView.render().el);
    }, this);
  },

  // renderLeadLinkCollection: function() {
  //   console.log("its the a tags for the leads");
  // },


  render: function () {
    this.$el.html(JST['leads/app']());
    this.renderCollection(this.collection);
    // this.renderLeadLinkCollection(this.collection);
    return this;
  },

  linkToLeadShow: function(event) {
    var span = $(event.currentTarget).children("span");
    var leadLink = span.attr("data-url");
    App.router.openPage(leadLink);

  }

  // renderFlightCreateForm: function() {
  //   this.$el.find('.input-field').show();
  //   this.$el.find(".input-field").html(JST['flights/create-flight-form']());
  //   this.$el.find('.create-flight-button').hide();
  //   this.$el.find('.input-field-search').hide();

  // },


  // createFlight: function(event, flight) {
  //   event.preventDefault();
  //   var flight_number = this.$el.find('.flight-number').val();
  //   var date = this.$el.find('.date').val();
  //   var origin = this.$el.find('.origin-create').val();
  //   var destination = this.$el.find('.destination-create').val();
  //   var plane_id = this.$el.find('.plane_id').val();

  //   var a = this.$el.find('.flight-number').val();
  //   var b = this.$el.find('.date').val();
  //   var c = this.$el.find('.origin-create').val();
  //   var d = this.$el.find('.destination-create').val();
  //   var e = this.$el.find('.plane_id').val();
    
  //   if (a == "" || b == "" || c == "" || d == "" || e == "") {
  //     alert("Make sure all of the fields are completed");
  //   } else {
  //     var newFlight = this.collection.create({ flight_number: flight_number, date: date, origin: origin, destination: destination, plane_id: plane_id });  
  //   }
    
  // },

  // appendNewFlight: function(flight) {
  //   var flightView = new App.FlightView({ model: flight })
  //   this.$el.find("#planeTable").append(flightView.render().el);
  //   this.$el.find('.create-flight-button').show();
  //   this.$el.find('.input-field-search').show();
  //   this.$el.find('.input-field').hide();

  // },

  // searchFlights: function() {

  //   var searchOrigin = this.$el.find("input.origin").val();
  //   var searchDestination = this.$el.find("input.destination").val();
  //   //console.log(searchOrigin);

  //   if (searchOrigin === "" || searchDestination === "") {
  //     this.renderCollection(this.collection);
  //   } else {
  //     this.renderCollection(this.collection.filterBySearch(searchOrigin, searchDestination));   
  //   }
    
  // }


});