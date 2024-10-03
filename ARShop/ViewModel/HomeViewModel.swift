//
//  HomeViewModel.swift
//  ARShop
//
//  Created by Saltanat on 02.10.2024.
//

import SwiftUI

class HomeViewModel: ObservableObject {
	@Published var products: [Product] = []
	
	init() {
		self.products = [
			Product(name: "Room Sofa", price: "25000KZT", imageName: "sofa", description: "Drawing Room Wooden Sofa Set is a solid wooden sofa set which you can contrast the cushion of any color. The good sight caused us to the furniture helps us relax for a longer time."),
			Product(name: "Lamp", price: "10000KZT", imageName: "lamp", description: "Simple yet beautiful lamp that will brighten your room and serve as mindful decor"),
			Product(name: "Table", price: "20000KZZT", imageName: "table", description: "Standard table for decor"),
			Product(name: "Bed", price: "50000KZT", imageName: "bed", description: "comfortable king sized bed")
	 ]
	}
}
