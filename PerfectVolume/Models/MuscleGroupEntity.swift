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
class MuscleGroupEntity: NSManagedObject {
    
    
    
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
        let pureRed: LinearGradient = LinearGradient(colors: [Color.red], startPoint: .leading, endPoint: .trailing)
        let pureYellow: LinearGradient = LinearGradient(colors: [Color.yellow], startPoint: .leading, endPoint: .trailing)
        let pureGreen: LinearGradient = LinearGradient(colors: [Color.green], startPoint: .leading, endPoint: .trailing)
        if setsWorked == 0 {
            return pureRed
        }
        else if setsWorked > 0 && setsWorked < minTargetSets {
            return pureYellow
        }
        else {
            return pureGreen
        }
    }
    
    
    func incrementMuscle() {
        setsWorked += 1
    }

}

extension MuscleGroupEntity : Identifiable {
    
}
