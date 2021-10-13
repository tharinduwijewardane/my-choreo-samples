import ballerina/http;
import ballerina/io;

service /hello on new http:Listener(9090) {

    resource function 'default sayHello(http:Caller caller, http:Request request) {

        error? result = caller->respond("Hello Ballerina!");
        if (result is error) {
            io:println("Error in responding: ", result);
        }
    }
}
