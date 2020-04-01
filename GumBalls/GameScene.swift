//
//  GameScene.swift
//  GumBalls
//
//  Created by apple on 2019/11/26.
//  Copyright © 2019 andy. All rights reserved.
//

import SpriteKit
import GameplayKit

enum GameStatus{
    case idle
    
    case running
    
    case over
}

class GameScene: SKScene {
    
    var GumBallImage:SKSpriteNode!
    var gameStatus:GameStatus = .idle
    
    func shuffle(){
        //游戏的初始化过程
        GumBallImage.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.1)
      //  life.position = CGPoint(x: GumBall.position.x-self.size.width*0.15, y: GumBall.position.y/*-self.size.height*0.05*/)
      //  magic.position = CGPoint(x: GumBall.position.x+self.size.width*0.15, y: GumBall.position.y/*-self.size.height*0.05*/)
        gameStatus = .idle
        GumStartDoSomething()
    }
    
    func startGame(){
        //游戏的开始过程
        
        gameStatus = .running
    }
    
    func gameOver(){
        //游戏失败
        
        gameStatus = .over
    }
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        
        
        GumBallImage = SKSpriteNode(imageNamed: "player1")
       // life = SKSpriteNode(imageNamed: "lifeNum")
       // magic = SKSpriteNode(imageNamed: "magicNum")
        
        
        addChild(GumBallImage)
       // addChild(life)
       // addChild(magic)
        
        shuffle()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        switch gameStatus {
        case .idle:
            startGame()
        case .running:
            print("get data\n")
        case .over:
            print("return\n")
        default:
            print("error")
        }
    }
    
    func GumStartDoSomething(){
        //let DoAction = SKAction.animate(with: [SKTexture(imageNamed: "player1"),SKTexture(imageNamed: "player2")], timePerFrame: 0.3)
        
        //GumBall.run(SKAction.repeat(DoAction, count: 10))
        
        //GumBall to start move
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
