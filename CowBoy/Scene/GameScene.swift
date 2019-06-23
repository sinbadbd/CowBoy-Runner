//
//  GameScene.swift
//  CowBoy
//
//  Created by sinbad on 6/21/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        
      initialize()
    }
    
    func initialize(){
        createBG()
        createGround()
    }
    override func update(_ currentTime: TimeInterval) {
        moveBackgroundGround()
    }
    
    func createBG(){
        for i in 0...2 {
            let bg = SKSpriteNode(imageNamed: "BG")
            bg.name = "BG"
            bg.anchorPoint = CGPoint(x: 0.5, y: 0.5) // mid
           // bg.size = CGSize(width: bg.size.width, height: bg.size.height )
            bg.position = CGPoint(x: CGFloat(i) * bg.size.width, y: frame.midY)
            bg.zPosition = 0
            addChild(bg)
        }
    }
    func createGround(){
        for i in 0...2 {
            let bg = SKSpriteNode(imageNamed: "Ground")
            bg.name = "Ground"
            bg.anchorPoint = CGPoint(x: 0.5, y: 0.5) // mid
          //  bg.size = CGSize(width: bg.size.width, height: bg.size.height )
            bg.position = CGPoint(x: CGFloat(i) * bg.size.width, y: 0)
            bg.zPosition = 3
            addChild(bg)
        }
    }
    
    func moveBackgroundGround(){
        enumerateChildNodes(withName: "BG") { (node, error) in
            
            let bdNode = node as! SKSpriteNode
            
            bdNode.position.x -= 4
            if bdNode.position.x < -(self.frame.width) {
                bdNode.position.x += bdNode.size.width * 3
            }
            
        }
        
        enumerateChildNodes(withName: "Ground") { (node, error) in
            
            let bdNode = node as! SKSpriteNode
            
            bdNode.position.x -= 4
            if bdNode.position.x < -(self.frame.width) {
                bdNode.position.x += bdNode.size.width * 3
            }
            
        }
    }
    
}
