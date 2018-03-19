$(document).ready(function () {

	$(".loadCars").click(function(event) {
    event.preventDefault()
		var url = this.href

	$.getJSON(url)
    .success(function(data) {
	  	$('#cars').html("");

	    $.each(data, function(index, value) {

	    	var newCar = new Car(value, url);

	    	var carHtml = newCar.formatDisplay();
			  $('#cars').append(carHtml)


			});

	  });
	});
});

function Car(car, url) {
    this.id = car.id;
    this.make = car.make;
    this.model = car.model;

    if (car.awards) {
        this.awards = car.awards.map(award => new Award(award));
    }
}

Car.prototype.formatDisplay = function() {
	var awardsHtml = ""
	$.each(this.awards, function() {
    // debugger
		var awardListItem = this.formatDisplay()
		awardsHtml += awardListItem
	});
	var carHtml = `<div><a href='${this.carUrl}'>${this.make} ${this.model} </a></div>
											<div>Awards:</div>
											<ul>${awardsHtml}</ul>`;
	return carHtml;
};

function Award(award) {
	this.id = award.id
	this.title = award.title
	this.description = award.description
};

Award.prototype.formatDisplay = function() {
  console.log(this)
	var awardHtml = `<li>Award: ${this.title}, Description: ${this.description}</li>`
	return awardHtml;
};
