import Foundation

public final class CommandLineTool {
    private var arguments: [String]

    public init(arguments: [String] = CommandLine.arguments) { 
        self.arguments = arguments
    }

    public func run() throws {
        
        arguments.remove(at: 0)
        if arguments.count == 0 {
            print("""
 Usage \n calc #argument# #operation# #argument# -p [If you want to pipe] -d [Debug Mode] -sqrt for square root \n Glosary: \n argument: An argument is an Int or a float\n
    operation: Can be + - * /, X equal to * See man page for more detail v2
 """)
            return
        }
        if arguments.contains("--help") {
                       print("""
            Usage \n calc #argument# #operation# #argument# -p If you want to pipe -d [Debug Mode] -sqrt for square root \n Glosary: \n argument: An argument is an Int\n
               operation: Can be + - * /  X equal to * ,or a float
            """)
            return

        }
        
        if arguments.contains("-sqrt") {
            print(sqrt(Double(arguments[1])!))
            return
        }
        
        if arguments.contains("-sqrt") && arguments.contains("-p") {
            let input = readLine()!
            print(sqrt(Double(input[0])!))
            return
        }
        var one: Double
        var two: Double
        var operation:String
        if arguments.contains("-p") && arguments.contains("-d"){
            
            let input = readLine()!
            print("Calculating One...")
            one = Double(input[0])!
            print("One is \(one)")
            print("Calculating operator")
            operation = input[2]
            print("Operator  is \(operation)")
            print("Calculating two")
            two = Double(input[4])!
            print("Two is \(two)")
            print("Pipe OK")
            switch operation {
            case "+":print(one + two)
            case "-": print(one - two)
            case "*": print(one * two)
            case "/": print(one / two)
            case "M": print(one * two)
            case "x": print(one * two)
            default: throw CalcError.bad
            }
            return
            
        }
        if arguments.contains("-p"){
            
            let input = readLine()!
            //print("Calculating One...")
            one = Double(input[0])!
            //print("One is \(one)")
           // print("Calculating operator")
            operation = input[2]
           // print("Operator  is \(operation)")
            //print("Calculating two")
            two = Double(input[4])!
           // print("Two is \(two)")
           // print("Pipe OK")
            switch operation {
            case "+":print(one + two)
            case "-": print(one - two)
            case "*": print(one * two)
            case "/": print(one / two)
            case "x": print(one * two)
            default: throw CalcError.bad
            }
            return
            
        }
        if arguments.count == 1 {

             let input = readLine()!
             //print("Calculating One...")
             one = Double(input[0])!
             //print("One is \(one)")
            // print("Calculating operator")
             operation = input[2]
            // print("Operator  is \(operation)")
             //print("Calculating two")
             two = Double(input[4])!
            // print("Two is \(two)")
            // print("Pipe OK")
             switch operation {
             case "+":print(one + two)
             case "-": print(one - two)
             case "*": print(one * two)
             case "/": print(one / two)
             case "x": print(one * two)
             default: throw CalcError.bad
             }
             return
        }
        one = Double(arguments[0])!
        two = Double(arguments[2])!
        operation = arguments[1]
        switch operation {
        case "+":print(one + two)
        case "-": print(one - two)
        case "*": print(one * two)
        case "/": print(one / two)
        case "x": print(one * two)
        default: throw CalcError.bad
        }
    }
}
enum CalcError: Error {
case bad
}
extension String {
    subscript(_ pos: Int) -> String {
        get {
            let index = self.index(self.startIndex, offsetBy: pos)
            return String(self[index])
        }
    }
}


