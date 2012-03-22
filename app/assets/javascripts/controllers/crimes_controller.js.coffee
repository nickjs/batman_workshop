class BatmanWorkshop.CrimesController extends Batman.Controller
  new: ->
    @villains = BatmanWorkshop.Villain.get 'all'
    if not @villains.get('length')
      return @redirect controller: 'villains', action: 'index'

    @crime = new BatmanWorkshop.Crime
