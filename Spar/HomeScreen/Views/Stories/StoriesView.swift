//
//  StoriesView.swift
//  Spar
//
//  Created by Дмитрий Скок on 10.08.2023.
//

import SwiftUI

struct StoriesView: View {
    @Binding var storyModels: [StoryModel]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach(storyModels) { storyModel in
                    StoryView(storyModel: storyModel)
                }
            }
            .padding(.leading)
            .frame(height: 120)
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(storyModel: StoryModel(id: 1, name: "Мой спар"))
    }
}
