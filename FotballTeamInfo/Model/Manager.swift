//
//  Manager.swift
//  FotballTeamInfo
//
//  Created by Saba Gogrichiani on 31.10.23.
//

import Foundation

enum JobType: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager {
    let name: String
    let job: JobType
}
