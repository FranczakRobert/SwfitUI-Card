//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Robert Franczak on 06/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //#16a085
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Robert")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                    )
                
                Text("Robert Franczak")
                    .font(.custom("Pacifico-Regular", size: 35))
                    .bold()
                .foregroundColor(.white)
                
                Text("iOS Develoepr")
                    .foregroundColor(.white)
                    .font(.system(size:  20))
                
                Divider()
                InfoView(text: "123 456 789", imageName:"phone.fill")
                InfoView(text: "qwert@gmai.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
