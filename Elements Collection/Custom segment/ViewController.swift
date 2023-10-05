//
//  ViewController.swift
//  Elements Collection
//
//  Created by Supriyo Dey on 29/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customSegment: CustomSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello", view.bounds.width)
        addSegment()
    }


    func addSegment() {
        customSegment.bgColor = UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.00)
        customSegment.buttonTitles = ["Segment 1", "Segment 2"]
        customSegment.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func segmentedControlValueChanged(_ sender: CustomSegmentedControl) {
        let selectedSegmentIndex = sender.selectedSegmentIndex
        print("Selected segment index: \(selectedSegmentIndex)")
        // Handle segmented control value change here
    }

}

