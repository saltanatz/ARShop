//
//  ProductCard.swift
//  ARShop
//
//  Created by Saltanat on 02.10.2024.
//

import SwiftUI

struct ProductCard: View {
	let product: Product
	var body: some View {
		VStack {
			Image(product.imageName)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 100, height: 100)
			Text(product.name)
				.font(.headline)
			Text(product.price)
				.foregroundStyle(.gray)
		}
		.padding()
		.frame(width: 140, height: 180)
		.background(Color.white)
		.cornerRadius(15)
		.shadow(radius: 5)
	}
}
