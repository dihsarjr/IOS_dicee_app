//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Rashid on 06/06/21.
//

import SwiftUI

struct ContentView: View {
    
  @State  var left = 1;
    @State  var right = 1;
    
    
    
    var body: some View {

        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .center) {
                Spacer()
                Image("diceeLogo")
                Spacer()
                HStack {
                    ExtractedView(number:left)
                    ExtractedView(number:right)
          
                }.padding(.all)
                Spacer()
                Button(action: {
                    self.left = Int.random(in: 1...6)
                    self.right = Int.random(in: 1...6)
                }) {
                    Text("Roll").font(.system(size: 50)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.white).padding(.horizontal)
                }
                .background(Color.red)
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    let number:Int
    var body: some View {
        Image("dice\(number)").resizable().aspectRatio(1,contentMode: .fit).padding(.all)
    }
}
