class BatmanWorkshop.CrimesController extends Batman.Controller
  new: ->
    @villains = BatmanWorkshop.Villain.get 'all'
    @crime = new BatmanWorkshop.Crime
