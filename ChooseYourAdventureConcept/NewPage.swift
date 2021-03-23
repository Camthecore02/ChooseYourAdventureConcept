//
//  NewPage.swift
//  ChooseYourAdventureConcept
//
//  Created by Cameron Smith & James Jermann on 3/23/21.
//  Copyright © 2021 Cameron Smith & James Jermann. All rights reserved.
//

import Foundation
        let samplePage = NewPage(pageImage: "maskedCat", pageText: "Meow",  buttonTitles: ["yes", "no"], buttonLinks: ["yesPage", "noPage"])
let yesPage = NewPage(pageImage: "maskedCat", pageText: "Yes Page", buttonTitles: ["Back to Sample"], buttonLinks: ["samplePage"])
        let noPage = NewPage(pageImage: "maskedCat", pageText: "No Page", buttonTitles: ["Back to Sample"], buttonLinks: ["samplePage"])

struct NewPage {
    var pageImage: String
    var pageText: String
    var buttonTitles: [String]
    var buttonLinks: [String]
}

