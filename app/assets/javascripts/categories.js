$(document).ready(function () {
  $('#addCategory').on('click', function () {
    $.ajax({
      type: "GET",
      url: $(this).data("url")
    }).done(function() {
	});
  });
});
