-- MySQL Schema File

-- Creating Table: awards_coaches
CREATE TABLE awards_coaches (
    `index` BIGINT,
    id BIGINT,
    year BIGINT,
    `coachID` TEXT,
    award TEXT,
    `lgID` TEXT,
    note TEXT
);

-- Creating Table: awards_players
CREATE TABLE awards_players (
    `index` BIGINT,
    `playerID` BIGINT,
    award TEXT,
    year BIGINT,
    `lgID` TEXT,
    note TEXT,
    pos TEXT
);

-- Creating Table: coaches
CREATE TABLE coaches (
    `index` BIGINT,
    `coachID` TEXT,
    year BIGINT,
    `tmID` BIGINT,
    `lgID` TEXT,
    stint BIGINT,
    won DOUBLE,
    lost DOUBLE,
    post_wins DOUBLE,
    post_losses DOUBLE
);

-- Creating Table: draft
CREATE TABLE draft (
    `index` BIGINT,
    id BIGINT,
    `draftYear` BIGINT,
    `draftRound` BIGINT,
    `draftSelection` BIGINT,
    `draftOverall` BIGINT,
    `tmID` BIGINT,
    `firstName` TEXT,
    `lastName` TEXT,
    `suffixName` TEXT,
    `playerID` TEXT,
    `draftFrom` TEXT,
    `lgID` TEXT
);

-- Creating Table: player_allstar
CREATE TABLE player_allstar (
    `index` BIGINT,
    `playerID` BIGINT,
    last_name TEXT,
    first_name TEXT,
    season_id BIGINT,
    conference TEXT,
    league_id TEXT,
    games_played BIGINT,
    minutes BIGINT,
    points DOUBLE,
    o_rebounds DOUBLE,
    d_rebounds DOUBLE,
    rebounds DOUBLE,
    assists DOUBLE,
    steals DOUBLE,
    blocks DOUBLE,
    turnovers DOUBLE,
    personal_fouls DOUBLE,
    fg_attempted DOUBLE,
    fg_made DOUBLE,
    ft_attempted DOUBLE,
    ft_made DOUBLE,
    three_attempted DOUBLE,
    three_made DOUBLE
);

-- Creating Table: players
CREATE TABLE players (
    `index` BIGINT,
    `playerID` BIGINT,
    `useFirst` TEXT,
    `firstName` TEXT,
    `middleName` TEXT,
    `lastName` TEXT,
    `nameGiven` TEXT,
    `fullGivenName` TEXT,
    `nameSuffix` TEXT,
    `nameNick` TEXT,
    pos TEXT,
    firstseason DOUBLE,
    lastseason DOUBLE,
    height DOUBLE,
    weight DOUBLE,
    college TEXT,
    `collegeOther` TEXT,
    `birthDate` TEXT,
    `birthCity` TEXT,
    `birthState` TEXT,
    `birthCountry` TEXT,
    `highSchool` TEXT,
    `hsCity` TEXT,
    `hsState` TEXT,
    `hsCountry` TEXT,
    `deathDate` TEXT,
    race TEXT
);

-- Creating Table: players_teams
CREATE TABLE players_teams (
    `index` BIGINT,
    id BIGINT,
    `playerID` BIGINT,
    year BIGINT,
    stint BIGINT,
    `tmID` BIGINT,
    `lgID` TEXT,
    `GP` BIGINT,
    `GS` BIGINT,
    minutes BIGINT,
    points BIGINT,
    `oRebounds` BIGINT,
    `dRebounds` BIGINT,
    rebounds BIGINT,
    assists BIGINT,
    steals BIGINT,
    blocks BIGINT,
    turnovers BIGINT,
    `PF` BIGINT,
    `fgAttempted` BIGINT,
    `fgMade` BIGINT,
    `ftAttempted` BIGINT,
    `ftMade` BIGINT,
    `threeAttempted` BIGINT,
    `threeMade` BIGINT,
    `PostGP` BIGINT,
    `PostGS` BIGINT,
    `PostMinutes` BIGINT,
    `PostPoints` BIGINT,
    `PostoRebounds` BIGINT,
    `PostdRebounds` BIGINT,
    `PostRebounds` BIGINT,
    `PostAssists` BIGINT,
    `PostSteals` BIGINT,
    `PostBlocks` BIGINT,
    `PostTurnovers` BIGINT,
    `PostPF` BIGINT,
    `PostfgAttempted` BIGINT,
    `PostfgMade` BIGINT,
    `PostftAttempted` BIGINT,
    `PostftMade` BIGINT,
    `PostthreeAttempted` BIGINT,
    `PostthreeMade` BIGINT,
    note TEXT
);

