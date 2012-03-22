class BatmanWorkshop.VillainsIndexView extends Batman.View
  ready: ->
    image = null

    $('.destroy-crime').live 'click', =>
      if not image
        image = $ '<img src="/assets/batman.gif" />'
        image.css position: 'absolute', top: '100px', left: '100px'

      document.body.appendChild image[0]

      setTimeout ->
        document.body.removeChild image[0]
      , 1500
