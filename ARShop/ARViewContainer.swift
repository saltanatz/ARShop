//
//  ARViewContainer.swift
//  ARShop
//
//  Created by Saltanat on 02.10.2024.
//

import SwiftUI
import ARKit
import RealityKit

struct ARViewContainer: UIViewRepresentable {
	var modelName: String
	func makeUIView(context: Context) -> CustomARView {
		let arView = CustomARView()
		let config = ARWorldTrackingConfiguration()
		config.planeDetection = [.horizontal, .vertical]
		config.environmentTexturing = .automatic
		arView.session.run(config)
		
		
		return arView
	}
	
	func updateUIView(_ uiView: CustomARView, context: Context) {
		let anchorEntity = AnchorEntity()
		guard let modelEntity = try? Entity.loadModel(named: modelName)
		else {return}
		anchorEntity.addChild(modelEntity)
		uiView.scene.addAnchor(anchorEntity)
		
	}
	
	
}
