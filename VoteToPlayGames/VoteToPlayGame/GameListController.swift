//
//  GameListController.swift
//  VoteToPlayGames
//
//  Created by ShrawanKumar Sharma on 16/09/16.
//  Copyright © 2016 VoteToPlayGames. All rights reserved.
//

import UIKit
import  Foundation

class GameListController: UIViewController, UICollectionViewDelegate {
 
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    let reuseIdentifier = "cell"
    static var storyboardIdentifier = "GameListController"

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewOutlet.setContentOffset(CGPoint(x: 0, y: 0), animated: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension GameListController:UICollectionViewDataSource {
    
     // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MyPlayCollectionCellCollectionViewCell
        var i = 0
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.labelText.text = "\(i = i + 1)"
        cell.backgroundColor = UIColor.yellow // make cell more visible in our example project
        
        return cell
    }
}


