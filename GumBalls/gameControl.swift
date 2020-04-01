//
//  gameControl.swift
//  GumBalls
//
//  Created by apple on 2019/11/26.
//  Copyright © 2019 andy. All rights reserved.
//

import SpriteKit
import GameplayKit

class GumBall {
    var life:Int
    var magic:Int
    var physicAttack:Int
    var magicAttack:Int
    init(life:Int,magic:Int,physicAttack:Int,magicAttack:Int) {
        self.life = life
        self.magic = magic
        self.magicAttack = magicAttack
        self.physicAttack = physicAttack
    }
}
