//
//  ExerciseEntity+CoreDataProperties.swift
//  
//
//  Created by Joseph Schaubroeck on 8/6/22.
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
    @NSManaged public var name: String?
    @NSManaged public var numSets: Int64

}

extension ExerciseEntity : Identifiable {

}
