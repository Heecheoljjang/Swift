import Foundation

func combi(_ targetArr: [String], _ targetNum: Int, _ index: Int, _ arr: [String]) {
    
    if arr.count == targetNum {
        print(arr)
        return
    }
    
    for i in index..<targetArr.count {
        combi(targetArr, targetNum, i+1, arr + [targetArr[i]])
    }
}
combi(["h", "e", "l", "a", "b"], 3, 0, [])
