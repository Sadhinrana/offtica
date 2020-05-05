/*-----------------------------------------------------------------------------------
  Template Name: Offpacks HTML5 Template.
  Template URI: #
  Description: Offpacks is a unique website template designed in HTML with a simple & beautiful look. There is an excellent solution for creating clean, wonderful and trending material design corporate, corporate any other purposes websites.
  Author: Offpacks Groups
  Author URI: https://www.offpacks.com
  Version: 1.1
-----------------------------------------------------------------------------------*/

/*-------------------------------
[  Table of contents  ]
---------------------------------
  01. Product quickview
  02. Register
  03. Login
  04. Wishlist CRUD
  05. User CRUD
  06. Compare CRUD
  07. Message CRUD
  08. Cart CRUD
  09. Coupon CRUD
  10. Product
  11. Product Review
  12. Product sorting
  13. Password reset
  14. Subscription
/*--------------------------------
[ End table content ]
-----------------------------------*/


// passes csrf token to every ajax htttp request
// =============
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});



/*-------------------------------------------
  01. Product quickview
--------------------------------------------- */


// Show function
$(document).on('click', '.quick-view', function() {
    $('.success-cart').addClass('hidden');
    $('.error-cart').addClass('hidden');
    $('#name').text($(this).data('name'));
    $('.quick-desc').text($(this).data('desc'));
    $('#id').val($(this).data('id'));
    if($(this).data('saleprice') !== ""){
        $('.quick-add-to-cart').show();
        $('.s-price-box').html('<span class="new-price">৳' + $(this).data('saleprice') + '</span><span class="old-price"></span>');
    }else{
        $('.quick-add-to-cart').hide();
        $('.s-price-box').html('<a href="#" data-subject="Price quotation for '+$(this).data('name')+'" data-message="I would like to know the price of '+$(this).data('name')+'." id="quotation" class="btn btn-info" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>');
    }
    if($(this).data('regularprice') !== ""){
        $('.old-price').text('৳' + $(this).data('regularprice'));
    }else{
        $('.old-price').text('');
    }
    $('#img').attr('src', $(this).data('image'));
    $('.see-all').attr('href', $(this).data('url'));
    if ($(this).data('rating')) {
        $('.review a').text($(this).data('review') + ' customer reviews');
        if ($(this).data('rating') == 5) {
            $('.rating').html( '<li><span class="ti-star"></span></li><li><span class="ti-star"></span></li><li><span class="ti-star"></span></li><li><span class="ti-star"></span></li><li><span class="ti-star"></span></li>'
            );
        } else if ($(this).data('rating') == 4) {
            $('.rating').html( '<li><span class="ti-star"></span></li><li><span class="ti-star"></span></li><li><span class="ti-star"></span></li><li><span class="ti-star"></span></li>'
            );
        } else if ($(this).data('rating') == 3) {
            $('.rating').html( '<li><span class="ti-star"></span></li><li><span class="ti-star"></span></li><li><span class="ti-star"></span></li>'
            );
        } else if ($(this).data('rating') == 2) {
            $('.rating').html( '<li><span class="ti-star"></span></li><li><span class="ti-star"></span></li>'
            );
        }
        else{
            $('.rating').html( '<li><span class="ti-star"></span></li>'
            );
        }
    } else{
        $('.rating__and__review').html('<p style="color:red">No review yet</p>');
    }
});







/*-------------------------------------------
  02. Register
--------------------------------------------- */


// -- ajax Form register --

$(function() {

    // Get the form.
    var form = $('#register-form');

    // Set up an event listener for the register form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Hide messages of login form
        $('.error-login').addClass('hidden');

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                if ((data.errors)) {
                    $('.success-register').addClass('hidden');
                    $('.err').remove();
                    $('.error-register').removeClass('hidden');
                    if (typeof data.errors.company !== 'undefined') {
                        $('.error-register').append("<li class='err'>" + data.errors.company + "</li>");
                    };
                    if (typeof data.errors.email !== 'undefined') {
                        $('.error-register').append("<li class='err'>" + data.errors.email + "</li>");
                    };
                    if (typeof data.errors.response !== 'undefined') {
                        $('.error-register').append("<li class='err'>" + data.errors.response + "</li>");
                    };
                    if (typeof data.errors.password !== 'undefined') {
                        $('.error-register').append("<li class='err'>" + data.errors.password + "</li>");
                    }
                } else {
                    $('form input').val('');
                    $('.error-register').addClass('hidden');
                    $('.success-register').removeClass('hidden');
                    $('.success-register').text(data.success.response);
                }
            },
        });
    });
});





/*-------------------------------------------
  03. Login
--------------------------------------------- */


// -- ajax Form login --

$(function() {

    // Get the form.
    var form = $('#login-form');

    // Set up an event listener for the login form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Hide messages of register form
        $('.success-register').addClass('hidden');
        $('.error-register').addClass('hidden');

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'GET',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                if ((data.errors)) {
                    $('.err').remove();
                    $('.error-login').removeClass('hidden');
                    if (typeof data.errors.email !== 'undefined') {
                        $('.error-login').append("<li class='err'>" + data.errors.email + "</li>");
                    };
                    if (typeof data.errors.response !== 'undefined') {
                        $('.error-login').append("<li class='err'>" + data.errors.response + "</li>");
                    };
                    if (typeof data.errors.password !== 'undefined') {
                        $('.error-login').append("<li class='err'>" + data.errors.password + "</li>");
                    }
                } else {
                    $(location).attr("href", "home");
                }
            }
        });
    });
});





/*-------------------------------------------------------------
  04. Wishlist Form
---------------------------------------------------------------*/

// -- ajax Form Wishlist register --

