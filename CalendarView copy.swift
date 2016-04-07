//
//  CalendarView.swift
//  Journal
//
//  Created by Rachel Rosenbaum on 2/23/16.
//  Copyright © 2016 com.appcode. All rights reserved.
//

import UIKit




class CalendarView: UIViewController {
    
    @IBOutlet weak var calendarView: CVCalendarView!
    
    @IBOutlet weak var menuView: CVCalendarMenuView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // CVCalendarView initialization with frame
        self.calendarView = CVCalendarView(frame: CGRectMake(0, 20, 300, 450))
        
        // CVCalendarMenuView initialization with frame
        self.menuView = CVCalendarMenuView(frame: CGRectMake(0, 0, 300, 15))
        
        // Appearance delegate [Unnecessary]
        self.calendarView.calendarAppearanceDelegate = self
        
        // Animator delegate [Unnecessary]
        self.calendarView.animatorDelegate = self
        
        // Calendar delegate [Required]
        self.calendarView.calendarDelegate = self
        
        // Menu delegate [Required]
        self.menuView.menuViewDelegate = self
    }

        // Do any additional setup after loading the view.


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
            
        self.calendarView.commitCalendarViewUpdate()
        self.menuView.commitMenuViewUpdate()
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

