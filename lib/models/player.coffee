class @Player extends Minimongoid
  @_collection: new Meteor.Collection 'players'

  @belongs_to: [
    name: 'squads'
  ]

  @defaults:
    first_name: ''
    last_name: ''
 
  validate: ->
    @error('first_name', 'First name is required') unless @first_name
    @error('last_name', 'Last name is required') unless @last_name


  full_name: ->
    "#{@first_name} #{@last_name}"
