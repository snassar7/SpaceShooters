//
//  Bullet.swift
//  Space Destroyers iOS
//
//  Created by Saifudden Ahmad Abdullah Nassar on 11/6/22.
//

import UIKit
import SpriteKit

class Bullet: SKSpriteNode {
    
    init(imageName: String, bulletSound: String?) {
      let texture = SKTexture(imageNamed: imageName)
      super.init(texture: texture, color: SKColor.clear, size: texture.size())
      if(bulletSound != nil){
        run(SKAction.playSoundFileNamed(bulletSound!, waitForCompletion: false))
      }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
