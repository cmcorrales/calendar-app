// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// function overlay() {
// 	el = document.getElementById("overlay");
// 	el.style.visibility = (el.style.visibility == "visible") ? "hidden" : "visible";
// }
//
// <a href='#' onclick='overlay()'>Click here to show the overlay</a>
//
// document.getElementById("myBtn").addEventListener("click", displayDate)

// for(let i=1; i < 32; i++) {
//     document.getElementById(`${i}`).addEventListener("click", console.log("clicked", i))
// }

showModal(date) {
  console.log(date)
}

document.addEventListener('click', function(e) {
  if(e.target && !!isNaN(event.target.id)) {
    showModal(event.target.id)
  }
})
