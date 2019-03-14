import UIKit

//With this assignment we will be building the basic structure of a simple game we are going to call "Machi". For this game there are 30 cards of 3 different colors each with a value that matches one of the potential rolls of a six-sided dice
enum Color{
    case red
    case blue
    case green
}

struct Card{
    var color:Color
    var roll:Int
    init (color:Color){
        self.color = color
        if color == .blue{
            roll = Int.random(in:1...2)
        }
        else if color == .red{
            roll = Int.random(in:3...4)
        }
        else {
            roll = Int.random(in:4...6)
        }
    }
}

var testCard: Card = Card(color:.red)
//user dot notation to refer to enum case red
print(testCard.color)

class Deck{
    var cards:[Card]
    init(){
        self.cards=[]
        for _ in 1...10{
            self.cards.append(Card(color:.red))
            self.cards.append(Card(color:.blue))
            self.cards.append(Card(color:.green))
        }
    }
    func deal() -> Card{
        //removes and returns top-most card
    }
    func isEmpty() -> Bool{
        //returns True or False
    }
    func shuffle()->Self{
        //
    }
}

class Player{
    var name:String
    var hand:[Card]
    func draw(deck: Deck) -> Card{
        //draws a card from a deck, adds it to the players hand, and returns it
    }
    func rollDice() -> Int{
        return Int.random(in:1...6)
    }
    func matchingCards(color:String, val: Int) -> Int{
        
    }
}
