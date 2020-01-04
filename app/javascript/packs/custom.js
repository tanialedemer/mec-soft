$(function() {
  $('[data-toggle="tooltip"]').tooltip();
});

$(function() {
  $('[data-toggle="popover"]').popover();
});


document.addEventListener("turbolinks:load",() => {
	$('[data-toogle="tooltip"]').tooltip()
	$('[data-toggle="popover"]').popover()
})