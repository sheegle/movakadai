//
//  ViewController.swift
//  kadaiM20240402
//
//  Created by 渡邊 翔矢 on 2024/04/02.
//

func isTimeInRange(_ time: Int, from startTime: Int, to endTime: Int) -> Bool {
    if startTime == endTime {
        return time == startTime
    } else if startTime < endTime {
        return time >= startTime && time < endTime
    } else {
        return time >= startTime || time < endTime
    }
    }
