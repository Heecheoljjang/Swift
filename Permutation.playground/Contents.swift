import Foundation

func permutation(_ target: [String], _ targetNum: Int) {
    
    var result: [[String]] = []
    // 사용된 원소인지 확인하기 위한 변수
    var check = [Bool](repeating: false, count: target.count)
    
    // 위의 변수들을 이용하기 위해 안에 연산만 하는 함수 구현
    func permute(_ arr: [String]) {
        if arr.count == targetNum {
            result.append(arr)
            return
        }
        for i in 0..<target.count {
            if check[i] == true {
                continue
            } else {
                check[i] = true
                permute(arr + [target[i]])
                check[i] = false
            }
        }
    }
    permute([])
    print(result)
}

