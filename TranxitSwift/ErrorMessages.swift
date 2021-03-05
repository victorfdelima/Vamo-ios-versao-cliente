//
//  ErrorMessages.swift
//  User
//
//  Created by CSS on 11/01/18.
//  Copyright © 2018 Appoets. All rights reserved.
//

import Foundation

struct ErrorMessage {
    
    static let list = ErrorMessage()
    
    let serverError = "Servidor indisponível. Tente novamente!"
    let notReachable = "Sem conexão com a internet."
    let enterEmail = "Informe seu e-mail."
    let enterValidEmail = "Informe um e-mail válido."
    let enterPassword = "Informe sua Senha."
    let enterFirstName = "Informe seu Nome."
    let enterLastName = "Informe seu Sobrenome."
    let enterMobileNumber = "Informe seu Telefone."
    let enterCountry = "Infome um País."
    let enterTimezone = "Informe um TimeZone"
    let enterConfirmPassword = "Informe a senha de Confirmação."
    let passwordDonotMatch = "As senhas não correspondem."
}
