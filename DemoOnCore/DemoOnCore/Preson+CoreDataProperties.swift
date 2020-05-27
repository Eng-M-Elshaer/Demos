//
//  Preson+CoreDataProperties.swift
//  DemoOnCore
//
//  Created by Mohamed Elshaer on 12/18/19.
//  Copyright © 2019 Mohamed Elshaer. All rights reserved.
//
//

import Foundation
import CoreData


extension Preson {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Preson> {
        return NSFetchRequest<Preson>(entityName: "Preson")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16

}
