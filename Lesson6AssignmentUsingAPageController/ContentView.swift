//
//  ContentView.swift
//  Lesson6AssignmentUsingAPageController
//
//  Created by Sandra Gomez on 5/10/24.
//
import SwiftUI
class Shared: ObservableObject {
    @Published var message = ""
}

struct ContentView: View {
    @EnvironmentObject var sharedData: Shared
    var body: some View {
        TabView {
            FirstView()
                .tabItem {
                    Image (systemName: "sun.max.fill")
                    Text("Sun")
                }
            SecondView()
                .tabItem {
                    Image(systemName: "cloud.rain.fill")
                    Text("Rain")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "cloud.fill" )
                    Text("Cloudy")
                }
        }.environmentObject(Shared())
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}
