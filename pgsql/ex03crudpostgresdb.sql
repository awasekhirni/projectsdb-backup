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

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(500) NOT NULL,
    image character varying(500) NOT NULL,
    description character varying(500) NOT NULL,
    category character varying(200) NOT NULL,
    price character varying NOT NULL,
    quantity character varying NOT NULL,
    shipping character varying(100) NOT NULL,
    location character varying(100) NOT NULL,
    color character varying(100) NOT NULL,
    link character varying(500) NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, image, description, category, price, quantity, shipping, location, color, link) FROM stdin;
67f8ef46-b3a0-4663-8cb7-c635a1131bbd	ATH M50X Headphone	http://i.ebayimg.com/00/s/MTAwMFgxMDAw/z/YFYAAOSwPhdVOjdQ/$_12.JPG	ATH-M50xDG Limited Edition Professional Studio Monitor Headphones - Dark Green; Pure. Professional. Performance. As the most critically acclaimed model in the M-Series line, the ATH-M50 is praised by top audio engineers and pro audio reviewers year after year.	Electronics	8631	3	0	Mumbai	#6B5419	http://www.ebay.in/sch/i.html?_nkw=m50x&_sop=16
d06fa007-a3e1-450b-90ad-da8221bd2cd2	Sony PS4 500GB	http://i.ebayimg.com/00/s/NDcyWDYxOA==/z/wM4AAOSwZjJVAEUf/$_12.JPG	The PlayStation4 system opens the door to an incredible journey through immersive new gaming worlds and a deeply connected gaming community. PS4 puts gamers first with an astounding launch lineup and over 180 games in development. Play amazing top-tier blockbusters and innovative indie hits on PS4.	Electronics	34463	7	0	Delhi	#302E29	http://www.ebay.in/sch/i.html?_nkw=ps4&_sop=16
4e013e19-4607-4af7-8df4-3592e368420c	Handy Chopper (Slicer)	http://i.ebayimg.com/00/s/NTAwWDUwMA==/z/bPAAAOSwBahU7V4G/$_12.JPG	Nicer Dicer With Plus you have a kitchen helper, who will shorten the cooking time from start of preparation to the serving of the meal tremendously.	Household	549	10	0	Chennai	#B6E314	http://www.ebay.in/sch/i.html?_nkw=NICER+DICER+PLUS+CHOPPER&_sop=16
280f8696-b16f-4048-b5a0-ca818c88c4d4	OnePlus Two 64GB	http://i.ebayimg.com/00/s/Mzc4WDcyMA==/z/aUoAAOSwyQtV4-Kg/$_12.JPG	With the OnePlus 2, we have something bold to say. We believe that great products come from great ideas, not multi-million dollar marketing campaigns. We believe "thatâ€™s just the way things are" is almost always the wrong answer. Most of all, we believe that great things should be shared.	Electronics	34999	1	100	Punjab	#E35A4B	http://www.ebay.in/sch/i.html?_nkw=OnePlus+Two&_sop=16
28766c07-d7b1-4f21-8e9c-d21f4b175b77	SBH20 Bluetooth	http://i.ebayimg.com/00/s/MzM5WDUwMA==/z/BtcAAOSwjVVV1stp/$_12.JPG	Easier than connecting a cable. Touch once to pair your smartphone with your wireless headset*. If the devices have been disconnected, touch once to re-connect. NFC is pure magic.An ergonomic sliding power key and large tactile music control keys add extreme ease to subtle style. Go wireless.	Electronics	8631	3	0	Mumbai	#EB83BC	http://www.ebay.in/sch/i.html?_nkw=sbh20+pink&_sop=16
f88f4fd0-c33c-47da-ac6f-08e0a193a188	MAC Mini MGEQ2HN/A	http://i.ebayimg.com/00/s/NDEyWDU1MA==/z/6t8AAOSwq7JUAxCk/$_12.JPG	Itâ€™s mini in a massive way. Mac mini is an affordable powerhouse that packs the entire Mac experience into a 19.7cm-square frame. Just connect your own display, keyboard and mouse, and youâ€™re ready to make big things happen.	Electronics	69900	10	500	Delhi	#B5AFAE	http://www.ebay.in/sch/i.html?_nkw=MGEQ2HN&_sop=16
b53513f8-43ab-4f25-8e13-3d5777185061	Calvin Klein IN2U EDT	http://i.ebayimg.com/00/s/NDAwWDI0Nw==/z/XgAAAOSw-vlVkbJm/$_12.JPG	Man has worked to overpower every other being on this planet and in this time and day when technology leaves no barriers crossed by our kind, Calvin Klein ensures that the path a man leaves behind is remembered, with the signature IN2U EDT.	Fragrances	1499	5	2	Gandhinagar	#529AC7	http://www.ebay.in/sch/i.html?_nkw=IN2U+calvin&_sop=16
88d16180-5ea3-42af-b2f0-ec0893cdeece	Canon EOS 700D	http://i.ebayimg.com/00/$T2eC16ZHJGIE9nnWrPjuBRZ(JU5DPg~~_35.JPG	Designed for the creative photographer wanting more to play with, the Canon EOS/ Rebel 18 MP camera comes with IS STM 18-55 mm lens kit. The Canon EOS/ Rebel 18 MP camera with great features and hardened body delivers bright and beautiful pictures in many different conditions, taking you to the next level in photography.	Electronics	36027	8	50	Manipur	#565859	http://www.ebay.in/sch/i.html?_nkw=700d&_sop=16
7fa63064-2a4a-4eb4-b2f6-7116b953b4a4	MacBook Air	http://i.ebayimg.com/00/s/Mzc5WDQ5OA==/z/RPIAAOSweW5U9q5g/$_12.JPG	The 11-inch MacBook Air lasts up to 9 hours between charges and the 13-inch model lasts up to an incredible 12 hours. So from your morning coffee till your evening commute, you can work unplugged.Thin. Light. Powerful. And ready for anything.	Electronics	60619	4	1500	Bangalore	#9E9E9E	http://www.ebay.in/sch/i.html?_nkw=MD712HN&_sop=16
1f155bb5-df22-476d-ac9e-5b5bf22a59a5	Apple Watch Sport 42mm	http://i.ebayimg.com/00/s/ODAwWDgwMA==/z/uUcAAOSwgQ9Vn8KZ/$_12.JPG	Apple Watch represents a new chapter in the relationship people have with technology. Itâ€™s our most personal product yet, because itâ€™s the first one designed to be worn. Choose from three different leather bands, a high-performance fluoroelastomer band, a link bracelet, and a Milanese loop.Discover some of the things Apple Watch can do.	Watch	38000	4	1500	Bangalore	#EB50E5	http://www.ebay.in/sch/i.html?_nkw=apple+watch&_sop=16
755a7232-19a1-4992-9692-e1e78be8924a	Pebble Steel	http://i.ebayimg.com/00/s/NTAwWDUwMA==/z/z50AAOSwNSxVgDDu/$_12.JPG	The Time of Your Life. Pebble Time Puts The Past, Present and Future At Your Fingertips. With an always-on color E-Paper display, up to 7 day battery life, durable glass lens, and thin, curved ergonomic design, youâ€™ll love wearing Pebble Time anywhere and everywhere.	Watch	12300	25000	0	Chennai	#B8903B	http://www.ebay.in/sch/i.html?_nkw=pebble+watch&_sop=16
0127a0ed-d6d7-47ed-bc51-e9334d4f89c0	Bracelets	http://i.ebayimg.com/00/s/NjUwWDY1MA==/z/keAAAOSw0e9Utqcg/$_12.JPG	High quality and unique design. Time turner braceletes,eye catching. Fashionable and pretty. Show your charm with this bracelets badge. Suitable for banquet, date, shopping, party and so on. Gorgeous ornament for you and your friends.	Collectibles	399	20	0	Kolkata	#FFD375	http://www.ebay.in/sch/i.html?_nkw=Bracelets+Fashion+Vintage&_sop=16
\.


--
-- Name: product PK_bebc9158e480b949565b4dc7a82; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY (id);


--
-- Name: product UQ_22cc43e9a74d7498546e9a63e77; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT "UQ_22cc43e9a74d7498546e9a63e77" UNIQUE (name);


--
-- PostgreSQL database dump complete
--

