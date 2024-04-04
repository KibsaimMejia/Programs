package com.restaurant;
import io.muserver.*;
import org.json.JSONArray;
import org.json.JSONObject;

import java.time.LocalDate;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

public class RestaurantBookingApplication {

    private static final Map<LocalDate, List<Booking>> bookings = new ConcurrentHashMap<>();

    public static void main(String[] args) {
        MuServer server = MuServerBuilder.httpServer().withHttpPort(8080)
                .addHandler(Method.GET, "/bookings/{date}", (request, response, pathParams) -> {
                    LocalDate date = LocalDate.parse(pathParams.get("date"));
                    List<Booking> bookingsForDate = bookings.getOrDefault(date, Collections.emptyList());
                    JSONArray bookingsJson = new JSONArray(bookingsForDate);
                    response.contentType("application/json");
                    response.write(bookingsJson.toString());
                })
                .addHandler(Method.POST, "/bookings", (request, response, pathParams) -> {
                    JSONObject bookingRequest = new JSONObject(request.readBodyAsString());
                    Booking booking = new Booking(bookingRequest.getString("customerName"),
                            bookingRequest.getInt("tableSize"),
                            LocalDate.parse(bookingRequest.getString("date")),
                            bookingRequest.getString("time"));
                    bookings.computeIfAbsent(booking.date, k -> new ArrayList<>()).add(booking);
                    response.status(201);
                    response.write("{}");
                })
                .start();
        System.out.println("Started server at " + server.uri());
    }

    static class Booking {
        String customerName;
        int tableSize;
        LocalDate date;
        String time;

        public Booking(String customerName, int tableSize, LocalDate date, String time) {
            this.customerName = customerName;
            this.tableSize = tableSize;
            this.date = date;
            this.time = time;
        }

        public JSONObject toJSON() {
            return new JSONObject()
                    .put("customerName", customerName)
                    .put("tableSize", tableSize)
                    .put("date", date.toString())
                    .put("time", time);
        }
    }
}
