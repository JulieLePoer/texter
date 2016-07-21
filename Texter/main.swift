//
//  main.swift
//  Texter
//
//  Created by julie on 7/19/16.
//  Copyright © 2016 Julie LePoer. All rights reserved.
//

import Foundation

print("What would you like to text?")

// Wait for message to be entered on the keyboard by the user & check that readLine didn't return nil
guard let usersMessage = readLine(stripNewline: true) else {exit(0)}

print("Ok, that's fine. Which phone number would you like to send this to?")

// Wait for the phone number to be entered on the keyboard by the user & check that readLine didn't return nil
guard let toNumber = readLine(stripNewline: true) else {exit(0)}

sendTextMessage(usersMessage, number: toNumber)