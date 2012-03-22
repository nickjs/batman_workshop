class BatmanWorkshop.VillainsController extends Batman.Controller
  index: ->
    @villains = BatmanWorkshop.Villain.get 'all'
