var client = {
    init: function () {
        client.registerEvents();
    },
    registerEvents: function () {
        $('#typeProduct').change(function () {
            var idType = "";
            $("#typeProduct option:selected").each(function () {
                idType += $(this).val();
            });
            var change = $("#change");
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxChangeListProductController",
                data: {
                    "idType": idType
                },
                success: function (response) {
                    change.html('');
                    change.html(response);
                }
            })
        });
        $('.product__pagination a').on('click', function (event) {
            event.preventDefault();
            var pageIndex = $(this).data('page');
            var idType = $('#typeProduct').val();
            var change = $("#change");
            // console.log(pageIndex , idType);
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxChangeListProductController",
                data: {
                    "page": pageIndex,
                    "idType": idType
                },
                success: function (response) {
                    change.html('');
                    change.html(response);
                }
            })
        });
        $('.blankCheckbox').on('click', function () {
            var idProduct = $(this).data('idproduct');
            var change = $('.shoping__checkout ul');
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxAddProductToCartController",
                data: {
                    "idProduct": idProduct
                },
                success: function (response) {
                    change.html('');
                    change.html(response);
                }
            });
        });
        $('#search-form').submit(function (event) {
            event.preventDefault();
        });
        $('#search-input').on('keyup', function () {
            var productName = $(this).val();
            var change = $('.search-result');
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxSearchProductController",
                data: {
                    "productName": productName
                },
                success: function (response) {
                    change.html('');
                    change.html(response);
                }
            });
        });
        $('.add-quantily').on('click', function (event) {
            event.preventDefault();
            var idProduct = $(this).data('idproduct');
            var change = $('.header__cart ul');
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxAddOneProductToCartController",
                data: {
                    "idProduct": idProduct
                },
                success: function (response) {
                    alert("Đã thêm vào giỏ hàng");
                    change.html('');
                    change.html(response);
                }
            });
        });
        $('.add-products').on('click', function (event) {
            event.preventDefault();
            var idProduct = $(this).data('idproduct');
            var idSizeProduct = $('.nav-item .active').data('idsize');
            var quantity = $('.pro-qty').parent().find('input').val()
            var change = $('.header__cart ul');
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxAddProductsToCartController",
                data: {
                    "idProduct": idProduct,
                    "idSizeProduct": idSizeProduct,
                    "quantity" : quantity
                },
                success: function (response) {
                    alert("Đã thêm vào giỏ hàng");
                    change.html('');
                    change.html(response);
                }
            });
        });
        $('.delete-product-nav').on('click', function (event) {
            event.preventDefault();
            var idProduct = $(this).data('idproduct');
            var change = $('.header__cart ul');
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxRemoveProductFromCartNavController",
                data: {
                    "idProduct": idProduct
                },
                success: function (response) {
                    change.html('');
                    change.html(response);
                }
            });
        });
        $('.pro-qty-cart').on('click', '.qtybtn', function () {
            var oldValue = $(this).parent().find('input').val();
            if ($(this).hasClass('inc')) {
                if (oldValue < 30) {
                    var newVal = parseFloat(oldValue) + 1;
                } else {
                    newVal = 30;
                }
            } else {
                // Don't allow decrementing below zero
                if (oldValue > 1) {
                    var newVal = parseFloat(oldValue) - 1;
                } else {
                    newVal = 1;
                }
            }
            $(this).parent().find('input').val(newVal);
        });
    }
}
client.init();