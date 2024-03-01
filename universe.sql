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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: city; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.city (
    city_id integer NOT NULL,
    name character varying(30) NOT NULL,
    width integer,
    length integer,
    age numeric NOT NULL
);


ALTER TABLE public.city OWNER TO freecodecamp;

--
-- Name: city_city_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_city_id_seq OWNER TO freecodecamp;

--
-- Name: city_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    width integer,
    length integer,
    age numeric NOT NULL,
    color text,
    dead boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    width integer,
    length integer,
    age numeric NOT NULL,
    color text,
    dead boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    width integer,
    length integer,
    age numeric NOT NULL,
    color text,
    dead boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    width integer,
    length integer,
    age numeric NOT NULL,
    color text,
    dead boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: city city_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.city VALUES (1, 'Cletus', 3245, 345, 34534543);
INSERT INTO public.city VALUES (2, 'Boone', 345, 45, 4564564);
INSERT INTO public.city VALUES (3, 'Harper', 34, 34, 34343432);
INSERT INTO public.city VALUES (4, 'Naomi', 45, 546, 46546546);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MilkyWay', 5, 32, 1000000000, 'black', false);
INSERT INTO public.galaxy VALUES (2, 'MagellanicCloud', 6, 6, 23465643, 'black', false);
INSERT INTO public.galaxy VALUES (3, 'AndromedaGalaxy', 345, 345, 23457634534534, 'black', false);
INSERT INTO public.galaxy VALUES (4, 'AntennaeGalaxy', 556345, 3445, 4563456546, 'green', false);
INSERT INTO public.galaxy VALUES (5, 'BearPaw', 4543, 34543, 34534563453, 'black', false);
INSERT INTO public.galaxy VALUES (6, 'BlackEye', 3453, 3435, 343686634, 'black', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'BOB', 1, 345, 3254345, 243324234, 'blue', true);
INSERT INTO public.moon VALUES (2, 'STEVE', 2, 23, 23, 3456547, 'green', true);
INSERT INTO public.moon VALUES (3, 'TITUS', 2, 23, 23, 34365, 'red', false);
INSERT INTO public.moon VALUES (4, 'CHRISTINE', 2, 324, 32534, 34523423, 'blue', true);
INSERT INTO public.moon VALUES (5, 'DANA', 2, 34, 34, 234324, 'red', true);
INSERT INTO public.moon VALUES (6, 'DAVID', 2, 456, 45, 456456, 'green', false);
INSERT INTO public.moon VALUES (7, 'GREED', 2, 45, 45, 3453454, 'green', true);
INSERT INTO public.moon VALUES (8, 'DEW', 2, 456, 345, 34534543, 'blue', true);
INSERT INTO public.moon VALUES (9, 'DOG', 2, 34, 34, 56756787, 'black', false);
INSERT INTO public.moon VALUES (10, 'CAT', 3, 67, 345, 34534534, 'black', false);
INSERT INTO public.moon VALUES (11, 'MOM', 3, 45, 45, 3453534, 'pink', false);
INSERT INTO public.moon VALUES (12, 'DAD', 3, 45, 45, 344534, 'blue', false);
INSERT INTO public.moon VALUES (13, 'HOUSE', 3, 56, 56, 456456, 'yellow', true);
INSERT INTO public.moon VALUES (14, 'HUBBY', 8, 345, 43534, 4565464545654, 'white', false);
INSERT INTO public.moon VALUES (15, 'CAPTAIN', 8, 45, 456, 234234, 'blue', false);
INSERT INTO public.moon VALUES (16, 'HELO', 8, 56, 546, 3245345, 'black', true);
INSERT INTO public.moon VALUES (17, 'POOP', 10, 324, 345, 4534543, 'brown', true);
INSERT INTO public.moon VALUES (18, 'CALENDAR', 10, 345, 345, 345345345345, 'blue', false);
INSERT INTO public.moon VALUES (19, 'BOOK', 10, 234, 234, 23423432432, 'blue', true);
INSERT INTO public.moon VALUES (20, 'SCREEN', 10, 34, 34, 23423423, 'blue', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Pluto', 2, 34, 234, 23425452, 'orange', false);
INSERT INTO public.planet VALUES (3, 'Haumea', 3, 34, 34, 3434545366, 'gray', false);
INSERT INTO public.planet VALUES (4, 'Makemake', 4, 54, 45, 324565, 'red', false);
INSERT INTO public.planet VALUES (5, 'Eris', 5, 234, 234, 3456676, 'black', true);
INSERT INTO public.planet VALUES (6, 'Earth', 6, 573456, 345345, 343452345, 'blue', false);
INSERT INTO public.planet VALUES (7, 'Jupiter', 1, 234, 45654, 2342342343, 'orange', true);
INSERT INTO public.planet VALUES (1, 'Ceres', 1, 345, 63, 345345345, 'gray', true);
INSERT INTO public.planet VALUES (8, 'Saturn', 1, 234, 465543, 4534345, 'yellow', false);
INSERT INTO public.planet VALUES (9, 'Venus', 2, 976, 67867, 6756876574564, 'orange', false);
INSERT INTO public.planet VALUES (10, 'Mars', 3, 234, 23432, 56456345, 'red', true);
INSERT INTO public.planet VALUES (11, 'Uranus', 3, 678, 6756, 34534534, 'blue', false);
INSERT INTO public.planet VALUES (12, 'Neptune', 3, 214, 234, 23421344564, 'blue', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'betegeuse', 1, 43, 43, 546346453, 'blue', false);
INSERT INTO public.star VALUES (2, 'canopus', 2, 342, 234, 56345345, 'green', false);
INSERT INTO public.star VALUES (3, 'antarus', 3, 3423, 32424, 45645645345, 'white', true);
INSERT INTO public.star VALUES (4, 'rigel', 4, 34, 324545, 234235634634, 'green', false);
INSERT INTO public.star VALUES (5, 'vega', 5, 234, 234, 234554675, 'yellow', false);
INSERT INTO public.star VALUES (6, 'arcturus', 6, 34, 43, 3463456325, 'white', true);


--
-- Name: city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.city_city_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: city city_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_name_key UNIQUE (name);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

