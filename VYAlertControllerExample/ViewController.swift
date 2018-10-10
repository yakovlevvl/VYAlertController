//
//  ViewController.swift
//  VYAlertControllerExample
//
//  Created by Vladyslav Yakovlev on 9/27/18.
//  Copyright © 2018 Vladyslav Yakovlev. All rights reserved.
//

import UIKit
import VYAlertController

final class ViewController: UIViewController {
    
    private let alertButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Alert", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel!.font = UIFont(name: "AvenirNext-Medium", size: 24)
        button.frame.size = CGSize(width: 180, height: 70)
        return button
    }()
    
    private let textFieldAlertButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Alert with TextField", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel!.font = UIFont(name: "AvenirNext-Medium", size: 24)
        button.frame.size = CGSize(width: 220, height: 70)
        return button
    }()
    
    private let actionSheetButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("ActionSheet", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel!.font = UIFont(name: "AvenirNext-Medium", size: 24)
        button.frame.size = CGSize(width: 180, height: 70)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        layoutViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        
        view.addSubview(alertButton)
        view.addSubview(textFieldAlertButton)
        view.addSubview(actionSheetButton)
        
        alertButton.addTarget(self, action: #selector(alertButtonTapped), for: .touchUpInside)
        textFieldAlertButton.addTarget(self, action: #selector(textFieldAlertButtonTapped), for: .touchUpInside)
        actionSheetButton.addTarget(self, action: #selector(actionSheetButtonTapped), for: .touchUpInside)
    }
    
    private func layoutViews() {
        alertButton.center.x = view.center.x
        alertButton.center.y = view.center.y - 85
        
        textFieldAlertButton.center = view.center
        
        actionSheetButton.center.x = view.center.x
        actionSheetButton.center.y = view.center.y + 85
    }

    @objc private func alertButtonTapped() {
        let message = "A message should be a short, complete sentence."
        
        let alertController = VYAlertController(message: message, style: .alert)
        
        let cancelAction = VYAlertAction(title: "Cancel", style: .cancel)
        let okayAction = VYAlertAction(title: "Okay", style: .normal) { action in
            print("Okay action occured.")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(okayAction)
        
        alertController.messageFont = UIFont(name: "AvenirNext-Medium", size: 22)!
        alertController.actionTitleFont = UIFont(name: "AvenirNext-Medium", size: 22)!
        alertController.actionCellHeight = 64
        
        alertController.present()
    }
    
    @objc private func textFieldAlertButtonTapped() {
        let message = "A message should be a short, complete sentence."
        
        let alertController = VYAlertController(message: message, style: .alert)
        
        let cancelAction = VYAlertAction(title: "Cancel", style: .cancel)
        let okayAction = VYAlertAction(title: "Okay", style: .normal) { action in
            print("Okay action occured.")
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(okayAction)
        
        alertController.addTextField { textField in
            textField.borderStyle = .roundedRect
            textField.autocorrectionType = .no
            textField.spellCheckingType = .no
            textField.font = UIFont(name: "AvenirNext-Medium", size: 21)!
        }
        
        // Message background color
        alertController.messageBackgroundColor = .white
        
        // Message text color
        alertController.messageColor = .black
        
        // Message font
        alertController.messageFont = UIFont(name: "AvenirNext-Medium", size: 22)!
        
        // Message line spacing
        alertController.messageLineSpacing = 6
        
        // Button background color
        alertController.actionBackgroundColor = .white
        
        // Button title color
        alertController.actionTitleColor = .blue
        
        // Button title font
        alertController.actionTitleFont = UIFont(name: "AvenirNext-Medium", size: 22)!
        
        // Button height
        alertController.actionCellHeight = 64
        
        // TextField height
        alertController.textFieldHeight = 42
        
        // Separator color
        alertController.separatorColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1)
        
        // Separator width
        alertController.separatorWidth = 2
        
        // Corner radius
        alertController.cornerRadius = 14
        
        // Round corners
        alertController.roundCorners = [.allCorners]
        
        // Present animation duration
        alertController.presentAnimationDuration = 0.42
        
        // Dismiss animation duration
        alertController.dismissAnimationDuration = 0.38
        
        alertController.present()
    }
    
    @objc private func actionSheetButtonTapped() {
        let message = "A message should be a short, complete sentence."
        
        let actionSheet = VYAlertController(message: message, style: .actionSheet)
        
        let cancelAction = VYAlertAction(title: "Cancel", style: .cancel)
        let okayAction = VYAlertAction(title: "Okay", style: .normal) { action in
            print("Okay action occured.")
        }
        let anotherAction = VYAlertAction(title: "Another Action", style: .normal) { action in
            print("Another action occured.")
        }
        let destructiveAction = VYAlertAction(title: "Destructive Action", style: .destructive) { action in
            print("Destructive action occured.")
        }
        
        actionSheet.addAction(cancelAction)
        actionSheet.addAction(okayAction)
        actionSheet.addAction(anotherAction)
        actionSheet.addAction(destructiveAction)
        
        actionSheet.messageFont = UIFont(name: "AvenirNext-Medium", size: 22)!
        actionSheet.actionTitleFont = UIFont(name: "AvenirNext-Medium", size: 22)!
        actionSheet.actionCellHeight = 66
        actionSheet.cornerRadius = 14
        
        actionSheet.present()
    }
}

