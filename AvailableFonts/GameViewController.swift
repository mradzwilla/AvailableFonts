//
//  GameViewController.swift
//  AvailableFonts
//
//  Created by Michael Radzwilla on 4/24/17.
//  Copyright © 2017 hackingwithswift. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size:CGSize(width: 1024, height: 768))
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }
}
