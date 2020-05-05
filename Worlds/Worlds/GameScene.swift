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
    //main function that runs shit
    override func didMove(to view: SKView)
    {
        backgroundColor = .white
      //  buildCharacter()
       // animateCharacter()
        sizeTest()
    }
    
    //temp function to be replaced by individual fucntions to load player character sprites, item sprites, spell, terrain etc..
    //creates characters
    //currently just generates a test character for animation

    func  buildCharacter()
    {
        //creates Texture atlas set of images for animation
        let characterAnimatedAtlas = SKTextureAtlas(named: "CharacterImages")
        let characterWalkingAtlas = SKTextureAtlas(named: "WalkingImages")
        //array to contain individual textures to call
        var walkFrames: [SKTexture] = []
        var walkFramesR: [SKTexture] = []
        var walkFramesL: [SKTexture] = []
        
        let numImages = characterAnimatedAtlas.textureNames.count
        //adds immages from texture atlast to arrays
        for i in 1...numImages
        {
            let characterTextureName = "Character\(i).png"
            walkFrames.append(characterAnimatedAtlas.textureNamed(characterTextureName))
        }
        let walkFramesRCount = characterWalkingAtlas.textureNames.count
        for i in 1...walkFramesRCount
        {
            let walkFramesRTextureName = "rightwalktestanimation\(i).png"
            walkFramesR.append(characterWalkingAtlas.textureNamed(walkFramesRTextureName))
        }
        let walkFramesLCount = characterWalkingAtlas.textureNames.count
        for i in 1...walkFramesLCount
        {
            let walkFrameLTexturename = "leftwalkingtestanimation\(i).png"
            walkFramesL.append(characterWalkingAtlas.textureNamed(walkFrameLTexturename))
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
    func moveCharacter()
    {
        
    }
    
    //function to test image sizes on display
    func sizeTest()
    {
        let testSprite = SKSpriteNode(imageNamed: "actionidle.png")
        testSprite.position = CGPoint(x:frame.midX, y:frame.midY)
        self.addChild(testSprite)
    }
}
