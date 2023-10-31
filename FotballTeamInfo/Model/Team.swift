//
//  Team.swift
//  FotballTeamInfo
//
//  Created by Saba Gogrichiani on 31.10.23.
//

import Foundation

struct Team {
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
}
