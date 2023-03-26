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
-- Name: example; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.example (
    example_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(100) NOT NULL
);


ALTER TABLE public.example OWNER TO freecodecamp;

--
-- Name: example_example_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.example_example_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.example_example_id_seq OWNER TO freecodecamp;

--
-- Name: example_example_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.example_example_id_seq OWNED BY public.example.example_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    is_spherical boolean,
    name character varying(30) NOT NULL,
    description character varying(100),
    galaxy_types character varying(50)
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
    distance_from_earth integer,
    name character varying(50) NOT NULL,
    description character varying(100),
    description_1 text,
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
    has_life boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    name character varying(50) NOT NULL,
    description text,
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
    age_in_million_of_years numeric,
    name character varying(30) NOT NULL,
    descripton character varying(100),
    has_life boolean,
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
-- Name: example example_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.example ALTER COLUMN example_id SET DEFAULT nextval('public.example_example_id_seq'::regclass);


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
-- Data for Name: example; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.example VALUES (1, 'chenxi', 'hello chenxi');
INSERT INTO public.example VALUES (2, 'rula', 'hello rula');
INSERT INTO public.example VALUES (3, 'thomas', 'hello thomas');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, false, 'andromeda', 'This is andromeda', 'spiral');
INSERT INTO public.galaxy VALUES (2, false, 'Pi', 'this is Pi', 'spiral');
INSERT INTO public.galaxy VALUES (3, false, 'alpha', 'this is alpha', 'spiral');
INSERT INTO public.galaxy VALUES (4, false, 'Beta', 'this is beta', 'spiral');
INSERT INTO public.galaxy VALUES (5, false, 'Tri', 'this is tri', 'spiral');
INSERT INTO public.galaxy VALUES (6, false, 'team', 'this is team', 'spiral');
INSERT INTO public.galaxy VALUES (7, false, 'peeam', 'this is peeam', 'spiral');
INSERT INTO public.galaxy VALUES (8, false, 'wear', 'this is wear', 'spiral');
INSERT INTO public.galaxy VALUES (9, false, 'qear', 'this is qear', 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (6, 2000, 'crate', 'This is crate', 'more crate', 1);
INSERT INTO public.moon VALUES (7, 2000, 'rock', 'This is rock', 'more rock', 2);
INSERT INTO public.moon VALUES (8, 3000, 'gravel', 'this is gravel', 'more gravel', 3);
INSERT INTO public.moon VALUES (9, 32000, 'pate', 'this is pate', 'more pate', NULL);
INSERT INTO public.moon VALUES (10, 1000, 'meeen', 'this is meeen', 'more meeen', NULL);
INSERT INTO public.moon VALUES (11, 1000, 'ewww', 'this is ewww', 'more ewww', NULL);
INSERT INTO public.moon VALUES (12, 1230, 'reeeal', 'this is real
', 'more real', NULL);
INSERT INTO public.moon VALUES (13, 1000, 'deal', 'this deal', 'more deal', NULL);
INSERT INTO public.moon VALUES (14, 1000, 'sear', 'this sear', 'more sear', NULL);
INSERT INTO public.moon VALUES (16, 1300, 'derwal', 'this erdeal', 'more deaewrl', NULL);
INSERT INTO public.moon VALUES (17, 1004, 'seaytr', 'thiar', 'more r', NULL);
INSERT INTO public.moon VALUES (18, 4993, 'filly', 'this filly', 'more filly', NULL);
INSERT INTO public.moon VALUES (19, 1341, 'warm', 'this is warm', 'more warm', NULL);
INSERT INTO public.moon VALUES (20, 132231, 'storom', 'this is stoorom', 'more storom', NULL);
INSERT INTO public.moon VALUES (21, 123231, 'ream', 'this is ream', 'more ream', NULL);
INSERT INTO public.moon VALUES (22, 33999, 'main', 'this is main', 'moore main', NULL);
INSERT INTO public.moon VALUES (23, 934, 'jill', 'this is jill', 'moore jiill', NULL);
INSERT INTO public.moon VALUES (24, 3421, 'dill', 'this is dill', 'more dill', NULL);
INSERT INTO public.moon VALUES (25, 34324, 'sill', 'this is sill', 'more sill', NULL);
INSERT INTO public.moon VALUES (26, 1234, 'weaamm', 'this is wearm', 'moore wrearm', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, true, 0, 1000, 'earth', 'this is earth', 1);
INSERT INTO public.planet VALUES (2, false, 3000, 1000, 'saturn', 'this is saturn', 2);
INSERT INTO public.planet VALUES (3, false, 3000, 13499, 'toop', 'this is toop', 3);
INSERT INTO public.planet VALUES (4, false, 4000, 10092, 'pool', 'this is pool', 4);
INSERT INTO public.planet VALUES (5, false, 9000, 39419, 'temari', 'this is temari', 5);
INSERT INTO public.planet VALUES (20, false, 2000, 3299, 'pill', 'this is pill', NULL);
INSERT INTO public.planet VALUES (21, false, 2909, 2111, 'emu', 'this is emu', NULL);
INSERT INTO public.planet VALUES (22, false, 4000, 2000, 'till', 'this is till', NULL);
INSERT INTO public.planet VALUES (23, false, 1000, 3999, 'mill', 'this is mill', NULL);
INSERT INTO public.planet VALUES (24, false, 7000, 2000, 'gill', 'this is gill', NULL);
INSERT INTO public.planet VALUES (25, false, 1000, 1500, 'kill', 'this is kill', NULL);
INSERT INTO public.planet VALUES (26, false, 1000, 5000, 'vill', 'this is vill', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1000, 'Sun', 'This is Star', false, 1);
INSERT INTO public.star VALUES (4, 3000, 'ether', 'this is ether', false, 3);
INSERT INTO public.star VALUES (2, 2000, 'polaris', 'this is polaris', false, 2);
INSERT INTO public.star VALUES (3, 2500, 'eiither', 'thiis is eiither', false, 4);
INSERT INTO public.star VALUES (5, 3400, 'oopen', 'this is oopen', false, 5);
INSERT INTO public.star VALUES (7, 4000, 'teal', 'this is teal', false, 6);


--
-- Name: example_example_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.example_example_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: example example_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.example
    ADD CONSTRAINT example_description_key UNIQUE (description);


--
-- Name: example example_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.example
    ADD CONSTRAINT example_pkey PRIMARY KEY (example_id);


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
-- Name: star star_descripton_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_descripton_key UNIQUE (descripton);


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

