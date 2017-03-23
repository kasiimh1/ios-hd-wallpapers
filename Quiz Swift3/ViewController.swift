//
//  ViewController.swift
//  iOS HD Wallpapers
//
//
//  Created by Kasim Hussain on 19/02/2017.
//  Copyright © 2017 Kasim Hussain. All rights reserved.
//  
import UIKit
class ViewController: UIViewController {
    //Wallpapers
    var wallpapers = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"]
    @IBAction func downloadButton(_ sender: Any) {
        let imageRepresentation = UIImagePNGRepresentation(imageView.image!)
        let imageData = UIImage(data: imageRepresentation!)
        UIImageWriteToSavedPhotosAlbum(imageData!, nil, nil, nil)
        
        let alert = UIAlertController(title: "Completed", message: "Image has been saved!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var backgroundView: UIImageView!
    @IBAction func ButtonWasTapped(sender:UIButton){
        var random = arc4random_uniform(10)
        switch(random){
        case 0: imageView.image = UIImage(named: "1.jpg")
           backgroundView.image = UIImage(named: "1.jpg")
            break
        case 1: imageView.image = UIImage(named: "2.jpg")
            backgroundView.image = UIImage(named: "2.jpg")
            break
        case 2: imageView.image = UIImage(named: "3.jpg")
        backgroundView.image = UIImage(named: "3.jpg")
            break
        case 3: imageView.image = UIImage(named: "4.jpg")
        backgroundView.image = UIImage(named: "4.jpg")
            break
        case 4: imageView.image = UIImage(named: "5.jpg")
        backgroundView.image = UIImage(named: "5.jpg")
            break
        case 5: imageView.image = UIImage(named: "6.jpg")
        backgroundView.image = UIImage(named: "6.jpg")
            break
        case 6: imageView.image = UIImage(named: "7.jpg")
        backgroundView.image = UIImage(named: "7.jpg")
            break
        case 7: imageView.image = UIImage(named: "8.jpg")
        backgroundView.image = UIImage(named: "8.jpg")
            break
        case 8: imageView.image = UIImage(named: "9.jpg")
        backgroundView.image = UIImage(named: "9.jpg")
            break
        case 9: imageView.image = UIImage(named: "10.jpg")
        backgroundView.image = UIImage(named: "10.jpg")
            break
        default:
            break;
        }
        
    }
    override func viewDidLoad() {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
