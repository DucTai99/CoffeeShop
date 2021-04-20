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
            })
        })
    }
}
client.init();