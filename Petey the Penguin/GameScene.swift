//
//  GameScene.swift
//  Petey the Penguin
//
//  Created by Ed McCormic on 3/16/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let cam = SKCameraNode()
    let ground = Ground()
    let player = Player()
    
    override func didMove(to view: SKView) {
        self.anchorPoint = .zero
        self.backgroundColor = UIColor(red: 0.4, green: 0.6, blue:
            0.95, alpha: 1.0)
        
        // Assign the camera to the scene
        self.camera = cam
        
        // Spawn our test bees:
        let bee2 = Bee()
        bee2.position = CGPoint(x: 325, y: 325)
        self.addChild(bee2)
        let bee3 = Bee()
        bee3.position = CGPoint(x: 200, y: 325)
        self.addChild(bee3)
        
        // Add the ground to the scene:
        ground.position = CGPoint(x: -self.size.width * 2, y: 150)
        ground.size = CGSize(width: self.size.width * 6, height: 0)
        ground.createChildren()
        self.addChild(ground)
        
        // Add the player to the scene:
        player.position = CGPoint(x: 150, y: 250)
        self.addChild(player)
        
        bee2.physicsBody?.mass = 0.2
        bee2.physicsBody?.applyImpulse(CGVector(dx: -25, dy: 0))
        
        bee2.physicsBody?.applyImpulse(CGVector(dx: -3, dy: 0)) 
    }
    
    override func didSimulatePhysics() {
        // Keep the camera centered on the player
        self.camera!.position = player.position
    }
}

