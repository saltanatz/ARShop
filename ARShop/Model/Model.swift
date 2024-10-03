//
//  Model.swift
//  ARShop
//
//  Created by Saltanat on 02.10.2024.
//

import Foundation

struct Product: Identifiable {
	let id = UUID()
	let name: String
	let price: String
	let imageName: String
	let description: String
}
