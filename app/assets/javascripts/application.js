// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly her  e, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery_ujs
//= require handlebars.runtime
//= require_tree ./models
//= require_tree ./collections
//= require_tree ./views
//= require_tree ./templates
//= require_tree ./routers
//= require_tree .


var App = App || {}

$(function() {
    Handlebars.registerHelper('xIf', function (lvalue, operator, rvalue, options) {

        var operators, result;

        if (arguments.length < 3) {
            throw new Error("Handlerbars Helper 'compare' needs 2 parameters");
        }

        if (options === undefined) {
            options = rvalue;
            rvalue = operator;
            operator = "===";
        }

        operators = {
            '==': function (l, r) { return l == r; },
            '===': function (l, r) { return l === r; },
            '!=': function (l, r) { return l != r; },
            '!==': function (l, r) { return l !== r; },
            '<': function (l, r) { return l < r; },
            '>': function (l, r) { return l > r; },
            '<=': function (l, r) { return l <= r; },
            '>=': function (l, r) { return l >= r; },
            'typeof': function (l, r) { return typeof l == r; }
        };

        if (!operators[operator]) {
            throw new Error("'xIf' doesn't know the operator " + operator);
        }

        result = operators[operator](lvalue, rvalue);

        if (result) {
            return options.fn(this);
        } else {
            return options.inverse(this);
        }
    });

    Backbone.history.start({ pushState: true });
});


// $(document).ready(function(){
//     Dropzone.autoDiscover = false;
 
//     // if ($('#csv-upload-form').length > 0) {

//     //     $('#file').dropzone({
//     //         maxFilesize: 10,
//     //         url: $('#csv-upload-form').attr('action'),
//     //         paramName: 'file',
//     //         addRemoveLinks: true,
//     //         success: function(file, response) {
//     //             console.log(response);
//     //         },
//     //         headers: { "X-CSRF-Token": $("meta[name=\"csrf-token\"").attr("content"), "Accepts": "application/json" }
//     //     }); 
//     // }
    
// });



$(document).on('dragover', function(e) {
    console.log("you are dragging!!!!");
    // var dt = e.originalEvent.dataTransfer;
    // if(dt.types != null && (dt.types.indexOf ? dt.types.indexOf('Files') != -1 : dt.types.contains('application/x-moz-file'))) {
    //     $("#dropzone").show();
    //     window.clearTimeout(dragTimer);
    }
);
