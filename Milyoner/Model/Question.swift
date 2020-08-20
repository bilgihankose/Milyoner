//
//  Question.swift
//  Milyoner
//
//  Created by Bilgihan Köse on 20.08.2020.
//

import Foundation


//it is better to separate code that can be logically thought of as a separate idea. This keeps the code smaller in each file, easier to read, and gives you the ability to reuse parts in other projects since the files are already separated.

struct Question {
    
    let text: String //duruma gore degisir var da kullanilabilir. let immutable
    let answer: String
}
