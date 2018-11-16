//
//  FriendTableViewController.swift
//  Friends
//
//  Created by Yvette Zhukovsky on 11/15/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class FriendTableViewController: UITableViewController {

    let makeFriends = MakeFriend()
    let navigationControllerDelegate = NavigationControllerDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

  
 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return makeFriends.friends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FriendsTableViewCell
        cell.f = makeFriends.friends[indexPath.row]
        
        return cell
    }
    

    
   
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let detailVC = segue.destination as! DetailViewController
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            detailVC.f = makeFriends.friends[indexPath.row]
            
            guard let cell = tableView.cellForRow(at: indexPath) as? FriendsTableViewCell else { return }
            
      navigationControllerDelegate.sourceCell = cell
        }
        
    }
    


