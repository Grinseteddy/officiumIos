//
//  DetailViewController.swift
//  Officium
//
//  Created by Annegret Junker on 19.08.19.
//  Copyright © 2019 Annegret Junker. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var uuidLabel: UILabel!
    
    var project: ProjectModel=ProjectModel()
    var tasks: Tasks=Tasks()

    func configureView() {
        
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uuidLabel.text=project.id
        if (tasks.tasks.count>0) {
            uuidLabel.text=tasks.tasks[0].name
        }
        tasks.load(projectId: project.id)
        while !tasks.loaded {
            sleep(1)
        }
        if (tasks.tasks.count>0) {
            uuidLabel.text=tasks.tasks[0].name
        }
        configureView()
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

