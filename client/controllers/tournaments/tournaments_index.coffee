@TournamentsIndexController = RouteController.extend
  waitOn: ->
  data: ->
    return {
      tournaments: Tournament.find()
    }
  action: ->
    @render()
