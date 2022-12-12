//
//  ViewController2.swift
//  lesson3Month3
//
//  Created by Mac on 29/12/2022.
//

import UIKit

class ViewController2: UIViewController {
  
    @IBOutlet weak var numbers: UILabel!
    
    @IBOutlet weak var Lable1: UILabel!
    var info = ""
   var  num = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        Lable1.text = info
        numbers.text = num
        // Do any additional setup after loading the view.
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
