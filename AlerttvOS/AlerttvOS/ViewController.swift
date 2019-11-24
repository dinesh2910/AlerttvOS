//
//  ViewController.swift
//  AlerttvOS
//
//  Created by Dinesh Danda on 11/24/19.
//  Copyright © 2019 Dinesh Danda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstBtnOutlet: UIButton!
    @IBOutlet weak var secondBtnOutlet: UIButton!
    @IBOutlet weak var thirdBtnOutlet: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        btnClipstoBounds()
        // Do any additional setup after loading the view.
    }

    func btnClipstoBounds() {
        firstBtnOutlet.clipsToBounds = true
        secondBtnOutlet.clipsToBounds = true
        thirdBtnOutlet.clipsToBounds = true
        blueBtn.clipsToBounds = true
        greenBtn.clipsToBounds = true
        blueBtn.layer.cornerRadius = 6.0
        greenBtn.layer.cornerRadius = 6.0
        firstBtnOutlet.layer.cornerRadius = 6.0
        secondBtnOutlet.layer.cornerRadius = 6.0
        thirdBtnOutlet.layer.cornerRadius = 6.0


    }

    @IBAction func alertOne(_ sender: Any) {
        let title = "Current Location Not Available"
        let message = "Your Current location can not be determined at this time"
        let button = "OK"

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: button, style: .default) {  _ in
            print("Ok was pressed")
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)

    }


    @IBAction func alertTwo(_ sender: Any) {
        let title = "Download Error Occured"
        let message = "There is an error occured during the downloading the video"
        let tryButton = "Try Again"
        let cancelButton = "Cancel"

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let tryAction = UIAlertAction(title: tryButton, style: .default) {  _ in
            print("try again was pressed")
        }
        let cancelAction = UIAlertAction(title: cancelButton, style: .cancel) {  _ in
            print("Cancel button was pressed")
        }
        alert.addAction(tryAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)

    }


    @IBAction func alertThree(_ sender: Any) {

        let title = "Are you sure?"
        let message = "If you delete this it will be permenantly done. Delte?"
        let delteButton = "Delete Again"
        let cancelButton = "Cancel"

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cacnelAction = UIAlertAction(title: cancelButton, style: .default) {  _ in
            print("Cancel button was pressed")
        }
        let deleteAction = UIAlertAction(title: delteButton, style: .destructive) {  _ in
            print("Delete button was pressed")
        }
        alert.addAction(cacnelAction)
        alert.addAction(deleteAction)
        present(alert, animated: true, completion: nil)
    }


    @IBAction func didPressBlueBtn(_ sender: Any) {
        self.view.backgroundColor = UIColor.orange
        self.firstBtnOutlet.backgroundColor = UIColor.gray
        self.secondBtnOutlet.backgroundColor = UIColor.cyan
        self.thirdBtnOutlet.backgroundColor = UIColor.brown
    }

    @IBAction func didPressGreenBtn(_ sender: Any) {
        self.view.backgroundColor = UIColor.green
        self.firstBtnOutlet.backgroundColor = UIColor.black
        self.secondBtnOutlet.backgroundColor = UIColor.purple
        self.thirdBtnOutlet.backgroundColor = UIColor.darkGray
    }
}

