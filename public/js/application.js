$(document).ready(function() {
  $(document).keydown(function (e) {
    var player_1 = $("#player1_strip").find(".active")
    var player_2 = $("#player2_strip").find(".active")
    var keyCode = e.keyCode || e.which

    switch (keyCode) {
      case 81:
        player_1.removeClass("active")
        player_1.next().addClass("active")
      break;

      case 80:
        player_2.removeClass("active")
        player_2.next().addClass("active")
      break;

      }
      if (player_1.hasClass("end")) {
        alert("Player one wins")
      }

      if (player_2.hasClass("end")) {
        alert("Player two wins")
      }
  })
});
