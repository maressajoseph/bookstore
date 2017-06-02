function AddToCart(event, product) {
  event.preventDefault();


  $.ajax({
    type: "GET",
    url: "/carts.json",
    data: JSON.stringify ({
        cart: product
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);
  });
}

function DeleteItemFromCart(id){
  console.log(id)


  $.ajax({
    type: "DELETE",
    url: "/carts/" + id + ".json",
    contentType: "application/json",
    dataType: "json"
  });
}

$ (document).ready(function() {
  $(".glyphicon-shopping-cart").bind('click', AddToCart);
  $(".glyphicon-remove").bind('click', DeleteItemFromCart);
});
