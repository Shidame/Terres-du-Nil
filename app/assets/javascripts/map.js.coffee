jQuery ->
  $(".tile").popover({animation: false, trigger: "manual"}).click (e) ->
    $(@).popover('toggle')
    $(@).toggleClass('red')
    $(@).siblings().popover('hide')
    $(@).siblings().removeClass('red')
    e.preventDefault()


  jug = new Juggernaut;
  jug.subscribe "date_changed", (data) ->
    $("#current_date").text(data)
    console.log(data)
