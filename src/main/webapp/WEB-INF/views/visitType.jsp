<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 12.09.18
  Time: 12:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/WEB-INF/fragments/adminHeader.jsp"/>

<div class="specs">
    <h3>Pediatricians</h3>
    <div><p>A pediatrician is a doctor who specializes in the care of children</p>
        <form action="/admin/visit/add", method="get">
        <input type="text" value="Pediatrician" hidden name="spec">
        <input type="number" value="${patientId}" hidden name="patientId">
        <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Cardiologists</h3>
    <div><p>A cardiologist is a heart doctor. He or she is the one to visit if you feel a tightness in your chest and
        shortness of breath.</p>
        <form action="/admin/visit/add", method="get">
        <input type="text" value="Internist" hidden name="spec">
        <input type="number" value="${patientId}" hidden name="patientId">
        <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Allergists</h3>
    <div><p>An allergist is a doctor whose specialty is allergies. If you suspect that your cat is making you sneeze uncontrollably, you might want to see an allergist.</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Allergist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Surgeons</h3>
    <div><p>A surgeon is a kind of doctor who treats his patients by using his hands, often by performing surgery</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Surgeon" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Psychiatrists</h3>
    <div><p>A psychiatrist is a doctor who specializes in emotional, behavioral, or mental disorders</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Psychiatrist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Neurologist</h3>
    <div><p>a medical specialist in the nervous system and the disorders affecting it</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Neurologist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Pulmonologyst</h3>
    <div><p>a specialist in the anatomy, physiology, and pathology of the lungs</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Pulmonologyst" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Internist</h3>
    <div><p>a specialist in internal medicine for adults</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Internist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Oculist</h3>
    <div><p>a doctor who deals with eye disorders.</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Oculist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Gynecologist</h3>
    <div><p>a doctor who  deals with the diseases and routine physical care of the reproductive system of women </p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Gynecologist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Proctologist</h3>
    <div><p>a doctor dealing with the structure and diseases of the anus, rectum, and sigmoid colon </p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Proctologist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Dentist</h3>
    <div><p>a doctor who is qualified to treat diseases and other conditions that affect the teeth and gums, especially the repair and extraction of teeth and the insertion of artificial ones.</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Dentist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Dermatologist</h3>
    <div><p>a doctor who  diagnoses and treats skin disorders</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Dermatologist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>
    <h3>Anasthesiologist</h3>
    <div><p>Doctor trained in anesthesia and perioperative medicine.</p>
        <form action="/admin/visit/add", method="get">
            <input type="text" value="Anasthesiologist" hidden name="spec">
            <input type="number" value="${patientId}" hidden name="patientId">
            <input type="submit" value="Make appointment" />
        </form></div>

    <script src="/app.js"></script>
    <jsp:include page="/WEB-INF/fragments/adminFooter.jsp"/>
</html>
