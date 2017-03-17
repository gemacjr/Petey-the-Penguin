//
//  GameSprite.swift
//  Petey the Penguin
//
//  Created by Ed McCormic on 3/16/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import SpriteKit

protocol GameSprite {
    var textureAtlas:SKTextureAtlas { get set }
    var initialSize: CGSize { get set }
    func onTap()
}
