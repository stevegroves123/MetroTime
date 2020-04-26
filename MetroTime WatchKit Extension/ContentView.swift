//
//  ContentView.swift
//  MetroTime WatchKit Extension
//
//  Created by steve groves on 26/04/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
            Text("20:36")
                    .foregroundColor(Color.white)
                    .frame(width:50, height:50)
                    .background(Color.red)
                .padding(.trailing, -8.0)
            Text("Sun")
                    .foregroundColor(Color.black)
                    .frame(width:50.0, height:50)
                    .background(Color.green)
            }
        HStack {
            Text("23rd")
                    .foregroundColor(Color.white)
                    .frame(width:50, height:50)
                    .background(Color.blue)
                .padding(.trailing, -8.0)
            Text("March")
                    .foregroundColor(Color.black)
                    .frame(width:50, height:50)
                    .background(Color.yellow)
            }
            HStack {
                Text("2020")
                    .foregroundColor(Color.black)
                    .frame(width:50, height:50)
                    .background(Color.orange)
                .padding(.trailing, -8.0)
            Text("Steve")
                    .foregroundColor(Color.white)
                    .frame(width:50, height:50)
                    .background(Color.purple)
            }
        }
        .frame(width: nil, height: nil)
        .padding(.all)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
