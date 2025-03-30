//
//  CharactersListRouter.swift
//  RickAndMorty_Test
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//  Copyright (c) 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol CharactersListRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol CharactersListDataPassing
{
  var dataStore: CharactersListDataStore? { get }
}

class CharactersListRouter: NSObject, CharactersListRoutingLogic, CharactersListDataPassing
{
  weak var viewController: CharactersListViewController?
  var dataStore: CharactersListDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: CharactersListViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: CharactersListDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
