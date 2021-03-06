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
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    id integer NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: currency; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currency (
    id integer NOT NULL,
    code character varying(8) NOT NULL,
    name character varying(128) NOT NULL,
    is_active boolean NOT NULL,
    is_base_currency boolean NOT NULL
);


ALTER TABLE public.currency OWNER TO postgres;

--
-- Name: currency_rate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currency_rate (
    id integer NOT NULL,
    currency_id integer NOT NULL,
    base_currency_id integer NOT NULL,
    rate numeric(16,6) NOT NULL,
    ts timestamp without time zone NOT NULL
);


ALTER TABLE public.currency_rate OWNER TO postgres;

--
-- Name: currency_used; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.currency_used (
    id integer NOT NULL,
    country_id integer NOT NULL,
    currency_id integer NOT NULL,
    date_from date NOT NULL,
    date_to date
);


ALTER TABLE public.currency_used OWNER TO postgres;

--
-- Name: current_inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.current_inventory (
    id integer NOT NULL,
    trader_id integer NOT NULL,
    item_id integer NOT NULL,
    quantity numeric(16,6) NOT NULL
);


ALTER TABLE public.current_inventory OWNER TO postgres;

--
-- Name: item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item (
    id integer NOT NULL,
    code character varying(64) NOT NULL,
    name character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    currency_id integer NOT NULL,
    details text
);


ALTER TABLE public.item OWNER TO postgres;

