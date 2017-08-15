//
//  ViewController.swift
//  dateTest
//
//  Created by Jack Ngai on 8/15/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var dateElements = DateComponents()
    let unitFlags:Set<Calendar.Component> = [
        .hour, .day, .month,
        .year,.minute,.hour,.second,
        .calendar]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(topOfTheHour())
        print(getNowDate())
        
    }
    
    func topOfTheHour()-> Date {
        var now = Date()
        var dateParts = DateComponents()
        let calendar = Calendar.current
        dateParts.year = Calendar.current.component(.year, from: now)
        dateParts.month = Calendar.current.component(.month, from: now)
        dateParts.day = Calendar.current.component(.day, from: now)
        dateParts.hour = Calendar.current.component(.hour, from: now)
        dateParts.minute = Calendar.current.component(.minute, from: now)
        dateParts.second = Calendar.current.component(.second, from: now)
        dateParts.timeZone = NSTimeZone.local
        
        if let minute = dateParts.minute, minute > 0{
            dateParts.minute = 0
            if let hour = dateParts.hour{
                dateParts.hour = hour + 1
            }
        }
        
        now = calendar.date(from: dateParts)!
        return now as Date
    }
    
    func getNowDate() -> Date {
        return Date()
    }
    
    
}

