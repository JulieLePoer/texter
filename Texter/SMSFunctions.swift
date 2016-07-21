//
//  SMSFunctions.swift
//  Texter
//
//  Created by julie on 7/21/16.
//  Copyright © 2016 Julie LePoer. All rights reserved.
//

import Foundation

func sendTextMessage(message: String, number: String)
{
    // Create the URL -- Clockwork SMS API Key: 97ecc4df79c42f20edfd671ae3661e1835d0c34f
    var clockworkSMS = "https://api.clockworksms.com/http/send.aspx?to=" + number + "&content=" + message + "&key=97ecc4df79c42f20edfd671ae3661e1835d0c34f"
    
    // Change " " to "+"
    clockworkSMS = clockworkSMS.stringByReplacingOccurrencesOfString(" ", withString: "+")
    
    // Create NSURL object using the URL created previously
    let clockworkURL = NSURL(string: clockworkSMS)
    
    if(clockworkURL != nil)
    {
        //Now make the request and get the response!
        
        // Create NSData object using the NSURL object which points to the Clockwork SMS API
        let responseData = NSData(contentsOfURL: clockworkURL!)
        
        if(responseData != nil)
        {
            // Convert the NSData object into a String object (convert binary data to text)
            let responseString = String(data: responseData!, encoding: NSUTF8StringEncoding)
            
            if(responseString != nil)
            {
                print(responseString!)
            }
        }
    }
}
