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
-- Name: explorers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.explorers (
    name character varying(30) NOT NULL,
    description text,
    age numeric,
    country character varying(30) NOT NULL,
    galaxy_name text,
    explorers_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.explorers OWNER TO freecodecamp;

--
-- Name: explorers_explorer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.explorers_explorer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.explorers_explorer_id_seq OWNER TO freecodecamp;

--
-- Name: explorers_explorer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.explorers_explorer_id_seq OWNED BY public.explorers.explorers_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    description text,
    galaxy_type character varying(30),
    size_in_lightyears integer,
    galaxy_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    size_in_kilometers integer,
    galaxy_name text,
    visited_by_humans boolean,
    moon_id integer NOT NULL,
    galaxy_id integer
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
    name character varying(30) NOT NULL,
    description text,
    size_in_kilometers numeric,
    galaxy_name text,
    planet_id integer NOT NULL,
    has_life boolean,
    galaxy_id integer
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
    name character varying(30) NOT NULL,
    description text,
    temperature_in_celcius integer,
    galaxy_name text,
    star_id integer NOT NULL,
    galaxy_id integer
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
-- Name: explorers explorers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorers ALTER COLUMN explorers_id SET DEFAULT nextval('public.explorers_explorer_id_seq'::regclass);


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
-- Data for Name: explorers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.explorers VALUES ('Neil Armstrong', 'First man on the moon', 82, 'USA', 'Milky Way', 1, NULL);
INSERT INTO public.explorers VALUES ('Elon Musk', NULL, NULL, 'USA', NULL, 2, NULL);
INSERT INTO public.explorers VALUES ('Neil-Sim', NULL, NULL, 'China', NULL, 3, NULL);
INSERT INTO public.explorers VALUES ('Balaroz Karezov', NULL, NULL, 'RUS', NULL, 4, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'The galaxy we live in', 'Spiral', 52850, 1);
INSERT INTO public.galaxy VALUES ('The Quasar', 'Made up galaxy', 'Heloglon', 65879, 2);
INSERT INTO public.galaxy VALUES ('The Porter', 'Another made up galaxy', 'Spiral', 78945, 3);
INSERT INTO public.galaxy VALUES ('Rabbit671', 'Made Up', 'Octosphere', 89445, 4);
INSERT INTO public.galaxy VALUES ('Timble13', 'Made Up Again', 'Spiral', 97847, 5);
INSERT INTO public.galaxy VALUES ('Graviton', 'Super made up', 'Octosphere', 110245, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 'Moon that orbits earth', 3500, 'Milky Way', true, 1, NULL);
INSERT INTO public.moon VALUES ('Shneep', NULL, NULL, NULL, true, 2, NULL);
INSERT INTO public.moon VALUES ('Gleebokener', NULL, NULL, NULL, false, 3, NULL);
INSERT INTO public.moon VALUES ('Ilown112', NULL, NULL, NULL, false, 4, NULL);
INSERT INTO public.moon VALUES ('Chrim17', NULL, NULL, NULL, true, 5, NULL);
INSERT INTO public.moon VALUES ('Shneep24', NULL, NULL, NULL, true, 6, NULL);
INSERT INTO public.moon VALUES ('Gleebokener12', NULL, NULL, NULL, false, 7, NULL);
INSERT INTO public.moon VALUES ('Ilown113', NULL, NULL, NULL, false, 8, NULL);
INSERT INTO public.moon VALUES ('Chrim18', NULL, NULL, NULL, true, 9, NULL);
INSERT INTO public.moon VALUES ('Neller', NULL, NULL, NULL, false, 10, NULL);
INSERT INTO public.moon VALUES ('Shneep27', NULL, NULL, NULL, true, 11, NULL);
INSERT INTO public.moon VALUES ('Gleebokener124', NULL, NULL, NULL, false, 12, NULL);
INSERT INTO public.moon VALUES ('Ilown114', NULL, NULL, NULL, false, 13, NULL);
INSERT INTO public.moon VALUES ('Chrim19', NULL, NULL, NULL, true, 14, NULL);
INSERT INTO public.moon VALUES ('Neller224', NULL, NULL, NULL, false, 15, NULL);
INSERT INTO public.moon VALUES ('Shneep28', NULL, NULL, NULL, true, 16, NULL);
INSERT INTO public.moon VALUES ('Gleebokener1225', NULL, NULL, NULL, false, 17, NULL);
INSERT INTO public.moon VALUES ('Ilown119', NULL, NULL, NULL, false, 18, NULL);
INSERT INTO public.moon VALUES ('Chrim178', NULL, NULL, NULL, true, 19, NULL);
INSERT INTO public.moon VALUES ('Neller225', NULL, NULL, NULL, false, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 'A planet in the solar system', 8000, 'Milky Way', 1, true, NULL);
INSERT INTO public.planet VALUES ('Plonk', NULL, NULL, NULL, 2, true, NULL);
INSERT INTO public.planet VALUES ('Blonk', NULL, NULL, NULL, 3, false, NULL);
INSERT INTO public.planet VALUES ('Lesor', NULL, NULL, NULL, 4, false, NULL);
INSERT INTO public.planet VALUES ('Timbler', NULL, NULL, NULL, 5, true, NULL);
INSERT INTO public.planet VALUES ('Speral', NULL, NULL, NULL, 6, false, NULL);
INSERT INTO public.planet VALUES ('lonk', NULL, NULL, NULL, 7, true, NULL);
INSERT INTO public.planet VALUES ('Ilonk', NULL, NULL, NULL, 8, false, NULL);
INSERT INTO public.planet VALUES ('ShLesor', NULL, NULL, NULL, 9, false, NULL);
INSERT INTO public.planet VALUES ('Pimbler', NULL, NULL, NULL, 10, true, NULL);
INSERT INTO public.planet VALUES ('Teral', NULL, NULL, NULL, 11, false, NULL);
INSERT INTO public.planet VALUES ('Flemba', NULL, NULL, NULL, 12, true, NULL);
INSERT INTO public.planet VALUES ('Gleebok', NULL, NULL, NULL, 13, false, NULL);
INSERT INTO public.planet VALUES ('Il', NULL, NULL, NULL, 14, false, NULL);
INSERT INTO public.planet VALUES ('Pim', NULL, NULL, NULL, 15, true, NULL);
INSERT INTO public.planet VALUES ('Teralanous', NULL, NULL, NULL, 16, false, NULL);
INSERT INTO public.planet VALUES ('Flemban', NULL, NULL, NULL, 17, true, NULL);
INSERT INTO public.planet VALUES ('Gleeboken', NULL, NULL, NULL, 18, false, NULL);
INSERT INTO public.planet VALUES ('Ilown', NULL, NULL, NULL, 19, false, NULL);
INSERT INTO public.planet VALUES ('Chrim', NULL, NULL, NULL, 20, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'The largest star in our solar system', 5504, 'Milky Way', 1, NULL);
INSERT INTO public.star VALUES ('The Quasarian123', 'Made up star', 7895, 'The Quasar', 2, NULL);
INSERT INTO public.star VALUES ('The Porternone', 'Another made up star', 7894, 'The Porter', 3, NULL);
INSERT INTO public.star VALUES ('Rabbitto', 'Made Up star', 8944, 'Rabbit671', 4, NULL);
INSERT INTO public.star VALUES ('Timbleboy', 'Made Up Again', 9784, 'Timble13', 5, NULL);
INSERT INTO public.star VALUES ('Graviton23', 'Super made up', 11024, 'Graviton', 6, NULL);


--
-- Name: explorers_explorer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.explorers_explorer_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: explorers explorers_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorers
    ADD CONSTRAINT explorers_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: explorers explorers_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorers
    ADD CONSTRAINT explorers_name_key UNIQUE (name);


--
-- Name: explorers explorers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorers
    ADD CONSTRAINT explorers_pkey PRIMARY KEY (explorers_id);


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
-- Name: explorers explorers_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explorers
    ADD CONSTRAINT explorers_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--