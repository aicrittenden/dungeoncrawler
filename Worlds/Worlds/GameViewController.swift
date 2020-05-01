//
//  GameViewController.swift
//  Worlds
//
//  Created by Aaron Crittenden on 4/29/20.
//  Copyright © 2020 Aaron Crittenden. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let view = view as? SKView
        {
            let scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .resizeFill
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
            view.presentScene(scene)
        }
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

