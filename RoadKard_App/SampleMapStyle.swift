//
//  SampleMapStyle.swift
//  RoadKard_App
//
//  Created by Silstone on 27/01/21.
//

/*
* Copyright 2020 Google LLC. All rights reserved.
*
*
* Licensed under the Apache License, Version 2.0 (the "License"); you may not use this
* file except in compliance with the License. You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software distributed under
* the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
* ANY KIND, either express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

import GoogleMaps

enum SampleMapStyle: CustomStringConvertible, CaseIterable {
  case retro
  case grayscale
  case night

  private static let mapStyleJSON = """
    [
      {
        "featureType" : "poi.business",
        "elementType" : "all",
        "stylers" : [
          {
            "visibility" : "off"
          }
        ]
      },
      {
        "featureType" : "transit",
        "elementType" : "labels.icon",
        "stylers" : [
          {
            "visibility" : "off"
          }
        ]
      }
    ]
    """

  var description: String {
    switch self {
    case .retro:
      return "Retro"
    case .grayscale:
      return "Grayscale"
    case .night:
      return "Night"
    }
  }

  var mapStyle: GMSMapStyle? {
    switch self {
    case .retro:
        return try? GMSMapStyle(jsonString: "mapstyle-retro")
    case .grayscale:
        return try? GMSMapStyle(jsonString: "mapstyle-silver")
    case .night:
        return try? GMSMapStyle(jsonString: "mapstyle-night")
    }
  }
}
