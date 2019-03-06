//practicing basic loops
//print numbers 1 to 255
//FizzBuss

for i in 1...255{
    print(i)
}
var str: String = ""
for i in 1...100{
//        str=""
        if (i%3 == 0){
            str="Fizz"
        }
        if (i%5 == 0){
            str+="Buzz"
        }
        if i%3 == 0 || i%5 == 0 {
            print(str)
        }
}
