package pl.coderslab.healthclinic.Controllers.controllers;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class test {
    public static void main(String[] args) {
        DateTimeFormatter  dateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy hh:mm a");
        System.out.println(LocalDateTime.now().format(dateTimeFormatter));
    }

}
