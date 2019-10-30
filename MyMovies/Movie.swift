//
//  Movie.swift
//  MyMovies
//
//  Created by Grace Njoroge on 30/10/2019.
//  Copyright © 2019 Grace. All rights reserved.
//

import Foundation

struct Movie {
  var title: String
  var genre: Genre
  
  func genreString() -> String {
    switch genre {
    case .Action:
      return "Action"
    case .Animation:
      return "Animation"
    default:
      return "None"
    }
  }
}


