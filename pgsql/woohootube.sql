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
-- Name: Comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Comments" (
    id uuid NOT NULL,
    text character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" uuid,
    "videoId" uuid
);


ALTER TABLE public."Comments" OWNER TO postgres;

--
-- Name: Subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subscriptions" (
    id uuid NOT NULL,
    subscriber uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "subscribeTo" uuid
);


ALTER TABLE public."Subscriptions" OWNER TO postgres;

--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id uuid NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    avatar character varying(255) DEFAULT 'https://res.cloudinary.com/douy56nkf/image/upload/v1594060920/defaults/txxeacnh3vanuhsemfc8.png'::character varying,
    cover character varying(255) DEFAULT 'https://res.cloudinary.com/douy56nkf/image/upload/v1594060919/defaults/xcdnczly5nuwpibolagv.png'::character varying,
    "channelDescription" character varying(255),
    "isAdmin" boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: VideoLikes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."VideoLikes" (
    id uuid NOT NULL,
    "like" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" uuid,
    "videoId" uuid
);


ALTER TABLE public."VideoLikes" OWNER TO postgres;

--
-- Name: Videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Videos" (
    id uuid NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255),
    url character varying(255) NOT NULL,
    thumbnail character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" uuid
);


ALTER TABLE public."Videos" OWNER TO postgres;

--
-- Name: Views; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Views" (
    id uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" uuid,
    "videoId" uuid
);


ALTER TABLE public."Views" OWNER TO postgres;

--
-- Data for Name: Comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Comments" (id, text, "createdAt", "updatedAt", "userId", "videoId") FROM stdin;
\.


--
-- Data for Name: Subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Subscriptions" (id, subscriber, "createdAt", "updatedAt", "subscribeTo") FROM stdin;
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (id, firstname, lastname, username, email, password, avatar, cover, "channelDescription", "isAdmin", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: VideoLikes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."VideoLikes" (id, "like", "createdAt", "updatedAt", "userId", "videoId") FROM stdin;
\.


--
-- Data for Name: Videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Videos" (id, title, description, url, thumbnail, "createdAt", "updatedAt", "userId") FROM stdin;
\.


--
-- Data for Name: Views; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Views" (id, "createdAt", "updatedAt", "userId", "videoId") FROM stdin;
\.


--
-- Name: Comments Comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_pkey" PRIMARY KEY (id);


--
-- Name: Subscriptions Subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- Name: Users Users_email_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key1" UNIQUE (email);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);


--
-- Name: Users Users_username_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key1" UNIQUE (username);


--
-- Name: VideoLikes VideoLikes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VideoLikes"
    ADD CONSTRAINT "VideoLikes_pkey" PRIMARY KEY (id);


--
-- Name: VideoLikes VideoLikes_userId_videoId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VideoLikes"
    ADD CONSTRAINT "VideoLikes_userId_videoId_key" UNIQUE ("userId", "videoId");


--
-- Name: Videos Videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Videos"
    ADD CONSTRAINT "Videos_pkey" PRIMARY KEY (id);


--
-- Name: Views Views_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Views"
    ADD CONSTRAINT "Views_pkey" PRIMARY KEY (id);


--
-- Name: Views Views_userId_videoId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Views"
    ADD CONSTRAINT "Views_userId_videoId_key" UNIQUE ("userId", "videoId");


--
-- Name: Comments Comments_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Comments Comments_videoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Comments"
    ADD CONSTRAINT "Comments_videoId_fkey" FOREIGN KEY ("videoId") REFERENCES public."Videos"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Subscriptions Subscriptions_subscribeTo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subscriptions"
    ADD CONSTRAINT "Subscriptions_subscribeTo_fkey" FOREIGN KEY ("subscribeTo") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: VideoLikes VideoLikes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VideoLikes"
    ADD CONSTRAINT "VideoLikes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: VideoLikes VideoLikes_videoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VideoLikes"
    ADD CONSTRAINT "VideoLikes_videoId_fkey" FOREIGN KEY ("videoId") REFERENCES public."Videos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Videos Videos_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Videos"
    ADD CONSTRAINT "Videos_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Views Views_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Views"
    ADD CONSTRAINT "Views_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Views Views_videoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Views"
    ADD CONSTRAINT "Views_videoId_fkey" FOREIGN KEY ("videoId") REFERENCES public."Videos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

