//
//  HomePage.swift
//  ARShop
//
//  Created by Saltanat on 02.10.2024.
//

import SwiftUI

struct HomePage: View {
	@StateObject var viewModel = HomeViewModel()
	
	var body: some View {
		NavigationView {
			ScrollView {
				VStack(alignment: .leading) {
					Text("Find the home furniture")
						.font(.title)
						.padding(.horizontal)
					ScrollView(.horizontal, showsIndicators: false) {
						HStack {
							CategoryButton(title: "All")
							CategoryButton(title: "Sofa")
							CategoryButton(title: "Lamp")
						}
					}
					.padding()
					
					LazyVGrid(columns: [GridItem(.fixed(150)), GridItem(.fixed(150))], spacing: 20) {
						ForEach(viewModel.products) { product in
							NavigationLink(destination: DetailPage(product: product)) {
								ProductCard(product: product)
							}
						}
					}
					.padding()
				}
			}
			.navigationTitle("Furnitore store")
		}
	}
}




struct HomePage_Previews: PreviewProvider {
	static var previews: some View {
		HomePage()
	}
}
