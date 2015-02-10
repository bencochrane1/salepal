var App = App || {};

App.ShowLeadView = Backbone.View.extend ({

    events: { 
        'click .lead-title': 'renderEditForm',
        'submit form': 'updateLeadTitle',
        'click .cancel-title-edit': 'cancelLeadTitleEdit',
        'click .delete-lead': 'deleteLead',
        'change .status-dropdown' : 'updateLeadStatus',
        'click .create-opportunity-button': 'renderOpportunityCreateForm', 
        'click .save-opportunity-button': 'saveOpportunityCreateForm', 
        'click .cancel': 'cancelNewOpportunity',
        'click .new-opp-trash': 'cancelNewOpportunity'
    },

    initialize: function() {
        App.newOpportunityView = new App.OpportunityView();
        App.newOpportunityView.on("change", this.appendNewOpportunity, this);
    },    

    render: function() {
        this.$el.html(JST['leads/show'](this.model.toJSON()));
        var newOpportunitiesView = new App.OpportunitiesView();
        newOpportunitiesView.render();
        return this;
    },

    renderEditForm: function(event) {
        $(event.currentTarget).html(JST['leads/editForm'](this.model.toJSON()));
        $(event.currentTarget).removeClass("lead-title");
        this.$el.find(".title").select();
    },

    updateLeadStatus: function() {
        var dropdownStatus = this.$el.find(".status-dropdown").val();
        var dropdownText;

        if (dropdownStatus == "Hot") {
            dropdownText = "hot lead";
        } else if (dropdownStatus == "Warm") {
            dropdownText = "warm lead";
        } else {
            dropdownText = "cold lead";
        }

        this.model.save({
            status: dropdownText
        });
    },

    updateLeadTitle: function(event) {
        event.preventDefault();

        this.model.save({
            title: this.$el.find(".title").val(),
        });

        this.$el.find("form").fadeOut();
        this.render();
    },

    cancelLeadTitleEdit: function() {
        this.$el.find("form").fadeOut();
        this.render();
    },

    deleteLead: function(event) {
        if(confirm("Are you sure you want to delete this lead?")) {
            event.stopPropagation();
            this.$el.fadeOut();
            this.model.destroy().then(function() {
                App.router.openPage('leads', { trigger: true });
            });
            this.remove();
        }

    },

    saveOpportunityCreateForm: function(event, opportunity) {

        event.preventDefault();
        var status = this.$el.find('#opp-status-dropdown').val();
        var confidence = this.$el.find('.opp-percentage').val();
        var value = this.$el.find('.opp-value').val();
        var assigned_to = this.$el.find('.opp-assigned-dropdown').val();
        var comments = this.$el.find('.opportunity-comments').val();
        debugger;
        // if (status == "" || confidence == "" || value == "" || assigned_to == "" || comments == "") {
        //   alert("Let's put in at least the value for this opportunity.");
        // } else {
        var newOpportunity = App.newOpportunityCollection.create({ status: status });  
        // }
    },

    appendNewOpportunity: function(opportunity) {
        var opportunityView = new App.OpportunityView({ model: opportunity });
        this.$el.find(".opportunity-panel-holder").append(opportunityView.render().el);
    },


    renderOpportunityCreateForm: function(event) {
        event.preventDefault();
        // event.stopPropagation();
        this.$el.find(".opportunity-edit-form-holder").html(JST['opportunities/edit-form']());
    }, 

    cancelNewOpportunity: function() {
        this.$el.find(".opportunity-edit-form-holder").fadeOut("fast");
        // App.newOpportunitiesView.render();
    }



});