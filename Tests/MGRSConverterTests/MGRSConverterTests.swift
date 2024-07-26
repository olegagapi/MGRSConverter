import XCTest
@testable import MGRSConverter

final class MGRSConverterTests: XCTestCase {
    let wgs84 = [
        LatLon(lat: 50.4501, lon: 30.5234),
        LatLon(lat: 49.9935, lon: 36.2304),
        LatLon(lat: 46.4825, lon: 30.7233),
        LatLon(lat: 48.9226, lon: 24.7103),
        LatLon(lat: 49.8397, lon: 24.0297),
        LatLon(lat: 48.0064, lon: 37.8056),
        LatLon(lat: 50.9077, lon: 34.7981),
        LatLon(lat: 47.8388, lon: 35.1396),
        LatLon(lat: 48.6208, lon: 22.2879),
        LatLon(lat: 46.9750, lon: 31.9946),
        LatLon(lat: 49.2331, lon: 28.4682),
        LatLon(lat: 47.9105, lon: 33.3918),
        LatLon(lat: 50.0617, lon: 31.4076),
        LatLon(lat: 48.4647, lon: 35.0462),
        LatLon(lat: 47.0947, lon: 37.5485),
        LatLon(lat: 50.0614, lon: 36.2173),
        LatLon(lat: 49.4285, lon: 32.0621),
        LatLon(lat: 49.2328, lon: 28.4668),
        LatLon(lat: 48.4593, lon: 22.7197),
        LatLon(lat: 49.5535, lon: 25.5948)
    ]
    
    let mgrs = [
        "36U UA 24182 91608",
        "37U CR 01497 41584",
        "36T US 25251 50177",
        "35U LQ 32272 21379",
        "35U KR 86436 25040",
        "37U DP 10915 17702",
        "36U XB 26418 41101",
        "36T XU 60097 00600",
        "34U EU 94912 86104",
        "36T VT 23529 02876",
        "35U PQ 06884 54406",
        "36T WU 29277 06427",
        "36U UA 86026 46705",
        "36U XU 51258 69974",
        "37T CN 89845 16710",
        "37U CR 00840 49167",
        "36U VV 31991 75515",
        "35U PQ 06783 54371",
        "34U FU 27137 68780",
        "35U LQ 98365 89937"
    ]

    func testWSG84toMGRS() throws {
        for i in 0..<wgs84.count {
            let converted = try! wgs84[i].toUTM().toMGRS()
            XCTAssert(converted.toString() == mgrs[i], "failed for \(wgs84[i])")
        }
    }
}
