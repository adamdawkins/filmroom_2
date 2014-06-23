Template.AddTournament.events
  'submit form': (e, tmpl) ->
    e.preventDefault()
    tournament = {}
    tournament.host = tmpl.find('#tournament_host').value
    tournament.date = tmpl.find('#tournament_date').value

    @.tournaments().create(tournament)
