//
//  ContentView.swift
//  MetroTime WatchKit Extension
//
//  Created by steve groves on 26/04/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var myMonth = 0
    @State var myDay = 0
    @State var myHour = 0
    @State var myMinute = 0
    @State var mySecond = 0
    @State var myWeekday = 0
    @State var weekDayText = ""
    @State var myYear = 0
    @State var components = Calendar.current.dateComponents([.day, .month, .hour, .minute, .second, .weekday, .year], from: Date())
    
    // timer to update dispaly
    var updateTimer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {
            _ in self.components = Calendar.current.dateComponents([.day, .month, .hour, .minute, .second, .weekday, .year], from: Date())
            self.myHour = self.components.hour ?? 0
            self.myMinute = self.components.minute ?? 0
            self.mySecond = self.components.second ?? 0
            self.myMonth = self.components.month ?? 0
            self.myDay = self.components.day ?? 0
            self.myWeekday = self.components.weekday ?? 0
            self.myYear = self.components.year ?? 0
        })
    }
    
    // create a look up for the month
            func lookupMonth(myMonth: Int) -> String {
                switch myMonth {
                case 1:
                    return "Jan"
                case 2:
                    return "Feb"
                case 3:
                    return "March"
                case 4:
                    return "April"
                case 5:
                    return "May"
                case 6:
                    return "June"
                case 7:
                    return "July"
                case 8:
                    return "Aug"
                case 9:
                    return "Sept"
                case 10:
                    return "Oct"
                case 11:
                    return "Nov"
                case 12:
                    return "Dec"
                default:
                    return "unknown"
                }
            }
            
    // create lookup for the day - change for an if else statement
            func lookupDay(myDay: Int) -> String {
                switch myDay {
                case 1, 21, 31:
                    return "st"
                case 2, 22:
                    return "nd"
                case 3, 23:
                    return "rd"
                default:
                    return "th"
                }
            }
            
    // create a look up for the month
            func lookupDayofWeek(myWeekday: Int) -> String {
                switch myWeekday {
                case 1:
                    return "Sun"
                case 2:
                    return "Mon"
                case 3:
                    return "Tues"
                case 4:
                    return "Wed"
                case 5:
                    return "Thur"
                case 6:
                    return "Fri"
                case 7:
                    return "Sat"
                default:
                    return "Day"
                }
            }
        
    var body: some View {
        VStack {
            HStack {
                Text("\(myHour):\(myMinute)")
                    .foregroundColor(Color.white)
                    .frame(width:50, height:50)
                    .background(Color.red)
                    .padding(.trailing, -8.0)
            Text("\(self.lookupDayofWeek(myWeekday: self.myWeekday))")
                    .foregroundColor(Color.black)
                    .frame(width:50.0, height:50)
                    .background(Color.green)
            }
        HStack {
            Text("\(self.myDay)\(self.lookupDay(myDay: self.myDay))")
                    .foregroundColor(Color.white)
                    .frame(width:50, height:50)
                    .background(Color.blue)
                    .padding(.trailing, -8.0)
            Text("\(self.lookupMonth(myMonth: self.myMonth))")
                    .foregroundColor(Color.black)
                    .frame(width:50, height:50)
                    .background(Color.yellow)
            }
            HStack {
            Text("\(self.myYear.description)")
                    .foregroundColor(Color.black)
                    .frame(width:50, height:50)
                    .background(Color.orange)
                    .padding(.trailing, -8.0)
            Text("Spring")
                    .foregroundColor(Color.white)
                    .frame(width:50, height:50)
                    .background(Color.purple)
            }
        }
        .frame(width: nil, height: nil)
        .padding(.all)
        .background(Color.white)
        .onAppear(perform: {let _ = self.updateTimer})
        .navigationBarTitle("MetroFace")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
