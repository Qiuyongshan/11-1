//
//  ViewController.swift
//  Experiment_11_(1)
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 QYS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var stu = Student()
    
    @IBOutlet weak var tfStudentName: UITextField!
    @IBOutlet weak var tfStudentNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //反向传参
    override func viewWillAppear(_ animated: Bool) {
        tfStudentName.text = stu.name
        tfStudentNumber.text = stu.number
    }
    
    @IBAction func showSecondView(_ sender: Any) {
        stu.number = tfStudentNumber.text!
        stu.name = tfStudentName.text!
        
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"SecondVC")
        //用present展示的多界面会全屏覆盖g根视图，可以用dismiss来关闭当前展示的界面
//        present(secondVC,animated: true,completion: nil)
        //利用类的引用来正向和反向传参
        secondVC.stu = stu
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func showThirdView(_ sender: Any) {
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier:"ThirdVC")
        present(thirdVC,animated: true,completion: nil)
    }
}

