//
//  ContentView.swift
//  ApanceTest2
//
//  Created by Sion Avakian on 8/10/20.
//  Copyright © 2020 Sion Avakian. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var listItems = [
    Artist(name: "Vincent Van Gogh", date: "1853", city: "Zundert", country: "The Netherlands"),
    Artist(name: "Pablo Picasso", date: "1881", city: "Malaga", country: "Spain"),
    Artist(name: "Takashi Murakami", date: "1962", city: "Tokyo", country: "Japan"),
    Artist(name: "Claude Monet", date: "1840", city: "Paris", country: "France"),
    Artist(name: "Utamaro", date: "1736", city: "Edo", country: "Japan"),
    Artist(name: "Frida Kahlo", date: "1907", city: "Mexico City", country: "Mexico"),
    Artist(name: "Georgia O'Keeffe", date: "1887", city: "Sun Prairie", country: "United States"),
    Artist(name: "Hokusai", date: "1760", city: "Edo", country: "Japan"),
    Artist(name: "Paul Gauguin", date: "1848", city: "Paris", country: "France"),
    Artist(name: "Jean-Michel Basquat", date: "1960", city: "Brooklyn", country: "United States"),
    Artist(name: "James Jean", date: "1979", city: "Taipei", country: "Taiwan") ]
    
    @State private var tempName: String = ""
    @State private var tempDate: String = ""
    @State private var tempCity: String = ""
    @State private var tempCountry: String = ""

    var body: some View {
        VStack{
            VStack{
                List {
                    ForEach(listItems, id: \.self) { (item) in
                        HStack {
                            
                            VStack {
                                Text(item.name)
                            }
                            .padding(20)
                            .frame(minWidth: 180, maxWidth: 180)
                            
                            VStack{
                                Text(item.date)
                            }
                            .padding(20)
                            .frame(minWidth: 180, maxWidth: 180)
                            
                            VStack{
                                Text(item.city)
                            }
                            .padding(20)
                            .frame(minWidth: 180, maxWidth: 180)
                            
                            VStack{
                                Text(item.country)
                            }
                            .padding(20)
                            .frame(minWidth: 180, maxWidth: 180)
                            
                            
                        }
                    }.onDelete(perform: removeRows)
                    
                }
            }
            HStack{
                TextField("Name", text: $tempName)
                TextField("Date", text: $tempDate)
                TextField("City", text: $tempCity)
                TextField("Country", text: $tempCountry)
            }
            .padding(40)
            .foregroundColor(.gray)
            
            Button("Add Artist"){
                self.listItems.append(Artist(name : self.tempName, date : self.tempDate, city : self.tempCity, country : self.tempCountry))
                
            }
        }
        
    }
    func removeRows(at offsets: IndexSet) {
        listItems.remove(atOffsets: offsets)
    }
        
}

struct Artist: Hashable {
    var id = UUID()
    var name: String;
    var date: String;
    var city: String;
    var country: String;
}

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

