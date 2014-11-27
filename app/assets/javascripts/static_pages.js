var ready = function() {
	
	$('.portions-select').change(function() {
		var mealId = $(this).attr('id')
		var label = $('label[data-id=' + mealId + ']');
		var price = label.attr('data-price');
		var amount = price * $(this).val();
		label.html("Cost: $" + amount.toFixed(2));
		
		var stripeButton = $('script[data-id=' + mealId + ']');
		stripeButton.attr("data-amount", amount * 100);
		multiplier = $(this).val();
	});
}

$( document ).ready(ready);
$( document ).on('page:load', ready);