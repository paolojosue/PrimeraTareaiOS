//
//  ViewController.swift
//  Vistas en IOS
//
//  Created by Alumno on 26/01/17.
//  Copyright © 2017 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var sldNumeroImagen: UISlider!
    @IBOutlet weak var swModificarManual: UISwitch!
    @IBOutlet weak var btnAceptar: UIButton!
    @IBOutlet weak var btnSiguiente: UIButton!
    @IBOutlet weak var segEstilos: UISegmentedControl!
    @IBOutlet weak var imgImagen: UIImageView!
    @IBOutlet weak var txtNumeroImagen: UITextField!
    @IBOutlet weak var vwContenedor: UIView!
    
    @IBOutlet weak var lblError: UILabel!
    //Los outlet son controles que no tienen interaccion
    //pero se requiere que interactue
    
    //Los controles deben estar asignados para poder interactuar con ellos por programa.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sldNumeroImagen(_ sender: UISlider){
        let numeroImagen=sender.value
        let num = Int(numeroImagen)
        if num>=0 && num<=7 {
            imgImagen.image=UIImage(named: "image_\(num)")
        }
   
    }
    @IBAction func swModificarManual(_ sender: UISwitch) {
        let oculto = !sender.isOn
        vwContenedor.isHidden=oculto
    }
    @IBAction func btnAceptarTouch(_ sender: UIButton) {
        //var optionalVar:String
        //var optional
        
        let numeroImagen=txtNumeroImagen.text
        let num = Int(numeroImagen!)
        if num!>=0 && num!<=7 {
           imgImagen.image=UIImage(named: "image_\(num!)")
            lblError.text=""        }
        else
        {lblError.text="Numero Incorrecto!"}
    }
    
    @IBAction func btnSiguienteTouch(_ sender: UIButton) {
        
    }
    
    @IBAction func segEstilosChange(_ sender: UISegmentedControl) {
        //let indiceSeleccionado=sender.selectedSegmentIndex
        //switch indiceSeleccionado{
        //case 0:
          //    lblTitulo.backgroundColor=UIColor(red:255,green:190,blue:0,alpha:1)
        //case 1:
           //
              //lblTitulo.backgroundColor=UIColor.red
        //case 2:
          //
             // lblTitulo.backgroundColor = UIColor.Black    }
        //default:
        }
}

