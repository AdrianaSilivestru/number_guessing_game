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
    games_played integer,
    best_game_score integer,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (0, 1000, 25);
INSERT INTO public.games VALUES (2, 3, 1);
INSERT INTO public.games VALUES (1, 2, 3);
INSERT INTO public.games VALUES (5, 84, 42);
INSERT INTO public.games VALUES (2, 971, 5);
INSERT INTO public.games VALUES (0, 0, 62);
INSERT INTO public.games VALUES (2, 183, 27);
INSERT INTO public.games VALUES (5, 606, 4);
INSERT INTO public.games VALUES (2, 2, 6);
INSERT INTO public.games VALUES (5, 196, 26);
INSERT INTO public.games VALUES (2, 550, 8);
INSERT INTO public.games VALUES (2, 124, 45);
INSERT INTO public.games VALUES (5, 94, 7);
INSERT INTO public.games VALUES (2, 2, 2);
INSERT INTO public.games VALUES (2, 293, 29);
INSERT INTO public.games VALUES (2, 566, 10);
INSERT INTO public.games VALUES (5, 292, 44);
INSERT INTO public.games VALUES (5, 70, 9);
INSERT INTO public.games VALUES (5, 126, 28);
INSERT INTO public.games VALUES (2, 242, 12);
INSERT INTO public.games VALUES (5, 347, 11);
INSERT INTO public.games VALUES (2, 557, 64);
INSERT INTO public.games VALUES (2, 762, 31);
INSERT INTO public.games VALUES (2, 64, 14);
INSERT INTO public.games VALUES (5, 179, 30);
INSERT INTO public.games VALUES (5, 278, 13);
INSERT INTO public.games VALUES (2, 64, 47);
INSERT INTO public.games VALUES (2, 794, 16);
INSERT INTO public.games VALUES (5, 55, 63);
INSERT INTO public.games VALUES (5, 63, 15);
INSERT INTO public.games VALUES (2, 234, 33);
INSERT INTO public.games VALUES (5, 327, 46);
INSERT INTO public.games VALUES (2, 513, 18);
INSERT INTO public.games VALUES (5, 114, 32);
INSERT INTO public.games VALUES (5, 95, 17);
INSERT INTO public.games VALUES (2, 758, 20);
INSERT INTO public.games VALUES (2, 376, 35);
INSERT INTO public.games VALUES (5, 23, 19);
INSERT INTO public.games VALUES (2, 621, 49);
INSERT INTO public.games VALUES (5, 507, 34);
INSERT INTO public.games VALUES (2, 726, 22);
INSERT INTO public.games VALUES (5, 407, 21);
INSERT INTO public.games VALUES (5, 33, 48);
INSERT INTO public.games VALUES (2, 418, 24);
INSERT INTO public.games VALUES (2, 63, 37);
INSERT INTO public.games VALUES (5, 172, 23);
INSERT INTO public.games VALUES (2, 602, 66);
INSERT INTO public.games VALUES (5, 6, 36);
INSERT INTO public.games VALUES (2, 880, 39);
INSERT INTO public.games VALUES (2, 642, 51);
INSERT INTO public.games VALUES (5, 40, 65);
INSERT INTO public.games VALUES (5, 657, 38);
INSERT INTO public.games VALUES (5, 468, 50);
INSERT INTO public.games VALUES (2, 784, 41);
INSERT INTO public.games VALUES (5, 105, 40);
INSERT INTO public.games VALUES (2, 840, 53);
INSERT INTO public.games VALUES (2, 800, 43);
INSERT INTO public.games VALUES (2, 749, 68);
INSERT INTO public.games VALUES (5, 99, 52);
INSERT INTO public.games VALUES (5, 299, 67);
INSERT INTO public.games VALUES (2, 309, 55);
INSERT INTO public.games VALUES (5, 450, 54);
INSERT INTO public.games VALUES (2, 64, 70);
INSERT INTO public.games VALUES (2, 122, 57);
INSERT INTO public.games VALUES (5, 417, 56);
INSERT INTO public.games VALUES (5, 386, 69);
INSERT INTO public.games VALUES (2, 89, 59);
INSERT INTO public.games VALUES (5, 195, 58);
INSERT INTO public.games VALUES (2, 11, 61);
INSERT INTO public.games VALUES (5, 17, 60);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'adriana');
INSERT INTO public.users VALUES (2, 'tanu');
INSERT INTO public.users VALUES (3, 'Nala');
INSERT INTO public.users VALUES (4, 'user_1723930870217');
INSERT INTO public.users VALUES (5, 'user_1723930870216');
INSERT INTO public.users VALUES (6, 'Ala');
INSERT INTO public.users VALUES (7, 'user_1723931110201');
INSERT INTO public.users VALUES (8, 'user_1723931110200');
INSERT INTO public.users VALUES (9, 'user_1723931228128');
INSERT INTO public.users VALUES (10, 'user_1723931228127');
INSERT INTO public.users VALUES (11, 'user_1723931266696');
INSERT INTO public.users VALUES (12, 'user_1723931266695');
INSERT INTO public.users VALUES (13, 'user_1723931285071');
INSERT INTO public.users VALUES (14, 'user_1723931285070');
INSERT INTO public.users VALUES (15, 'user_1723931543202');
INSERT INTO public.users VALUES (16, 'user_1723931543201');
INSERT INTO public.users VALUES (17, 'user_1723931545401');
INSERT INTO public.users VALUES (18, 'user_1723931545400');
INSERT INTO public.users VALUES (19, 'user_1723931547618');
INSERT INTO public.users VALUES (20, 'user_1723931547617');
INSERT INTO public.users VALUES (21, 'user_1723931552248');
INSERT INTO public.users VALUES (22, 'user_1723931552247');
INSERT INTO public.users VALUES (23, 'user_1723931554681');
INSERT INTO public.users VALUES (24, 'user_1723931554680');
INSERT INTO public.users VALUES (25, 'Tanu');
INSERT INTO public.users VALUES (26, 'user_1723931751141');
INSERT INTO public.users VALUES (27, 'user_1723931751140');
INSERT INTO public.users VALUES (28, 'user_1723931843530');
INSERT INTO public.users VALUES (29, 'user_1723931843529');
INSERT INTO public.users VALUES (30, 'user_1723931846493');
INSERT INTO public.users VALUES (31, 'user_1723931846492');
INSERT INTO public.users VALUES (32, 'user_1723931849264');
INSERT INTO public.users VALUES (33, 'user_1723931849263');
INSERT INTO public.users VALUES (34, 'user_1723931852093');
INSERT INTO public.users VALUES (35, 'user_1723931852092');
INSERT INTO public.users VALUES (36, 'user_1723931854461');
INSERT INTO public.users VALUES (37, 'user_1723931854460');
INSERT INTO public.users VALUES (38, 'user_1723931856596');
INSERT INTO public.users VALUES (39, 'user_1723931856595');
INSERT INTO public.users VALUES (40, 'user_1723931858989');
INSERT INTO public.users VALUES (41, 'user_1723931858988');
INSERT INTO public.users VALUES (42, 'user_1723931880218');
INSERT INTO public.users VALUES (43, 'user_1723931880217');
INSERT INTO public.users VALUES (44, 'user_1723932154223');
INSERT INTO public.users VALUES (45, 'user_1723932154222');
INSERT INTO public.users VALUES (46, 'user_1723932160578');
INSERT INTO public.users VALUES (47, 'user_1723932160577');
INSERT INTO public.users VALUES (48, 'user_1723932164158');
INSERT INTO public.users VALUES (49, 'user_1723932164157');
INSERT INTO public.users VALUES (50, 'user_1723932166295');
INSERT INTO public.users VALUES (51, 'user_1723932166294');
INSERT INTO public.users VALUES (52, 'user_1723932169851');
INSERT INTO public.users VALUES (53, 'user_1723932169850');
INSERT INTO public.users VALUES (54, 'user_1723932178312');
INSERT INTO public.users VALUES (55, 'user_1723932178311');
INSERT INTO public.users VALUES (56, 'user_1723932391881');
INSERT INTO public.users VALUES (57, 'user_1723932391880');
INSERT INTO public.users VALUES (58, 'user_1723932394472');
INSERT INTO public.users VALUES (59, 'user_1723932394471');
INSERT INTO public.users VALUES (60, 'user_1723932396612');
INSERT INTO public.users VALUES (61, 'user_1723932396611');
INSERT INTO public.users VALUES (62, 'ana');
INSERT INTO public.users VALUES (63, 'user_1723932956713');
INSERT INTO public.users VALUES (64, 'user_1723932956712');
INSERT INTO public.users VALUES (65, 'user_1723933078855');
INSERT INTO public.users VALUES (66, 'user_1723933078854');
INSERT INTO public.users VALUES (67, 'user_1723933082385');
INSERT INTO public.users VALUES (68, 'user_1723933082384');
INSERT INTO public.users VALUES (69, 'user_1723933084993');
INSERT INTO public.users VALUES (70, 'user_1723933084992');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 70, true);


--
-- Name: games games_user_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_key UNIQUE (user_id);


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

