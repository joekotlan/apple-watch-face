//
//  ActivityFace.swift
//  AppleWatchFace
//
//  Created by Joe Kotlan on 4/2/21.
//

import SwiftUI

struct ActivityFace: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                Text("23")
                    .padding(7)
                    .background(Color("darkGray"))
                    .cornerRadius(50.0)
                    .font(.system(.body, design: .rounded))
                Spacer()
                Image(systemName: "figure.walk")
                    .padding(7)
                    .background(Color("darkGray"))
                    .cornerRadius(50.0)
            }
            
            ZStack(alignment: .bottom) {
                HStack {
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
                        ZStack {
                            Circle()
                                .fill(Color("red"))
                                .frame(width: 95, height: 95)
                            Circle()
                                .fill(Color("green"))
                                .frame(width: 70, height: 70)
                                .overlay(Circle().stroke(Color.black, lineWidth: 3))
                            Circle()
                                .fill(Color("blue"))
                                .frame(width: 45, height: 45)
                                .overlay(Circle().stroke(Color.black, lineWidth: 3))
                            Circle()
                                .fill(Color.black)
                                .frame(width: 20, height: 20)
                        }
                        VStack(spacing: 3) {
                            Circle()
                                .fill(Color("red"))
                                .frame(width: 11, height: 11)
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 10, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            Circle()
                                .fill(Color("green"))
                                .frame(width: 9.5, height: 9.5)
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 10, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            Circle()
                                .fill(Color("blue"))
                                .frame(width: 10.5, height: 10.5)
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 10, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        }
                    }
                    Spacer()
                }
                VStack(alignment: .trailing, spacing: 0) {
                    Text("10:09")
                        .fontWeight(.semibold)
                        .padding(.vertical, -2)
                    Text("500")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("red"))
                        .padding(.vertical, -2)
                    Text("30")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("green"))
                        .padding(.vertical, -2)
                    Text("12")
                        .fontWeight(.semibold)
                        .foregroundColor(Color("blue"))
                        .padding(.vertical, -2)
                }
                .font(.system(.largeTitle, design: .rounded))
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            HStack {
                Image("soundhound-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Soundhound")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .textCase(.uppercase)
            }
            .padding(.vertical, 2.0)
            .frame(maxWidth: .infinity)
            .background(Color("darkGray"))
            .cornerRadius(20)
            
            Spacer()
            
        }
        .frame(width: 160, height: 190)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color("greyBorder"), lineWidth: 3)
        )
    }
}

struct ActivityFace_Previews: PreviewProvider {
    static var previews: some View {
        ActivityFace()
            .preferredColorScheme(.dark)
    }
}
