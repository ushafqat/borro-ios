//
//  ItemDetailsViewController.swift
//  borro
//
//  Created by Usama Bin Shafqat on 11/8/16.
//  Copyright © 2016 Usama Bin Shafqat. All rights reserved.
//

import UIKit
import STPopup

class ItemDetailsViewController: UIViewController, CalendarViewDelegate {

    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var detailsName: UILabel!
    @IBOutlet weak var detailsPrice: UILabel!
    @IBOutlet weak var detailsDetails: UILabel!
    
    @IBOutlet weak var borroButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    
    @IBOutlet var placeholderView: UIView!

    var item: Item!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // todays date.
        let date = NSDate()
        
        // create an instance of calendar view with
        // base date (Calendar shows 12 months range from current base date)
        // selected date (marked dated in the calendar)
        let calendarView = CalendarView.instance(date, selectedDate: date)
        calendarView.delegate = self
        calendarView.setTranslatesAutoresizingMaskIntoConstraints(false)
        placeholderView.addSubview(calendarView)
        
        // Constraints for calendar view - Fill the parent view.
        placeholderView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[calendarView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["calendarView": calendarView]))
        placeholderView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[calendarView]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: ["calendarView": calendarView]))
        

        // Do any additional setup after loading the view.
        detailsName.text = item.name
        detailsImage.image = item.photo
        detailsPrice.text = "$\(item.price)/" + item.timeSeqSuffix
        detailsDetails.text = item.location
        
        borroButton.layer.borderWidth = 3
        borroButton.layer.borderColor = UIColor(red:0.96, green:0.37, blue:0.38, alpha:1.0).CGColor
        
        messageButton.layer.borderWidth = 3
        messageButton.layer.borderColor = UIColor(red:0.96, green:0.37, blue:0.38, alpha:1.0).CGColor
    }
    
    func didSelectDate(date: NSDate) {
        print("(date.year)-(date.month)-(date.day)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
