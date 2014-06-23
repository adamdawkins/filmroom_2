class @Tournament extends Minimongoid
  @_collection: new Meteor.Collection 'tournaments'

  @belongs_to: [
    name: 'squad'
  ]

  @has_many: [
    name: 'games'
    foreign_key: 'tournament_id'
  ,
    name: 'appearances'
    foreign_key: 'tournament_id'
  ]

  @defaults:
    host: ''
    date: ''

  validate: ->
    @error('host', 'Tournament host is required') unless @host
    @error('date', 'Tournament date is required') unless @date

  name: ->
    "#{@date} @ #{@host}"

