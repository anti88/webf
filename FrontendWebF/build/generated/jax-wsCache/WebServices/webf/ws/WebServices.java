
package webf.ws;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.10-b140803.1500
 * Generated source version: 2.2
 * 
 */
@WebService(name = "WebServices", targetNamespace = "http://webservice.webf/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface WebServices {


    /**
     * 
     * @param parameter
     * @return
     *     returns webf.ws.LoginResponseType
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "login", targetNamespace = "http://webservice.webf/", className = "webf.ws.Login")
    @ResponseWrapper(localName = "loginResponse", targetNamespace = "http://webservice.webf/", className = "webf.ws.LoginResponse")
    @Action(input = "http://webservice.webf/WebServices/loginRequest", output = "http://webservice.webf/WebServices/loginResponse")
    public LoginResponseType login(
        @WebParam(name = "parameter", targetNamespace = "")
        LoginRequestType parameter);

    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "hello", targetNamespace = "http://webservice.webf/", className = "webf.ws.Hello")
    @ResponseWrapper(localName = "helloResponse", targetNamespace = "http://webservice.webf/", className = "webf.ws.HelloResponse")
    @Action(input = "http://webservice.webf/WebServices/helloRequest", output = "http://webservice.webf/WebServices/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

}