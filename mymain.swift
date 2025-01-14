//
//  main.swift
//  roman_numerals
//
//  Created by Vipin Kiruba S S on 14/01/25.
//

import Foundation

var romandict: [Character : Int] = [
                                 "I":1,
                                 "V":5,
                                 "X":10,
                                 "L":50,
                                 "C":100,
                                 "D":500,
                                 "M":1000
                                ]

var flag1 : Bool = false

@main
struct mymain{
    static func main(){
    
        var romanstr: String = ""
        if let input = readLine()
        {
            romanstr = input
        }
        
        var finalval: Int = 0
    
        for var i in romanstr.indices{
            var currentVal = romanstr[i]
            var nextVal: Character
            
            if(flag1)
            {
                flag1 = false
                continue
            }
            
            if(i != romanstr.index(before: romanstr.endIndex))
            {
                var nextValindex = romanstr.index(after: i)
                nextVal = romanstr[nextValindex]
                
                if(romandict[currentVal]! < romandict[nextVal]!)
                {
                    finalval = finalval + ( romandict[nextVal]! - romandict[currentVal]! )
                    i = nextValindex
                    flag1 = true
                    continue
                }
                else{
                    finalval = finalval + romandict[currentVal]!
                }
            }
            else
            {
                finalval = finalval + romandict[currentVal]!
            }
             
        }
        print(finalval)
    }
}

