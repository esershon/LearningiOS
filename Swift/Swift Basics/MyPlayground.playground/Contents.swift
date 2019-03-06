func buyBicycle(cost: Int) -> (Int) -> String {
    print("You just paid $\(cost) for your new bike!")
    func cycle(miles: Int) -> String {
        return "Have a great ride! See you in \(miles) miles!"
    }
    return cycle
}
// predict the output before running this code in your playground
print(buyBicycle(cost: 500)(30))
