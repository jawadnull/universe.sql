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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric(10,2),
    galaxy_types character varying(100)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years bigint,
    meteor_types character varying(100),
    distance_from_earth bigint,
    star_id integer
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
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
    name character varying(100) NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years bigint,
    planet_types character varying(100),
    distance_from_earth bigint,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'Our home galaxy', true, 13000.50, 'Spiral');
INSERT INTO public.galaxy VALUES (8, 'Andromeda', 'Nearest spiral galaxy to Milky Way', false, 10000.25, 'Spiral');
INSERT INTO public.galaxy VALUES (9, 'Messier 87', 'Supermassive elliptical galaxy', false, 60300.75, 'Elliptical');
INSERT INTO public.galaxy VALUES (10, 'Triangulum', 'Spiral galaxy in Triangulum constellation', true, 5000.80, 'Spiral');
INSERT INTO public.galaxy VALUES (11, 'Whirlpool', 'Interacting spiral galaxy', false, 21000.30, 'Spiral');
INSERT INTO public.galaxy VALUES (12, 'Sombrero', 'Unusual spiral galaxy with a large central bulge', false, 28800.20, 'Spiral');


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (4, 'Meteor A', 'Description of Meteor A', true, 100, 'Type A', 50000, 13);
INSERT INTO public.meteor VALUES (5, 'Meteor B', 'Description of Meteor B', false, 200, 'Type B', 70000, 14);
INSERT INTO public.meteor VALUES (6, 'Meteor C', 'Description of Meteor C', true, 150, 'Type C', 60000, 15);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 'Earth''s natural satellite', true, 4500, 19);
INSERT INTO public.moon VALUES (22, 'Phobos', 'Mars''s innermost and larger moon', true, 4500, 20);
INSERT INTO public.moon VALUES (23, 'Deimos', 'Mars''s smaller moon', true, 4500, 20);
INSERT INTO public.moon VALUES (24, 'Ganymede', 'Jupiter''s largest moon and the largest moon in the Solar System', true, 4500, 21);
INSERT INTO public.moon VALUES (25, 'Callisto', 'Second-largest moon of Jupiter', true, 4500, 21);
INSERT INTO public.moon VALUES (26, 'Io', 'Innermost of the four Galilean moons of Jupiter', true, 4500, 21);
INSERT INTO public.moon VALUES (27, 'Europa', 'Jupiter''s smallest Galilean moon', true, 4500, 21);
INSERT INTO public.moon VALUES (28, 'Titan', 'Largest moon of Saturn and the second-largest natural satellite in the Solar System', true, 4500, 22);
INSERT INTO public.moon VALUES (29, 'Rhea', 'Second-largest moon of Saturn', true, 4500, 22);
INSERT INTO public.moon VALUES (30, 'Iapetus', 'Third-largest moon of Saturn', true, 4500, 22);
INSERT INTO public.moon VALUES (31, 'Miranda', 'Smallest and innermost of Uranus''s five round satellites', true, 4500, 23);
INSERT INTO public.moon VALUES (32, 'Ariel', 'Fourth-largest of the 27 known moons of Uranus', true, 4500, 23);
INSERT INTO public.moon VALUES (33, 'Umbriel', 'Major moon of Uranus', true, 4500, 23);
INSERT INTO public.moon VALUES (34, 'Triton', 'Largest natural satellite of Neptune', true, 4500, 24);
INSERT INTO public.moon VALUES (35, 'Proteus', 'Second-largest moon of Neptune', true, 4500, 24);
INSERT INTO public.moon VALUES (36, 'Charon', 'Largest of the five known moons of Pluto', true, 4500, 25);
INSERT INTO public.moon VALUES (37, 'Nix', 'Innermost moon of Pluto', true, 4500, 25);
INSERT INTO public.moon VALUES (38, 'Hydra', 'Second-most outer moon of Pluto', true, 4500, 25);
INSERT INTO public.moon VALUES (39, 'Enceladus', 'Sixth-largest moon of Saturn', true, 4500, 22);
INSERT INTO public.moon VALUES (40, 'Tethys', 'Third-largest moon of Saturn', true, 4500, 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (19, 'Mercury', 'Closest planet to the Sun', true, 4500, 'Terrestrial', 57900000, 13);
INSERT INTO public.planet VALUES (20, 'Venus', 'Second planet from the Sun', true, 4500, 'Terrestrial', 108160000, 13);
INSERT INTO public.planet VALUES (21, 'Earth', 'Third planet from the Sun', true, 4500, 'Terrestrial', 149600000, 13);
INSERT INTO public.planet VALUES (22, 'Mars', 'Fourth planet from the Sun', true, 4500, 'Terrestrial', 227936640, 13);
INSERT INTO public.planet VALUES (23, 'Jupiter', 'Fifth planet from the Sun', false, 4500, 'Gas Giant', 778369000, 14);
INSERT INTO public.planet VALUES (24, 'Saturn', 'Sixth planet from the Sun', false, 4500, 'Gas Giant', 1427034000, 14);
INSERT INTO public.planet VALUES (25, 'Uranus', 'Seventh planet from the Sun', false, 4500, 'Ice Giant', 2870658186, 15);
INSERT INTO public.planet VALUES (26, 'Neptune', 'Eighth planet from the Sun', false, 4500, 'Ice Giant', 4496976000, 15);
INSERT INTO public.planet VALUES (27, 'Pluto', 'Dwarf planet in the Kuiper belt', true, 4500, 'Dwarf', 5906376272, 16);
INSERT INTO public.planet VALUES (28, 'Kepler-22b', 'First planet discovered in the habitable zone of a Sun-like star', true, 4500, 'Exoplanet', 600000000000, 17);
INSERT INTO public.planet VALUES (29, 'HD 209458 b', 'First exoplanet to be observed directly in transit', true, 4500, 'Exoplanet', 153000000000, 17);
INSERT INTO public.planet VALUES (30, 'TRAPPIST-1d', 'One of the seven Earth-sized planets discovered orbiting the ultracool dwarf star TRAPPIST-1', true, 4500, 'Exoplanet', 39000000, 18);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (13, 'Sun', 'The star at the center of our solar system', true, 4500, 149600000, 8);
INSERT INTO public.star VALUES (14, 'Alpha Centauri', 'Closest star system to the Solar System', true, 6000, 4, 8);
INSERT INTO public.star VALUES (15, 'Sirius', 'Brightest star in the night sky', true, 25000, 9, 8);
INSERT INTO public.star VALUES (16, 'Vega', 'Brightest star in the constellation of Lyra', true, 455, 25, 8);
INSERT INTO public.star VALUES (17, 'Betelgeuse', 'Red supergiant in the constellation of Orion', true, 8500, 644, 8);
INSERT INTO public.star VALUES (18, 'Proxima Centauri', 'Closest known star to the Sun', true, 12000, 4, 9);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 12, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 30, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 18, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: meteor unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: meteor fk_meteor_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT fk_meteor_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

