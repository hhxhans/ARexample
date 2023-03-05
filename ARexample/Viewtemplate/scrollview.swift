//
//  scrollview.swift
//  beginswiftui
//
//  Created by niudan on 2022/12/16.
//

import SwiftUI

struct scrollview: View {
    let picname:[String]
    let vertical:Int
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVStack {
            ForEach(0..<vertical-1){index in
                ScrollView(.horizontal, showsIndicators: false, content: {HStack{ForEach(0..<picname.count){index in
                    Button(action: {
                        print("picture \(picname[index])")
                    }, label: {
                        Image(uiImage: UIImage(named: picname[index])!)
                            .resizable()
                            .scaledToFit()
                        .frame(width:200, height: 100)
                    })
                    }}
                })
                    
                           }}
          
            })
        }
        }

//struct scrollview_Previews: PreviewProvider {
//    static var previews: some View {
//        scrollview()
//    }
//}
