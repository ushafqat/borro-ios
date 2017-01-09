//
//  LendViewController.swift
//  borro
//
//  Created by Usama Bin Shafqat on 12/3/16.
//  Copyright © 2016 Usama Bin Shafqat. All rights reserved.
//

import UIKit

class LendViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameField: AkiraTextField!
    @IBOutlet weak var locationField: AkiraTextField!
    @IBOutlet weak var detailsField: AkiraTextField!
    @IBOutlet weak var priceField: AkiraTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func enteredName(sender: AnyObject) {
        if itemNameField.text!.containsString("bike") {
            priceField.text = "Suggested: $5-$11"
        }
        else if itemNameField.text!.containsString("Xbox") {
            priceField.text = "Suggested: $10-$18"
        }
    }
    
    @IBAction func startedEnteringPrice(sender: AnyObject) {
        priceField.text = ""
        priceField.textColor = UIColor.blackColor()
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Set photoImageView to display the selected image.
        itemImageView.image = selectedImage
        
        // Dismiss the picker.
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func doneButtonPressed(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("segueUnwindToList", sender: self)
    }
    
    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        self.performSegueWithIdentifier("segueUnwindToList", sender: self)
    }
    
    @IBAction func addItemImage(sender: UITapGestureRecognizer) {
        
        // Hide the keyboard
        itemNameField.resignFirstResponder()
        priceField.resignFirstResponder()
        detailsField.resignFirstResponder()
        locationField.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
