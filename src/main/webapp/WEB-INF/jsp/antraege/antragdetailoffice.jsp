<%-- 
    Document   : antragdetailchef
    Created on : 02.11.2011, 17:19:17
    Author     : aljona
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
    
    <!--  Ansicht des Urlaubsantrags fuer Office: kann Krankheitstage eintragen oder Antrag drucken -->
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="title" /></title>
    </head>
    
    <body>
        
        <spring:url var="formUrlPrefix" value="/web/urlaubsverwaltung" />
        
        <h1><spring:message code="antrag.title" /></h1>
            
        <table>
            <tr>
                <td>
                    <spring:message code="lastname" />:&nbsp;<c:out value="${antrag.person.lastName}" />
                </td>
                <td>
                    <spring:message code="firstname" />:&nbsp;<c:out value="${antrag.person.firstName}" />
                </td> 
                <td colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <spring:message code="antrag.anspruch" />:
                </td>    
                <td>    
                    <c:out value="${antrag.person.remainingVacationDays}" />&nbsp;<spring:message code="days" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                  <spring:message code="resturlaub" />  
                </td>
                <td>
                    <c:out value="${antrag.person.restUrlaub}" />:&nbsp;<spring:message code="resturlaub" />&nbsp;<spring:message code="days" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                   <spring:message code="antrag.used" />:&nbsp; 
                </td>
                <td>
                    <c:out value="${antrag.person.usedVacationDays}" />&nbsp;+&nbsp;<c:out value="${antrag.person.usedRestUrlaub}" />&nbsp;<spring:message code="days" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="5">
                    <spring:message code="antrag.antrag" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <c:out value="${antrag.vacationType}" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <label for="grund"><spring:message code='antrag.reason' />:</label>
                </td>
                <td>
                    <c:out value="${antrag.reason}" />
                </td>
            </tr>
            <tr>
                <td>
                   <label for="vertreter"><spring:message code='antrag.vertreter' />:</label> 
                </td>
                <td colspan="2">
                    <c:out value="${antrag.vertreter}" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <label for="anschrift"><spring:message code='antrag.anschrift' />:</label>
                </td>
                <td colspan="4">
                    <c:out value="${antrag.anschrift}" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="telefon"><spring:message code='antrag.phone' />:</label>
                </td>
                <td colspan="4">
                    <c:out value="${antrag.phone}" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <spring:message code='antrag.ort' />&nbsp;<c:out value="${antrag.antragsDate}" />
                </td>
                <td>&nbsp;</td>
                <td colspan="2">
                    <spring:message code='antrag.ort' />&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <c:out value="${antrag.person.sign}" />
                </td>
                <td>&nbsp;</td>
                <td colspan="2">
                    <c:out value="${antrag.boss.sign}" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <spring:message code='antrag.sign' />  
                </td>
                <td>&nbsp;</td>
                <td colspan="2">
                    <spring:message code='antrag.sign.chef' /> 
                </td>
            </tr>
            
        </table>
                
        <!--    Button um Antrag zu drucken      -->
        
        <!--    Button um Antrag zu editieren    -->
        
    </body>
    
</html>