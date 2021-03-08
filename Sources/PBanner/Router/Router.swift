//
//  File.swift
//  
//
//  Created by Renato Cardial on 08/03/21.
//

import Connector

enum BannerRouter: String, EndpointPath {
    
    case getFeaturedBanner = "/banner/featured"
    case getBannerById = "/banner/{id}"
    
}

