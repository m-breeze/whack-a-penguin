//
//  GameScene.swift
//  Whack-a-Penguin
//
//  Created by Marina Khort on 16.10.2020.
//

import SpriteKit

class GameScene: SKScene {
	
	var gameScore: SKLabelNode!
	var score = 0 {
		didSet {
			gameScore.text = "Score: \(score)"
		}
	}
	
	override func didMove(to view: SKView) {
		let background = SKSpriteNode(imageNamed: "whackBackground")
		background.position = CGPoint(x: 512, y: 384)
		background.zPosition = -1
		background.blendMode = .replace
		addChild(background)
		
		gameScore = SKLabelNode(fontNamed: "Chalkduster")
		gameScore.text = "Score: 0"
		gameScore.position = CGPoint(x: 8, y: 8)
		gameScore.horizontalAlignmentMode = .left
		gameScore.fontSize = 48
		addChild(gameScore)
		
	}
    
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		
	}
	
	
}
