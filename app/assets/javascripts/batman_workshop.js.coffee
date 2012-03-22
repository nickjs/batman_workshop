class window.BatmanWorkshop extends Batman.App

  @resources 'villains'
  @root 'crimes#new'

  @message: 'welcome to arkham asylum'

  @on 'run', ->
    console?.log "Running ...."

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
