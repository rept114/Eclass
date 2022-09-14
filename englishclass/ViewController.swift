//
//  ViewController.swift
//  englishclass
//
//  Created by Alumno on 9/5/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Imageprincipal: UIImageView!
    @IBOutlet weak var Image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var Image3: UIImageView!
    @IBOutlet weak var Image4: UIImageView!
    @IBOutlet weak var LabelTitle: UILabel!
    //se declara un reproductor
    var reproductor : AVAudioPlayer?
    var url1 : URL?
    var url2 : URL?
    var url3 : URL?
    var url4 : URL?
    //Declaración de variable de secuencias de imagenes
    var secuenciaImage1 : [UIImage] = []
    var secuenciaImage2 : [UIImage] = []
    var secuenciaImage3 : [UIImage] = []
    var secuenciaImage4 : [UIImage] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Configurar la sesión de reproducción
        do{
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }catch let error{
            print(error.localizedDescription)
        }
        //obtener url del archivo de audio
        url1 = Bundle.main.url(forResource: "Telephone", withExtension: "wav")
        url2 = Bundle.main.url(forResource: "Orkesta", withExtension: "wav")
        url3 = Bundle.main.url(forResource: "Keyboard", withExtension: "wav")
        url4 = Bundle.main.url(forResource: "Trompeta", withExtension: "wav")
        //Inicializar la secuencia de imagenes
        //en este ejemplo del 1 al 5, es en el supuesto de que la secuencia sea 5 imagenes
        /*for i in 1...5{
            let imagen1 = UIImage(named:"nombre_de_la_imagen\(i)")
            secuenciaImage1.append(imagen1!)
            let imagen2 = UIImage(named:"nombre_de_la_imagen\(i)")
            secuenciaImage2.append(imagen2!)
            let imagen3 = UIImage(named:"nombre_de_la_imagen\(i)")
            secuenciaImage3.append(imagen3!)
            let imagen4 = UIImage(named:"nombre_de_la_imagen\(i)")
            secuenciaImage4.append(imagen4!)
        }
        //Establecerle la secuencia al image view
        Image1.animationImages = secuenciaImage1
        image2.animationImages = secuenciaImage2
        Image3.animationImages = secuenciaImage3
        Image4.animationImages = secuenciaImage4
        //Duración en segundos
        Image1.animationDuration = 1.5
        image2.animationDuration = 1.5
        Image3.animationDuration = 1.5
        Image4.animationDuration = 1.5
        //Que empiece a animarse
        Image1.startAnimating()
        image2.startAnimating()
        Image3.startAnimating()
        Image4.startAnimating()
 */
    }

    @IBAction func DoTapImage1(_ sender: Any) {
        LabelTitle.text = "Angry"
        do {
            reproductor = try AVAudioPlayer(contentsOf: url1!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func DoTapImage2(_ sender: Any) {
        LabelTitle.text = "Eye"
        do {
            reproductor = try AVAudioPlayer(contentsOf: url2!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func DoTapImage3(_ sender: Any) {
        LabelTitle.text = "Water Bottle"
        do {
            reproductor = try AVAudioPlayer(contentsOf: url3!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func DoTapImage4(_ sender: Any) {
        LabelTitle.text = "Label4"
        do {
            reproductor = try AVAudioPlayer(contentsOf: url4!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

