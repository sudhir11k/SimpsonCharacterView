//
//  MasterViewController.swift
//  xfinity
//
//  Created by Sudhir Kumar on 3/28/19.
//  Copyright © 2019 Sudhir Kumar. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    
    fileprivate var items: [XfinityItemProViewModel]?
    var dataProvider: XfinityDataManagerProtocol = XfinityDataManager()


    override func viewDidLoad() {
        super.viewDidLoad()
        dataProvider.getListItems { (items) in
            print(items)
            self.items = items
            DispatchQueue.main.async { [weak self] in
               self?.tableView.reloadData()
            }
            
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }


    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow,  let object = items?[indexPath.row] as? XfinityItemProViewModel {
               
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        if let object = items?[indexPath.row]{
            cell.textLabel!.text = object.listItemTitle
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

}

