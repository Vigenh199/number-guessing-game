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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    guesses integer NOT NULL,
    game_id integer NOT NULL,
    user_id integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (110, 1, 11);
INSERT INTO public.games VALUES (312, 2, 11);
INSERT INTO public.games VALUES (107, 3, 12);
INSERT INTO public.games VALUES (111, 4, 12);
INSERT INTO public.games VALUES (506, 5, 11);
INSERT INTO public.games VALUES (707, 6, 11);
INSERT INTO public.games VALUES (939, 7, 11);
INSERT INTO public.games VALUES (254, 8, 13);
INSERT INTO public.games VALUES (318, 9, 13);
INSERT INTO public.games VALUES (911, 10, 14);
INSERT INTO public.games VALUES (777, 11, 14);
INSERT INTO public.games VALUES (114, 12, 13);
INSERT INTO public.games VALUES (936, 13, 13);
INSERT INTO public.games VALUES (351, 14, 13);
INSERT INTO public.games VALUES (757, 15, 15);
INSERT INTO public.games VALUES (711, 16, 15);
INSERT INTO public.games VALUES (344, 17, 16);
INSERT INTO public.games VALUES (919, 18, 16);
INSERT INTO public.games VALUES (984, 19, 15);
INSERT INTO public.games VALUES (780, 20, 15);
INSERT INTO public.games VALUES (966, 21, 15);
INSERT INTO public.games VALUES (10, 22, 17);
INSERT INTO public.games VALUES (427, 23, 18);
INSERT INTO public.games VALUES (373, 24, 18);
INSERT INTO public.games VALUES (923, 25, 19);
INSERT INTO public.games VALUES (688, 26, 19);
INSERT INTO public.games VALUES (458, 27, 18);
INSERT INTO public.games VALUES (275, 28, 18);
INSERT INTO public.games VALUES (942, 29, 18);
INSERT INTO public.games VALUES (10, 30, 17);
INSERT INTO public.games VALUES (10, 31, 17);
INSERT INTO public.games VALUES (445, 32, 20);
INSERT INTO public.games VALUES (586, 33, 20);
INSERT INTO public.games VALUES (105, 34, 21);
INSERT INTO public.games VALUES (550, 35, 21);
INSERT INTO public.games VALUES (950, 36, 20);
INSERT INTO public.games VALUES (180, 37, 20);
INSERT INTO public.games VALUES (565, 38, 20);
INSERT INTO public.games VALUES (419, 39, 22);
INSERT INTO public.games VALUES (812, 40, 22);
INSERT INTO public.games VALUES (310, 41, 23);
INSERT INTO public.games VALUES (981, 42, 23);
INSERT INTO public.games VALUES (920, 43, 22);
INSERT INTO public.games VALUES (783, 44, 22);
INSERT INTO public.games VALUES (926, 45, 22);
INSERT INTO public.games VALUES (336, 46, 24);
INSERT INTO public.games VALUES (905, 47, 24);
INSERT INTO public.games VALUES (155, 48, 25);
INSERT INTO public.games VALUES (95, 49, 25);
INSERT INTO public.games VALUES (29, 50, 24);
INSERT INTO public.games VALUES (975, 51, 24);
INSERT INTO public.games VALUES (163, 52, 24);
INSERT INTO public.games VALUES (884, 53, 26);
INSERT INTO public.games VALUES (54, 54, 26);
INSERT INTO public.games VALUES (881, 55, 27);
INSERT INTO public.games VALUES (334, 56, 27);
INSERT INTO public.games VALUES (823, 57, 26);
INSERT INTO public.games VALUES (495, 58, 26);
INSERT INTO public.games VALUES (352, 59, 26);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1664291170519');
INSERT INTO public.users VALUES (2, 'user_1664291170518');
INSERT INTO public.users VALUES (3, 'user_1664291262632');
INSERT INTO public.users VALUES (4, 'user_1664291262631');
INSERT INTO public.users VALUES (5, 'user_1664291322129');
INSERT INTO public.users VALUES (6, 'user_1664291322128');
INSERT INTO public.users VALUES (7, 'user_1664291344139');
INSERT INTO public.users VALUES (8, 'user_1664291344138');
INSERT INTO public.users VALUES (9, 'user_1664291395688');
INSERT INTO public.users VALUES (10, 'user_1664291395687');
INSERT INTO public.users VALUES (11, 'user_1664291481178');
INSERT INTO public.users VALUES (12, 'user_1664291481177');
INSERT INTO public.users VALUES (13, 'user_1664291501867');
INSERT INTO public.users VALUES (14, 'user_1664291501866');
INSERT INTO public.users VALUES (15, 'user_1664291537646');
INSERT INTO public.users VALUES (16, 'user_1664291537645');
INSERT INTO public.users VALUES (17, 'kalrom');
INSERT INTO public.users VALUES (18, 'user_1664291747692');
INSERT INTO public.users VALUES (19, 'user_1664291747691');
INSERT INTO public.users VALUES (20, 'user_1664292027552');
INSERT INTO public.users VALUES (21, 'user_1664292027551');
INSERT INTO public.users VALUES (22, 'user_1664292061986');
INSERT INTO public.users VALUES (23, 'user_1664292061985');
INSERT INTO public.users VALUES (24, 'user_1664292078290');
INSERT INTO public.users VALUES (25, 'user_1664292078289');
INSERT INTO public.users VALUES (26, 'user_1664292117170');
INSERT INTO public.users VALUES (27, 'user_1664292117169');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 59, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

