//
//  ContentView.swift
//  AppleWatchFace
//
//  Created by Joe Kotlan on 3/30/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack {
                VStack {
                    Text("Mon")
                        .font(.system(.caption, design: .rounded))
                        .textCase(.uppercase)
                        .foregroundColor(.gray)
                    Text("30")
                        .font(.system(.title3, design: .rounded))
                }
                Spacer()
                Text("10:03")
                    .fontWeight(.medium)
                    .font(.system(.largeTitle, design: .rounded))
            }
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("6:00-6:30PM")
                        .fontWeight(.bold)
                    Group {
                        Text("Haircut")
                            .fontWeight(.semibold)
                        Text("Sport Clips")
                            .font(.body)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    .foregroundColor(.gray)
                }
                .font(.system(.body, design: .rounded))
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Text("44°")
                    .font(.system(.largeTitle, design: .rounded))
                Spacer()
                VStack {
                    Image(systemName: "umbrella.fill")
                    Text("90%")
                }
                Spacer()
                Image(systemName: "moon.fill")
                    .font(.largeTitle)
            }
        }
        .frame(width: 180, height: 200)
        .padding(.init(top: 28, leading: 22, bottom: 26, trailing: 22))
        .overlay(
            RoundedRectangle(cornerRadius: 55)
                .stroke(Color("greyBorder"), lineWidth: 3)
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
