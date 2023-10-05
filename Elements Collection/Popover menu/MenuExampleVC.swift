//
//  MenuExampleVC.swift
//  Elements Collection
//
//  Created by Supriyo Dey on 03/10/23.
//

import UIKit

class MenuExampleVC: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnShowMenuAction(_ sender: UIButton) {
        if let menuVc = self.storyboard?.instantiateViewController(identifier: "PopOverVC") as? PopOverVC {
            menuVc.modalPresentationStyle = .popover
            menuVc.preferredContentSize = CGSize(width: 150, height: 100)
            
            menuVc.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.up
            menuVc.popoverPresentationController?.delegate = self
            menuVc.popoverPresentationController?.sourceView = sender
            menuVc.popoverPresentationController?.sourceRect = sender.bounds
            
            self.present(menuVc, animated: true)
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
//    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
//        //In order to update UI or execute a function when popover presentation dismissed.
//    }
//    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
//        return true
//    }
    
}
