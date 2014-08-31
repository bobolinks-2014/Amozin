// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require owl.carousel
//= require_tree .


$(function(){ $(document).foundation(); });
$(document).ready(function() {
   $(".owl-carousel").owlCarousel();
  $("#new_review").submit(function(event){
     event.preventDefault();
     var data = $(this).serialize()
     var url = $(this).attr("action");
     $.ajax({
      type: "POST",
      dataType: "json",
      data: data,
      url: url,
      success: function(new_data){
        console.log(new_data)
        $(".reviews").prepend(
          "<ul><li>"
          + new_data.rating
          + "</li>"
          +"<li>"
          + new_data.content
          +"</li></ul>"
          )
      }
     })
  })
});
