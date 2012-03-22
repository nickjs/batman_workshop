class BatmanWorkshop.Crime extends Batman.Model

  @persist Batman.RailsStorage
  @encode 'name', 'location'

  @belongsTo 'villain'

  @urlNestsUnder 'villain'

  @accessor 'latitude', ->
    @get('location')?.split(',')[0]
  @accessor 'longitude', ->
    @get('location')?.split(',')[1]
