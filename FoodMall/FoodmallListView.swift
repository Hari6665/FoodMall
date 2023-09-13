//
//  FoodmallListView.swift
//  FoodMall
//
//  Created by Harikrishnan K M on 12/09/23.
//

import SwiftUI

struct FoodmallListView: View {
    @State private var food: [FoodMallModel] = []
    var body: some View {
        NavigationView{
            
            List(MockData.food){ food in
               FoodListCellView(food: food)
            }
            .navigationTitle("🍱 Food Mall")
        }
        .onAppear{
            getFood()
        }
    }
    
    func getFood() {
        NetworkManager.shared.getFood { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let food):
                    self .food = food
                case .failure(let error):
                    print(error.localizedDescription)
                    
                }

            }
        }
    }
}

struct FoodmallListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodmallListView()
    }
}
