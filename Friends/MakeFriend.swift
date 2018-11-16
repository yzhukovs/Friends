//
//  MakeFriend.swift
//  Friends
//
//  Created by Yvette Zhukovsky on 11/15/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit



class MakeFriend {
    
    var friends: [Friend] = []
    
    
    
    init() {
        let names: [String] = ["Yvette"]
        let images: [UIImage] = [#imageLiteral(resourceName: "Friends")]
        let title: [String] = ["student"]
        
        
        
        var index: Int = 0
        for name in names {
            makeFriends(name: names[index], image:images[index], title: title[index])
      
        index += 1
        }
        
    }
    
    func makeFriends(name: String, image: UIImage, title: String) {
        
        let friend = Friend(name: name, image: image, title: title)
        friends.append(friend)
    }
    
}


