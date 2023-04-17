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
    name character varying(50),
    description character varying(100),
    has_life boolean,
    is_spherical boolean,
    age integer NOT NULL,
    galaxy_types integer NOT NULL,
    distance numeric(8,1) NOT NULL
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
    name character varying(50),
    description character varying(100),
    has_life boolean,
    is_spherical boolean,
    age integer NOT NULL,
    distance numeric(8,1) NOT NULL,
    planet_id integer NOT NULL
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
-- Name: person; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    name character varying(20) NOT NULL,
    des text
);


ALTER TABLE public.person OWNER TO freecodecamp;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_person_id_seq OWNER TO freecodecamp;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    description character varying(100),
    has_life boolean,
    is_spherical boolean,
    age integer,
    planet_types integer,
    distance numeric(8,1) NOT NULL,
    star_id integer NOT NULL
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
    name character varying(50),
    description character varying(100),
    has_life boolean,
    is_spherical boolean,
    age integer NOT NULL,
    distance numeric(8,1) NOT NULL,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'g1', 'des', false, false, 100, 1, 98.1);
INSERT INTO public.galaxy VALUES (2, 'g2', 'des', false, false, 100, 1, 98.1);
INSERT INTO public.galaxy VALUES (3, 'g3', 'des', false, false, 100, 1, 98.1);
INSERT INTO public.galaxy VALUES (4, 'g4', 'des', false, false, 100, 1, 98.1);
INSERT INTO public.galaxy VALUES (5, 'g5', 'des', false, false, 100, 1, 98.1);
INSERT INTO public.galaxy VALUES (6, 'g6', 'des', false, false, 100, 1, 98.1);
INSERT INTO public.galaxy VALUES (7, 'g7', 'des', false, false, 100, 1, 98.1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'm1', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (4, 'm2', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (5, 'm3', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (6, 'm4', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (7, 'm5', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (8, 'm6', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (9, 'm7', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (10, 'm8', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (11, 'm9', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (12, 'm10', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (13, 'm11', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (14, 'm12', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (15, 'm13', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (16, 'm14', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (17, 'm15', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (18, 'm16', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (19, 'm17', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (20, 'm18', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (21, 'm19', NULL, NULL, NULL, 1, 11.1, 1);
INSERT INTO public.moon VALUES (22, 'm20', NULL, NULL, NULL, 1, 11.1, 1);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.person VALUES (1, 'p1', 'des');
INSERT INTO public.person VALUES (2, 'p2', 'des');
INSERT INTO public.person VALUES (3, 'p3', 'des');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', NULL, NULL, NULL, NULL, NULL, 30.2, 1);
INSERT INTO public.planet VALUES (2, 'p2', NULL, NULL, NULL, NULL, NULL, 30.2, 1);
INSERT INTO public.planet VALUES (3, 'p3', NULL, NULL, NULL, NULL, NULL, 30.2, 1);
INSERT INTO public.planet VALUES (4, 'p4', NULL, NULL, NULL, NULL, NULL, 30.2, 1);
INSERT INTO public.planet VALUES (5, 'p5', NULL, NULL, NULL, NULL, NULL, 30.2, 1);
INSERT INTO public.planet VALUES (6, 'p6', NULL, NULL, NULL, NULL, NULL, 30.2, 1);
INSERT INTO public.planet VALUES (7, 'p7', NULL, NULL, NULL, NULL, NULL, 30.2, 2);
INSERT INTO public.planet VALUES (8, 'p8', NULL, NULL, NULL, NULL, NULL, 30.2, 2);
INSERT INTO public.planet VALUES (9, 'p9', NULL, NULL, NULL, NULL, NULL, 30.2, 2);
INSERT INTO public.planet VALUES (10, 'p10', NULL, NULL, NULL, NULL, NULL, 30.2, 2);
INSERT INTO public.planet VALUES (11, 'p11', NULL, NULL, NULL, NULL, NULL, 30.2, 2);
INSERT INTO public.planet VALUES (12, 'p12', NULL, NULL, NULL, NULL, NULL, 30.2, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, NULL, NULL, 1, 22.2, 1);
INSERT INTO public.star VALUES (2, 'star2', NULL, NULL, NULL, 1, 22.2, 2);
INSERT INTO public.star VALUES (3, 'star3', NULL, NULL, NULL, 1, 22.2, 3);
INSERT INTO public.star VALUES (4, 'star4', NULL, NULL, NULL, 1, 22.2, 4);
INSERT INTO public.star VALUES (5, 'star5', NULL, NULL, NULL, 1, 22.2, 5);
INSERT INTO public.star VALUES (6, 'star6', NULL, NULL, NULL, 1, 22.2, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.person_person_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy ga_u_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT ga_u_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_u_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_u_name UNIQUE (name);


--
-- Name: person person_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_name_key UNIQUE (name);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_u_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_u_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_u_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_u_name UNIQUE (name);


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

