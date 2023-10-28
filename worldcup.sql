--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (193, 2018, 'Final', 436, 437, 4, 2);
INSERT INTO public.games VALUES (194, 2018, 'Third Place', 438, 439, 2, 0);
INSERT INTO public.games VALUES (195, 2018, 'Semi-Final', 437, 439, 2, 1);
INSERT INTO public.games VALUES (196, 2018, 'Semi-Final', 436, 438, 1, 0);
INSERT INTO public.games VALUES (197, 2018, 'Quarter-Final', 437, 440, 3, 2);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 439, 441, 2, 0);
INSERT INTO public.games VALUES (199, 2018, 'Quarter-Final', 438, 442, 2, 1);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 436, 443, 2, 0);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 439, 444, 2, 1);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 441, 445, 1, 0);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 438, 446, 3, 2);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 442, 447, 2, 0);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 437, 448, 2, 1);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 440, 449, 2, 1);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 443, 450, 2, 1);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 436, 451, 4, 3);
INSERT INTO public.games VALUES (209, 2014, 'Final', 452, 451, 1, 0);
INSERT INTO public.games VALUES (210, 2014, 'Third Place', 453, 442, 3, 0);
INSERT INTO public.games VALUES (211, 2014, 'Semi-Final', 451, 453, 1, 0);
INSERT INTO public.games VALUES (212, 2014, 'Semi-Final', 452, 442, 7, 1);
INSERT INTO public.games VALUES (213, 2014, 'Quarter-Final', 453, 454, 1, 0);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 451, 438, 1, 0);
INSERT INTO public.games VALUES (215, 2014, 'Quarter-Final', 442, 444, 2, 1);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 452, 436, 1, 0);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 442, 455, 2, 1);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 444, 443, 2, 0);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 436, 456, 2, 0);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 452, 457, 2, 1);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 453, 447, 2, 1);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 454, 458, 2, 1);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 451, 445, 1, 0);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 438, 459, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (436, 'France');
INSERT INTO public.teams VALUES (437, 'Croatia');
INSERT INTO public.teams VALUES (438, 'Belgium');
INSERT INTO public.teams VALUES (439, 'England');
INSERT INTO public.teams VALUES (440, 'Russia');
INSERT INTO public.teams VALUES (441, 'Sweden');
INSERT INTO public.teams VALUES (442, 'Brazil');
INSERT INTO public.teams VALUES (443, 'Uruguay');
INSERT INTO public.teams VALUES (444, 'Colombia');
INSERT INTO public.teams VALUES (445, 'Switzerland');
INSERT INTO public.teams VALUES (446, 'Japan');
INSERT INTO public.teams VALUES (447, 'Mexico');
INSERT INTO public.teams VALUES (448, 'Denmark');
INSERT INTO public.teams VALUES (449, 'Spain');
INSERT INTO public.teams VALUES (450, 'Portugal');
INSERT INTO public.teams VALUES (451, 'Argentina');
INSERT INTO public.teams VALUES (452, 'Germany');
INSERT INTO public.teams VALUES (453, 'Netherlands');
INSERT INTO public.teams VALUES (454, 'Costa Rica');
INSERT INTO public.teams VALUES (455, 'Chile');
INSERT INTO public.teams VALUES (456, 'Nigeria');
INSERT INTO public.teams VALUES (457, 'Algeria');
INSERT INTO public.teams VALUES (458, 'Greece');
INSERT INTO public.teams VALUES (459, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 459, true);


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

