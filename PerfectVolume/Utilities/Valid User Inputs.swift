//
//  Helper Functions.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 7/30/22.
//

import Foundation

// returns true if user enters valid info in CreateMuscleGroupView or EditMuscleGroupView
func textValid(name: String, minTarget: Int, maxTarget: Int) -> Bool {
    if name == "" || minTarget >= maxTarget {
        return false
    }
    return true
}

func exerciseValid(name: String, numSets: Int) -> Bool {
    if name == "" || numSets == 0 {
        return false
    }
    return true
}

