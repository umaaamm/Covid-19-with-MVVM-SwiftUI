//
//  Services.swift
//  Covid19
//
//  Created by Kurniawan Gigih Lutfi Umam on 22/03/20.
//  Copyright © 2020 Kurniawan Gigih Lutfi Umam. All rights reserved.
//
import Foundation

typealias SummaryCompletion = (_ summary: Summary) -> Void

protocol CovidRepository {
    func fetchSummary(completion: @escaping SummaryCompletion)
}

class Services: CovidRepository {
    
    static let instance: Services = Services()
    
    private let baseApiUrl = "https://kawalcovid19.harippe.id/api"
    private let summaryPath = "summary"
    
    private let urlSession = URLSession.shared
    
    func fetchSummary(completion: @escaping SummaryCompletion) {
        let url = self.generateUrl(path: UrlPath.SUMMARY)
        self.urlSession.dataTask(with: url){ (data, response, error) in
            if let errorResponse = error {
                print(errorResponse.localizedDescription)
            }else {
                do {
                    let result = try JSONDecoder().decode(Summary.self, from: data!)
                    completion(result)
                }catch {
                    print("Failed to get summary")
                }
            }
        }.resume()
    }
    
    private func generateUrl(path: String) -> URL{
        let url = "\(self.baseApiUrl)/\(path)"
        return URL(string: url)!
    }
}

struct UrlPath {
    static let SUMMARY = "summary"
}
