//
//  ViewController.swift
//  Project-6
//
//  Created by Cristian Sedano Arenas on 06/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var entity: EntityType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func starWarsObjectSelection (_ sender: UIButton) {
        switch sender.tag {
        case 0:
            entity = .people
        case 1:
            entity = .vehicles
        case 2:
            entity = .starships
        default:
            break
        }
        performSegue(withIdentifier: "starWarSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nav = segue.destination as? UINavigationController, let destVC = nav.topViewController as? SearchResultsController {
            destVC.entity = entity
        }
    }
}

