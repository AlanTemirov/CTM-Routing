//
//  ViewController.swift
//  CTMobile-Routing
//
//  Created by Alan on 14.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, FirstViewControllerProtocol {
    
    @IBOutlet private weak var tableView: UITableView!
    
    var presenter: FirstControllerPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "ctm routing".uppercased()
    }
    
}

// MARK: - UITableViewDataSource
extension FirstViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }
    
}

// MARK: - UITableViewDelegate
extension FirstViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // CTM approach
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailViewController = storyboard.instantiateViewController(
            identifier: "SecondViewController"
            ) as SecondViewController

        detailViewController.set(labelText: "\(indexPath.row)")

        navigationController?.pushViewController(detailViewController, animated: true)
        
        
        // Router approach
        presenter.didSelectItem(on: indexPath)
    }
    
}
