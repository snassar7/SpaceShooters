//
//  PlayerBullet.swift
//  Space Destroyers iOS
//
//  Created by Saifudden Ahmad Abdullah Nassar on 11/6/22.
//

import UIKit
import SpriteKit

class PlayerBullet: Bullet {
  override init(imageName: String, bulletSound:String?){
    super.init(imageName: imageName, bulletSound: bulletSound)
    // more to come once we add some physics to the game...

  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
      self.physicsBody = SKPhysicsBody(texture: self.texture!, size: self.size)
      self.physicsBody?.isDynamic = true
      self.physicsBody?.usesPreciseCollisionDetection = true
      self.physicsBody?.categoryBitMask = CollisionCategories.PlayerBullet
      self.physicsBody?.contactTestBitMask = CollisionCategories.Invader
      self.physicsBody?.collisionBitMask = 0x0
  }
}

