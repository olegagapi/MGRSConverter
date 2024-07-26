// The Swift Programming Language
// https://docs.swift.org/swift-book

import CoreLocation

extension CLLocationCoordinate2D {
    func toMgrs() -> Mgrs? {
        return try? LatLon(lat: latitude, lon: longitude).toUTM().toMGRS()
    }
}
