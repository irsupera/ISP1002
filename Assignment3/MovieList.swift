//
//  ViewController.swift
//  Assignment3
//
//  Created by IR Supera on 2022-03-22.
//

import Foundation

class MovieList{

    var movies = [String]()
    
    init(autofil: Bool){
        if autofil {
            //hardcoded entries in table movies
            movies = ["Eternals",
                      "Dune",
                      "No Time To Die",
                      "Last Night in Soho",
                      "Ron’s Done Wrong",
                      "Halloween Kills",
                      "Venom","Antlers",
                      "The Addams Family 2"]
        }
    }
    
    func addMovie(movie: Movie){
        //append movie to table
        movies.append(movie.title)
    }
    
    func removeMovie(indexPath: IndexPath){
        //remove movie from the table
        movies.remove(at: indexPath.row)
    }

}