$(document).on('click', '.addWlist', function(e) {
    e.preventDefault();
    $.ajax({
        type: 'post',
        url: $(this).data('url'),
        data: {
            'product_id': $(this).data('id')
        },
        success: function(data){
            if ((data.error)) {
                $('#message').modal('show');
                $('.wmessage').css('color', 'red');
                $('.modal-title').css('color', 'red');
                $('.modal-title').text('Wishlist terms!');
                $('.wmessage').html(data.error);
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            } else {
                $('#message').modal('show');
                $('.wmessage').css('color', 'green');
                $('.modal-title').css('color', 'green');
                $('.modal-title').text('Congrats!');
                $('.wmessage').text(data.success);
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            }
        }
    });
});

// form Delete function
$(document).on('click', '.product-delete', function() {
    $('#footer_action_button').text(" Delete");
    $('.actionBtn').removeClass('btn-success');
    $('.actionBtn').addClass('btn-danger');
    $('.actionBtn').addClass('deleteWishlist');
    $('.modal-title').text('Delete wishlist');
    $('.id').text($(this).data('id'));
    $('.deleteContent').show();
    $('#myModal').modal('show');
});

$('.modal-footer').on('click', '.deleteWishlist', function(){
    $.ajax({
        type: 'POST',
        url: 'wishlists/'+$('.id').text(),
        data: {
            '_method': $('input[name=_method]').val(),
            'id': $('.id').text()
        },
        success: function(data){
            $('#wishlist' + $('.id').text()).remove();
        }
    });
});





/*-------------------------------------------------------------
05. User CRUD
---------------------------------------------------------------*/


// -- ajax Form update info --

$(function() {

    // Get the form.
    var form = $('#update-client');

    // Set up an event listener for the login form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                // Show success message
                $('#message').modal('show');
                $('.wmessage').css('color', 'green');
                $('.modal-title').css('color', 'green');
                $('.modal-title').text('Congrats!');
                $('.wmessage').text('Account details updated successfully.');
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            }
        });
    });
});


// -- ajax Form update password --

$(document).on('click', '#updatePass', function() {
    $.ajax({
        type: 'post',
        url: base_url + '/updatePass',
        data: {
            'oldpassword': $('input[name=oldpassword]').val(),
            'password': $('input[name=password]').val(),
            '_method': $('input[name=_method]').val()
        },
        success: function(data){
            if ((data.errors)) {
                $('.err').remove();
                $('#message').modal('show');
                $('.wmessage').css('color', 'red');
                $('.modal-title').css('color', 'red');
                $('.modal-title').text('Oops!');
                if (typeof data.errors.oldpassword !== 'undefined') {
                    $('.wmessage').append("<li class='err'>" + data.errors.oldpassword + "</li>");
                };
                if (typeof data.errors.password !== 'undefined') {
                    $('.wmessage').append("<li class='err'>" + data.errors.password + "</li>");
                };
                if (typeof data.errors.error !== 'undefined') {
                    $('.wmessage').append("<li class='err'>" + data.errors.error + "</li>");
                };
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            } else {
                $('#message').modal('show');
                $('.wmessage').css('color', 'green');
                $('.modal-title').css('color', 'green');
                $('.modal-title').text('Congrats!');
                $('.wmessage').text('Password updated successfully.');
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            }
        }
    });
    $('input[name=oldpassword]').val('');
    $('input[name=password]').val('');
});


// -- ajax Form update billing address --

$(function() {

    // Get the form.
    var form = $('#billing-details');

    // Set up an event listener for the login form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                // Show success message
                $('#message').modal('show');
                $('.wmessage').css('color', 'green');
                $('.modal-title').css('color', 'green');
                $('.modal-title').text('Congrats!');
                $('.wmessage').text('Billing details updated successfully.');
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            }
        });
    });
});


// -- ajax Form update shipping address --

$(function() {

    // Get the form.
    var form = $('#shipping-details');

    // Set up an event listener for the login form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                // Show success message
                $('#message').modal('show');
                $('.wmessage').css('color', 'green');
                $('.modal-title').css('color', 'green');
                $('.modal-title').text('Congrats!');
                $('.wmessage').text('Shipping details updated successfully.');
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            }
        });
    });
});


// -- ajax Form update payment method --

$(function() {

    // Get the form.
    var form = $('#payment-details');

    // Set up an event listener for the login form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                $('.wmessage').html('');
                if (data.errors){
                    $('#message').modal('show');
                    $('.wmessage').css('color', 'red');
                    $('.modal-title').css('color', 'red');
                    $('.modal-title').text('Oops!');
                    $.each(data.errors, function (index, value) {
                        $('.wmessage').append("<li>" + value + "</li>");
                    });
                    setTimeout(function() {
                        $('#message').modal('hide');
                    }, 4000);
                }else{
                    // Show success message
                    $('#message').modal('show');
                    $('.wmessage').css('color', 'green');
                    $('.modal-title').css('color', 'green');
                    $('.modal-title').text('Congrats!');
                    $('.wmessage').text('Payment method updated successfully.');
                    setTimeout(function() {
                        $('#message').modal('hide');
                    }, 4000);
                }
            }
        });
    });
});





/*-------------------------------------------------------------
  06. Compare Form
---------------------------------------------------------------*/

