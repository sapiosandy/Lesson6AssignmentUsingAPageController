//
//  ThirdView.swift
//  Lesson6AssignmentUsingAPageController
//
//  Created by Sandra Gomez on 5/10/24.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var lastViewText: Shared
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.mint)
            VStack {
                Text("This is the third view")
                TextField("Type here", text: $lastViewText.message)
                    .padding()
                    .textFieldStyle(.roundedBorder)
            }
        }
    }
}

#Preview {
    ThirdView()
}
