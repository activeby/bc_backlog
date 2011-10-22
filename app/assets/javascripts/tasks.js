//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(function() {
        $( "#backlog" ).sortable({
                cancel: ".slide_head"
        });

        $( "#backlog li" ).disableSelection();

        $("#backlog").sortable({
    		handle: ".t_project", 
                stop: function(event, ui) {
                        var result = $("#backlog").sortable("toArray");
                        console.log(result);
                }
        });
});

