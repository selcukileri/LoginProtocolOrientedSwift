//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Selçuk İleri on 30.11.2023.
//

import Foundation

protocol LoginStorageService {
    var userAccessTokenKey : String {get}
    func setUserAccessToken(token: String)
    func getUserAccessToken() -> String?
}
