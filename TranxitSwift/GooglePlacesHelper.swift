//
//  GooglePlacesHelper.swift
//  User
//
//  Created by CSS on 10/05/18.
//  Copyright © 2018 Appoets. All rights reserved.
//

import Foundation
import GooglePlaces

class GooglePlacesHelper : NSObject {
    
    private var fetcher : GMSAutocompleteFetcher?
    private var filter : GMSAutocompleteFilter?
    private var filterClient : GMSPlacesClient?
    private var gmsAutoComplete : GMSAutocompleteViewController?
    private var prediction : (([GMSAutocompletePrediction])->Void)?
    private var placesCompletion : ((GMSPlace)->Void)?
    
    /// Especificando o tipo de dados a ser retornado. Requisicoes Basic Data sao de graça $$$
    private let fields: GMSPlaceField = GMSPlaceField(rawValue:
        UInt(GMSPlaceField.name.rawValue) | UInt(GMSPlaceField.placeID.rawValue) | UInt(GMSPlaceField.coordinate.rawValue) | UInt(GMSPlaceField.addressComponents.rawValue) | UInt(GMSPlaceField.formattedAddress.rawValue)
        )!
    
    // MARK:- Initilaize Fetcher
    
    private func initFetcher() {
        if fetcher == nil {
            self.fetcher = GMSAutocompleteFetcher()
            self.filter = GMSAutocompleteFilter()
            self.filter?.type = .noFilter
            self.filter?.country = "BR"
            self.fetcher?.autocompleteFilter = filter
            self.fetcher?.delegate = self
        }
    }
    
    private func initFilter() {
        if filter == nil {
            self.filter = GMSAutocompleteFilter()
            self.filter?.type = .noFilter
            self.filter?.country = "BR"
        }
    }
    
    func getAutoComplete(with stringKey : String?, with sessionToken: GMSAutocompleteSessionToken, with predications : @escaping ([GMSAutocompletePrediction])->Void) {
        guard let string = stringKey, !string.isEmpty else{ return }
        self.initFetcher()
        self.fetcher?.provide(sessionToken)
        self.fetcher?.sourceTextHasChanged(stringKey)
        self.prediction = predications
    }
    
    // MARK:- Show Auto Complete Predictions
    
//    func getAutoComplete(with stringKey : String?, with sessionToken: GMSAutocompleteSessionToken, with predications : @escaping ([GMSAutocompletePrediction])->Void) {
//
//        /// Retorna caso palavra esteja vazia
//        guard let string = stringKey, !string.isEmpty else{ return }
//
//        self.initFilter()
//        self.prediction = predications
//
//        /// Faz chamada de predicoes do autocomplete com token de sessao(gerando menos custo $$$ de requisicao)
//        GMSPlacesClient.shared().findAutocompletePredictions(
//            fromQuery: string,
//            bounds: nil,
//            boundsMode: GMSAutocompleteBoundsMode.bias,
//            filter: filter,
//            sessionToken: sessionToken,
//            callback: { (results, error) in
//                if let error = error {
//                    print("Autocomplete error: \(error)")
//                    return
//                }
//                if let results = results {
//
//                    /// Atualiza lista de predicoes
//                    self.prediction?(results)
//
//                    print("AUTOCOMPLETE PREDICATIONS REQUEST RESPONSE")
//                }
//        })
//
//    }
    
    // MARK:- Get Google Auto Complete
    
    func getGoogleAutoComplete(completion : @escaping ((GMSPlace)->Void)){
        
        self.gmsAutoComplete = GMSAutocompleteViewController()
        self.gmsAutoComplete?.placeFields = fields
        self.gmsAutoComplete?.autocompleteFilter = filter
        self.gmsAutoComplete?.primaryTextColor = .primary
        self.gmsAutoComplete?.secondaryTextColor = .secondary
        self.gmsAutoComplete?.delegate = self
        self.placesCompletion = completion
        UIApplication.topViewController()?.present(self.gmsAutoComplete!, animated: true, completion: nil)
    }
}

// MARK:- GMSAutocompleteFetcher

extension GooglePlacesHelper : GMSAutocompleteFetcherDelegate {
    
    func didFailAutocompleteWithError(_ error: Error) {
        
        print("Places Fetcher Failed with Error ",error.localizedDescription)
    }
    
    func didAutocomplete(with predictions: [GMSAutocompletePrediction]) {
        prediction?(predictions)
    }
}

extension GooglePlacesHelper : GMSAutocompleteViewControllerDelegate {
    
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        
        print("Error on places ",error.localizedDescription)
        viewController.dismiss(animated: true, completion: nil)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        self.placesCompletion?(place)
        viewController.dismiss(animated: true, completion: nil)
    }
}
