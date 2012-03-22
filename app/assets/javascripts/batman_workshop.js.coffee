class window.BatmanWorkshop extends Batman.App

  @message: 'welcome to arkham asylum'

  @on 'run', ->
    console?.log "Running ...."

    # we wait until run because our model classes need to be loaded and defined before we can use them
    @villain = new BatmanWorkshop.Villain

  @on 'ready', ->
    console?.log "BatmanWorkshop ready for use."

  @flash: new Batman.Object
  @flash.accessor
    get: (key) -> @[key]
    set: (key, value) ->
      @[key] = value
      if value isnt ''
        setTimeout =>
          @set(key, '')
        , 2000
      value

  @flashSuccess: (message) -> @set 'flash.success', message
  @flashError: (message) ->  @set 'flash.error', message
