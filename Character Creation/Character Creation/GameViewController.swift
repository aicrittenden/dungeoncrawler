//
//  GameViewController.swift
//  Character Creation
//
//  Created by Aaron Crittenden on 4/19/20.
//  Copyright © 2020 Aaron Crittenden. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size:CGSize(width: 2048, height: 1536))
        let skView = self.view as! SKView
        skView.showsFPS = true //displays FPS
        skView.showsNodeCount = true //dispays node count
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
        
    }


override var prefersStatusBarHidden: Bool {
    return true
}
    
    

}
