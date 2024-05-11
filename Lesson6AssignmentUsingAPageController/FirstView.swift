//
//  FirstView.swift
//  Lesson6AssignmentUsingAPageController
//
//  Created by Sandra Gomez on 5/10/24.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var firstViewText: Shared    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            VStack {
                Text("This is the first view")
                TextField("Type here", text: $firstViewText.message)
                    .padding()
                    .textFieldStyle(.roundedBorder)
            }
        }
    }
}

#Preview {
    FirstView()
}
