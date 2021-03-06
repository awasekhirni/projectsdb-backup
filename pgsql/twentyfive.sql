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
-- Name: appcore_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appcore_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.appcore_user OWNER TO postgres;

--
-- Name: appcore_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appcore_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.appcore_user_groups OWNER TO postgres;

--
-- Name: appcore_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appcore_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appcore_user_groups_id_seq OWNER TO postgres;

--
-- Name: appcore_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appcore_user_groups_id_seq OWNED BY public.appcore_user_groups.id;


--
-- Name: appcore_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appcore_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appcore_user_id_seq OWNER TO postgres;

--
-- Name: appcore_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appcore_user_id_seq OWNED BY public.appcore_user.id;


--
-- Name: appcore_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appcore_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.appcore_user_user_permissions OWNER TO postgres;

--
-- Name: appcore_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appcore_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appcore_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: appcore_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appcore_user_user_permissions_id_seq OWNED BY public.appcore_user_user_permissions.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: questansapp_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questansapp_answers (
    id integer NOT NULL,
    answer_text text NOT NULL,
    is_anonymous boolean NOT NULL,
    question_id integer NOT NULL,
    user_id integer
);


ALTER TABLE public.questansapp_answers OWNER TO postgres;

--
-- Name: questansapp_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questansapp_answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questansapp_answers_id_seq OWNER TO postgres;

--
-- Name: questansapp_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questansapp_answers_id_seq OWNED BY public.questansapp_answers.id;


