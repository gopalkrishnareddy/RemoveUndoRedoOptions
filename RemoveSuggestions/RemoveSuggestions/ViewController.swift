//
//  ViewController.swift
//  RemoveSuggestions
//
//  Created by Gopal Krishna Reddy Thotli on 09/10/18.
//  Copyright © 2018 Exilant Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var normalTextField: UITextField!
    @IBOutlet weak var textFieldWithoutAutoCorrection: UITextField!
    
    @IBOutlet weak var textFieldWithoutSuggetionBar: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldWithoutAutoCorrection.autocorrectionType = .no
        textFieldWithoutSuggetionBar.hideSuggestions()
    }
}

extension UITextView {
    func hideSuggestions() {
        // Removes suggestions only
        autocorrectionType = .no
        //Removes Undo, Redo, Copy & Paste options
        removeUndoRedoOptions()
    }
}

extension UITextField {
    func hideSuggestions() {
        // Removes suggestions only
        autocorrectionType = .no
        //Removes Undo, Redo, Copy & Paste options
        removeUndoRedoOptions()
    }
}

extension UIResponder {
    func removeUndoRedoOptions() {
        //Removes Undo, Redo, Copy & Paste options
        inputAssistantItem.leadingBarButtonGroups = []
        inputAssistantItem.trailingBarButtonGroups = []
    }
}

