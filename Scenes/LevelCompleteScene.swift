//
//  LevelCompleteScene.swift
//  Space Destroyers iOS
//
//  Created by Saifudden Ahmad Abdullah Nassar on 11/6/22.
//

import UIKit
import SpriteKit

class LevelCompleteScene: SKScene {
    
    override func didMove(to view: SKView) {
      self.backgroundColor = SKColor.black
      let startGameButton = SKSpriteNode(imageNamed: "nextlevelbtn")
      startGameButton.position = CGPoint(x: size.width/2, y: size.height/2 - 100)
      startGameButton.name = "nextlevel"
      addChild(startGameButton)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      let touch = touches.first! as UITouch
      let touchLocation = touch.location(in: self)
      let touchedNode = self.atPoint(touchLocation)
      if(touchedNode.name == "nextlevel"){
        let gameOverScene = GameScene(size: size)
        gameOverScene.scaleMode = scaleMode
        let transitionType = SKTransition.flipHorizontal(withDuration: 0.5)
        view?.presentScene(gameOverScene,transition: transitionType)
      }
    }

}
