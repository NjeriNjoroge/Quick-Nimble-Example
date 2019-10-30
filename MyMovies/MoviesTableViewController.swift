//
//  MoviesTableViewController.swift
//  MyMovies
//
//  Created by Grace Njoroge on 30/10/2019.
//  Copyright © 2019 Grace. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MoviesDataHelper.getMovies().count
    }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")
    
    let movie = MoviesDataHelper.getMovies()[indexPath.row]
    cell?.textLabel?.text = movie.title
    cell?.detailTextLabel?.text = movie.genreString()
    
    return cell!
  }

    

}
