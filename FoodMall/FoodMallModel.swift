//
//  FoodMallModel.swift
//  FoodMall
//
//  Created by Harikrishnan K M on 12/09/23.
//

import Foundation

struct FoodMallModel: Decodable, Identifiable{
    var name: String
    var id: Int
    var protein: Int
    var calories: Int
    var carbs: Int
    var imageURL: String
    var price: Double
    var description: String
}

struct FoodMallResponse: Decodable{
    let request: [FoodMallModel]
}

struct MockData{
    static let sampleFoodmall = FoodMallModel(name: "Test Food",
                                              id: 9,
                                              protein: 99,
                                              calories: 88,
                                              carbs: 9,
                                              imageURL: "",
                                              price: 9.99,
                                              description: "abcdefg")
    static let food = [sampleFoodmall, sampleFoodmall, sampleFoodmall, sampleFoodmall]
}
