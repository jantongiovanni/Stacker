//
//  GameScene.swift
//  Stacker
//
//  Created by JoesMac on 7/19/18.
//  Copyright © 2018 JoesMac. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
  
var flag = false
let blockOne = SKSpriteNode(color: .blue, size: CGSize(width: 50.0, height: 50.0))
let blockTwo = SKSpriteNode(color: .blue, size: CGSize(width: 100.0, height: 50.0))
let blockThree = SKSpriteNode(color: .blue, size: CGSize(width: 150.0, height: 50.0))
    
    override func didMove(to view: SKView) {
        blockThree.position = CGPoint(x: frame.minX, y: frame.minY)
        blockThree.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        addChild(blockThree)
        
        let moveLeft = SKAction.moveBy(x: -50.0, y: 0.0, duration: 0.0)
        let moveRight = SKAction.moveBy(x: 50.0, y: 0.0, duration: 0.0)
        let pause = SKAction.wait(forDuration: 0.3)
        
        blockThree.run(SKAction.repeatForever(SKAction.sequence([moveRight, pause, moveRight, pause, moveRight, pause, moveRight, pause, moveLeft, pause, moveLeft, pause, moveLeft, pause, moveLeft, pause])))
     
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       // blockSprite.run(SKAction.moveTo(x: frame.size.width, duration: 3.0))
         blockThree.run(SKAction.moveBy(x: 50.0, y: 0.0, duration: 0.0))
    }
    
   
        
        
    }
    
    

