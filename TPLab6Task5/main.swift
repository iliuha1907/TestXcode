//
//  main.swift
//  TPLab6Task5
//
//  Created by Ilya Huzei on 03.04.2020.
//  Copyright © 2020 Ilya Huzei. All rights reserved.
//

import Foundation

var table = [Int](repeating: 0, count: 256)
var tableCount = [Character: Int]()

func processString(text: String){
    let offset = 128
    for code in text.utf8 {
        let ind = Int(code) + offset
        table[ind] += 1
        tableCount.updateValue(table[ind], forKey: Character(UnicodeScalar(code)))
    }
    print(tableCount)
    let sortedDict = tableCount.sorted { $0.1 < $1.1 }
    for (index, keyValue) in sortedDict {
        print("Letter:  \(index) - Count:  \(keyValue)")
    }
}

func main(){
    print("Hello, World!")
    processString(text: "abca abcd")
    
}

main()