// -- ajax Form Compare --
$(document).on('click', '.addCompare', function() {
    $('.all').remove();
    $('#compareProductImage').append('<td class="all cmpr'+$(this).data('id')+'"><a href="products/'+$(this).data('id')+'"><img src="'+$(this).data('image')+'" alt="" style="max-height: 200px;max-width: 200px" /></a></td>'
    );
    $('#compareProduct').append('<td class="all cmpr'+$(this).data('id')+'"><a href="'+$(this).data('url')+'">'+$(this).data('name')+'</a></td>'
    );
    if($(this).data("saleprice") == ''){
        var cart = '<td class="all cmpr'+$(this).data('id')+'" style="color: red">N/A</td>';
        var price = '<a href="#" data-subject="Price quotation for '+$(this).data('name')+'" data-message="I would like to know the price of '+$(this).data('name')+'." id="quotation" class="btn btn-info btn-xs" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>';
    }else{
        var price = $(this).data('saleprice');
        var cart = '<td class="all cmpr'+$(this).data('id')+'"><a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="'+$(this).data('id')+'" data-url="addCart" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a></td>';
    }
    $('#comparePrice').append('<td class="all cmpr'+$(this).data('id')+'">'+price+'</td>');
    $('#compareColor').append('<td class="all cmpr'+$(this).data('id')+'">'+$(this).data('color')+'</td>');
    if($(this).data("stock") == 0){
        var stock = 'In stock';
    }else{
        var stock = 'Out of stock';
    }
    $('#compareStock').append('<td class="all cmpr'+$(this).data('id')+'">'+stock+'</td>');
    $('#compareCart').append(cart);
    $('#compareDelete').append('<td class="compare-remove all cmpr'+$(this).data('id')+'">\n' +
        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href="#" id="compare-delete" data-id="'+$(this).data('id')+'"><i class="zmdi zmdi-close"></i></a>\n' +
        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>');

    $.ajax({
        type: 'GET',
        url: $(this).data('requrl'),
        success: function(data){
            $('#toCompare').html('<option>Select product from here to compare them</option>');
            jQuery.each( data, function( index, value ) {
                if (value.salePrice === null){
                    var price = '';
                }else{
                    var price = value.salePrice;
                }
                $('#toCompare').append(
                    '<option class="cmprProduct" id="cmprProduct'+value.id+'" data-id="'+value.id+'" data-name="'+value.productName+'" data-image="' + base_url + '/storage/images/product/' + value.image.image1 + '" data-saleprice="'+price+'" data-stock="'+value.availablity+'" data-color="'+value.color+'" data-url="' + base_url + '/products/'+value.id+'" data-requrl="productsByCat/'+value.category_id+'"><a href="#" data-toggle="tooltip" class="cmprProduct" id="cmprProduct'+value.id+'" data-placement="top" title="Compare" data-id="'+value.id+'">'+value.productName+'</a></option>\n'
                );
            });
        }
    });

    $('#compare').modal('show');
});

// -- ajax Form Compare product --
$(document).on('change', '#toCompare', function() {
    var $this = $('#toCompare option:selected');
    $this.remove();
    $('#compareProductImage').append('<td class="all cmpr'+$this.data('id')+'"><a href="'+$this.data('url')+'"><img src="'+$this.data('image')+'" alt="" style="max-height: 200px;max-width: 200px" /></a></td>'
    );
    $('#compareProduct').append('<td class="all cmpr'+$this.data('id')+'"><a href="'+$this.data('url')+'">'+$this.data('name')+'</a></td>'
    );
    if($this.data("saleprice") == ''){
        var cart = '<td class="all cmpr'+$this.data('id')+'" style="color: red">N/A</td>';
        var price = '<a href="#" data-subject="Price quotation for '+$this.data('name')+'" data-message="I would like to know the price of '+$this.data('name')+'." id="quotation" class="btn btn-info btn-xs" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>';
    }else{
        var cart = '<td class="all cmpr'+$this.data('id')+'"><a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="'+$this.data('id')+'" data-url="addCart" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a></td>'
        var price = $this.data('saleprice');
    }
    $('#comparePrice').append('<td class="all cmpr'+$this.data('id')+'">'+price+'</td>');
    $('#compareColor').append('<td class="all cmpr'+$this.data('id')+'">'+$this.data('color')+'</td>');
    if($this.data("stock") == 0){
        var stock = 'In stock';
    }else{
        var stock = 'Out of stock';
    }
    $('#compareStock').append('<td class="all cmpr'+$this.data('id')+'">'+stock+'</td>');
    $('#compareCart').append(cart);
    $('#compareDelete').append('<td class="compare-remove all cmpr'+$this.data('id')+'">\n' +
        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href="#" id="compare-delete" data-id="'+$this.data('id')+'"><i class="zmdi zmdi-close"></i></a>\n' +
        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td>');
});

// form Delete function
$(document).on('click', '#compare-delete', function() {
    $('.cmpr'+$(this).data('id')).remove();
});





/*-------------------------------------------
  07. Messages
--------------------------------------------- */


// -- ajax Form Messages --

$(function() {

    // Get the form.
    var form = $('#message-form');

    // Set up an event listener for the register form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                if ((data.errors)) {
                    $('.error').removeClass('hidden');
                    $('.success').addClass('hidden');
                    if (typeof data.errors.name === 'undefined') {
                        $('.name').addClass('hidden');
                    };
                    $('.name').text(data.errors.name);
                    if (typeof data.errors.email === 'undefined') {
                        $('.email').addClass('hidden');
                    };
                    $('.email').text(data.errors.email);
                    if (typeof data.errors.phone === 'undefined') {
                        $('.phone').addClass('hidden');
                    };
                    $('.phone').text(data.errors.phone);
                    if (typeof data.errors.subject === 'undefined') {
                        $('.subject').addClass('hidden');
                    };
                    $('.subject').text(data.errors.subject);
                    if (typeof data.errors.message === 'undefined') {
                        $('.message').addClass('hidden');
                    }
                    $('.message').text(data.errors.message);
                } else {
                    $(form).hide();
                    $('form input, form textarea').val('');
                    $('.error').addClass('hidden');
                    $('.success').removeClass('hidden').text(data.success);
                    $('#quote').fadeOut(5000,function() {
                        $(this).modal('hide');
                    });
                }
            }
        });
    });
});

