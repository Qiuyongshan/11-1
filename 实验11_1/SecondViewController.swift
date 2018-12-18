//
//  SecondViewController.swift
//  Experiment_11_(1)
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 QYS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var stu:Student!
    
    @IBOutlet weak var tfStudentName: UITextField!
    @IBOutlet weak var tfStudentNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfStudentName.text = stu.name
        tfStudentNumber.text = stu.number
    }
    
    @IBAction func close(_ sender: Any) {
        stu.name = tfStudentName.text!
        stu.number = tfStudentNumber.text!
        navigationController?.popViewController(animated: true)
    }
    
}
