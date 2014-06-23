Meteor.startup ->
  Squad.destroyAll()
  if Squad.find({}).count() is 0
    squad = Squad.create(
      name: "Marlow Wolves Youth"
    )
    JSON.parse(Assets.getText('players.json')).forEach (p) ->
      squad.players().create p
