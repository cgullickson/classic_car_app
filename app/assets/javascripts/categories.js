$(function () {
  $('#addCategory').on('click', function () {
    $.ajax({
      type: "GET",
      url: $(this).data("url")
    }).done(function(data) {
      $("#newCategory").append(data)
      $("#addCategory").hide()
	});
  });
});
