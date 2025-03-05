//
//  Animal.swift
//  OpaqueTypes
//
//  Created by Javier Calatrava on 5/3/25.
//

import Foundation

protocol Animal {
    func makeSound() -> String
}

struct Dog: Animal {
    func makeSound() -> String { "Woof!" }
}

struct Cat: Animal {
    func makeSound() -> String { "Meow!" }
}

func getAnimal() -> some Animal {
    return Dog()
}

func printAnimal(_ animal: any Animal) -> String {  // Explicit existential
    animal.makeSound()
}
