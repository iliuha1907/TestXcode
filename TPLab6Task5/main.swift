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
    let sortedDict = tableCount.sorted { $0.1 < $1.1 }
    for (symb, keyValue) in sortedDict {
        if(symb == " "){
            print("Symbol:  Space - Count:  \(keyValue)")
            
        }
        else {
            print("Symbol:  \(symb) - Count:  \(keyValue)")
        }
    }
}

func main(){
    print("Enter your string")
    let str = readLine();
    processString(text: str!)
}

main()