-- Creating Table: series_post
CREATE TABLE series_post (
    `index` BIGINT,
    id BIGINT,
    year BIGINT,
    round TEXT,
    series TEXT,
    `tmIDWinner` BIGINT,
    `lgIDWinner` TEXT,
    `tmIDLoser` DOUBLE,
    `lgIDLoser` TEXT,
    `W` BIGINT,
    `L` BIGINT
);

-- Creating Table: teams
CREATE TABLE teams (
    `index` BIGINT,
    year BIGINT,
    `lgID` TEXT,
    `tmID` BIGINT,
    `franchID` TEXT,
    `confID` TEXT,
    `divID` TEXT,
    rank BIGINT,
    `confRank` BIGINT,
    playoff TEXT,
    name TEXT,
    o_fgm BIGINT,
    o_fga BIGINT,
    o_ftm BIGINT,
    o_fta BIGINT,
    o_3pm BIGINT,
    o_3pa BIGINT,
    o_oreb BIGINT,
    o_dreb BIGINT,
    o_reb BIGINT,
    o_asts BIGINT,
    o_pf BIGINT,
    o_stl BIGINT,
    o_to BIGINT,
    o_blk BIGINT,
    o_pts BIGINT,
    d_fgm BIGINT,
    d_fga BIGINT,
    d_ftm BIGINT,
    d_fta BIGINT,
    d_3pm BIGINT,
    d_3pa BIGINT,
    d_oreb BIGINT,
    d_dreb BIGINT,
    d_reb BIGINT,
    d_asts BIGINT,
    d_pf BIGINT,
    d_stl BIGINT,
    d_to BIGINT,
    d_blk BIGINT,
    d_pts BIGINT,
    `o_tmRebound` BIGINT,
    `d_tmRebound` BIGINT,
    `homeWon` BIGINT,
    `homeLost` BIGINT,
    `awayWon` BIGINT,
    `awayLost` BIGINT,
    `neutWon` BIGINT,
    `neutLoss` BIGINT,
    `confWon` BIGINT,
    `confLoss` BIGINT,
    `divWon` BIGINT,
    `divLoss` BIGINT,
    pace BIGINT,
    won BIGINT,
    lost BIGINT,
    games BIGINT,
    min DOUBLE,
    arena TEXT,
    attendance BIGINT,
    `bbtmID` TEXT
);

-- Creating Indexes
CREATE INDEX awards_coaches_coachid_index ON awards_coaches (`coachID`);
CREATE INDEX awards_players_playerid_index ON awards_players (`playerID`);
CREATE INDEX coaches_coachid_index ON coaches (`coachID`);
CREATE INDEX coaches_tmid_index ON coaches (`tmID`);
CREATE INDEX draft_tmid_index ON draft (`tmID`);
CREATE INDEX ix_awards_coaches_index ON awards_coaches (`index`);
CREATE INDEX ix_awards_players_index ON awards_players (`index`);
CREATE INDEX ix_coaches_index ON coaches (`index`);
CREATE INDEX ix_draft_index ON draft (`index`);
CREATE INDEX ix_player_allstar_index ON player_allstar (`index`);
CREATE INDEX ix_players_index ON players (`index`);
CREATE INDEX ix_players_teams_index ON players_teams (`index`);
CREATE INDEX ix_series_post_index ON series_post (`index`);
CREATE INDEX ix_teams_index ON teams (`index`);
CREATE INDEX player_allstar_playerid_index ON player_allstar (`playerID`);
CREATE INDEX players_playerid_index ON players (`playerID`);
CREATE INDEX players_teams_playerid_index ON players_teams (`playerID`);
CREATE INDEX players_teams_tmid_index ON players_teams (`tmID`);
CREATE INDEX series_post_tmidloser_index ON series_post (`tmIDLoser`);
CREATE INDEX series_post_tmidwinner_index ON series_post (`tmIDWinner`);
CREATE INDEX teams_tmid_index ON teams (`tmID`);
