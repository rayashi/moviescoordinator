import UIKit

class MovieDetailCoordinator: Coordinator {
  
  private let presenter: UINavigationController
  private var movieDeatilViewController: MovieDetailViewController?
  private let movie: Movie
  
  init(presenter: UINavigationController, movie: Movie) {
    self.presenter = presenter
    self.movie = movie
  }
  
  func start() {
    let movieDetailViewController = MovieDetailViewController()
    movieDetailViewController.movie = movie
    self.movieDeatilViewController = movieDetailViewController
    
    presenter.pushViewController(movieDetailViewController, animated: true)
  }
}
