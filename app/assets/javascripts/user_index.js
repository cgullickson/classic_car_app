$(document).ready(function () {

	$(".loadCars").click(function(event) {
    event.preventDefault()
		let url = this.href

	$.getJSON(url)
    .success(function(data) {
	  	$('#cars').html("")

	    $.each(data, function(index, value) {

	    	let newCar = new Car(value, url)

	    	let carHtml = newCar.formatDisplay()

			  $('#cars').append(carHtml)

			})

	  })
	})
})

$(function () {
	$(".twoOrMore").click(function(event) {
		event.preventDefault()
		let url = this.href

		$.getJSON(url)
			.success(function(data) {
				$('#cars').html("")

				let newData = data.filter( car => car.awards.length >= 2 )

				$.each(newData, function(index, value) {

		    	let newCar = new Car(value, url)

		    	let carHtml = newCar.formatDisplay()

				  $('#cars').append(carHtml)

				})


		})
	})
})

function Car(car, url) {
    this.id = car.id
    this.make = car.make
    this.model = car.model

    // debugger
    if (car.awards) {
        this.awards = car.awards.map(award => new Award(award))
    }
}

Car.prototype.formatDisplay = function() {
	var awardsHtml = ""
	$.each(this.awards, function() {
    // debugger
		var awardListItem = this.formatDisplay()
		awardsHtml += awardListItem
	});
	var carHtml = `<div><h2>${this.make} ${this.model}</h2></div>
								<div>Awards:</div>
								<ul>${awardsHtml}</ul>`

	return carHtml
}

function Award(award) {
	this.id = award.id
	this.title = award.title
	this.description = award.description
}

Award.prototype.formatDisplay = function() {
	var awardHtml = `<li>${this.title}, ${this.description}</li>`
	return awardHtml
}
