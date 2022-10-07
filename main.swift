

var unsorted : [String] = []

while true{
    if let next = readLine(), next != ""{
        unsorted.append(next)
    }
    else {
        break
    }
}

var pass = 0
var swap = 0
var total = 0

var sortInt = unsorted

func swap(sorted: inout [String], index: Int, smallest: Int){
    sorted.swapAt(index, smallest)
    swap += 1
    pass += 1
    j += 1
    n += 1
}

print("Pass: \(pass), Swaps: \(swap)/\(total), Array: \(sortInt)")

var j = 0
var Min = 0
var n = 0
func selection(sortInt: inout [String]){
    for i in n..<sortInt.count{
        Min = i
        for int in n ..< sortInt.count{
            if sortInt[Min] > sortInt[int]{
                Min = int
            }
            
        }
    }
    swap(sorted: &sortInt, index:j, smallest: Min)
}


while true{
    selection(sortInt: &sortInt)
    total += swap
    print("Pass: \(pass), Swaps: \(swap)/\(total), Array: \(sortInt)")
    swap = 0
    if pass == sortInt.count - 1{
        break
    }
}