$(function() {

    // Get the form.
    var form = $('#contact-form');

    // Set up an event listener for the register form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                if ((data.errors)) {
                    $('.error').removeClass('hidden');
                    $('.success').addClass('hidden');
                    if (typeof data.errors.name === 'undefined') {
                        $('.name').addClass('hidden');
                    };
                    $('.name').text(data.errors.name);
                    if (typeof data.errors.email === 'undefined') {
                        $('.email').addClass('hidden');
                    };
                    $('.email').text(data.errors.email);
                    if (typeof data.errors.phone === 'undefined') {
                        $('.phone').addClass('hidden');
                    };
                    $('.phone').text(data.errors.phone);
                    if (typeof data.errors.subject === 'undefined') {
                        $('.subject').addClass('hidden');
                    };
                    $('.subject').text(data.errors.subject);
                    if (typeof data.errors.message === 'undefined') {
                        $('.message').addClass('hidden');
                    }
                    $('.message').text(data.errors.message);
                } else {
                    $('form input, form textarea').val('');
                    $('.error').addClass('hidden');
                    $('.success').removeClass('hidden').text(data.success);
                }
            }
        });
    });
});

// -- ajax Form add quote --
$(document).on('click', '#quotation', function(e) {
    // Stop the browser from submitting the form.
    e.preventDefault();
    $('.error').addClass('hidden');
    $('.success').addClass('hidden');
    $('#subject').val($(this).data('subject'));
    $('#messageBody').val($(this).data('message'));
    $('#message-form').show();
    $('#quote').modal('show');
});

$(document).on('click', '#addQuotation', function(e) {
    // Stop the browser from submitting the form.
    e.preventDefault();
    $('#quoteMessage').remove();

    // Get the product quantity
    var qty = $('input[name=quantity'+$(this).data('id')+']').val();

    var isQuote = false;
    jQuery.each( $('#toQuote tr'), function() {
        isQuote = true;
    });
    if (isQuote) {
        $('#toQuote').prepend('<tr>\n' +
            '<td align="left" class="quoteProductName">'+$(this).data('name')+'  x '+qty+'</td>\n' +
            '</tr>'
        );
    } else {
        $('#toQuote').prepend('<tr>\n' +
            '<td align="left" class="quoteProductName">'+$(this).data('name')+' x '+qty+'</td>\n' +
            '</tr>'+
            '<tr>'+
            '<td align="center">'+
            '<a href="#" id="submitQuotation" class="button-one submit-button mt-15" data-text="submit quotation" type="submit" style="margin-bottom: 20px;">submit quotation</a>'+
            '</td>'+
            '</tr>'
        );
    }

    $('#quoteProduct' + $(this).data('id')).remove();
});

$(document).on('click', '#submitQuotation', function(e) {
    // Stop the browser from submitting the form.
    e.preventDefault();
    $('.error').addClass('hidden');
    $('.success').addClass('hidden');
    $('#subject').val('Price quotation');
    var message = 'I would like to know the price of the following products- ';
    $('.quoteProductName').each(function () {
        message += $(this).text() + ', ';
    });
    $('#messageBody').val(message.slice(0, -2));
    $('#message-form').show();
    $('#quote').modal('show');
});




/*-------------------------------------------
  08. Cart
--------------------------------------------- */


// -- ajax Form add Cart --

$(document).on('click', '.addCart', function(e) {
    // Stop the browser from submitting the form.
    e.preventDefault();

    var qty = $(this).data('qty');

    // Submit the form using AJAX.
    $.ajax({
        type: 'post',
        url: $(this).data('url'),
        data: {
            'qty': $(this).data('qty'),
            'id': $(this).data('id')
        },
        success: function(data){
            if ((data.error)) {
                $('#message').modal('show');
                $('.wmessage').css('color', 'red');
                $('.modal-title').css('color', 'red');
                $('.modal-title').text('Oops!');
                $('.wmessage').text(data.error);
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            } else {
                var i = 1;
                var sum = 0;
                $.each($('.single-cart'), function() {
                    sum += $(this).data('price') * $(this).data('qty');
                    i++;
                });

                sum += data.salePrice * qty;

                $('#cart-icon').html('<i class="zmdi zmdi-shopping-cart"></i><span class="count" id="count">'+i+'</span>');

                if (i == 1){
                    $('#cart-items').append('<div class="mini-cart-brief text-left">\n' +
                        '<div class="cart-items">\n' +
                        '<p class="mb-0">You have <span class="count">'+i+' items</span> in your shopping bag.</p>\n' +
                        '</div>\n' +
                        '<div class="all-cart-product clearfix widget-info product-cat boxscrol2">'+
                        '<div class="single-cart clearfix" data-price="'+data.salePrice+'" data-qty="'+qty+'" id="cartProduct'+data.id+'">\n' +
                        '<div class="cart-photo">\n' +
                        '<a href="products/'+data.id+'"><img src="storage/images/product/'+data.image.image1+'" alt="" /></a>\n' +
                        '</div>\n' +
                        '<div class="cart-info">\n' +
                        '<h5><a href="products/'+data.id+'">'+data.productName.substr(0, 20)+'</a></h5>\n' +
                        '<p class="mb-0">Price : ৳ '+data.salePrice+'</p>\n' +
                        '<p class="mb-0">Qty : '+qty+' </p>\n' +
                        '<span class="cart-delete"><a href="#" id="cart-delete" data-id="'+data.id+'" data-url="deleteCart" data-price="'+sum+'"><i class="zmdi zmdi-close"></i></a></span>\n' +
                        '</div>\n' +
                        '</div>'+
                        '</div>\n' +
                        '<div class="cart-totals">\n' +
                        '<h5 class="mb-0">SubTotal <span class="floatright" id="subtotal">৳'+sum+'</span></h5>\n' +
                        '</div>\n' +
                        '<div class="cart-bottom  clearfix">\n' +
                        '<a href="allCarts" class="button-one floatleft text-uppercase" data-text="View cart">View cart</a>\n' +
                        '<a href="orders/create" class="button-one floatright text-uppercase" data-text="Check out">Check out</a>\n' +
                        '</div>\n' +
                        '</div>'
                    );
                }else {
                    $('.count').text(i);
                    $('#subtotal').text('৳' + sum);

                    $('.all-cart-product').prepend('<div class="single-cart clearfix" data-price="'+data.salePrice+'" data-qty="'+qty+'" id="cartProduct'+data.id+'">\n' +
                        '<div class="cart-photo">\n' +
                        '<a href="products/'+data.id+'"><img src="storage/images/product/'+data.image.image1+'" alt="" /></a>\n' +
                        '</div>\n' +
                        '<div class="cart-info">\n' +
                        '<h5><a href="products/'+data.id+'">'+data.productName.substr(0, 20)+'</a></h5>\n' +
                        '<p class="mb-0">Price : ৳ '+data.salePrice+'</p>\n' +
                        '<p class="mb-0">Qty : '+qty+' </p>\n' +
                        '<span class="cart-delete"><a href="#" id="cart-delete" data-id="'+data.id+'" data-url="deleteCart" data-price="'+sum+'"><i class="zmdi zmdi-close"></i></a></span>\n' +
                        '</div>\n' +
                        '</div>'
                    );
                }
            }
        }
    });
});


