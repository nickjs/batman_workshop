class BatmanWorkshop.MapView extends Batman.View
  awakeFromHTML: ->
    @set 'zoom', @node.getAttribute('data-zoom') || 13
    if lat = @node.getAttribute 'latitude'
      @set 'latitude', lat
      @set 'longitude', @node.getAttribute 'longitude'

    @observeAndFire 'imageSrc', (src) =>
      @_img ||= $(@node).find('img')
      @_img.attr('src', src) if src
      console.log src

    @observeAndFire 'href', (href) =>
      @_a ||= $(@node).find('a')
      @_a.attr('href', href) if href

  @accessor 'imageSrc', ->
    if @latitude and @longitude and @zoom
      "http://maps.googleapis.com/maps/api/staticmap?center=#{@get('latitude')},#{@get('longitude')}&zoom=#{@get('zoom')}&size=250x250&sensor=false"

  @accessor 'href', ->
    if @latitude and @longitude
      "http://www.google.com/maps?q=#{@get('latitude')},#{@get('longitude')}"

  @::observe 'address', (address) ->
    return if not address or not address.latitude
    @set 'latitude', address.latitude
    @set 'longitude', address.longitude

  html: "<a style='display:block;width:250px;height:250px;border:1px solid #777' target='_blank'><img /></a>"
