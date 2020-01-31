//: Playground - noun: a place where people can play

import UIKit

struct Pizza {
    var size:Int = 0
    var hasExtraCheese: Bool = false
}

class Bakery {
    var delegate:BakeryDelegate?
    func preparePizza(){
        var pizza = Pizza()
        pizza.size = 8
        pizza.hasExtraCheese = true
        delegate?.pizzaWasBaked(pizza)
    }
}

protocol BakeryDelegate{
    func pizzaWasBaked(_ pizza: Pizza)
    
}

class PizzaShop: BakeryDelegate{
    func pizzaWasBaked(_ pizza: Pizza) {
        print("Pizza was baked")
    }
}

let shop = PizzaShop()
let bakery = Bakery()
bakery.delegate = shop
bakery.preparePizza()