$(document).on('click', '.addListCart', function(e) {
    // Stop the browser from submitting the form.
    e.preventDefault();

    var qty = $('input[name=qty'+$(this).data('id')+']').val();

    // Submit the form using AJAX.
    $.ajax({
        type: 'post',
        url: $(this).data('url'),
        data: {
            'qty': qty,
            'id': $(this).data('id')
        },
        success: function(data){
            if ((data.error)) {
                $('#message').modal('show');
                $('.wmessage').css('color', 'red');
                $('.modal-title').css('color', 'red');
                $('.modal-title').text('Oops!');
                $('.wmessage').text(data.error);
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            } else {
                var i = 1;
                var sum = 0;
                $.each($('.single-cart'), function() {
                    sum += $(this).data('price') * $(this).data('qty');
                    i++;
                });

                sum += data.salePrice * qty;

                $('#cart-icon').html('<i class="zmdi zmdi-shopping-cart"></i><span class="count" id="count">'+i+'</span>');

                if (i == 1){
                    $('#cart-items').append('<div class="mini-cart-brief text-left">\n' +
                        '<div class="cart-items">\n' +
                        '<p class="mb-0">You have <span class="count">'+i+' items</span> in your shopping bag.</p>\n' +
                        '</div>\n' +
                        '<div class="all-cart-product clearfix widget-info product-cat boxscrol2">'+
                        '<div class="single-cart clearfix" data-price="'+data.salePrice+'" data-qty="'+qty+'" id="cartProduct'+data.id+'">\n' +
                        '<div class="cart-photo">\n' +
                        '<a href="products/'+data.id+'"><img src="storage/images/product/'+data.image.image1+'" alt="" /></a>\n' +
                        '</div>\n' +
                        '<div class="cart-info">\n' +
                        '<h5><a href="products/'+data.id+'">'+data.productName.substr(0, 20)+'</a></h5>\n' +
                        '<p class="mb-0">Price : ৳ '+data.salePrice+'</p>\n' +
                        '<p class="mb-0">Qty : '+qty+' </p>\n' +
                        '<span class="cart-delete"><a href="#" id="cart-delete" data-id="'+data.id+'" data-url="deleteCart" data-price="'+sum+'"><i class="zmdi zmdi-close"></i></a></span>\n' +
                        '</div>\n' +
                        '</div>'+
                        '</div>\n' +
                        '<div class="cart-totals">\n' +
                        '<h5 class="mb-0">SubTotal <span class="floatright" id="subtotal">৳'+sum+'</span></h5>\n' +
                        '</div>\n' +
                        '<div class="cart-bottom  clearfix">\n' +
                        '<a href="allCarts" class="button-one floatleft text-uppercase" data-text="View cart">View cart</a>\n' +
                        '<a href="orders/create" class="button-one floatright text-uppercase" data-text="Check out">Check out</a>\n' +
                        '</div>\n' +
                        '</div>'
                    );
                }else {
                    $('.count').text(i);
                    $('#subtotal').text('৳' + sum);

                    $('.all-cart-product').prepend('<div class="single-cart clearfix" data-price="'+data.salePrice+'" data-qty="'+qty+'" id="cartProduct'+data.id+'">\n' +
                        '<div class="cart-photo">\n' +
                        '<a href="products/'+data.id+'"><img src="storage/images/product/'+data.image.image1+'" alt="" /></a>\n' +
                        '</div>\n' +
                        '<div class="cart-info">\n' +
                        '<h5><a href="products/'+data.id+'">'+data.productName.substr(0, 20)+'</a></h5>\n' +
                        '<p class="mb-0">Price : ৳ '+data.salePrice+'</p>\n' +
                        '<p class="mb-0">Qty : '+qty+' </p>\n' +
                        '<span class="cart-delete"><a href="#" id="cart-delete" data-id="'+data.id+'" data-url="deleteCart" data-price="'+sum+'"><i class="zmdi zmdi-close"></i></a></span>\n' +
                        '</div>\n' +
                        '</div>'
                    );
                }
            }
        }
    });
});


