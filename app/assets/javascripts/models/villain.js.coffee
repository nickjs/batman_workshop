class BatmanWorkshop.Villain extends Batman.Model

  firstName: 'edward'
  lastName: 'nigma'

  @accessor 'fullName', ->
    # why do we use gets instead of property access?
    # how do we make this bidirectional?
    "#{@get 'firstName'} #{@get 'lastName'}"
