//
//  CategoryButton.swift
//  ARShop
//
//  Created by Saltanat on 02.10.2024.
//

import SwiftUI

struct CategoryButton: View {
	let title: String
	var body: some View {
		Text(title)
			.padding()
			.background(Color.gray.opacity(0.2))
			.cornerRadius(10)
	}
}
