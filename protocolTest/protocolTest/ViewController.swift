//
//  ViewController.swift
//  protocolTest
//
//  Created by Johann Kerr on 11/8/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit


//: Playground - noun: a place where people can play

import UIKit



protocol MedicalProfessional{
    var certificates: String { get set }
    var education: String { get set}
    func treatPatient(name:String)
}

extension MedicalProfessional{
    func treatPatient(name: String){
        print("hey treating patient \(name)")
    }
}



protocol Doctor{
    func performSurgery()
}

protocol Nurse{
    func takeTemperature()
}

extension Doctor{
    func performSurgery(){
        print("doing some surgery stuff")
    }
}

extension Nurse{
    func takeTemperature(){
        print("taking yo temperature")
    }
}

class SpecialDoctor:Doctor, Nurse{
    
}

class Oncologist: Doctor{
    
    
}

class PlasticSurgeon: Doctor{
    
}

class Cardiologist: Doctor{
    
}

struct Anesthesiologist: MedicalProfessional{
    var certificates: String
    var education: String
    
}




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

