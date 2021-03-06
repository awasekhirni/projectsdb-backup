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
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    id bigint NOT NULL,
    title character varying(255),
    publisher bigint
);


ALTER TABLE public.book OWNER TO postgres;

--
-- Name: publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publisher (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE public.publisher OWNER TO postgres;

--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book (id, title, publisher) FROM stdin;
1	John Rambo	1
\.


--
-- Data for Name: publisher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publisher (id, name) FROM stdin;
1	FirstBlood
\.


--
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- Name: publisher publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id);


--
-- Name: book fk_7atqd2ql8tisigkt4kdyedqi2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT fk_7atqd2ql8tisigkt4kdyedqi2 FOREIGN KEY (publisher) REFERENCES public.publisher(id);


--
-- PostgreSQL database dump complete
--

