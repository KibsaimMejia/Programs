package com.noteapp;

import io.muserver.*;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

public class NoteApp {

    private static final List<JSONObject> notes = Collections.synchronizedList(new ArrayList<>());

    public static void main(String[] args) {
        MuServer server = MuServerBuilder.httpServer().withHttpPort(8080)
                .addHandler(Method.GET, "/notes", (request, response, pathParams) -> {
                    JSONArray notesJson = new JSONArray(notes);
                    response.contentType("application/json");
                    response.write(notesJson.toString());
                })
                .addHandler(Method.POST, "/notes", (request, response, pathParams) -> {
                    JSONObject note = new JSONObject(request.readBodyAsString());
                    notes.add(note);
                    response.status(201);
                    response.write("{}");
                })
                .start();
        System.out.println("Server started at " + server.uri());
    }
}