$(function() {

    // Get the form.
    var form = $('#cart-form');

    // Set up an event listener for the register form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        var qty = $('#qty').val();

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'post',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                if ((data.error)) {
                    $('.error-cart').removeClass('hidden').text(data.error);
                    $('.success-cart').addClass('hidden');
                } else {
                    $('.success-cart').removeClass('hidden').text('Product added to cart successfully.');
                    $('.error-cart').addClass('hidden');

                    var i = 1;
                    var sum = 0;
                    $.each($('.single-cart'), function() {
                        sum += $(this).data('price') * $(this).data('qty');
                        i++;
                    });

                    sum += data.salePrice * qty;

                    $('#cart-icon').html('<i class="zmdi zmdi-shopping-cart"></i><span class="count" id="count">'+i+'</span>');

                    if (i == 1){
                        $('#cart-items').append('<div class="mini-cart-brief text-left">\n' +
                            '<div class="cart-items">\n' +
                            '<p class="mb-0">You have <span class="count">'+i+' items</span> in your shopping bag.</p>\n' +
                            '</div>\n' +
                            '<div class="all-cart-product clearfix widget-info product-cat boxscrol2">'+
                            '<div class="single-cart clearfix" data-price="'+data.salePrice+'" data-qty="'+qty+'" id="cartProduct'+data.id+'">\n' +
                            '<div class="cart-photo">\n' +
                            '<a href="products/'+data.id+'"><img src="storage/images/product/'+data.image.image1+'" alt="" /></a>\n' +
                            '</div>\n' +
                            '<div class="cart-info">\n' +
                            '<h5><a href="products/'+data.id+'">'+data.productName.substr(0, 20)+'</a></h5>\n' +
                            '<p class="mb-0">Price : ৳ '+data.salePrice+'</p>\n' +
                            '<p class="mb-0">Qty : '+qty+' </p>\n' +
                            '<span class="cart-delete"><a href="#" id="cart-delete" data-id="'+data.id+'" data-url="deleteCart" data-price="'+sum+'"><i class="zmdi zmdi-close"></i></a></span>\n' +
                            '</div>\n' +
                            '</div>'+
                            '</div>\n' +
                            '<div class="cart-totals">\n' +
                            '<h5 class="mb-0">SubTotal <span class="floatright" id="subtotal">৳'+sum+'</span></h5>\n' +
                            '</div>\n' +
                            '<div class="cart-bottom  clearfix">\n' +
                            '<a href="allCarts" class="button-one floatleft text-uppercase" data-text="View cart">View cart</a>\n' +
                            '<a href="orders/create" class="button-one floatright text-uppercase" data-text="Check out">Check out</a>\n' +
                            '</div>\n' +
                            '</div>'
                        );
                    }else {
                        $('.count').text(i);
                        $('#subtotal').text('৳' + sum);

                        $('.all-cart-product').prepend('<div class="single-cart clearfix" data-price="'+data.salePrice+'" data-qty="'+qty+'" id="cartProduct'+data.id+'">\n' +
                            '<div class="cart-photo">\n' +
                            '<a href="products/'+data.id+'"><img src="storage/images/product/'+data.image.image1+'" alt="" /></a>\n' +
                            '</div>\n' +
                            '<div class="cart-info">\n' +
                            '<h5><a href="products/'+data.id+'">'+data.productName.substr(0, 20)+'</a></h5>\n' +
                            '<p class="mb-0">Price : ৳ '+data.salePrice+'</p>\n' +
                            '<p class="mb-0">Qty : '+qty+' </p>\n' +
                            '<span class="cart-delete"><a href="#" id="cart-delete" data-id="'+data.id+'" data-url="deleteCart" data-price="'+sum+'"><i class="zmdi zmdi-close"></i></a></span>\n' +
                            '</div>\n' +
                            '</div>'
                        );
                    }
                }
            }
        });
    });
});


// -- ajax Form update Cart --

$(".cart-update").click(function(e) {
    // Stop the browser from submitting the form.
    e.preventDefault();

    var qty = $('input[name=qtybutton'+$(this).data('id')+']').val();

    $.ajax({
        type: 'post',
        url: $(this).data('url'),
        data: {
            'qty': qty,
            'id': $(this).data('id')
        },
        success: function(data){
            $(location).attr("href", "allCarts");
        }
    });
});


// form Delete function
$(document).on('click', '#delete-cart', function(e){
    // Stop the browser from submitting the form.
    e.preventDefault();

    $.ajax({
        type: 'POST',
        url: $(this).data('url'),
        data: {
            'id': $(this).data('id')
        },
        success: function(data){
            $(location).attr("href", "allCarts");
        }
    });
});

$(document).on('click', '#cart-delete', function(e){
    // Stop the browser from submitting the form.
    e.preventDefault();

    var id = $(this).data('id');
    var count = parseInt($('#count').text()) - 1;
    var sum = 0;
    $.each($('.single-cart'), function() {
        sum += $(this).data('price') * $(this).data('qty');
    });
    sum -= $(this).data('price');
    $('#subtotal').text('৳' + sum);

    if (!count){
        $('.count').remove(count);
        $('.mini-cart-brief').remove();
    }else {
        $('.count').text(count);
    }

    $.ajax({
        type: 'POST',
        url: $(this).data('url'),
        data: {
            'id': $(this).data('id')
        },
        success: function(data){
            $('#cartProduct'+id).remove();
        }
    });
});





/*-------------------------------------------
  09. Coupon apply
--------------------------------------------- */


// form applyCoupon function

$(document).on('click', '#applyCoupon', function(e){
    // Stop the form from being submit
    e.preventDefault();
    $.ajax({
        type: 'POST',
        url: $(this).data('url'),
        data: {
            'price': $(this).data('price'),
            'coupon_code': $('input[name=coupon_code]').val()
        },
        success: function(data){
            if ((data.errors)) {
                if (typeof data.errors.coupon_code !== 'undefined') {
                    var error = data.errors.coupon_code;
                }
                else{
                    var error = data.errors;
                }
                $('#message').modal('show');
                $('.wmessage').css('color', 'red');
                $('.modal-title').css('color', 'red');
                $('.modal-title').text('Oops!');
                $('.wmessage').text(error);
                setTimeout(function() {
                    $('#message').modal('hide');
                }, 4000);
            } else {
                alert('Coupon applied successfully.');
                $(location).attr("href", "allCarts");
            }
        }
    });
    $('input[name=coupon_code]').val('');
});





/*-------------------------------------------
  10. Product
--------------------------------------------- */


// form get product by minicategory function

