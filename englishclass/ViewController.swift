//
//  ViewController.swift
//  englishclass
//
//  Created by Alumno on 9/5/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var LabelTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func DoTapImage1(_ sender: Any) {
        LabelTitle.text = "Perro"
    }
    @IBAction func DoTapImage2(_ sender: Any) {
        LabelTitle.text = "Gato"
    }
    @IBAction func DoTapImage3(_ sender: Any) {
        LabelTitle.text = "Perry"
    }
    @IBAction func DoTapImage4(_ sender: Any) {
        LabelTitle.text = "Naomi"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

