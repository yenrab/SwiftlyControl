/*
Copyright (c) 2014 Lee Barney
Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software
is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.


THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


*/

import Foundation

//Here is an example of mapping functions to commands
var requestHandlerMap = ["loud":handleLoud, "just_speak":handleNormal]

func handleRequest(command:String, parameters:Dictionary<String,Any>) {
    let handlerFunction = requestHandlerMap[command]
    if handlerFunction != nil{
        handlerFunction!(parameters)
    }
    else{
        println("\(command) is not associated with any function.")
    }
}


/*
 * Here is where you can put a library of functions.
 */

/*
 * The application controller pattern provides very good source code modularity.
 * It is particularly helpful when doing data puts and gets locally or remotely.
 * It is also very helpful in apps that have a lot of complex user interactions beyond
 * just visual transformations due to user actions. The silly examples below are not 
 * complex. They are silly and simple. They are not a good use of the Application 
 * Controller Pattern.
 */

//this is a silly example of a function
func handleLoud(parameters:Dictionary<String,Any>){
    let theMessage = parameters["standard_message"] as String
    let theViewController = parameters["viewController"] as ViewController
    theViewController.resultsDisplay.text = "\(theMessage)!"
}

/*
 * Here is another silly example.
 */
func handleNormal(parameters:Dictionary<String,Any>){
    let theStandardMessage = parameters["standard_message"] as String
    let theViewController = parameters["viewController"] as ViewController
    let theUsersMessage = theViewController.words.text
    theViewController.resultsDisplay.text = "\(theUsersMessage). \(theStandardMessage)."
}
