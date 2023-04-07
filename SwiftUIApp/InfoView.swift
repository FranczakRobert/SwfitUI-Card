//
//  InfoView.swift
//  SwiftUIApp
//
//  Created by Robert Franczak on 07/04/2023.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay {
                HStack{
                    Image(systemName: imageName).foregroundColor(.green)
                    Text(text)
                }
            }
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello Phone", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
