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
                .padding([.top, .bottom, .trailing])
            Text("Sun")
                .foregroundColor(Color.white)
                .frame(width:50, height:50)
                .background(Color.green)
                .padding(.trailing, -10.0)
        }
        .padding(-10.0)
        HStack {
            Text("23rd")
                .foregroundColor(Color.white)
                .frame(width:50, height:50)
                .background(Color.blue)
                .padding([.top, .bottom, .trailing])
            Text("March")
                .foregroundColor(Color.black)
                .frame(width:50, height:50)
                .background(Color.yellow)
                .padding(.trailing, -10.0)
            }

            HStack {
            Text("2020")
                .foregroundColor(Color.black)
                .frame(width:50, height:50)
                .background(Color.orange)
                .padding([.top, .bottom, .trailing])
            Text("Steve")
                .foregroundColor(Color.white)
                .frame(width:50, height:50)
                .background(Color.purple)
                .padding(.trailing, -10.0)
            }
            .padding(-10.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
