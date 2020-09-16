//
//  QuizRegisterViewController.swift
//  SummerHackason
//
//  Created by yu mikami on 2020/09/16.
//  Copyright © 2020 yu.m. All rights reserved.
//

import UIKit

class  QuizRegisterViewController: UIViewController{
    
    @IBOutlet weak var Qsentences: UITextField!
    @IBOutlet weak var Choice_A: UITextField!
    @IBOutlet weak var Choice_B: UITextField!
    @IBOutlet weak var Choice_C: UITextField!
    @IBOutlet weak var Choice_D: UITextField!
    @IBOutlet weak var Choice_ans: UITextField!
    @IBOutlet weak var Commentary: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        Qsentences.delegate = self
        Choice_A.delegate = self
        Choice_B.delegate = self
        Choice_C.delegate = self
        Choice_D.delegate = self
        Choice_ans.delegate = self
        Commentary.delegate = self

    }
    
    
}

extension QuizRegisterViewController:UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        let qsentencesIsEmpty = Qsentences.text?.isEmpty ?? false
        let choiceAISEmpty = Choice_A.text?.isEmpty ?? false
        let choiceBISEmpty = Choice_B.text?.isEmpty ?? false
        let choiceCISEmpty = Choice_C.text?.isEmpty ?? false
        let choiceDISEmpty = Choice_D.text?.isEmpty ?? false
        let choiceansISEmpty = Choice_ans.text?.isEmpty ?? false
        let commentaryISEmpty = Commentary.text?.isEmpty ?? false
        
        if qsentencesIsEmpty || choiceAISEmpty || choiceBISEmpty || choiceCISEmpty || choiceDISEmpty || choiceansISEmpty || commentaryISEmpty {
            
        }
    }
}
