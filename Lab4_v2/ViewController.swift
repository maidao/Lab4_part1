//
//  ViewController.swift
//  Lab4_v2
//
//  Created by Mai Dao on 10/26/16.
//  Copyright © 2016 Mai Dao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        myFirstTableView.dataSource = self
        myFirstTableView.delegate = self
    }
    
    @IBOutlet weak var myFirstTableView: UITableView!
   
    @IBAction func buttonPushed()
    {
        
        // get storyboard
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil) // instantiate detailViewController from stooryboard
        let detailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewControllerID")
        // present modally
        
        detailViewController.modalTransitionStyle = .crossDissolve
        present(detailViewController, animated: true, completion: nil)
    }
   
    
    var photosArray = [FlickrPhoto]()
    
    @IBOutlet var photosCollectionView: UICollectionView!

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
//    {
//        if (segue.identifier == "ShowDetail")
//        {
//        // not mandatory here, just to show how to cast to true class
//        let viewController = segue.destination as! DetailViewController
//        viewController.view.backgroundColor = UIColor.brown
//        }
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "ShowDetail")
        {
        // not mandatory here, just to show how to cast to true class
            let viewController = segue.destination as! DetailViewController
            viewController.view.backgroundColor = UIColor.brown
        } else if (segue.identifier == "ShowFromCell")
        {
            let cell = sender as! UITableViewCell
            segue.destination.view.backgroundColor = cell.backgroundColor
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        print("rendering cell at index \(indexPath.row)")
      //  let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        cell?.backgroundColor = randomColor()
        return cell!
    }
    
    func randomColor() -> UIColor {
        let rand = { //declare a small closure for conveniency
            Float(arc4random()) / Float(UINT32_MAX) }
        return UIColor(colorLiteralRed: rand(), green: rand(), blue: rand(), alpha: 1) }
    

}

