// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
jQuery.ajaxSetup({
 'beforeSend': function(xhr) { xhr.setRequestHeader("Accept", "text/javascript") }
});


$(document).ready(function(){

   $('.voting_arrow').click(function() {
       var entryId = this.id;
       $.post('/contest/vote', {id: entryId },null, "script")
           .success(function(data) {
            $('#'+entryId+'voteCount').html(data);
           })

           .error(function() { alert("An error occurred trying to count your vote.  Please try again.");});
   });
});