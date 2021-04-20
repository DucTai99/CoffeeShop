var client = {
    init: function () {
        client.registerEvents();
    },
    registerEvents: function () {
        $('#typeProduct').change(function (){
            var idType = "";
            $( "#typeProduct option:selected" ).each(function() {
                idType += $( this ).val();
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
        $('.product__pagination a').on('click', function (event){
            event.preventDefault();
            var pageIndex = $(this).data('page');
            var idType = $('#typeProduct').val();
            var change = $("#change");
            // console.log(pageIndex , idType);
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxChangeListProductController",
                data: {
                    "page" : pageIndex,
                    "idType": idType
                },
                success: function (response) {
                    change.html('');
                    change.html(response);
                }
            })
        });
        $('.blankCheckbox').on('click',function (){
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
        $('#search-form').submit(function (event){
            event.preventDefault();
        });
        $('#search-input').on('keyup',function (){
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
        $('.add-quantily').on('click',function (event){
            event.preventDefault();
            var idProduct = $(this).data('idproduct');
            alert("Đã thêm vào giỏ hàng");
            console.log(idProduct);
            var change = $('.header__cart ul');
            $.ajax({
                type: "GET",
                url: "/CoffeeShop/AjaxAddProductsToCartController",
                data: {
                    "idProduct": idProduct
                },
                success: function (response) {
                    change.html('');
                    change.html(response);
                }
            });
        });
    }
}
client.init();