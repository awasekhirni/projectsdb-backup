--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name text,
    image text,
    description text,
    category text,
    price integer,
    quantity numeric,
    shipping numeric,
    location text,
    color text,
    link text
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, image, description, category, price, quantity, shipping, location, color, link) FROM stdin;
1	ATH M50X Headphone	http://i.ebayimg.com/00/s/MTAwMFgxMDAw/z/YFYAAOSwPhdVOjdQ/$_12.JPG	ATH-M50xDG Limited Edition Professional Studio Monitor Headphones - Dark Green; Pure. Professional. Performance. As the most critically acclaimed model in the M-Series line, the ATH-M50 is praised by top audio engineers and pro audio reviewers year after year.	Electronics	8631	3	0	Mumbai	#6B5419	http://www.ebay.in/sch/i.html?_nkw=m50x&_sop=16
2	Sony PS4 500GB	http://i.ebayimg.com/00/s/NDcyWDYxOA==/z/wM4AAOSwZjJVAEUf/$_12.JPG	The PlayStation4 system opens the door to an incredible journey through immersive new gaming worlds and a deeply connected gaming community. PS4 puts gamers first with an astounding launch lineup and over 180 games in development. Play amazing top-tier blockbusters and innovative indie hits on PS4.	Electronics	34463	7	0	Delhi	#302E29	http://www.ebay.in/sch/i.html?_nkw=ps4&_sop=16
4	OnePlus Two 64GB	http://i.ebayimg.com/00/s/Mzc4WDcyMA==/z/aUoAAOSwyQtV4-Kg/$_12.JPG	With the OnePlus 2, we have something bold to say. We believe that great products come from great ideas, not multi-million dollar marketing campaigns. We believe "thatâ€™s just the way things are" is almost always the wrong answer. Most of all, we believe that great things should be shared.	Electronics	34999	25	100	Punjab	#E35A4B	http://www.ebay.in/sch/i.html?_nkw=OnePlus+Two&_sop=16
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 4, true);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

