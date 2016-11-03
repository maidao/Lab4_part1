//
//  DetailViewController.swift
//  Lab4_v2
//
//  Created by Mai Dao on 10/26/16.
//  Copyright © 2016 Mai Dao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPushed() { dismiss(animated: true, completion: nil)
        let _ = navigationController?.popViewController(animated: true)
        
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
