//
//  AppData.swift
//  User
//
//  Created by CSS on 10/01/18.
//  Copyright © 2019 MoobUrban. Todos os Direitos Reservados.
//

import UIKit

let AppName = "Moovim"
var deviceTokenString = Constants.string.noDevice
let stripePublishableKey = "pk_live_lz3mrFJ6DGeAws9iVIOwjTqy00LfZShS9r"
let googleMapKey = "AIzaSyCa2Jdm93nVUq1OgM4jEgLzFJNr3o8P_fo"
let appSecretKey = "4OMmvBWV6xPucoaSBZ8bThu2NWMPzfqVf9mjVnAK"
let appClientId = 2
let passwordLengthMax = 10
let defaultMapLocation = LocationCoordinate(latitude: -17.538442, longitude: -39.7499758)
let baseUrl = "https://moovim.com.br/"

var supportNumber = "3898643206"
var supportEmail = "admin@moovim.com.br"
var offlineNumber = "57777"
let helpSubject = "\(AppName) Ajuda"

let requestInterval : TimeInterval = 600
let requestCheckInterval : TimeInterval = 5
let driverBundleID = "br.com.moovim.driver"

// AppStore URL

enum AppStoreUrl : String {
    
    case user = "https://itunes.apple.com/br/app/moovim/id1456138023?ls=1&mt=8"
    case driver = "https://itunes.apple.com/br/app/moovim/id1456285217?mt=8"
    
}
