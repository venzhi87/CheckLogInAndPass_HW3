//
//  User.swift
//  CheckLogInAndPass_HW3
//
//  Created by Pavel Kuzovlev on 15.03.2022.
//


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "Pavel", password: "PASSWORD", person: .getPerson())
    }
    
    
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Pavel", surname: "VenZhi", image: "SwiftImage")
    }
}
