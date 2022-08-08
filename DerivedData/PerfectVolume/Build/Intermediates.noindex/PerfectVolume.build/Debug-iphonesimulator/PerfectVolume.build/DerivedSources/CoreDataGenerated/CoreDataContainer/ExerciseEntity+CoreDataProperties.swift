//
//  ExerciseEntity+CoreDataProperties.swift
//  
//
//  Created by Joseph Schaubroeck on 8/8/22.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension ExerciseEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ExerciseEntity> {
        return NSFetchRequest<ExerciseEntity>(entityName: "ExerciseEntity")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var muscleGroupName: String?
    @NSManaged public var name: String?
    @NSManaged public var numSets: Int64
    @NSManaged public var sets: NSSet?

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
