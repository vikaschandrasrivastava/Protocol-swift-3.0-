//
//  ViewController.swift
//  DelegateDemo
//
//  Created by vikassrivastava on 16/12/16.
//  Copyright © 2016 vikassrivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DataSendDelegate {

    @IBOutlet weak var lblShowData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dataSend(data: String) {
        lblShowData.text = data
    }

    @IBAction func btnShowSendVC(_ sender: AnyObject) {
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showNextViewController" {
            let sendVC : SendVCViewController = segue.destination as! SendVCViewController
            
            sendVC.delegate = self
        }
    }

}

