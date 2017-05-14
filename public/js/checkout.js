
Stripe.setPublishableKey('pk_test_wucR1z0HRdYi5YVpVjYHFmJP');

$(function() {
    var $form = $('#checkout-form');
    $form.submit(function(event) {
        $('#charge-error').addClass('hidden');

        // Disable the submit button to prevent repeated clicks:
        $form.find('.submit').prop('disabled', true);

        // Request a token from Stripe:
        Stripe.card.createToken($form, stripeResponseHandler);

        // Prevent the form from being submitted:
        return false;
    });

    function stripeResponseHandler(status, response) {
        if(response.error) {
            $('#charge-error').removeClass('hidden');
            $('#charge-error').text(response.error.message);
            $form.find('button').prop('disabled', false);
        } else {
            var token = response.id;
            $form.append($('<input type="hidden" name="stripeToken">').val(token));

            // submits the form
            $form.get(0).submit();
        }
    };
});