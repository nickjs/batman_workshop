class BatmanWorkshop.Crime extends Batman.Model

  @persist Batman.RailsStorage
  @encode 'name', 'location'

  @belongsTo 'villain'
