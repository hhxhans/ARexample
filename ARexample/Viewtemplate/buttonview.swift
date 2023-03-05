//
//  buttonview.swift
//  beginswiftui
//
//  Created by niudan on 2022/12/23.
//

import SwiftUI

struct buttonview: View {
    
    @State var title: Int 
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(title)")
            
            Button("Press me!") {
                title += 1            }
            .accentColor(.red)
            
            Button(action: {
                title += 1
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                title += 1            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                    )
            })
            
            Button(action: {
                title += 1            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
            
        }
    }
}

struct buttonview_Previews: PreviewProvider {
    static var previews: some View {
        buttonview(title: -5)
    }
}
