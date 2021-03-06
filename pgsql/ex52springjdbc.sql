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
-- Name: restaurant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restaurant (
    restaurantid integer NOT NULL,
    restaurantname text NOT NULL,
    restaurantaddress text,
    restaurantrating text
);


ALTER TABLE public.restaurant OWNER TO postgres;

--
-- Data for Name: restaurant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restaurant (restaurantid, restaurantname, restaurantaddress, restaurantrating) FROM stdin;
129898132	Zaika Tasty Treats Pvt Ltd	Kalyan Nagar, Bangalore	5 star rating
\.


--
-- Name: restaurant restaurant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT restaurant_pkey PRIMARY KEY (restaurantid);


--
-- PostgreSQL database dump complete
--

