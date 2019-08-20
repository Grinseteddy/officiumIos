//
//  ApplicationSettings.swift
//  Officium
//
//  Created by Annegret Junker on 20.08.19.
//  Copyright © 2019 Annegret Junker. All rights reserved.
//

import Foundation

class ApplicationSettings {
    
    static let projectManagementAsString: String="http://ec2-3-120-34-138.eu-central-1.compute.amazonaws.com:5001/projects"
    
    static let shared: ApplicationSettings=ApplicationSettings()
    
    private init() {
        
    }
    
}
