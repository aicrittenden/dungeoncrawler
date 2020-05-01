//
//  GameScene.swift
//  Worlds
//
//  Created by Aaron Crittenden on 4/29/20.
//  Copyright © 2020 Aaron Crittenden. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene
{
    private var character = SKSpriteNode()
    private var characterWalkingFrames: [SKTexture] = []
    
    override func didMove(to view: SKView)
    {
        backgroundColor = .white
        buildCharacter()
        animateCharacter()
    }
    
    //creates characters
    //currently just generates a test character for animation
    func  buildCharacter()
    {
        //creates Texture atlas set of images for animation
        let characterAnimatedAtlas = SKTextureAtlas(named: "CharacterImages")
        var walkFrames: [SKTexture] = []
        
        let numImages = characterAnimatedAtlas.textureNames.count
        for i in 1...numImages
        {
            let characterTextureName = "Character\(i).png"
            walkFrames.append(characterAnimatedAtlas.textureNamed(characterTextureName))
        }
        characterWalkingFrames = walkFrames
        //sets animation starting pose
        let firstFrameTexture = characterWalkingFrames[0]
       //creates a SKsprite node w/ firstframe
        character = SKSpriteNode(texture: firstFrameTexture)
        character.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(character)
    }
    //SKAction required to animate character
    func animateCharacter()
    {
        character.run(SKAction.repeatForever(SKAction.animate(with: characterWalkingFrames, timePerFrame: 0.1, resize: false, restore: true)), withKey:"walkingInPlaceCharacter")
    }
}
