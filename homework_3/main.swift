//-------------------------------------------------------------------------------------------------------------------------------------------
/*
 1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль.
 */
//--------------------------------------------------------------------------------------------------------------------------------------------

import Foundation

struct Car {
    var model:String;
    var dateOfrelease:Int;
    var carTrunk:Float;
    var cost:Int;
    
    
    
    enum EngineCapacity: Int{
        case unknown = 0, microCar = 1, smallCar, medium, powerful
        init(){
            self = .unknown
        }
        
        func insuarence() -> (Int){
            if self.rawValue == 1{
                return   1000
            } else if self.rawValue  == 2{
                return  2000
            } else if self.rawValue == 3{
                return  3000
            } else if self.rawValue == 0{
                return 0
            } else {
                return 6000
            }
        }
        
        
    }
    var status = EngineCapacity()
}

var testTwo = Car(model: "lada", dateOfrelease: 2222, carTrunk: 1.7, cost: 2222, status: Car.EngineCapacity.microCar)
var test = Car.EngineCapacity.microCar.insuarence()
print(testTwo)
print(testTwo.status.insuarence())


struct UsageOfCar {
    var engineStart:Bool;
    var usedValueOfTrunk:Float;
    init (){
        engineStart = false;
        usedValueOfTrunk = 0.0;
    }
    //3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
    /*
     enum StatusOfCar{
     case windows(
     leftWindow:String,
     rightWindow:String,
     status:Bool)
     case carLock(Bool)
     case loadTrunk(Int)
     case engineStatus(Bool)
     
     func checkUp() -> (String){
     switch self{
     case .windows(leftWindow: <#T##String#>, rightWindow: <#T##String#>, status: <#T##Bool#>)
     }
     }
     
     }
     */
    //mutating func checkCarStatus(_)
    
}


