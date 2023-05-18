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
    age numeric,
    area integer,
    name character varying(255) NOT NULL,
    shape text
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
    planet_id integer,
    mass numeric,
    name character varying(255) NOT NULL,
    color character varying(255)
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
-- Name: more_info_about_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info_about_planet (
    more_info_about_planet_id integer NOT NULL,
    planet_id integer,
    description text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.more_info_about_planet OWNER TO freecodecamp;

--
-- Name: more_info_about_planet_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_about_planet_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_about_planet_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_about_planet_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_about_planet_info_id_seq OWNED BY public.more_info_about_planet.more_info_about_planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    has_life boolean,
    has_water boolean,
    mass numeric,
    name character varying(255) NOT NULL,
    star_id integer,
    material character varying(255)
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
    galaxy_id integer,
    name character varying(255) NOT NULL,
    area integer,
    type text,
    mass numeric
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info_about_planet more_info_about_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_about_planet ALTER COLUMN more_info_about_planet_id SET DEFAULT nextval('public.more_info_about_planet_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 2300000.5, 24242, 'a-galaxy-far-far-away', 'elliptical');
INSERT INTO public.galaxy VALUES (2, 300000000.89, 2441124, 'a-galaxy-far-far-far-away', 'spiral');
INSERT INTO public.galaxy VALUES (3, 400000.22, 2423423, 'a-galaxy-far-far-far-far-away', 'ring');
INSERT INTO public.galaxy VALUES (4, 2131312, 213232, 'galaxy1', 'spiral');
INSERT INTO public.galaxy VALUES (5, 2131312, 213232, 'galaxy2', 'spiral');
INSERT INTO public.galaxy VALUES (6, 2131312, 213232, 'galaxy3', 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 2, 1111, 'moon1', NULL);
INSERT INTO public.moon VALUES (3, 2, 1111, 'moon2', NULL);
INSERT INTO public.moon VALUES (4, 2, 1111, 'moon3', NULL);
INSERT INTO public.moon VALUES (6, 4, 1111, 'moon4', NULL);
INSERT INTO public.moon VALUES (7, 4, 1111, 'moon5', NULL);
INSERT INTO public.moon VALUES (8, 5, 1111, 'moon6', NULL);
INSERT INTO public.moon VALUES (9, 5, 1111, 'moon7', NULL);
INSERT INTO public.moon VALUES (10, 5, 1111, 'moon8', NULL);
INSERT INTO public.moon VALUES (11, 5, 1111, 'moon9', NULL);
INSERT INTO public.moon VALUES (12, 6, 1111, 'moon10', NULL);
INSERT INTO public.moon VALUES (13, 7, 1111, 'moon11', NULL);
INSERT INTO public.moon VALUES (14, 7, 1111, 'moon12', NULL);
INSERT INTO public.moon VALUES (15, 7, 1111, 'moon13', NULL);
INSERT INTO public.moon VALUES (16, 7, 1111, 'moon14', NULL);
INSERT INTO public.moon VALUES (17, 8, 1111, 'moon18', NULL);
INSERT INTO public.moon VALUES (18, 8, 1111, 'moon19', NULL);
INSERT INTO public.moon VALUES (19, 8, 1111, 'moon20', NULL);
INSERT INTO public.moon VALUES (20, 8, 1111, 'moon21', NULL);
INSERT INTO public.moon VALUES (21, 8, 1111, 'moon15', NULL);
INSERT INTO public.moon VALUES (22, 8, 1111, 'moon16', NULL);
INSERT INTO public.moon VALUES (23, 8, 1111, 'moon17', NULL);


--
-- Data for Name: more_info_about_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info_about_planet VALUES (1, 2, 'some_description', 'name1');
INSERT INTO public.more_info_about_planet VALUES (2, 4, 'some_description', 'name2');
INSERT INTO public.more_info_about_planet VALUES (3, 6, 'some_description', 'name3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, true, true, 55555, 'xandar', 1, NULL);
INSERT INTO public.planet VALUES (4, true, true, 55555, 'illa', 1, NULL);
INSERT INTO public.planet VALUES (5, false, false, 54665, 'ego', 1, NULL);
INSERT INTO public.planet VALUES (6, false, false, 5555, 'alter-ego', 1, NULL);
INSERT INTO public.planet VALUES (7, false, true, 1111, 'planet1', 2, NULL);
INSERT INTO public.planet VALUES (8, true, true, 1111, 'planet2', 2, NULL);
INSERT INTO public.planet VALUES (9, false, false, 1111, 'planet3', 2, NULL);
INSERT INTO public.planet VALUES (10, false, false, 1111, 'planet4', 3, NULL);
INSERT INTO public.planet VALUES (11, true, true, 1111, 'planet5', 3, NULL);
INSERT INTO public.planet VALUES (12, false, false, 1111, 'planet6', 4, NULL);
INSERT INTO public.planet VALUES (13, false, false, 1111, 'planet9', 5, NULL);
INSERT INTO public.planet VALUES (14, true, true, 1111, 'planet8', 6, NULL);
INSERT INTO public.planet VALUES (15, false, false, 1111, 'planet7', 7, NULL);
INSERT INTO public.planet VALUES (16, false, false, 1111, 'planet10', 9, NULL);
INSERT INTO public.planet VALUES (17, true, true, 1111, 'planet11', 8, NULL);
INSERT INTO public.planet VALUES (18, false, false, 1111, 'planet12', 8, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'f22h23', 2132423, 'neutron', 23423424);
INSERT INTO public.star VALUES (2, 1, 'xw23p', 23423324, 'red_dwarf', 2424234);
INSERT INTO public.star VALUES (3, 1, 'e12wr3', 1231312, 'white_dwarf', 213231);
INSERT INTO public.star VALUES (4, 2, 'f22dsd', 2132423, 'neutron', 23423424);
INSERT INTO public.star VALUES (5, 2, 'xw23d23p', 23423324, 'red_dwarf', 2424234);
INSERT INTO public.star VALUES (6, 2, 'e12wr3dd', 1231312, 'white_dwarf', 213231);
INSERT INTO public.star VALUES (7, 3, 'f22dsddd', 2132423, 'neutron', 23423424);
INSERT INTO public.star VALUES (8, 3, 'xw23ddd23p', 23423324, 'red_dwarf', 2424234);
INSERT INTO public.star VALUES (9, 3, 'eda12wr3dd', 1231312, 'white_dwarf', 213231);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: more_info_about_planet_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_about_planet_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: more_info_about_planet more_info_about_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_about_planet
    ADD CONSTRAINT more_info_about_planet_pkey PRIMARY KEY (more_info_about_planet_id);


--
-- Name: more_info_about_planet more_info_about_planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_about_planet
    ADD CONSTRAINT more_info_about_planet_planet_id_key UNIQUE (planet_id);


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
-- Name: more_info_about_planet more_info_about_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info_about_planet
    ADD CONSTRAINT more_info_about_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

