import UIKit

func areaAndPerimeter(Length: Int, Width: Int) -> (Int, Int) {
    var perimeter = Length + Width + Length + Width
    var area = (Length + Width + Length + Width) * 2
    
    
    return (area, perimeter)
}
areaAndPerimeter(Length: 5, Width: 5)
areaAndPerimeter(Length: 5, Width: 5)
