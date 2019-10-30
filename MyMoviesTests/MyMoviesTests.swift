//
//  MyMoviesTests.swift
//  MyMoviesTests
//
//  Created by Grace Njoroge on 30/10/2019.
//  Copyright © 2019 Grace. All rights reserved.
//

import Quick
import Nimble

@testable import MyMovies //this line basically identifies the project target we are testing, and then allows us to import classes from there

class MyMoviesTests: QuickSpec {

    override func setUp() {
        
    }
  
  override func spec() {
    var subject: MoviesTableViewController!
     
     describe("MoviesTableViewControllerSpec") {
       beforeEach {
        subject = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MoviesTableViewController") as? MoviesTableViewController
         
         _ = subject.view
       }
       
       context("when view is loaded") {
         it("should have 8 movies loaded") {
           expect(subject.tableView.numberOfRows(inSection: 0)).to(equal(8))
         }
       }
     }
    
    context("Table View") {
      var cell: UITableViewCell!
      beforeEach {
        cell = subject.tableView(subject.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
      }
      it("should show movie title and genre") {
        expect(cell.textLabel?.text).to(equal("The Emoji Movie"))
        expect(cell.detailTextLabel?.text).to(equal("Animation"))
      }
    }
  }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
