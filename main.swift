//
//  main.swift
//  Mean_meadian_mode
//
//  Created by Sierra 4 on 27/01/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import Foundation
var rawdata : [Float] = [2, 5, 7, 9, 11, 13]
//let mode_data = [1 , 3, 3, 4, 7, 8, 8, 8, 9]
var temp : Float = 0
for i in 0..<(rawdata.count)-1
{
    for j in i+1..<rawdata.count
    {
        if(rawdata[i] > rawdata[j])
        {
            temp = rawdata[i]
            rawdata[j] = rawdata[i]
            rawdata[i] = temp
        }
    }
}
func mean_method(rangenum : [Float]) -> Float
{
    var sum : Float = 0
    var mean : Float
    var limit : Float = Float(rangenum.count)
    for i in 0..<rangenum.count
    {
        sum = sum + rangenum[i]
    }
    mean = sum / limit
    return mean
}
print("mean:\(mean_method(rangenum : rawdata))")

func median_method(rangenum : [Float]) -> Float
{
    var temp1 = 0
    var median : Float = 0
    temp1 = rangenum.count%2
    if(temp1 == 0)
    {
        median = ( rangenum[ (rangenum.count-1)/2 ] + rangenum[ ((rangenum.count-1)/2) + 1] ) / 2
    }
    else
    {
        median = rangenum[ rangenum.count/2 ]
    }
    return median
}
print("median : \(median_method(rangenum : rawdata))")

func mode_method(rangenum : [Float]) -> Float
{
   
}
print("Mode : \(mode_method(rangenum: rawdata))")
