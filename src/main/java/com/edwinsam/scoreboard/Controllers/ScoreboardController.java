package com.edwinsam.scoreboard.Controllers;


import com.edwinsam.scoreboard.DAOs.GameDAO;
import com.edwinsam.scoreboard.Models.Game;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@CrossOrigin
@RestController
public class ScoreboardController {

    GameDAO gameDAO;

    public ScoreboardController(GameDAO gameDAO) {
        this.gameDAO = gameDAO;
    }

    @GetMapping (path="/games")
    public List<Game> getAllGamesAllTime() {
        return this.gameDAO.getAllGamesAllTime();
    }

    @GetMapping(path="/games/this-month")
    public List<Game> getAllGamesThisMonth() {
        return this.gameDAO.getAllGamesThisMonth();
    }

    @GetMapping (path="/games/by-date")
    public List<Game> getAllGamesByDate(LocalDate startDate, LocalDate endDate) {
        return null;
    }

    @GetMapping(path="/games/{name}")
    public List<Game> getSpecificGameAllTime(@PathVariable String name) {
        return this.gameDAO.getSpecificGameAllTime(name);
    }

    @GetMapping(path="/games/{name}/this-month")
    public List<Game> getSpecificGameThisMonth (@PathVariable String name) {
        return this.gameDAO.getSpecificGameThisMonth(name);
    }

    @GetMapping(path="/games/{name}/by-date")
    public List<Game> getSpecificGameByDate(@PathVariable String name, @RequestBody LocalDate startDate, @RequestBody LocalDate endDate) {
        return this.gameDAO.getSpecificGameByDate(name, startDate, endDate);
    }

    @PostMapping (path="/games")
    public void addNewGame(@RequestBody Game game) {
        this.gameDAO.addNewGame(game);
    }

}
