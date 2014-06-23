class @Tournament extends Minimongoid
  @_collection: new Meteor.Collection 'tournaments'

  @has_many: [
    name: 'games'
    foreign_key: 'tournament_id'
  ,
    name: 'appearances'
    foreign_key: 'tournament_id'
  ]

  @defaults:
    name: ''
    date: ''

  validate: ->
    @error('name', 'Tournament name is required') unless @name
    @error('date', 'Tournament date is required') unless @date