--
-- Name: offer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.offer (
    id integer NOT NULL,
    trader_id integer NOT NULL,
    item_id integer NOT NULL,
    quantity numeric(16,6) NOT NULL,
    buy boolean NOT NULL,
    sell boolean NOT NULL,
    price numeric(16,6),
    ts timestamp without time zone NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.offer OWNER TO postgres;

--
-- Name: price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.price (
    id integer NOT NULL,
    item_id integer NOT NULL,
    currency_id integer NOT NULL,
    buy numeric(16,6) NOT NULL,
    sell numeric(16,6) NOT NULL,
    ts timestamp without time zone NOT NULL
);


ALTER TABLE public.price OWNER TO postgres;

--
-- Name: report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report (
    id integer NOT NULL,
    trading_date date NOT NULL,
    item_id integer NOT NULL,
    currency_id integer NOT NULL,
    first_price numeric(16,6),
    last_price numeric(16,6),
    min_price numeric(16,6),
    max_price numeric(16,6),
    avg_price numeric(16,6),
    total_amount numeric(16,6),
    quantity numeric(16,6)
);


ALTER TABLE public.report OWNER TO postgres;

--
-- Name: trade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trade (
    id integer NOT NULL,
    item_id integer NOT NULL,
    seller_id integer,
    buyer_id integer NOT NULL,
    qunatity numeric(16,6) NOT NULL,
    unit_price numeric(16,6) NOT NULL,
    description text NOT NULL,
    offer_id integer NOT NULL
);


ALTER TABLE public.trade OWNER TO postgres;

--
-- Name: trader; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trader (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    user_name character varying(64) NOT NULL,
    password character varying(64) NOT NULL,
    email character varying(128) NOT NULL,
    confirmation_code character varying(128) NOT NULL,
    time_registered timestamp without time zone NOT NULL,
    time_confirmed timestamp without time zone NOT NULL,
    country_id integer NOT NULL,
    preferred_currency_id integer NOT NULL
);


ALTER TABLE public.trader OWNER TO postgres;

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (id, name) FROM stdin;
\.


--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currency (id, code, name, is_active, is_base_currency) FROM stdin;
\.


--
-- Data for Name: currency_rate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currency_rate (id, currency_id, base_currency_id, rate, ts) FROM stdin;
\.


--
-- Data for Name: currency_used; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currency_used (id, country_id, currency_id, date_from, date_to) FROM stdin;
\.


--
-- Data for Name: current_inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.current_inventory (id, trader_id, item_id, quantity) FROM stdin;
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item (id, code, name, is_active, currency_id, details) FROM stdin;
\.


--
-- Data for Name: offer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.offer (id, trader_id, item_id, quantity, buy, sell, price, ts, is_active) FROM stdin;
\.


--
-- Data for Name: price; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.price (id, item_id, currency_id, buy, sell, ts) FROM stdin;
\.


--
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report (id, trading_date, item_id, currency_id, first_price, last_price, min_price, max_price, avg_price, total_amount, quantity) FROM stdin;
\.


--
-- Data for Name: trade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trade (id, item_id, seller_id, buyer_id, qunatity, unit_price, description, offer_id) FROM stdin;
\.


--
-- Data for Name: trader; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trader (id, first_name, last_name, user_name, password, email, confirmation_code, time_registered, time_confirmed, country_id, preferred_currency_id) FROM stdin;
\.


--
-- Name: country country_ak_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_ak_1 UNIQUE (name);


--
-- Name: country country_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pk PRIMARY KEY (id);


--
-- Name: currency currency_ak_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_ak_1 UNIQUE (code);


--
-- Name: currency currency_ak_2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_ak_2 UNIQUE (name);


--
-- Name: currency currency_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency
    ADD CONSTRAINT currency_pk PRIMARY KEY (id);


--
-- Name: currency_rate currency_rate_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency_rate
    ADD CONSTRAINT currency_rate_pk PRIMARY KEY (id);


--
-- Name: currency_used currency_used_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency_used
    ADD CONSTRAINT currency_used_pk PRIMARY KEY (id);


--
-- Name: current_inventory current_inventory_ak_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_inventory
    ADD CONSTRAINT current_inventory_ak_1 UNIQUE (trader_id, item_id);


--
-- Name: current_inventory current_inventory_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_inventory
    ADD CONSTRAINT current_inventory_pk PRIMARY KEY (id);


--
-- Name: item item_ak_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_ak_1 UNIQUE (code);


--
-- Name: item item_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pk PRIMARY KEY (id);


--
-- Name: offer offer_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offer
    ADD CONSTRAINT offer_pk PRIMARY KEY (id);


--
-- Name: price price_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pk PRIMARY KEY (id);


--
-- Name: report report_ak_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_ak_1 UNIQUE (trading_date, item_id, currency_id);


--
-- Name: report report_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_pk PRIMARY KEY (id);


--
-- Name: trade trade_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trade
    ADD CONSTRAINT trade_pk PRIMARY KEY (id);


--
-- Name: trader trader_ak_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trader
    ADD CONSTRAINT trader_ak_1 UNIQUE (user_name, email);


--
-- Name: trader trader_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trader
    ADD CONSTRAINT trader_pk PRIMARY KEY (id);


--
-- Name: currency_rate currency_rate_base_currency; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency_rate
    ADD CONSTRAINT currency_rate_base_currency FOREIGN KEY (base_currency_id) REFERENCES public.currency(id);


--
-- Name: currency_rate currency_rate_currency; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency_rate
    ADD CONSTRAINT currency_rate_currency FOREIGN KEY (currency_id) REFERENCES public.currency(id);


--
-- Name: currency_used currency_used_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency_used
    ADD CONSTRAINT currency_used_country FOREIGN KEY (country_id) REFERENCES public.country(id);


--
-- Name: currency_used currency_used_currency; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.currency_used
    ADD CONSTRAINT currency_used_currency FOREIGN KEY (currency_id) REFERENCES public.currency(id);


--
-- Name: current_inventory current_inventory_item; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_inventory
    ADD CONSTRAINT current_inventory_item FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- Name: current_inventory current_inventory_trader; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_inventory
    ADD CONSTRAINT current_inventory_trader FOREIGN KEY (trader_id) REFERENCES public.trader(id);


--
-- Name: item item_currency; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_currency FOREIGN KEY (currency_id) REFERENCES public.currency(id);


--
-- Name: offer offer_item; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offer
    ADD CONSTRAINT offer_item FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- Name: offer offer_trader; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.offer
    ADD CONSTRAINT offer_trader FOREIGN KEY (trader_id) REFERENCES public.trader(id);


--
-- Name: price price_currency; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_currency FOREIGN KEY (currency_id) REFERENCES public.currency(id);


--
-- Name: price price_item; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_item FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- Name: report report_currency; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_currency FOREIGN KEY (currency_id) REFERENCES public.currency(id);


--
-- Name: report report_item; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_item FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- Name: trade trade_buyer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trade
    ADD CONSTRAINT trade_buyer FOREIGN KEY (buyer_id) REFERENCES public.trader(id);


--
-- Name: trade trade_item; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trade
    ADD CONSTRAINT trade_item FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- Name: trade trade_offer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trade
    ADD CONSTRAINT trade_offer FOREIGN KEY (offer_id) REFERENCES public.offer(id);


--
-- Name: trade trade_seller; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trade
    ADD CONSTRAINT trade_seller FOREIGN KEY (seller_id) REFERENCES public.trader(id);


--
-- Name: trader trader_country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trader
    ADD CONSTRAINT trader_country FOREIGN KEY (country_id) REFERENCES public.country(id);


--
-- Name: trader trader_currency; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trader
    ADD CONSTRAINT trader_currency FOREIGN KEY (preferred_currency_id) REFERENCES public.currency(id);


--
-- PostgreSQL database dump complete
--

