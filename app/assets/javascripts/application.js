// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

//= require jquery.ui.datepicker

$(document).ready(function(){
  /* This code is executed after the DOM has been completely loaded */

  $( '#checkin, #checkout' ).datepicker();
  
  $('header nav a, footer a.up').click(function(e){
                      
    // If a link has been clicked, scroll the page to the link's hash target:
    
    $.scrollTo( this.hash || 0, 500);
    e.preventDefault();
  });

});
