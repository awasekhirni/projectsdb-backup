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
-- Name: additional_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.additional_emails (
    id bigint NOT NULL,
    email character varying,
    user_id integer,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone
);


ALTER TABLE public.additional_emails OWNER TO postgres;

--
-- Name: additional_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.additional_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_emails_id_seq OWNER TO postgres;

--
-- Name: additional_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.additional_emails_id_seq OWNED BY public.additional_emails.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: associate_consultants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.associate_consultants (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    notes text,
    reviewing_group_id integer,
    coach_id integer,
    user_id integer,
    graduated boolean DEFAULT false,
    program_start_date date
);


ALTER TABLE public.associate_consultants OWNER TO postgres;

--
-- Name: associate_consultants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.associate_consultants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.associate_consultants_id_seq OWNER TO postgres;

--
-- Name: associate_consultants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.associate_consultants_id_seq OWNED BY public.associate_consultants.id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedbacks (
    id bigint NOT NULL,
    user_id integer,
    project_worked_on character varying,
    role_description character varying,
    tech_exceeded text,
    tech_met text,
    tech_improve text,
    client_exceeded text,
    client_met text,
    client_improve text,
    ownership_exceeded text,
    ownership_met text,
    ownership_improve text,
    leadership_exceeded text,
    leadership_met text,
    leadership_improve text,
    teamwork_exceeded text,
    teamwork_met text,
    teamwork_improve text,
    attitude_exceeded text,
    attitude_met text,
    attitude_improve text,
    professionalism_exceeded text,
    professionalism_met text,
    professionalism_improve text,
    organizational_exceeded text,
    organizational_met text,
    organizational_improve text,
    innovative_exceeded text,
    innovative_met text,
    innovative_improve text,
    comments text,
    review_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    submitted boolean DEFAULT false,
    user_string text,
    role_competence_went_well text,
    role_competence_to_be_improved text,
    consulting_skills_went_well text,
    consulting_skills_to_be_improved text,
    teamwork_went_well text,
    teamwork_to_be_improved text,
    contributions_went_well text,
    contributions_to_be_improved text,
    reported_by character varying
);


