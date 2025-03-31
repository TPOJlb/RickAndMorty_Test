//
//  Connectivity.swift
//  RickAndMorty_Test
//
//  Created by Muraviov Kyrylo on 30.03.2025.
//

import Alamofire

struct Connectivity {
  static let sharedInstance = NetworkReachabilityManager()!
  static var isConnectedToInternet:Bool {
      return self.sharedInstance.isReachable
    }
}
