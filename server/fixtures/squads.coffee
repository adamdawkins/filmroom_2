Meteor.startup ->
  if @Squad.find({}).count() is 0
    Squad.create(
      name: "Marlow Wolves Youth"
    )
