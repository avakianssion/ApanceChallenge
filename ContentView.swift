//
//  ContentView.swift
//  Apance
//
//  Created by Sion Avakian on 7/13/20.
//  Copyright © 2020 Sion Avakian. All rights reserved.
import SwiftUI

struct ContentView: View
{
    var Names : [Artists] = testData
    var body: some View
    {
        ZStack
        {
            // A pop up box - get user input for name, date, city, country, append to testDate

            List(Names)
            {
                // Loop through the names Array populated by our testData and display everything
                item in
                HStack
                {
                    VStack(alignment: .leading)
                    {
                        Text(item.name)
                    }
                    .frame(minWidth: 180, maxWidth: 180)
                    VStack(alignment: .leading)
                    {
                        Text(item.date)
                    }
                    .frame(minWidth: 180, maxWidth: 180)
                    VStack(alignment: .leading)
                    {
                        Text(item.city)
                    }
                    .frame(minWidth: 180, maxWidth: 180)
                    VStack(alignment: .leading)
                    {
                        Text(item.country)
                    }
                    .frame(minWidth: 180, maxWidth: 180)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(Names: testData)
    }
}

