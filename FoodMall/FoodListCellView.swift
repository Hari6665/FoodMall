//
//  FoodListCellView.swift
//  FoodMall
//
//  Created by Harikrishnan K M on 12/09/23.
//

import SwiftUI

struct FoodListCellView: View {
    let food: FoodMallModel
    var body: some View {
        HStack{
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack{
                Text(food.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(food.price, specifier: "%.3f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

struct FoodListCellView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListCellView(food:MockData.sampleFoodmall)
    }
}
