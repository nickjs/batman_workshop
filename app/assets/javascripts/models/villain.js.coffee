class BatmanWorkshop.Villain extends Batman.Model

  @persist Batman.RailsStorage
  @encode 'firstName', 'lastName'
  @validate 'firstName', presence: true
  @validate 'lastName', presence: true

  @hasMany 'crimes', saveInline: false

  # does an object NEED to be a model in order to have accessors?
  @accessor 'fullName',
    get: ->
      "#{@get 'firstName'} #{@get 'lastName'}"

    set: (key, value) ->
      components = value.split ' '
      @set 'firstName', components[0]
      @set 'lastName', components[1]
      # can we verify this is working with the console?
