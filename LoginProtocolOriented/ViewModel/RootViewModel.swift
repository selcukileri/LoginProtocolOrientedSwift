//
//  RootViewModel.swift
//  LoginProtocolOriented
//
//  Created by Selçuk İleri on 30.11.2023.
//

import Foundation

class RootViewModel {
    
    private let loginStorageService: LoginStorageService
    
    weak var output: RootViewModelOutput?
    
    init(loginStorageService: LoginStorageService) {
        self.loginStorageService = loginStorageService
        
    }
    
    func checkLogin(){
        if let accessToken = loginStorageService.getUserAccessToken(), !accessToken.isEmpty {
            //showMainApp()
            output?.showMainApp()
        } else {
            //showLogin()
            output?.showLogin()
        }
    }
}
