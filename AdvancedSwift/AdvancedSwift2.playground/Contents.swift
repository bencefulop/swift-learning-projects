import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketsOfPaint: Int {
    get {
        return Int(ceil((width * height) / 1.5))
    }
    set {
        let areaCanCover = Double(newValue) * 1.5
        print("this amount of paint can cover the area of \(areaCanCover)")
    }
}


bucketsOfPaint = 9
