//
//  MuscleGroupEntity.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 7/29/22.
//

import Foundation
import CoreData
import SwiftUI

@objc(MuscleGroupEntity)
public class MuscleGroupEntity: NSManagedObject {
    
    
    
}

extension MuscleGroupEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MuscleGroupEntity> {
        return NSFetchRequest<MuscleGroupEntity>(entityName: "MuscleGroupEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var maxTargetSets: Int64
    @NSManaged public var minTargetSets: Int64
    @NSManaged public var name: String
//    @NSManaged public var rowColor: UIColor?
    @NSManaged public var setsWorked: Int64
    public var rowColor: LinearGradient? {
        let pureRed: LinearGradient = LinearGradient(colors: [Color("Turkish Red")], startPoint: .leading, endPoint: .trailing)
        let redToYellow: LinearGradient = LinearGradient(colors: [Color("Turkish Red"), Color("Turkish Yellow")], startPoint: .leading, endPoint: .trailing)
        let pureYellow: LinearGradient = LinearGradient(colors: [Color("Corn Yellow"), Color("Turkish Yellow")], startPoint: .leading, endPoint: .trailing)
        let yellowToGreen: LinearGradient = LinearGradient(colors: [Color("Turkish Yellow"), Color("Turkish Green")], startPoint: .leading, endPoint: .trailing)
        let pureGreen: LinearGradient = LinearGradient(colors: [Color("Mint Green"), Color("Turkish Green")], startPoint: .leading, endPoint: .trailing)
        let greenToPurple: LinearGradient = LinearGradient(colors: [Color("Turkish Green"), Color("Turkish Purple")], startPoint: .leading, endPoint: .trailing)
        let purePurple: LinearGradient = LinearGradient(colors: [Color("Turkish Purple"), Color("Magenta Purple")], startPoint: .leading, endPoint: .trailing)

//        let test: LinearGradient = LinearGradient(colors: [Color.blue], startPoint: .leading, endPoint: .trailing)
        

        // 0% -> 25%
        if Double(setsWorked) < Double(minTargetSets) / 4 {
            return pureRed
        }
        // 25% -> 50%
        else if Double(setsWorked) < Double(minTargetSets) / 2 {
            return redToYellow
        }
        // 50% -> 75%
        else if Double(setsWorked) < Double(minTargetSets) * 3 / 4 {
            return pureYellow
        }
        // 75% -> 100%
        else if Double(setsWorked) < Double(minTargetSets) {
            return yellowToGreen
        }
        // 100% -> 150%
        else if Double(setsWorked) < (Double(minTargetSets) + Double(maxTargetSets)) / 2 {
            return pureGreen
        }
        // 150% -> 200%
        else if Double(setsWorked) <= Double(maxTargetSets) {
            return greenToPurple
        }
        // 200% +
        return purePurple
    }
    
    
    func incrementMuscle() {
        setsWorked += 1
    }

}

extension MuscleGroupEntity : Identifiable {
    
}
