//
//  main.swift
//  dayInMonth
//
//  Created by Ngoduc on 1/18/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import Foundation
func isNamNhuan(_ year: Int) -> Bool {
    if year%4 == 0 && year%100 != 0 || year%400 == 0{
        return true
    }else{
        return false
    }
}
func dayInMonth2(_ year: Int) -> Int {
    if  isNamNhuan(year){
        return 29
    }
    return 28
}
func nam(_ year: Int){
    for i in 1..<13 {
        if i==1 || i == 3 || i == 5 || i==7 || i==8 || i==10 || i==12 {
            print("Tháng \(i) có 31 ngày")
        } else if i == 2 {
           print("Tháng \(i) có \(dayInMonth2(year)) ngày")
        }else{
           print("Tháng \(i) có 30 ngày")
        }
    }
}
func insertXInArray(){
    var mang:[Int] = [1,3,4,6,7,2,5]
        var index:Int = 0
        var max:Int = 0
        for i in mang {
            if max < i {
                max = i
            }
            index += 1
    }
        mang.insert(3, at: index)
        print(mang)
}
nam(2019)
