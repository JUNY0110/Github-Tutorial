//
//  ProductData.swift
//  SU Tutorials
//
//  Created by 지준용 on 2022/04/18.
//

import SwiftUI

struct ProductsList: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let num: String
    let name: String
    let price: String
    let style: String
}

let productsList = [
    ProductsList(image: "product_1", num: "01", name: "3 Favors Juice", price: "24,000", style: "Regular"),
    ProductsList(image: "product_2", num: "02", name: "Camera", price: "99,900", style: "Black"),
    ProductsList(image: "product_3", num: "03", name: "3 Tissue", price: "5,000", style: "White"),
    ProductsList(image: "product_4", num: "04", name: "7 Colors bottle", price: "15,000", style: "Regular"),
    ProductsList(image: "product_5", num: "05", name: "iPhone13 red", price: "900,000", style: "Product Red")
]

//struct ProductsIntList: Identifiable, Hashable {
//    let id = UUID()
//    let price: Int
//    let num: Int
//}
//
//
//let productsIntList = [
//
//    ProductsIntList(price: 24000, num: 1),
//    ProductsIntList(price: 99000, num: 1),
//    ProductsIntList(price: 5000, num: 1),
//    ProductsIntList(price: 15000, num: 1),
//    ProductsIntList(price: 900000, num: 1)
//]
