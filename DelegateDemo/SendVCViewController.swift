//
//  SendVCViewController.swift
//  DelegateDemo
//
//  Created by vikassrivastava on 16/12/16.
//  Copyright © 2016 vikassrivastava. All rights reserved.
//

import UIKit
protocol DataSendDelegate {
    
    func dataSend(data:String)
    
    
}

class SendVCViewController: UIViewController {

    var delegate:DataSendDelegate? = nil
    @IBOutlet weak var txtSendData: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var btnSendData: UIButton!

    @IBAction func SendData(_ sender: AnyObject) {
        
        if delegate != nil {
            if txtSendData != nil {
                let data = txtSendData.text
                delegate?.dataSend(data: data!)
                self.navigationController?.popViewController(animated: true)
            }
            
        }
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
