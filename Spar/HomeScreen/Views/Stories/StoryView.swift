//
//  StoryView.swift
//  Spar
//
//  Created by Дмитрий Скок on 12.08.2023.
//

import SwiftUI

struct StoryView: View {
    let storyModel: StoryModel
    
    var body: some View {
        VStack {
            ZStack{
                Color.blue
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(Circle())
                    .padding(4)
                    .overlay(
                        Circle().stroke(Color.green, lineWidth: 2)
                    )
            }
            
            Text(storyModel.name)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(maxWidth: 80, maxHeight: 50, alignment: .top)
        }
        .padding(.top, 8)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(storyModel: StoryModel(id: 1, name: "Мой спар"))
    }
}
