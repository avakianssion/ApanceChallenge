//
//  Names.swift
//  Apance
//
//  Created by Sion Avakian on 7/13/20.
//  Copyright © 2020 Sion Avakian. All rights reserved.
//
import SwiftUI
// A struct of Artists to organize and store all the data, including user inputs
struct Artists: Identifiable{
    var id = UUID()
    var name: String;
    var date: String;
    var city: String;
    var country: String;
    
}

var testData = [
    Artists(name: "Vincent Van Gogh", date: "1853", city: "Zundert", country: "The Netherlands"),
    Artists(name: "Pablo Picasso", date: "1881", city: "Malaga", country: "Spain"),
    Artists(name: "Takashi Murakami", date: "1962", city: "Tokyo", country: "Japan"),
    Artists(name: "Claude Monet", date: "1840", city: "Paris", country: "France"),
    Artists(name: "Utamaro", date: "1736", city: "Edo", country: "Japan"),
    Artists(name: "Frida Kahlo", date: "1907", city: "Mexico City", country: "Mexico"),
    Artists(name: "Georgia O'Keeffe", date: "1887", city: "Sun Prairie", country: "United States"),
    Artists(name: "Hokusai", date: "1760", city: "Edo", country: "Japan"),
    Artists(name: "Paul Gauguin", date: "1848", city: "Paris", country: "France"),
    Artists(name: "Jean-Michel Basquat", date: "1960", city: "Brooklyn", country: "United States"),
    Artists(name: "James Jean", date: "1979", city: "Taipei", country: "Taiwan")
]
