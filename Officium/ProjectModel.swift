//
//  ProjectDataModel.swift
//  Officium
//
//  Created by Annegret Junker on 19.08.19.
//  Copyright © 2019 Annegret Junker. All rights reserved.
//

import Foundation


class ProjectModel {
    /*func requestData(completion: ((_ data: String) -> Void)) {
        // the data was received and parsed to String
        let data = "Data f2rom wherever"
        completion(data)
    }*/
    
    
    var id: String="sampleGU-IDsa-mple-GUID-sampleGUIDsa"
    var name: String="Just a default name"
    var team: String=""
    var createdAt: Date=Date()
    var createdBy: String="sampleGU-IDsa-mple-GUID-sampleGUIDsa"
    var updatedAt: Date=Date()
    var updatedBy: String="sampleGU-IDsa-mple-GUID-sampleGUIDsa"
    
    init(id: String="sampleGU-IDsa-mple-GUID-sampleGUIDsa", name: String="Just a default name", team: String="team", createdAt: Date=Date(), createdBy: String="sampleGU-IDsa-mple-GUID-sampleGUIDsa", updatedAt: Date=Date(), updatedBy: String="sampleGU-IDsa-mple-GUID-sampleGUIDsa") {
        self.id=id
        self.name=name
        self.team=team
        self.createdAt=createdAt
        self.createdBy=createdBy
        self.updatedAt=updatedAt;
        self.updatedBy=updatedBy;
    }
}
