//
//  FirstViewController.swift
//  dsadas
//
//  Created by Mac19 on 4/10/24.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtNumero1: UITextField!
    @IBOutlet weak var txtNumero2: UITextField!
    @IBOutlet weak var txtRpta: UITextField!
    
    var nro1:Double = 0
    var nro2:Double = 0
    var rpta:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func Limpiar() {
        self.txtNumero1.text = "0"
        self.txtNumero2.text = "0"
        self.txtRpta.text = "0"
    }
    
    func mostrarAlerta(titulo: String, mensaje: String) {
        let alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let limpiar = UIAlertAction(title: "Limpiar", style: .default, handler: {(action) in self.Limpiar()
        })
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: {(action) in
            
            //acciones a realizar
        })
        alerta.addAction(limpiar)
        alerta.addAction(cancelar)
        present(alerta,animated: true, completion: nil)
    }
    
    @IBAction func btnSumar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 + nro2
            txtRpta.text = String(rpta)
        } else {
            mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numéricos")
            print("Error al realizar operación")
        }
    }
    
    @IBAction func btnRestar(_ sender: Any) {
        
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 - nro2
            txtRpta.text = String(rpta)
        } else {
            mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numéricos")
            print("Error al realizar operación")
        }
        
    }
    
    @IBAction func btnDividir(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            
            if (nro2==0) {
                mostrarAlerta(titulo: "Error", mensaje: "No se puede dividir entre 0")
            } else {
                rpta = nro1 / nro2
            }
            txtRpta.text = String(rpta)
        } else {
            mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numéricos")
            print("Error al realizar operación")
        }
    }
    
    @IBAction func btnMultiplicar(_ sender: Any) {
        
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 * nro2
            txtRpta.text = String(rpta)
        } else {
            mostrarAlerta(titulo: "Error", mensaje: "Debe introducir solo valores numéricos")
            print("Error al realizar operación")
        }
    }
    
    @IBAction func btnLimpiar(_ sender: Any) {
        self.Limpiar()
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
