//
//  FriendsTableViewCell.swift
//  Friends
//
//  Created by Yvette Zhukovsky on 11/15/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    var f: Friend?{
        didSet {
        updateViews()
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var imageVIew: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    func updateViews(){
        
        guard let friend = f else {return}
        label.text = friend.name
        imageVIew.image = friend.image
        
        
        
        
        
    }
    
}
