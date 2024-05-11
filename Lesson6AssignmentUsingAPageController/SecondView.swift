//
//  SecondView.swift
//  Lesson6AssignmentUsingAPageController
//
//  Created by Sandra Gomez on 5/10/24.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var secondViewText: Shared
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.teal)
            VStack {
                Text("This is the second view")
                TextField("Type here", text: $secondViewText.message)
                    .padding()
                    .textFieldStyle(.roundedBorder)
            }
        }
    }
}

#Preview {
    SecondView()
}