ALTER TABLE public.feedbacks OWNER TO postgres;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feedbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedbacks_id_seq OWNER TO postgres;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- Name: invitations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invitations (
    id bigint NOT NULL,
    email character varying,
    review_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.invitations OWNER TO postgres;

--
-- Name: invitations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invitations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invitations_id_seq OWNER TO postgres;

--
-- Name: invitations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invitations_id_seq OWNED BY public.invitations.id;


--
-- Name: reviewing_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviewing_groups (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.reviewing_groups OWNER TO postgres;

--
-- Name: reviewing_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviewing_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviewing_groups_id_seq OWNER TO postgres;

--
-- Name: reviewing_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviewing_groups_id_seq OWNED BY public.reviewing_groups.id;


--
-- Name: reviewing_groups_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviewing_groups_users (
    reviewing_group_id integer,
    user_id integer
);


ALTER TABLE public.reviewing_groups_users OWNER TO postgres;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    associate_consultant_id integer,
    review_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    review_date date,
    feedback_deadline date,
    new_review_format boolean DEFAULT false
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: self_assessments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.self_assessments (
    id bigint NOT NULL,
    review_id integer,
    associate_consultant_id integer,
    response text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.self_assessments OWNER TO postgres;

--
-- Name: self_assessments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.self_assessments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.self_assessments_id_seq OWNER TO postgres;

--
-- Name: self_assessments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.self_assessments_id_seq OWNED BY public.self_assessments.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    admin boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    okta_name character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: additional_emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_emails ALTER COLUMN id SET DEFAULT nextval('public.additional_emails_id_seq'::regclass);


--
-- Name: associate_consultants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.associate_consultants ALTER COLUMN id SET DEFAULT nextval('public.associate_consultants_id_seq'::regclass);


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- Name: invitations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invitations ALTER COLUMN id SET DEFAULT nextval('public.invitations_id_seq'::regclass);


--
-- Name: reviewing_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviewing_groups ALTER COLUMN id SET DEFAULT nextval('public.reviewing_groups_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: self_assessments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.self_assessments ALTER COLUMN id SET DEFAULT nextval('public.self_assessments_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: additional_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.additional_emails (id, email, user_id, confirmation_token, confirmed_at, confirmation_sent_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-22 14:09:34.401641	2020-04-22 14:09:34.401641
schema_sha1	85d3d35ce8f644d13b8646acffb71eabde07b6d9	2020-04-22 14:09:34.418849	2020-04-22 14:09:34.418849
\.


--
-- Data for Name: associate_consultants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.associate_consultants (id, created_at, updated_at, notes, reviewing_group_id, coach_id, user_id, graduated, program_start_date) FROM stdin;
\.


--
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feedbacks (id, user_id, project_worked_on, role_description, tech_exceeded, tech_met, tech_improve, client_exceeded, client_met, client_improve, ownership_exceeded, ownership_met, ownership_improve, leadership_exceeded, leadership_met, leadership_improve, teamwork_exceeded, teamwork_met, teamwork_improve, attitude_exceeded, attitude_met, attitude_improve, professionalism_exceeded, professionalism_met, professionalism_improve, organizational_exceeded, organizational_met, organizational_improve, innovative_exceeded, innovative_met, innovative_improve, comments, review_id, created_at, updated_at, submitted, user_string, role_competence_went_well, role_competence_to_be_improved, consulting_skills_went_well, consulting_skills_to_be_improved, teamwork_went_well, teamwork_to_be_improved, contributions_went_well, contributions_to_be_improved, reported_by) FROM stdin;
\.


--
-- Data for Name: invitations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invitations (id, email, review_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: reviewing_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviewing_groups (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: reviewing_groups_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviewing_groups_users (reviewing_group_id, user_id) FROM stdin;
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (id, associate_consultant_id, review_type, created_at, updated_at, review_date, feedback_deadline, new_review_format) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20160209162358
\.


--
-- Data for Name: self_assessments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.self_assessments (id, review_id, associate_consultant_id, response, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, admin, created_at, updated_at, okta_name) FROM stdin;
\.


--
-- Name: additional_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.additional_emails_id_seq', 1, false);


--
-- Name: associate_consultants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.associate_consultants_id_seq', 1, false);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feedbacks_id_seq', 1, false);


--
-- Name: invitations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invitations_id_seq', 1, false);


--
-- Name: reviewing_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviewing_groups_id_seq', 1, false);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);


--
-- Name: self_assessments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.self_assessments_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: additional_emails additional_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_emails
    ADD CONSTRAINT additional_emails_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: associate_consultants associate_consultants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.associate_consultants
    ADD CONSTRAINT associate_consultants_pkey PRIMARY KEY (id);


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: invitations invitations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT invitations_pkey PRIMARY KEY (id);


--
-- Name: reviewing_groups reviewing_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviewing_groups
    ADD CONSTRAINT reviewing_groups_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: self_assessments self_assessments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.self_assessments
    ADD CONSTRAINT self_assessments_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_associate_consultants_on_coach_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_associate_consultants_on_coach_id ON public.associate_consultants USING btree (coach_id);


--
-- Name: index_associate_consultants_on_reviewing_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_associate_consultants_on_reviewing_group_id ON public.associate_consultants USING btree (reviewing_group_id);


--
-- Name: index_associate_consultants_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_associate_consultants_on_user_id ON public.associate_consultants USING btree (user_id);


--
-- Name: index_feedbacks_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_feedbacks_on_user_id ON public.feedbacks USING btree (user_id);


--
-- Name: index_invitations_on_review_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_invitations_on_review_id ON public.invitations USING btree (review_id);


--
-- Name: index_reviewing_groups_users_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reviewing_groups_users_on_user_id ON public.reviewing_groups_users USING btree (user_id);


--
-- Name: index_reviewing_groups_users_on_user_id_and_reviewing_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reviewing_groups_users_on_user_id_and_reviewing_group_id ON public.reviewing_groups_users USING btree (user_id, reviewing_group_id);


--
-- Name: index_reviews_on_associate_consultant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reviews_on_associate_consultant_id ON public.reviews USING btree (associate_consultant_id);


--
-- Name: index_self_assessments_on_associate_consultant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_self_assessments_on_associate_consultant_id ON public.self_assessments USING btree (associate_consultant_id);


--
-- Name: index_self_assessments_on_review_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_self_assessments_on_review_id ON public.self_assessments USING btree (review_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- PostgreSQL database dump complete
--

