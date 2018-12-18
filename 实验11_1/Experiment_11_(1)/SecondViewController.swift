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
        //正向传参
        tfStudentName.text = stu.name
        tfStudentNumber.text = stu.number
    }
    
    @IBAction func close(_ sender: Any) {
        //用present展示的多界面要用dismiss来关闭
//        dismiss(animated: true, completion: nil)
        //用navigatetionController展示的多视图要用pop方法退出
        
        //反向传参
        stu.name = tfStudentName.text!
        stu.number = tfStudentNumber.text!
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
