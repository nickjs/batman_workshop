class BatmanWorkshop.VillainsController extends Batman.Controller
  index: ->
    @villains = BatmanWorkshop.Villain.get 'all'

  new: ->
    @villain = new BatmanWorkshop.Villain

  create: ->
    @villain.save()
    @redirect controller: 'villains', action: 'index'
