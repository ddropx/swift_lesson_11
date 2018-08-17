//task 1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.

func anyFunctionWithClosure(closure: () -> Void) {
    for i in 1...10 {
        print(i)
    }
    closure()
}

anyFunctionWithClosure() {print("")}


// task 2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.


let moneyInMyPocket = [1, 25, 20, 17, 19, 18, 3, 7, 5]
func backward(_ s1: Int, _ s2: Int) -> Bool {
    return s1 < s2
}

var reversedMoney = moneyInMyPocket.sorted(by: <)
reversedMoney = moneyInMyPocket.sorted(by: >)

// task 3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.

func homeworkFunc (array: [Int], closure: ((Int?, Int) -> Bool)) -> Int {
    var optionalVar : Int?
    for value in array {
        if closure(optionalVar, value) {
            optionalVar = value
        }
    }
    return optionalVar ?? 0
}

let homeworkArray = [1, 5, 7, 11, 13]

let minValue = homeworkFunc(array: homeworkArray) {
    $0 == nil || $1 < $0!}
let maxValue = homeworkFunc(array: homeworkArray) {
    $0 == nil || $1 > $0!
}

print(minValue)
print(maxValue)