--
-- Name: questansapp_questiongroups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questansapp_questiongroups (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.questansapp_questiongroups OWNER TO postgres;

--
-- Name: questansapp_questiongroups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questansapp_questiongroups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questansapp_questiongroups_id_seq OWNER TO postgres;

--
-- Name: questansapp_questiongroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questansapp_questiongroups_id_seq OWNED BY public.questansapp_questiongroups.id;


--
-- Name: questansapp_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questansapp_questions (
    id integer NOT NULL,
    title text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    slug character varying(50) NOT NULL,
    group_id integer,
    user_id integer
);


ALTER TABLE public.questansapp_questions OWNER TO postgres;

--
-- Name: questansapp_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questansapp_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questansapp_questions_id_seq OWNER TO postgres;

--
-- Name: questansapp_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questansapp_questions_id_seq OWNED BY public.questansapp_questions.id;


--
-- Name: appcore_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user ALTER COLUMN id SET DEFAULT nextval('public.appcore_user_id_seq'::regclass);


--
-- Name: appcore_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_groups ALTER COLUMN id SET DEFAULT nextval('public.appcore_user_groups_id_seq'::regclass);


--
-- Name: appcore_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.appcore_user_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: questansapp_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_answers ALTER COLUMN id SET DEFAULT nextval('public.questansapp_answers_id_seq'::regclass);


--
-- Name: questansapp_questiongroups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_questiongroups ALTER COLUMN id SET DEFAULT nextval('public.questansapp_questiongroups_id_seq'::regclass);


--
-- Name: questansapp_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_questions ALTER COLUMN id SET DEFAULT nextval('public.questansapp_questions_id_seq'::regclass);


--
-- Data for Name: appcore_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appcore_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$D0Az0tJxtuN3$/7CSI3eYv6w98V+5KMoEctvqheQczZgbDYWrDtGeBPE=	\N	t	admin			awase008@gmail.com	t	t	2019-04-10 14:20:15.712616+05:30
2	pbkdf2_sha256$120000$u8nLAD7wOpJs$npUrIJ+Enfa/edwNNOkf1z6b6gDFdSCWBb/z/6CaxMM=	2019-04-10 16:41:20.181903+05:30	f	awase	Awase Khirni	Syed	awasekhirni@gmail.com	f	t	2019-04-10 16:41:19.799994+05:30
3	pbkdf2_sha256$120000$zmyOU0aRqqXo$elWsrPBKG92upAHPrmG6/6qlRMDH6uXBr3vq6XU+lBM=	2019-04-11 16:17:54.31243+05:30	f	sak	AWASE	SYED	awasekhirni@gmail.com	f	t	2019-04-11 16:17:53.231081+05:30
\.


--
-- Data for Name: appcore_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appcore_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: appcore_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.appcore_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add question groups	7	add_questiongroups
26	Can change question groups	7	change_questiongroups
27	Can delete question groups	7	delete_questiongroups
28	Can view question groups	7	view_questiongroups
29	Can add questions	8	add_questions
30	Can change questions	8	change_questions
31	Can delete questions	8	delete_questions
32	Can view questions	8	view_questions
33	Can add answers	9	add_answers
34	Can change answers	9	change_answers
35	Can delete answers	9	delete_answers
36	Can view answers	9	view_answers
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	appcore	user
7	questansapp	questiongroups
8	questansapp	questions
9	questansapp	answers
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-04-10 14:19:37.852635+05:30
2	contenttypes	0002_remove_content_type_name	2019-04-10 14:19:37.969511+05:30
3	auth	0001_initial	2019-04-10 14:19:38.876667+05:30
4	auth	0002_alter_permission_name_max_length	2019-04-10 14:19:38.905676+05:30
5	auth	0003_alter_user_email_max_length	2019-04-10 14:19:38.929632+05:30
6	auth	0004_alter_user_username_opts	2019-04-10 14:19:38.95362+05:30
7	auth	0005_alter_user_last_login_null	2019-04-10 14:19:38.965611+05:30
8	auth	0006_require_contenttypes_0002	2019-04-10 14:19:38.968628+05:30
9	auth	0007_alter_validators_add_error_messages	2019-04-10 14:19:38.977605+05:30
10	auth	0008_alter_user_username_max_length	2019-04-10 14:19:38.987599+05:30
11	auth	0009_alter_user_last_name_max_length	2019-04-10 14:19:38.998592+05:30
12	appcore	0001_initial	2019-04-10 14:19:39.908786+05:30
13	admin	0001_initial	2019-04-10 14:19:40.425644+05:30
14	admin	0002_logentry_remove_auto_add	2019-04-10 14:19:40.438842+05:30
15	admin	0003_logentry_add_action_flag_choices	2019-04-10 14:19:40.454054+05:30
16	sessions	0001_initial	2019-04-10 14:19:40.668654+05:30
17	questansapp	0001_initial	2019-04-10 16:28:04.197849+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
3ionqh7djzwy6xzxoubuscr71fw7atsq	Y2IxMGY1MDJiZTRkZjBjYTEwNzBiN2NkYWVkYzNhOWY2MWJjYzAyYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZWFkZWQwZmZmMmU5NzAwMmMzZDc2ZTE2MmQwZjRiNTUwNjZjYTg2In0=	2019-04-24 16:41:20.247277+05:30
y83zf393spe6dl7v0tic1pltn9ikmpyo	NjNjMDNmMjFiZTc3ZGUwZWRlYjMzMWM5ZjQyMmI5YzAxNTY2NGMwNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYWNkMGJjNjc4ODhlYjZiYWIwOWY2YjM1MTYxNGU5OWIxMjBhYzRlIn0=	2019-04-25 16:17:54.365403+05:30
\.


--
-- Data for Name: questansapp_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questansapp_answers (id, answer_text, is_anonymous, question_id, user_id) FROM stdin;
\.


--
-- Data for Name: questansapp_questiongroups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questansapp_questiongroups (id, name) FROM stdin;
1	technology
2	technology
\.


--
-- Data for Name: questansapp_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questansapp_questions (id, title, created_on, updated_on, slug, group_id, user_id) FROM stdin;
\.


--
-- Name: appcore_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appcore_user_groups_id_seq', 1, false);


--
-- Name: appcore_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appcore_user_id_seq', 3, true);


--
-- Name: appcore_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.appcore_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 17, true);


--
-- Name: questansapp_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questansapp_answers_id_seq', 1, false);


--
-- Name: questansapp_questiongroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questansapp_questiongroups_id_seq', 2, true);


--
-- Name: questansapp_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questansapp_questions_id_seq', 1, false);


--
-- Name: appcore_user_groups appcore_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_groups
    ADD CONSTRAINT appcore_user_groups_pkey PRIMARY KEY (id);


--
-- Name: appcore_user_groups appcore_user_groups_user_id_group_id_ee6f3e5e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_groups
    ADD CONSTRAINT appcore_user_groups_user_id_group_id_ee6f3e5e_uniq UNIQUE (user_id, group_id);


--
-- Name: appcore_user appcore_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user
    ADD CONSTRAINT appcore_user_pkey PRIMARY KEY (id);


--
-- Name: appcore_user_user_permissions appcore_user_user_permis_user_id_permission_id_2685e89e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_user_permissions
    ADD CONSTRAINT appcore_user_user_permis_user_id_permission_id_2685e89e_uniq UNIQUE (user_id, permission_id);


