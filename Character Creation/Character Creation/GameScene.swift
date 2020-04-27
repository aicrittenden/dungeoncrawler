//
//  GameScene.swift
//  Character Creation
//
//  Created by Aaron Crittenden on 4/19/20.
//  Copyright © 2020 Aaron Crittenden. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    private var loadingSlime = SKSpriteNode()
    private var slime_JumpingGif: [SKTexture] = []
    
    override func didMove(to view: SKView)
    {
        backgroundColor = .black
    }
    
    func buildBear() {
        let slimeAnimationAtlas = SKTextureAtlas(named: "AnimationDemo")
        var bounceFrames: [SKTexture] = []
        
        let numImages =slimeAnimationAtlas.textureNames.count
    }
    
    
}

