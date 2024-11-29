--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 4, 2, 68, 69);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 2, 0, 70, 71);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 2, 1, 69, 71);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 1, 0, 68, 70);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 3, 2, 69, 72);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 2, 0, 71, 73);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 2, 1, 70, 74);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 2, 0, 68, 75);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 2, 1, 71, 76);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 1, 0, 73, 77);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 3, 2, 70, 78);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 2, 0, 74, 79);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 2, 1, 69, 80);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 2, 1, 72, 81);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 1, 75, 82);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 4, 3, 68, 83);
INSERT INTO public.games VALUES (49, 2014, 'Final', 1, 0, 84, 83);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 3, 0, 85, 74);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 1, 0, 83, 85);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 7, 1, 84, 74);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 1, 0, 85, 86);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 1, 0, 83, 70);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 2, 1, 74, 76);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 1, 0, 84, 68);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 2, 1, 74, 87);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 2, 0, 76, 75);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 0, 68, 88);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 1, 84, 89);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 2, 1, 85, 79);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 1, 86, 90);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 1, 0, 83, 77);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 1, 70, 91);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (68, 'France');
INSERT INTO public.teams VALUES (69, 'Croatia');
INSERT INTO public.teams VALUES (70, 'Belgium');
INSERT INTO public.teams VALUES (71, 'England');
INSERT INTO public.teams VALUES (72, 'Russia');
INSERT INTO public.teams VALUES (73, 'Sweden');
INSERT INTO public.teams VALUES (74, 'Brazil');
INSERT INTO public.teams VALUES (75, 'Uruguay');
INSERT INTO public.teams VALUES (76, 'Colombia');
INSERT INTO public.teams VALUES (77, 'Switzerland');
INSERT INTO public.teams VALUES (78, 'Japan');
INSERT INTO public.teams VALUES (79, 'Mexico');
INSERT INTO public.teams VALUES (80, 'Denmark');
INSERT INTO public.teams VALUES (81, 'Spain');
INSERT INTO public.teams VALUES (82, 'Portugal');
INSERT INTO public.teams VALUES (83, 'Argentina');
INSERT INTO public.teams VALUES (84, 'Germany');
INSERT INTO public.teams VALUES (85, 'Netherlands');
INSERT INTO public.teams VALUES (86, 'Costa Rica');
INSERT INTO public.teams VALUES (87, 'Chile');
INSERT INTO public.teams VALUES (88, 'Nigeria');
INSERT INTO public.teams VALUES (89, 'Algeria');
INSERT INTO public.teams VALUES (90, 'Greece');
INSERT INTO public.teams VALUES (91, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 91, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

