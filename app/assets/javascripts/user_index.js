$(function(){
  $("a.load_cars").on("click", function(e){

    e.preventDefault()

    $.get(this.href).success(function(json){
      var $ol = $("div.cars ol")
      $ol.html("")

      json.forEach(function(car){
        $ol.append(
          "<li><h2>" + car.make + " " + car.model + "</h2><br>" +
          "<h3>" + car.year + "</h3><br>" +
          "<h3>" + car.color + "</h3></li><br>"
        );
      })
    })

})
})
