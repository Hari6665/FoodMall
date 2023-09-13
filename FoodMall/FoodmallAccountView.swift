//
//  FoodmallAccountView.swift
//  FoodMall
//
//  Created by Harikrishnan K M on 12/09/23.
//

import SwiftUI

struct FoodmallAccountView: View {
    var body: some View {
        NavigationView{
            Text("Account View")
                .navigationTitle("👨🏻‍💼 Accounts")
        }
    }
}

struct FoodmallAccountView_Previews: PreviewProvider {
    static var previews: some View {
        FoodmallAccountView()
    }
}
