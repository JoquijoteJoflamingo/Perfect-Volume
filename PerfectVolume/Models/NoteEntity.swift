//
//  NoteEntity+CoreDataProperties.swift
//  PerfectVolume
//
//  Created by Joseph Schaubroeck on 8/31/22.
//
//

import Foundation
import CoreData
@objc(NoteEntity)
public class NoteEntity: NSManagedObject {
}

extension NoteEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NoteEntity> {
        return NSFetchRequest<NoteEntity>(entityName: "NoteEntity")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var timerOn: Bool
    @NSManaged public var title: String?
    @NSManaged public var exercises: NSSet?

}

// MARK: Generated accessors for exercises
extension NoteEntity {

    @objc(addExercisesObject:)
    @NSManaged public func addToExercises(_ value: ExerciseEntity)

    @objc(removeExercisesObject:)
    @NSManaged public func removeFromExercises(_ value: ExerciseEntity)

    @objc(addExercises:)
    @NSManaged public func addToExercises(_ values: NSSet)

    @objc(removeExercises:)
    @NSManaged public func removeFromExercises(_ values: NSSet)

}

extension NoteEntity : Identifiable {

}
