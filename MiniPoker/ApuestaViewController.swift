//
//  ApuestaViewController.swift
//  MiniPoker
//
//  Created by Mac2 on 12/01/21.
//

import UIKit

class ApuestaViewController: UIViewController {
    
    var nombre: String?
    var cantidad: Double?

    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var cantidadLabel: UILabel!
    @IBOutlet weak var cantidadTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func apostarButton(_ sender: UIButton) {
        nombre = nombreTextField.text
        cantidad = Double(cantidadTextField.text!)
        
        let impuesto : Double = cantidad! * 0.16
        
        let alert = UIAlertController(title: "Alerta", message: "Tu apuesta menos impuestos es: \(cantidad! - impuesto)", preferredStyle: .alert)
        let cancelarAction = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        let aceptarAction = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
        alert.addAction(aceptarAction)
        alert.addAction(cancelarAction)
        present(alert, animated: true, completion: nil)
        
    }
}
