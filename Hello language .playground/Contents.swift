// created by: Nick pasco-arnone
// created on: September 13
// created for: ICs3U
// daily assignment - unit - 04
// This program displays my hello in different languages 

import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    // properties
    let helloWorldLabel = UILabel()
    let englishButton = UIButton()
    let frenchButton = UIButton()
    let spanishButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        englishButton.setTitle("English", for: .normal)
        englishButton.setTitleColor(.blue, for: .normal)
        englishButton.addTarget(self, action: #selector(englishText), for: .touchUpInside)
        view.addSubview(englishButton)
        englishButton.translatesAutoresizingMaskIntoConstraints = false
        englishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        englishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        frenchButton.setTitle("French", for: .normal)
        frenchButton.titleLabel?.textAlignment = .center
        frenchButton.setTitleColor(.blue, for: .normal)
        frenchButton.addTarget(self, action: #selector(frenchText), for: .touchUpInside)
        view.addSubview(frenchButton)
        frenchButton.translatesAutoresizingMaskIntoConstraints = false
        frenchButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        frenchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        spanishButton.setTitle("Spanish", for: .normal)
        spanishButton.setTitleColor(.blue, for: .normal)
        spanishButton.addTarget(self, action: #selector(spanishText), for: .touchUpInside)
        view.addSubview(spanishButton)
        spanishButton.translatesAutoresizingMaskIntoConstraints = false
        spanishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        spanishButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        //helloWorldLabel.text = "Hello, World!"
        helloWorldLabel.textAlignment = .center
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.topAnchor.constraint(equalTo: frenchButton.bottomAnchor, constant: 20).isActive = true
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func englishText() {
        // show Hello, World! in English
        helloWorldLabel.text = "Hello, World!"
    }
    
    @objc func frenchText() {
        // show Hello, World!, in French
        helloWorldLabel.text = "Bonjour le monde!"
    }
    
    @objc func spanishText() {
        // show Hello, World!, in Spanish
        helloWorldLabel.text = "¡Hola Mundo!"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
    
PlaygroundPage.current.liveView = ViewController()


