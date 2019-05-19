import UIKit

class AppCoordinator: Coordinator {
  
  private let window: UIWindow
  private let rootViewController: UINavigationController
  private var movieListCoordinator: MovieListCoordinator?
  
  init(window: UIWindow, movies: [Movie]) {
    self.window = window
    rootViewController = UINavigationController()
    rootViewController.navigationBar.prefersLargeTitles = true
    
    movieListCoordinator = MovieListCoordinator(presenter: rootViewController, movies: movies)
  }
  
  func start() {
    window.rootViewController = rootViewController
    movieListCoordinator?.start()
    window.makeKeyAndVisible()
  }
  
}

