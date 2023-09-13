//
//  FoodmallOrderView.swift
//  FoodMall
//
//  Created by Harikrishnan K M on 12/09/23.
//

import SwiftUI

struct FoodmallOrderView: View {
    var body: some View {
        NavigationView{
            Text("Order View")
                .navigationTitle("🛒 Orders")
        }
    }
}

struct FoodmallOrderView_Previews: PreviewProvider {
    static var previews: some View {
        FoodmallOrderView()
    }
}
