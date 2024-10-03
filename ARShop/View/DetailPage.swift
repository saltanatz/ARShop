//
//  DetailPage.swift
//  ARShop
//
//  Created by Saltanat on 02.10.2024.
//

import SwiftUI

struct DetailPage: View {
	let product: Product
	var body: some View {
		VStack {
			Image(product.imageName)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(height: 200)
				.padding()
			Text(product.name)
				.font(.title)
				.fontWeight(.bold)
				.padding(.top, 10)
			Text(product.description)
				.padding()
			Text(product.price)
				.font(.title2)
				.padding(.top)
			HStack {
				Button(action: {}) {
					Text("add to cart")
						.font(.headline)
						.foregroundColor(.white)
						.padding()
						.frame(maxWidth: .infinity)
						.background(Color.blue)
						.cornerRadius(10)
				}
				NavigationLink(destination: ARViewContainer(modelName: product.imageName).ignoresSafeArea()) {
					Text("View in AR")
						.font(.headline)
						.foregroundColor(.white)
						.padding()
						.frame(maxWidth: .infinity)
						.background(Color.blue)
						.cornerRadius(10)
				}
			}
			.padding()
			Spacer()
		}
		.padding()
		.navigationTitle("Detail Page")
		.navigationBarTitleDisplayMode(.inline)
	}
}
