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
    name character varying(20) NOT NULL,
    radius integer NOT NULL,
    distance integer,
    star_tom integer NOT NULL
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
    name character varying(20) NOT NULL,
    mass_kg text,
    radius_km integer NOT NULL,
    gravity_ms2 numeric(3,2) NOT NULL,
    planet_id integer
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
    name character varying(20) NOT NULL,
    radius_km integer NOT NULL,
    mass_kg text,
    gravity_ms2 numeric(4,2),
    presenceofatm boolean,
    star_id integer
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
    name character varying(20) NOT NULL,
    distance_ly integer,
    constellation text,
    galaxy_id integer,
    stars_size_id integer
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
-- Name: stars_size; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stars_size (
    stars_size_id integer NOT NULL,
    name character varying(20) NOT NULL,
    shinemorethansun boolean
);


ALTER TABLE public.stars_size OWNER TO freecodecamp;

--
-- Name: stars_size_stars_size_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_size_stars_size_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_size_stars_size_id_seq OWNER TO freecodecamp;

--
-- Name: stars_size_stars_size_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_size_stars_size_id_seq OWNED BY public.stars_size.stars_size_id;


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
-- Name: stars_size stars_size_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stars_size ALTER COLUMN stars_size_id SET DEFAULT nextval('public.stars_size_stars_size_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 50000, NULL, 300);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, 2500000, 1000);
INSERT INTO public.galaxy VALUES (3, 'LMC', 7000, 163000, 30);
INSERT INTO public.galaxy VALUES (4, 'SMC', 3500, 200000, 3);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 30000, 2800000, 40);
INSERT INTO public.galaxy VALUES (6, 'NGC 3031', 5000, 12000000, 250);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', '7.35 x 10^22', 1737, 1.62, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', '1.07 x 10^16', 11, 0.01, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', '2.24 x 10^15', 6, 0.01, 4);
INSERT INTO public.moon VALUES (4, 'Europa', '4.80 x 10^22', 1561, 1.31, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', '1.48 x 10^23', 2634, 1.42, 5);
INSERT INTO public.moon VALUES (6, 'Io', '8.94 x 10^22', 1822, 1.81, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', '1.08 x 10^23', 2410, 1.24, 5);
INSERT INTO public.moon VALUES (8, 'Titan', '1.35 x 10^23', 2574, 1.37, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', '1.08 x 10^20', 252, 0.11, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', '3.75 x 10^19', 198, 0.08, 6);
INSERT INTO public.moon VALUES (11, 'Iapetus', '1.81 x 10^21', 735, 0.26, 6);
INSERT INTO public.moon VALUES (12, 'Dione', '1.10 x 10^21', 562, 0.23, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', '2.32 x 10^21', 764, 0.27, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', '5.69 x 10^18', 135, 0.04, 6);
INSERT INTO public.moon VALUES (15, 'Titania', '3.53 x 10^21', 789, 0.38, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', '11.72 x 10^20', 585, 0.23, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', '3.01 x 10^21', 761, 0.35, 7);
INSERT INTO public.moon VALUES (18, 'Triton', '2.14 x 10^22', 1353, 0.78, 8);
INSERT INTO public.moon VALUES (19, 'Nereid', '3.10 x 10^19', 170, 0.07, 8);
INSERT INTO public.moon VALUES (20, 'Caronte', '1.52 x 10^21', 604, 0.29, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2440, '3.28 x 10^23', 3.70, false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 6052, '4.87 x 10^24', 8.87, true, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 6370, '5.97 x 10^24', 9.81, true, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 3389, '6.39 x 10^23', 3.72, true, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, '1.90 x 10^27', 24.79, true, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, '5.68 x 10^26', 10.44, true, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 25362, '8.68 x 10^25', 8.87, true, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, '1.02 x 10^26', 11.15, true, 7);
INSERT INTO public.planet VALUES (9, 'Pathie', 39000, '6 x 10^25', NULL, NULL, 7);
INSERT INTO public.planet VALUES (10, 'Sedna', 1500, '1 x 10^21', 0.27, NULL, 7);
INSERT INTO public.planet VALUES (11, 'Pluto', 1185, '1 .25 x 10^22', 0.60, true, 7);
INSERT INTO public.planet VALUES (12, 'Ceres', 473, '9.43 x 10^20', 0.28, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 97, 'Andromeda', 1, 5);
INSERT INTO public.star VALUES (2, 'Mirach', 199, 'Andromeda', 1, 4);
INSERT INTO public.star VALUES (3, 'Almach', 350, 'Andromeda', 1, 3);
INSERT INTO public.star VALUES (4, 'Achernar', 144, 'Eridanus', 1, 6);
INSERT INTO public.star VALUES (5, 'Acrux', 325, 'Crux', 1, 6);
INSERT INTO public.star VALUES (6, 'Canopus', 310, 'Carina', 1, 3);
INSERT INTO public.star VALUES (7, 'Sun', NULL, NULL, 1, 6);
INSERT INTO public.star VALUES (8, 'Betelgeuse', 643, 'Orion', 1, 2);


--
-- Data for Name: stars_size; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stars_size VALUES (1, 'Hypergiants', true);
INSERT INTO public.stars_size VALUES (2, 'Supergiants', true);
INSERT INTO public.stars_size VALUES (3, 'Bright giants', true);
INSERT INTO public.stars_size VALUES (4, 'Giants', true);
INSERT INTO public.stars_size VALUES (5, 'Subgiants', true);
INSERT INTO public.stars_size VALUES (6, 'Dwarfs', NULL);
INSERT INTO public.stars_size VALUES (7, 'Subdwarfs', false);
INSERT INTO public.stars_size VALUES (8, 'White dwarfs', false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: stars_size_stars_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_size_stars_size_id_seq', 8, true);


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
-- Name: stars_size stars_size_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stars_size
    ADD CONSTRAINT stars_size_name_key UNIQUE (name);


--
-- Name: stars_size stars_size_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stars_size
    ADD CONSTRAINT stars_size_pkey PRIMARY KEY (stars_size_id);


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
-- Name: star star_stars_size_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_stars_size_id_fkey FOREIGN KEY (stars_size_id) REFERENCES public.stars_size(stars_size_id);


--
-- PostgreSQL database dump complete
--