$(document).on('click', '#productByMiniCat', function(e){
    // Stop the form from being submit
    e.preventDefault();
    $.ajax({
        type: 'GET',
        url: $(this).data('url'),
        success: function(data){
            $('#product').html('');
            jQuery.each( data, function( index, value ) {
                var salePrice = value.salePrice;
                var cart = '<a href="#" data-toggle="tooltip" class="addToCart" data-placement="top" title="Add To Cart" data-id="'+value.id+'" data-productName="'+value.productName+'" data-price="'+value.salePrice+'" data-url="/addCart"><i class="zmdi zmdi-shopping-cart-plus"></i></a>';
                var desc = $(value.description).text().substr(0, 144);
                $('#product').append('<tr>\n' +
                    '<td align="left" style="padding: 0">\n' +
                    '<a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="'+value.id+'" data-name="'+value.productName+'" data-image="storage/images/product/'+value.image.image1+'" data-saleprice="'+salePrice+'" data-desc="'+desc+'" data-regularprice="'+value.regularPrice+'" data-url="products/'+value.id+'" class="quick-view">'+value.productName+'</a>'+
                    '<td>\n' +
                    '<input type="number" name="qty'+value.id+'" min="1" value="1" style="height: 20px;width: 50px;padding: 0">\n' +
                    '</td>\n' +
                    '<td style="padding: 0">'+cart+'</td>\n' +
                    '</tr>'
                );
            });
        }
    });
});

$(document).on('click', '#productsByMiniCat', function(e){
    // Stop the form from being submit
    e.preventDefault();
    $.ajax({
        type: 'GET',
        url: $(this).data('url'),
        success: function(data){
            $('#product1').html('');
            jQuery.each( data, function( index, value ) {
                var salePrice = value.salePrice;
                var quote = '<a href="#" data-id="'+value.id+'" data-name="'+value.productName+'" id="addQuotation" class="btn btn-info btn-xs" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>';
                var desc = $(value.description).text().substr(0, 144);
                $('#product1').append('<tr id="quoteProduct'+value.id+'">\n' +
                    '<td align="left" style="padding: 0">\n' +
                    '<a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="'+value.id+'" data-name="'+value.productName+'" data-image="storage/images/product/'+value.image.image1+'" data-saleprice="'+salePrice+'" data-desc="'+desc+'" data-regularprice="'+value.regularPrice+'" data-url="products/'+value.id+'" class="quick-view">'+value.productName+'</a></td>'+
                    '<td>\n' +
                    '<input type="number" name="quantity'+value.id+'" min="1" value="1" style="height: 20px;width: 50px;padding: 0">\n' +
                    '</td>'+
                    '<td style="padding: 0">'+quote+'</td>\n' +
                    '</tr>'
                );
            });
        }
    });
});





/*-------------------------------------------
  11. Product Review
--------------------------------------------- */


// Insert product review

$(function() {

    // Get the form.
    var form = $('#review-form');

    // Set up an event listener for the register form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Submit the form using AJAX.
        $.ajax({
            type: 'post',
            url: $(form).attr('action'),
            data: new FormData(this),
            cache: false,
            contentType: false,
            processData: false,
            success: function(data){
                if ((data.errors)) {
                    $('.err').remove();
                    $('#message').modal('show');
                    $('.wmessage').css('color', 'red');
                    $('.modal-title').css('color', 'red');
                    $('.modal-title').text('Oops!');
                    if (typeof data.errors.authorName !== 'undefined') {
                        $('.wmessage').append("<li class='err'>" + data.errors.authorName + "</li>");
                    };
                    if (typeof data.errors.email !== 'undefined') {
                        $('.wmessage').append("<li class='err'>" + data.errors.email + "</li>");
                    };
                    if (typeof data.errors.review !== 'undefined') {
                        $('.wmessage').append("<li class='err'>" + data.errors.review + "</li>");
                    }
                    setTimeout(function() {
                        $('#message').modal('hide');
                    }, 4000);
                } else {
                    $(form).trigger('reset');
                    $('#productreview').append('<li class="mb-30" id="review'+data.id+'">\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class="pro-reviewer">\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<img src="img/reviewer/user.png" alt="">\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class="pro-reviewer-comment">\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class="fix">\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class="floatleft mbl-center">\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h5 class="text-uppercase mb-0"><strong>'+data.authorName+'</strong></h5>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p class="reply-date">'+data.created_at+'</p>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class="comment-reply floatright">\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href="#"><i class="zmdi zmdi-mail-reply"></i></a>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p class="mb-0">'+data.review+'</p>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n' +
                        '\t\t\t\t\t\t\t\t\t\t\t\t\t</li>'
                    );
                    $('#message').modal('show');
                    $('.wmessage').css('color', 'green');
                    $('.modal-title').css('color', 'green');
                    $('.modal-title').text('Congrats!');
                    $('.wmessage').text('Thanks for your review.');
                    setTimeout(function() {
                        $('#message').modal('hide');
                    }, 4000);
                }
            }
        });
    });
});





/*-------------------------------------------
  12. Product sorting
--------------------------------------------- */

