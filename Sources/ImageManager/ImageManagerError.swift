//
//  File.swift
//  
//
//  Created by Shagun Beta on 15/11/2019.
//

import Foundation

public enum ImageManagerError: Error {
    case noData
    case badData
    case network(Error?)
    case unknown(Error?)
}

extension ImageManagerError: Equatable {
    public static func == (lhs: ImageManagerError, rhs: ImageManagerError) -> Bool {
        switch (lhs, rhs) {
        case ( .noData, .noData):
            return true
        case ( .badData, .noData):
            return true
        case ( .network(_), .network(_)):
            return true
        case ( .unknown(_), .unknown(_)):
            return true
        default:
            return false
        }
    }
}

