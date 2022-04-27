package com.edwinsam.scoreboard.DAOs;

import com.edwinsam.scoreboard.Models.Game;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

public interface GameDAO {

    List<Game> getAllGames();
    List<Game> filterGamesByName(List<Game> games, String name);
    List<Game> filterGamesByDate(List<Game> games, LocalDate startDate, LocalDate endDate);


    List<Game> getAllGamesAllTime();
    List<Game> getAllGamesThisMonth();
    List<Game> getAllGamesByDate(LocalDate startDate, LocalDate endDate);
    List<Game> getSpecificGameAllTime(String gameName);
    List<Game> getSpecificGameThisMonth(String gameName);
    List<Game> getSpecificGameByDate(String gameName, LocalDate startDate, LocalDate endDate);

    void getPointsALlTime();
    void getPointsThisMonth();
    void getPointsByDate(LocalDate startDate, LocalDate endDate);

    void addNewGame(Game game);

    void printGameDetails(List<Game> games);
    Map calculateRecord(List<Game> games);
    void printRecord(Map<String, Integer> record);

    Map calculateScore(List<Game> games);
    void printScore(Map<String, Integer> scores);


}
