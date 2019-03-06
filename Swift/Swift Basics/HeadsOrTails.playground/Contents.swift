import UIKit

var str = "Hello, playground"
func tossCoin() -> String{
    print("Tossing a coin!")
    var result: String = "Tails"
    let toss = Int.random(in: 0...1)
    if toss==0{
        result = "Heads"
    }
    print(result)
    return result
}

func tossMultipleCoins(coins: Int) -> Double{
    var heads: Int = 0
    for _ in 1...coins{
        if tossCoin()=="Heads"{
            heads+=1
        }
    }
    return Double(heads)/Double(coins)
}
print(tossMultipleCoins(coins: 4))

