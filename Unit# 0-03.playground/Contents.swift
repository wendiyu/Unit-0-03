

// Created on: September-11-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for the name label program with bottom 
// this will be commented out when code moved to Xcode
import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel : UILabel = UILabel()
    let cityLabel : UILabel = UILabel()
    let countryLabel : UILabel = UILabel()
    // create a 
    let lableButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        //cityLabel.text = "Ottawa"
        cityLabel.textColor = #colorLiteral(red: 0.0352941192686558, green: 0.117647059261799, blue: 0.164705887436867, alpha: 1.0)
        cityLabel.textAlignment = NSTextAlignment.center
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cityLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //nameLabel.text = "Wendi Yu"
        nameLabel.textColor = #colorLiteral(red: 0.0352941192686558, green: 0.117647059261799, blue: 0.164705887436867, alpha: 1.0)
        nameLabel.textAlignment = NSTextAlignment.center
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: cityLabel.topAnchor, constant:-20).isActive = true
        
        //countryLabel.text = "Canada"
        countryLabel.textColor = #colorLiteral(red: 0.0352941192686558, green: 0.117647059261799, blue: 0.164705887436867, alpha: 1.0)
        countryLabel.textAlignment = NSTextAlignment.center
        view.addSubview(countryLabel)
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.centerXAnchor.constraint(equalTo: cityLabel.centerXAnchor).isActive = true
        countryLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 20).isActive = true
        
        lableButton.setTitle("Click Me", for: UIControlState.normal)
        lableButton.setTitleColor(.blue, for: .normal)
        lableButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(lableButton)
        lableButton.translatesAutoresizingMaskIntoConstraints = false
        lableButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lableButton.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: -40).isActive = true
    }
    
    @objc func showText() {
        // show name, address , city
        cityLabel.text = "Ottawa"
        nameLabel.text = "Wendi Yu"
        countryLabel.text = "Canada"
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
