class @Squad extends Minimongoid
  @_collection: new Meteor.Collection 'squads'

  @has_many: [
    name: 'tournaments'
    foreign_key: 'squad_id'
  ,
    name: 'players'
    foreign_key: 'squad_id'
  ]

  @defaults:
    name: ''
    date: ''
    slug: ''

  @before_create: (attrs) ->
    attrs.slug = _.slugify(attrs.name)
    return attrs

  validate: ->
    @error('name', 'Squad name is required') unless @name

