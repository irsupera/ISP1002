//
//  AddMovViewController.swift
//  Assignment3
//
//  Created by IR Supera on 2022-03-23.
//

import UIKit

class AddMovViewController: UIViewController {

    @IBOutlet weak var newMovieText: UITextField!
    
    var movieList: MovieList!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //set movie title then add from the list/table
        if !newMovieText.text!.isEmpty{
            let title = newMovieText.text!
            let movie = Movie(title: title)
            movieList.addMovie(movie: movie)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
