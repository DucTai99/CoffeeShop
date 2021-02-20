var buttonVi = $(".vi-VN").click(() => {
  $.getJSON("../lang/vi.json", (json) => {
    $("[langKey]").each((index) => {
      var strTr = json[$("[langKey]")[index].getAttribute("langKey")];
      if (strTr != undefined) {
        $("[langKey]")[index].innerHTML = strTr;
      }
    });
  });
});
var buttonEn = $(".en-UK").click(() => {
  $.getJSON("../lang/en.json", (json) => {
    $("[langKey]").each((index) => {
      var strTr = json[$("[langKey]")[index].getAttribute("langKey")];
      if (strTr != undefined) {
        $("[langKey]")[index].innerHTML = strTr;
      }
    });
  });
});
