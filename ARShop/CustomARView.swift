//
//  CustomARView.swift
//  ARShop
//
//  Created by Saltanat on 02.10.2024.
//

import SwiftUI
import ARKit
import RealityKit

class CustomARView: ARView {
	required init(frame frameReact: CGRect) {
		super.init(frame: frameReact)
	}
	
	required dynamic init?(coder decoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	convenience init() {
		self.init(frame: UIScreen.main.bounds)
	}
}
