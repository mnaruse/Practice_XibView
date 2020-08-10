//
//  SecondViewController.swift
//  Practice_XibView
//
//  Created by MiharuNaruse on 2020/08/10.
//  Copyright © 2020 m_rn. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet private var thirdView: ThirdView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        thirdView.label.text = "Hello!"
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
