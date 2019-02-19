import UIKit

func findPeakValues(elements: [Int]) -> [Int]{
    //return array with peak values
    var peakValues: [Int] = []
    var isNextValueGreater: Bool = false //flag to compare with sucessor element
    if var value = elements.first { // to check first elemet
        elements.dropFirst().forEach { //iterate for every element
            //compare with successor element and udpate the flag if it is greater value
            if value < $0 {
                isNextValueGreater = true
            }
            //identify peak elements if previous element is lesser and flag is true
            if $0 < value && isNextValueGreater {
                isNextValueGreater = false
                peakValues.append(value)
            }
            value = $0
        }
    }
    else{
        print("array is empty")
    }
    return peakValues
}
print(findPeakValues(elements: [10,20,15,2,23,90,67]))

