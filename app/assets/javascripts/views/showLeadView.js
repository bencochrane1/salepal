var App = App || {};

App.ShowLeadView = Backbone.View.extend ({

    events: { 
        'click .lead-title': 'renderEditForm',
        'submit form': 'updateLeadTitle',
        'click .cancel-title-edit': 'cancelLeadTitleEdit',
        'click .delete-lead': 'deleteLead'
    },


    render: function() {
        this.$el.html(JST['leads/show'](this.model.toJSON()));
        return this;
    },

    renderEditForm: function(event) {
        $(event.currentTarget).html(JST['leads/editForm'](this.model.toJSON()));
        $(event.currentTarget).removeClass("lead-title");
        this.$el.find(".title").select();
    },

    updateLeadTitle: function(event) {
        event.preventDefault();

        this.model.save({
            title: this.$el.find(".title").val()
        });

        this.$el.find("form").fadeOut();
        this.render();
    },

    cancelLeadTitleEdit: function() {
        this.$el.find("form").fadeOut();
        this.render();
    },

    deleteLead: function(event) {
        alert("Are you sure you want to delete this lead?");
        event.stopPropagation();
        this.$el.fadeOut();
        // this.model.destroy({ success: function(){
        //     this.navigate('leads', { trigger: true });
        // }});
        this.model.destroy();
        this.remove();
    }

});