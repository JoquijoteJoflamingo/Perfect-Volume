//
//  SetDetailEntity+CoreDataProperties.swift
//  
//
//  Created by Joseph Schaubroeck on 8/10/23.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension SetDetailEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SetDetailEntity> {
        return NSFetchRequest<SetDetailEntity>(entityName: "SetDetailEntity")
    }

    @NSManaged public var reps: String?
    @NSManaged public var weight: String?

}

extension SetDetailEntity : Identifiable {

}