--
-- Name: appcore_user_user_permissions appcore_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_user_permissions
    ADD CONSTRAINT appcore_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: appcore_user appcore_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user
    ADD CONSTRAINT appcore_user_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: questansapp_answers questansapp_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_answers
    ADD CONSTRAINT questansapp_answers_pkey PRIMARY KEY (id);


--
-- Name: questansapp_questiongroups questansapp_questiongroups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_questiongroups
    ADD CONSTRAINT questansapp_questiongroups_pkey PRIMARY KEY (id);


--
-- Name: questansapp_questions questansapp_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_questions
    ADD CONSTRAINT questansapp_questions_pkey PRIMARY KEY (id);


--
-- Name: appcore_user_groups_group_id_a976da01; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appcore_user_groups_group_id_a976da01 ON public.appcore_user_groups USING btree (group_id);


--
-- Name: appcore_user_groups_user_id_73068649; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appcore_user_groups_user_id_73068649 ON public.appcore_user_groups USING btree (user_id);


--
-- Name: appcore_user_user_permissions_permission_id_52ff527e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appcore_user_user_permissions_permission_id_52ff527e ON public.appcore_user_user_permissions USING btree (permission_id);


--
-- Name: appcore_user_user_permissions_user_id_d57edf23; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appcore_user_user_permissions_user_id_d57edf23 ON public.appcore_user_user_permissions USING btree (user_id);


--
-- Name: appcore_user_username_325f97a0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX appcore_user_username_325f97a0_like ON public.appcore_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: questansapp_answers_question_id_1c27eb48; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX questansapp_answers_question_id_1c27eb48 ON public.questansapp_answers USING btree (question_id);


--
-- Name: questansapp_answers_user_id_dbb5e4e4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX questansapp_answers_user_id_dbb5e4e4 ON public.questansapp_answers USING btree (user_id);


--
-- Name: questansapp_questions_group_id_fa11c88d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX questansapp_questions_group_id_fa11c88d ON public.questansapp_questions USING btree (group_id);


--
-- Name: questansapp_questions_slug_5b44782c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX questansapp_questions_slug_5b44782c ON public.questansapp_questions USING btree (slug);


--
-- Name: questansapp_questions_slug_5b44782c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX questansapp_questions_slug_5b44782c_like ON public.questansapp_questions USING btree (slug varchar_pattern_ops);


--
-- Name: questansapp_questions_user_id_0f41c015; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX questansapp_questions_user_id_0f41c015 ON public.questansapp_questions USING btree (user_id);


--
-- Name: appcore_user_groups appcore_user_groups_group_id_a976da01_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_groups
    ADD CONSTRAINT appcore_user_groups_group_id_a976da01_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: appcore_user_groups appcore_user_groups_user_id_73068649_fk_appcore_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_groups
    ADD CONSTRAINT appcore_user_groups_user_id_73068649_fk_appcore_user_id FOREIGN KEY (user_id) REFERENCES public.appcore_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: appcore_user_user_permissions appcore_user_user_pe_permission_id_52ff527e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_user_permissions
    ADD CONSTRAINT appcore_user_user_pe_permission_id_52ff527e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: appcore_user_user_permissions appcore_user_user_pe_user_id_d57edf23_fk_appcore_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appcore_user_user_permissions
    ADD CONSTRAINT appcore_user_user_pe_user_id_d57edf23_fk_appcore_u FOREIGN KEY (user_id) REFERENCES public.appcore_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_appcore_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_appcore_user_id FOREIGN KEY (user_id) REFERENCES public.appcore_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questansapp_answers questansapp_answers_question_id_1c27eb48_fk_questansa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_answers
    ADD CONSTRAINT questansapp_answers_question_id_1c27eb48_fk_questansa FOREIGN KEY (question_id) REFERENCES public.questansapp_questions(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questansapp_answers questansapp_answers_user_id_dbb5e4e4_fk_appcore_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_answers
    ADD CONSTRAINT questansapp_answers_user_id_dbb5e4e4_fk_appcore_user_id FOREIGN KEY (user_id) REFERENCES public.appcore_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questansapp_questions questansapp_question_group_id_fa11c88d_fk_questansa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_questions
    ADD CONSTRAINT questansapp_question_group_id_fa11c88d_fk_questansa FOREIGN KEY (group_id) REFERENCES public.questansapp_questiongroups(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: questansapp_questions questansapp_questions_user_id_0f41c015_fk_appcore_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questansapp_questions
    ADD CONSTRAINT questansapp_questions_user_id_0f41c015_fk_appcore_user_id FOREIGN KEY (user_id) REFERENCES public.appcore_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