// External js: jquery, isotope.pkgd.js, bootstrap.min.js, bootstrap-slider.js
$(document).ready( function() {

    // Create object to store filter for each group
    var qsRegex;
    var buttonFilters = {};
    var buttonFilter = '*';
    // Create new object for the range filters and set default values,
    // The default values should correspond to the default values from the slider
    var rangeFilters = {
        'price': {'min':0, 'max': 20000}
    };

    // Initialise Isotope
    // Set the item selector
    var $grid = $('#grid-view').isotope({
        itemSelector: '.product',
        layout: 'masonry',
        // use filter function
        filter: function() {
            var $this = $(this);
            var price = $this.attr('data-price');
            var searchResult = qsRegex ? $this.text().match( qsRegex ) : true;
            var isInPriceRange = (rangeFilters['price'].min <= price && rangeFilters['price'].max >= price);
            //console.log(rangeFilters['height']);
            //console.log(rangeFilters['weight']);
            // Debug to check whether an item is within the height weight range
            //console.log('isInHeightRange:' +isInHeightRange + '\nisInWeightRange: ' + isInWeightRange );
            return $this.is( buttonFilter ) && (isInPriceRange) && (searchResult);
        }
    });


    // Initialise Sliders
    // Set min/max range on sliders as well as default values
    var $priceSlider = $( "#slider-range" ).slider({
        range: true,
        min: 0,
        max: 20000,
        values: [ 0, 20000 ],
        slide: function( event, ui ) {
            $( "#amount" ).val( "৳" + ui.values[ 0 ] + " - ৳" + ui.values[ 1 ] );
            updateRangeSlider(event, ui);
        }
    });
    $( "#amount" ).val( "৳" + $( "#slider-range" ).slider( "values", 0 ) +
        " - ৳" + $( "#slider-range" ).slider( "values", 1 ) );


    function updateRangeSlider(slider, slideEvt) {
        console.log('Current slider:' + slider);
        var sldmin = +slideEvt.values[0],
            sldmax = +slideEvt.values[1],
            // Find which filter group this slider is in (in this case it will be price)
            // This can be changed by modifying the data-filter-group="age" attribute on the slider HTML
            filterGroup = $( "#slider-range" ).attr('data-filter-group'),
            // Set current selection in variable that can be pass to the label
            currentSelection = sldmin + ' - ' + sldmax;

        // Update filter label with new range selection
        //slider.siblings('.filter-label').find('.filter-selection').text(currentSelection);

        // Set min and max values for current selection to current selection
        // If no values are found set min to 0 and max to 100000
        // Store min/max values in rangeFilters array in the relevant filter group
        // E.g. rangeFilters['price'].min and rangeFilters['price'].max
        console.log('Filtergroup: '+ filterGroup);
        rangeFilters[filterGroup] = {
            min: sldmin || 0,
            max: sldmax || 100000
        };
        // Trigger isotope again to refresh layout
        $grid.isotope();
    }

    // Trigger Isotope Filter when slider drag has stopped
    /*$priceSlider.on('slideStop', function(slideEvt){
        var $this =$(this);
        updateRangeSlider($this, slideEvt);
    });
*/
    // use value of search field to filter
    var $quicksearch = $('#productSearch').keyup( debounce( function() {
        qsRegex = new RegExp( $quicksearch.val(), 'gi' );
        $grid.isotope();
    }) );

    // debounce so filtering doesn't happen every millisecond
    function debounce( fn, threshold ) {
        var timeout;
        threshold = threshold || 100;
        return function debounced() {
            clearTimeout( timeout );
            var args = arguments;
            var _this = this;
            function delayed() {
                fn.apply( _this, args );
            }
            timeout = setTimeout( delayed, threshold );
        };
    }

    // Look inside element with .filters class for any clicks on elements with .button
    $(document).on( 'click', '.button', function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        var $this = $(this);
        // Get group key from parent btn-group (e.g. data-filter-group="color")
        var $buttonGroup = $this.parents('.widget-info');
        var filterGroup = $buttonGroup.attr('data-filter-group');
        // set filter for group
        buttonFilters[ filterGroup ] = $this.attr('data-filter');
        // Combine filters or set the value to * if buttonFilters
        buttonFilter = concatValues( buttonFilters ) || '*';
        // Log out current filter to check that it's working when clicked
        console.log( buttonFilter )
        // Trigger isotope again to refresh layout
        $grid.isotope();
    });


    // change is-checked class on btn-filter to toggle which one is active
    $('.widget-info').each( function( i, buttonGroup ) {
        var $buttonGroup = $( buttonGroup );
        $buttonGroup.on( 'click', '.button', function() {
            $buttonGroup.find('.is-checked').removeClass('is-checked');
            $(this).addClass('is-checked');
        });
    });

});

// Flatten object by concatting values
function concatValues( obj ) {
    var value = '';
    for ( var prop in obj ) {
        value += obj[ prop ];
    }
    return value;
}

/*// Filter Search by input text
$('#productSearch').keyup(function(){
    var valThis = $(this).val().toLowerCase();
    if(valThis == ""){
        $('.product').show();
    } else {
        $('.product').each(function(){
            var text = $(this).text().toLowerCase();
            (text.indexOf(valThis) >= 0) ? $(this).show() : $(this).hide();
        });
    };
});*/





/*-------------------------------------------
  13. Password reset
--------------------------------------------- */

// form password reset
$(document).on('click', '#forgotPass', function(e) {
    e.preventDefault();
    $('.modal-title').text('Password reset');
    $('#password_reset').modal('show');
});


// Password reset
$(function() {

    // Get the form.
    var form = $('#password-reset-form');

    // Set up an event listener for the register form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Submit the form using AJAX.
        $.ajax({
            type: 'post',
            url: $(form).attr('action'),
            data: new FormData(this),
            cache: false,
            contentType: false,
            processData: false,
            success: function(data){
                if (data.error){
                    $('.error').removeClass('hidden');
                    $('.success').addClass('hidden');
                    $('.error').text(data.error);
                } else {
                    $('.success').removeClass('hidden');
                    $('.error').addClass('hidden');
                    $('.success').text('We have e-mailed your password reset link!');
                }
            }
        });
    });
});





/*-------------------------------------------
  14. Subscription
--------------------------------------------- */


// -- ajax Form Subscription --

$(function() {

    // Get the form.
    var form = $('#subscribes');

    // Set up an event listener for the register form.
    $(form).submit(function(e) {
        // Stop the browser from submitting the form.
        e.preventDefault();

        // Serialize the form data.
        var formData = $(form).serialize();

        // Submit the form using AJAX.
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            success: function(data){
                if ((data.error)) {
                    $('.success').addClass('hidden');
                    $('.error').removeClass('hidden');
                    $('.error').text(data.error);
                } else {
                    $('.error').addClass('hidden');
                    $('.success').removeClass('hidden');
                    $('.success').text('You have successfully subscribed for our newsletter. From now you will get upto date info about our products.');
                }
            }
        });
        $('form input').val('');
    });
});