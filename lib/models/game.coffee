class @Game extends Minimongoid
  @_collection: new Meteor.Collection 'games'

  @belongs_to: [
    name: 'tournament'
  ]

  defaults:
    opponent: ''
    score: 0
    opponent_score: 0


  validate: ->
    @error('opponent', 'Game opponent is required') unless @opponent
