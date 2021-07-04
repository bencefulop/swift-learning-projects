//
//  InfoView.swift
//  SwiftUI BusinessCard
//
//  Created by Bence Fulop on 4/7/21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: .infinity, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
                    Text(text)
                }
            )
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+61 549 633", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}



