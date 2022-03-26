

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var temperatura: UILabel!
    
    @IBOutlet weak var ciudad: UILabel!
    
    @IBOutlet weak var buscarTextf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buscarTextf.delegate = self
    }
    
    
    @IBAction func botonBuscar(_ sender: Any) {
        buscarTextf.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        buscarTextf.endEditing(true)
        print(buscarTextf.text!)
        return true
    }
    
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if buscarTextf.text! == "" {
            return true
            
        }else {
            textField.placeholder = "Escribe algo"
            return false
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        buscarTextf.text! = ""
        
    }

    
}
