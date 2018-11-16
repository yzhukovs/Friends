//
//  DetailViewController.swift
//  Friends
//
//  Created by Yvette Zhukovsky on 11/15/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
updateView()
        // Do any additional setup after loading the view.
    }
    

    func updateView() {
        guard let friend = f else {return}
        self.title = friend.name
        imageView.image = friend.image
        labelName.text = friend.name
        labelTitle.text = friend.title
        
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    var f: Friend?
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelTitle: UILabel!
    
}
