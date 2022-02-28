//
//  History.swift
//  Hulk
//
//  Created by Avinash.Kandaswamy on 2/27/22.
//

import Foundation

struct History: Identifiable, Codable{
 
    
    let id: UUID
    let date: Date
    var attendees:[DailyScrum.Attendee]
    var lengthInMinutes: Int
    
     init(id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee], lengthInMinutes: Int) {
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
    }
}
