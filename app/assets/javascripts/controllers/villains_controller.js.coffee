class BatmanWorkshop.VillainsController extends Batman.Controller
  index: ->
    @villains = BatmanWorkshop.Villain.get 'all'

  new: ->
    @villain = new BatmanWorkshop.Villain

  create: ->
    @villain.save (err) =>
      if err
        console.log err
      else
        @redirect controller: 'villains', action: 'index'
