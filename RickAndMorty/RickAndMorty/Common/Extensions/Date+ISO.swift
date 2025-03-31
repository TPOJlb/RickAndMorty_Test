//
//  Date+ISO.swift
//  RickAndMorty
//
//  Created by Muraviov Kyrylo on 31.03.2025.
//

import Foundation

extension String {
    func convertISO8601ToDateString() -> String {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        if let date = formatter.date(from: self) {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = "dd.MM.yyyy HH:mm"
            return outputFormatter.string(from: date)
        } else {
            return "Некорректная дата"
        }
    }
}
