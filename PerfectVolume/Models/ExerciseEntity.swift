//
//  ExerciseEntity+CoreDataProperties.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 8/23/22.
//
//

import Foundation
import CoreData
import SwiftUI

@objc(ExerciseEntity)
public class ExerciseEntity: NSManagedObject {

}

extension ExerciseEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ExerciseEntity> {
        return NSFetchRequest<ExerciseEntity>(entityName: "ExerciseEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var numSets: Int64
    @NSManaged public var date: Date?
    @NSManaged public var muscleGroup: MuscleGroupEntity?
    @NSManaged public var sets: NSSet?
    
    func printTest() {
        print("TEST FUNC")
    }

    func decrementAfterSevenDays() {
        // store date from 1 week from now (currently set to 1 min for testing)
        let weekFromNow: Date = Calendar.current.date(byAdding: .minute, value: 1, to: date ?? Date()) ?? Date()
        
        // set a timer to do decrementMuscleGroup in 1 week
        let timer = Timer(fireAt: weekFromNow, interval: 0, target: self, selector: #selector(decrementMuscleGroup), userInfo: nil, repeats: false)
        RunLoop.main.add(timer, forMode: .common)
        
    }
    
    @objc func decrementMuscleGroup() {
        if true {
            muscleGroup?.setsWorked -= numSets
            objectWillChange.send()
        }
    }
}

// MARK: Generated accessors for sets
extension ExerciseEntity {

    @objc(addSetsObject:)
    @NSManaged public func addToSets(_ value: SetDetailEntity)

    @objc(removeSetsObject:)
    @NSManaged public func removeFromSets(_ value: SetDetailEntity)

    @objc(addSets:)
    @NSManaged public func addToSets(_ values: NSSet)

    @objc(removeSets:)
    @NSManaged public func removeFromSets(_ values: NSSet)

}

extension ExerciseEntity : Identifiable {

}
