$(function(){
  $("a.load_awards_" + id).on("click", function(e){

    e.preventDefault()

    $.get(this.href).success(function(json){
      var $ol = $("div.awards ol")
      $ol.html("")

      json.forEach(function(award){
        $ol.append("<li>" + award.title + "</li><br>");
      })
    })

})
})
