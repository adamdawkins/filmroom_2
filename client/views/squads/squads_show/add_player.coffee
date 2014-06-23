Template.AddPlayer.events
  'submit form': (e, tmpl) ->
    e.preventDefault()
    player = {}
    player.first_name = tmpl.find('#player_first_name').value
    player.last_name = tmpl.find('#player_last_name').value

    @.players().create(player)
