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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    haas_life numeric NOT NULL,
    planet_type text NOT NULL,
    galaxy_types boolean NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    day boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_int_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_int_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_int_seq OWNER TO freecodecamp;

--
-- Name: galaxy_int_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_int_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    haas_life numeric NOT NULL,
    planet_type text NOT NULL,
    galaxy_types boolean NOT NULL,
    description boolean,
    is_spherical integer NOT NULL,
    day boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_int_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_int_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_int_seq OWNER TO freecodecamp;

--
-- Name: moon_int_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_int_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    haas_life numeric NOT NULL,
    planet_type text NOT NULL,
    galaxy_types boolean NOT NULL,
    description boolean,
    day boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_int_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_int_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_int_seq OWNER TO freecodecamp;

--
-- Name: planet_int_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_int_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    haas_life numeric NOT NULL,
    planet_type text NOT NULL,
    galaxy_types boolean NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    day boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_int_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_int_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_int_seq OWNER TO freecodecamp;

--
-- Name: star_int_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_int_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id character varying NOT NULL,
    haas_life integer NOT NULL,
    galaxy_type text NOT NULL,
    planet_type text NOT NULL,
    discription text NOT NULL,
    is_planet boolean NOT NULL,
    day boolean,
    name character varying,
    moon_id integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_int_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_int_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_int_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_int_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'moon', 2, 'not_planet', true, 'false', 10000000, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy', 2, 'none', true, 'true', NULL, true);
INSERT INTO public.galaxy VALUES (8, 'galaxy', 2, 'none', true, 'big', NULL, true);
INSERT INTO public.galaxy VALUES (9, 'space', 4, 'big', false, 'rocky', NULL, false);
INSERT INTO public.galaxy VALUES (10, 'space', 4, 'big', false, 'bright', NULL, false);
INSERT INTO public.galaxy VALUES (11, 'space', 4, 'big', false, 'beautiful', NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 2, 'not_planet', true, false, 100, NULL);
INSERT INTO public.moon VALUES (4, 'galaxy', 2, 'none', true, true, 200, true);
INSERT INTO public.moon VALUES (7, 'space', 4, 'big', false, NULL, 300, false);
INSERT INTO public.moon VALUES (9, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (10, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (11, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (12, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (13, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (14, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (15, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (16, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (17, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (18, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (19, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (20, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (21, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (22, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (23, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (24, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (25, 'moon', 4, 'space', true, NULL, 500, false);
INSERT INTO public.moon VALUES (26, 'moon', 4, 'space', true, NULL, 500, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'moon', 2, 'not_planet', true, true, NULL);
INSERT INTO public.planet VALUES (2, 'galaxy', 2, 'none', true, false, true);
INSERT INTO public.planet VALUES (5, 'planet', 2, 'none', true, NULL, true);
INSERT INTO public.planet VALUES (6, 'space', 4, 'big', false, NULL, false);
INSERT INTO public.planet VALUES (7, 'space', 4, 'many', false, NULL, false);
INSERT INTO public.planet VALUES (8, 'space', 4, 'bright', false, NULL, false);
INSERT INTO public.planet VALUES (9, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (10, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (11, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (12, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (13, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (14, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (15, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (16, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (17, 'space', 4, '8', false, NULL, false);
INSERT INTO public.planet VALUES (18, 'moon', 4, '8', true, NULL, false);
INSERT INTO public.planet VALUES (19, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (20, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (21, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (22, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (23, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (24, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (25, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (26, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (27, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (28, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (29, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (30, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (31, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (32, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (33, 'moon', 4, 'space', true, NULL, false);
INSERT INTO public.planet VALUES (34, 'moon', 4, 'space', true, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'moon', 2, 'not_planet', true, 'false', 900000000, NULL);
INSERT INTO public.star VALUES (3, 'moon', 2, 'not_planet', true, 'true', NULL, NULL);
INSERT INTO public.star VALUES (4, 'galaxy', 2, 'none', true, 'big', NULL, true);
INSERT INTO public.star VALUES (5, 'space', 4, 'big', false, 'high', NULL, false);
INSERT INTO public.star VALUES (7, 'space', 4, 'big', false, 'dark', NULL, false);
INSERT INTO public.star VALUES (8, 'space', 4, 'big', false, 'rocky', NULL, false);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('sun', 2, 'true', 'not_planet', 'brightest', false, NULL, NULL, NULL);
INSERT INTO public.sun VALUES ('galaxy', 2, 'false', 'none', 'false', true, true, NULL, NULL);
INSERT INTO public.sun VALUES ('sky', 2, 'null', 'none', 'false', true, true, NULL, NULL);


--
-- Name: galaxy_int_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_int_seq', 11, true);


--
-- Name: moon_int_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_int_seq', 26, true);


--
-- Name: planet_int_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_int_seq', 34, true);


--
-- Name: star_int_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_int_seq', 8, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_galaxy_type_key UNIQUE (galaxy_type);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- PostgreSQL database dump complete
--

