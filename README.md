# MGRSConverter
Converts between Lat/Lon and MGRS Coordinates

The math and theory for the conversions between Latitude/Longitude, UTM, and MGRS was adapted from code provided by https://www.movable-type.co.uk/scripts/latlong-utm-mgrs.html
The first unpublished iteration of this was a simple translation of the JavaScript provided to Swift.
Subsequent iterations have evolved into packaging the math within into a more useable iOS interface.

##Usage:

    let mgrs = CLLocationCoordinate2D(latitude: 50.45, longitude: 30.523333).toMgrs()
    print(mgrs.toString())
