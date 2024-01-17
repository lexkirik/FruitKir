//
//  ContentView.swift
//  FruitKir
//
//  Created by Test on 16.09.23.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSetings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSetings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })
                .sheet(isPresented: $isShowingSetings, content: {
                    SettingsView()
                }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
