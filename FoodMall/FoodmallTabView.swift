//
//  ContentView.swift
//  FoodMall
//
//  Created by Harikrishnan K M on 11/09/23.
//

import SwiftUI

struct FoodmallTabView: View {
    var body: some View {
        TabView {
            FoodmallListView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            FoodmallAccountView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }
            FoodmallOrderView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodmallTabView()
    }
}
