class Person {
    var residence: Residence?
    //변수가 Residence클래스를 옵셔널 타입으로 상속받고있다.
}

class Residence {
    var numberOfRooms = 1
}

let hee = Person() // 옵셔널 타입으로 상속받았으므로 residence의 초기값은 nil
hee.residence = Residence()

if let roomCount = hee.residence?.numberOfRooms {
    print(roomCount)
} else {
    print("nil")
}

