Template.AddGame.events
  'submit form': (e, tmpl) ->
    e.preventDefault()
    game = {}
    game.squad_score = tmpl.find('#game_squad_score').value
    game.opponent_score = tmpl.find('#game_opponent_score').value
    game.opponent_name = tmpl.find('#game_opponent_name').value

    @.games().create(game)

