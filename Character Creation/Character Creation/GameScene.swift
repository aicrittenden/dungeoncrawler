//
//  GameScene.swift
//  Character Creation
//
//  Created by Aaron Crittenden on 4/19/20.
//  Copyright © 2020 Aaron Crittenden. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    private var character = SKSpriteNode()
    private var characterWalkingFrames: [SKTexture] = []
    
    override func didMove(to view: SKView)
    {
        backgroundColor = .white
        buildCharacter()
       // animateCharacter()
    }
   //builds character animation
    func buildCharacter() {
        let characterAnimationAtlas = SKTextureAtlas(named: "characterImages")
        var walkFrames: [SKTexture] = [] //array that contains images
        
        let numImages = characterAnimationAtlas.textureNames.count
        for i in 1...numImages { //loads images into array
            let characterTextureName = "frontfacing model\(i)"
            walkFrames.append(characterAnimationAtlas.textureNamed(characterTextureName))
        }
        characterWalkingFrames = walkFrames
        let firstFrameTexture = characterWalkingFrames[0]
        character = SKSpriteNode(texture: firstFrameTexture)
        character.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(character)
    }
    
    func animateCharacter()
    {
        character.run(SKAction.repeatForever(
            SKAction.animate(with: characterWalkingFrames, timePerFrame: 0.1,resize: false, restore: true)),withKey: "walkingInPlaceCharacter")
    }
    
    
}

