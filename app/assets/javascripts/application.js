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
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/2/jquery.dataTables.bootstrap
//= require turbolinks
//= require twitter/bootstrap
//= require bootstrap-datepicker
//= require_tree .
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require chosen-jquery
//= require jquery_nested_form
//= require jquery.turbolinks

$(function(){
	$(".chosen-select").chosen()
	$(".chosen-select").trigger("chosen:updated");
});

function cocktailFilter(itype, id){
  var params = window.location.search;
  var num='_1=';
  var prepend='?';
  if (params.indexOf(itype) > -1){
    num='_2='
  }
  if (params.indexOf('?') > -1){
    prepend='&'
  }
  window.location.replace(window.location.href+prepend+itype+num+id)
}

function toggleProcessLogHistory(row){
  $('.'+row).toggle()
  $('#caret-right-'+row).toggle()
  $('#caret-down-'+row).toggle()
}
