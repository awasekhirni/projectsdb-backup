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
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


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
-- Name: libraryapp_author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libraryapp_author (
    uid integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    date_of_birth date,
    date_of_death date
);


ALTER TABLE public.libraryapp_author OWNER TO postgres;

--
-- Name: libraryapp_author_uid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libraryapp_author_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libraryapp_author_uid_seq OWNER TO postgres;

--
-- Name: libraryapp_author_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libraryapp_author_uid_seq OWNED BY public.libraryapp_author.uid;


--
-- Name: libraryapp_bookinstance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libraryapp_bookinstance (
    id uuid NOT NULL,
    imprint character varying(200) NOT NULL,
    due_back date,
    status character varying(1) NOT NULL,
    book_id integer,
    borrower_id integer
);


ALTER TABLE public.libraryapp_bookinstance OWNER TO postgres;

--
-- Name: libraryapp_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libraryapp_genre (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.libraryapp_genre OWNER TO postgres;

--
-- Name: libraryapp_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libraryapp_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libraryapp_genre_id_seq OWNER TO postgres;

--
-- Name: libraryapp_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libraryapp_genre_id_seq OWNED BY public.libraryapp_genre.id;


--
-- Name: libraryapp_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libraryapp_language (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.libraryapp_language OWNER TO postgres;

--
-- Name: libraryapp_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libraryapp_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libraryapp_language_id_seq OWNER TO postgres;

--
-- Name: libraryapp_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libraryapp_language_id_seq OWNED BY public.libraryapp_language.id;


--
-- Name: lmsapp_book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lmsapp_book (
    bookid integer NOT NULL,
    title character varying(200) NOT NULL,
    summary text NOT NULL,
    isbn character varying(13) NOT NULL,
    author_id integer
);


ALTER TABLE public.lmsapp_book OWNER TO postgres;

--
-- Name: lmsapp_book_bookid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lmsapp_book_bookid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lmsapp_book_bookid_seq OWNER TO postgres;

--
-- Name: lmsapp_book_bookid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lmsapp_book_bookid_seq OWNED BY public.lmsapp_book.bookid;


--
-- Name: lmsapp_book_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lmsapp_book_genre (
    id integer NOT NULL,
    book_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.lmsapp_book_genre OWNER TO postgres;

--
-- Name: lmsapp_book_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lmsapp_book_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lmsapp_book_genre_id_seq OWNER TO postgres;

--
-- Name: lmsapp_book_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lmsapp_book_genre_id_seq OWNED BY public.lmsapp_book_genre.id;


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
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


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
-- Name: libraryapp_author uid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_author ALTER COLUMN uid SET DEFAULT nextval('public.libraryapp_author_uid_seq'::regclass);


--
-- Name: libraryapp_genre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_genre ALTER COLUMN id SET DEFAULT nextval('public.libraryapp_genre_id_seq'::regclass);


--
-- Name: libraryapp_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_language ALTER COLUMN id SET DEFAULT nextval('public.libraryapp_language_id_seq'::regclass);


--
-- Name: lmsapp_book bookid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lmsapp_book ALTER COLUMN bookid SET DEFAULT nextval('public.lmsapp_book_bookid_seq'::regclass);


--
-- Name: lmsapp_book_genre id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lmsapp_book_genre ALTER COLUMN id SET DEFAULT nextval('public.lmsapp_book_genre_id_seq'::regclass);


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
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add book instance	9	add_bookinstance
34	Can change book instance	9	change_bookinstance
35	Can delete book instance	9	delete_bookinstance
36	Can view book instance	9	view_bookinstance
37	Can add genre	10	add_genre
38	Can change genre	10	change_genre
39	Can delete genre	10	delete_genre
40	Can view genre	10	view_genre
41	Can add language	11	add_language
42	Can change language	11	change_language
43	Can delete language	11	delete_language
44	Can view language	11	view_language
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$YU73cuL99D4H$ZjYwkMAirTmkWUUSvcIUMKdxr8Na/yMUCt3V1S6yjV8=	2019-03-26 16:37:26.874409+05:30	t	admin			awasekhirni@gmail.com	t	t	2019-03-26 16:37:00.312648+05:30
2	pbkdf2_sha256$120000$EABJYDXN5U1q$5cpEoWrRRePF+faGRtbH3DNF83QNwtfnWXebzGM5SOM=	\N	f	rayyan				f	t	2019-03-26 16:39:49.127779+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-03-26 16:37:37.446466+05:30	1	SYED-AWASE	1	[{"added": {}}]	7	1
2	2019-03-26 16:37:52.120919+05:30	2	SYED-Ameese	1	[{"added": {}}]	7	1
3	2019-03-26 16:38:03.354736+05:30	3	SYED-Azeez	1	[{"added": {}}]	7	1
4	2019-03-26 16:38:36.947333+05:30	1	Fiction	1	[{"added": {}}]	10	1
5	2019-03-26 16:38:43.334336+05:30	2	Programming	1	[{"added": {}}]	10	1
6	2019-03-26 16:38:49.034565+05:30	3	Technology	1	[{"added": {}}]	10	1
7	2019-03-26 16:38:55.055077+05:30	4	Leadership	1	[{"added": {}}]	10	1
8	2019-03-26 16:38:59.425795+05:30	1	Programming in Python	1	[{"added": {}}]	8	1
9	2019-03-26 16:39:21.163138+05:30	2	Leadership Principles	1	[{"added": {}}]	8	1
10	2019-03-26 16:39:49.32167+05:30	2	rayyan	1	[{"added": {}}]	4	1
11	2019-03-26 16:41:23.039709+05:30	f164fbc0-f970-410f-98b5-4e8c177bcd97	BookInstance object (f164fbc0-f970-410f-98b5-4e8c177bcd97)	1	[{"added": {}}]	9	1
12	2019-03-26 16:56:03.685789+05:30	2	Leadership Principles	2	[]	8	1
13	2019-03-26 16:56:29.537045+05:30	3	Manipuri Journalist Jailed Under NSA Seriously Ill, Being Treated at Local Hospital	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	libraryapp	author
8	libraryapp	book
9	libraryapp	bookinstance
10	libraryapp	genre
11	libraryapp	language
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-03-26 16:36:16.603453+05:30
2	auth	0001_initial	2019-03-26 16:36:18.114771+05:30
3	admin	0001_initial	2019-03-26 16:36:18.399295+05:30
4	admin	0002_logentry_remove_auto_add	2019-03-26 16:36:18.408816+05:30
5	admin	0003_logentry_add_action_flag_choices	2019-03-26 16:36:18.430821+05:30
6	contenttypes	0002_remove_content_type_name	2019-03-26 16:36:18.454788+05:30
7	auth	0002_alter_permission_name_max_length	2019-03-26 16:36:18.464787+05:30
8	auth	0003_alter_user_email_max_length	2019-03-26 16:36:18.476777+05:30
9	auth	0004_alter_user_username_opts	2019-03-26 16:36:18.487771+05:30
10	auth	0005_alter_user_last_login_null	2019-03-26 16:36:18.500763+05:30
11	auth	0006_require_contenttypes_0002	2019-03-26 16:36:18.50576+05:30
12	auth	0007_alter_validators_add_error_messages	2019-03-26 16:36:18.519752+05:30
13	auth	0008_alter_user_username_max_length	2019-03-26 16:36:18.598709+05:30
14	auth	0009_alter_user_last_name_max_length	2019-03-26 16:36:18.610714+05:30
15	libraryapp	0001_initial	2019-03-26 16:36:19.413229+05:30
16	sessions	0001_initial	2019-03-26 16:36:19.905152+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
h3bvofgqp6tba6l8vjk901sekf0fr6xo	N2Q5YjBkMTc5YmRkYjMyMWIwNmZlOWU3MTRjNjI4MjQxMmE2OGE2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODQ4M2RiMzZkMGJjZWE4ZTNiZTM1OWZkNWJhNTAyMDYzOWMwZDBiIn0=	2019-04-09 16:37:26.877407+05:30
\.


--
-- Data for Name: libraryapp_author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libraryapp_author (uid, first_name, last_name, date_of_birth, date_of_death) FROM stdin;
1	AWASE	SYED	1975-03-05	\N
2	Ameese	SYED	1978-03-10	\N
3	Azeez	SYED	1989-08-09	\N
\.


--
-- Data for Name: libraryapp_bookinstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libraryapp_bookinstance (id, imprint, due_back, status, book_id, borrower_id) FROM stdin;
f164fbc0-f970-410f-98b5-4e8c177bcd97	12398090123	2019-03-31	a	1	2
\.


--
-- Data for Name: libraryapp_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libraryapp_genre (id, name) FROM stdin;
1	Fiction
2	Programming
3	Technology
4	Leadership
\.


--
-- Data for Name: libraryapp_language; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libraryapp_language (id, name) FROM stdin;
\.


--
-- Data for Name: lmsapp_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lmsapp_book (bookid, title, summary, isbn, author_id) FROM stdin;
1	Programming in Python	Programming in Python	9789295055121	1
2	Leadership Principles	Leadership	9789295055958	2
3	Manipuri Journalist Jailed Under NSA Seriously Ill, Being Treated at Local Hospital	sadasdasdasd	1312412312124	2
\.


--
-- Data for Name: lmsapp_book_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lmsapp_book_genre (id, book_id, genre_id) FROM stdin;
1	1	2
2	2	4
3	3	1
\.


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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 13, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 16, true);


--
-- Name: libraryapp_author_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libraryapp_author_uid_seq', 3, true);


--
-- Name: libraryapp_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libraryapp_genre_id_seq', 4, true);


--
-- Name: libraryapp_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libraryapp_language_id_seq', 1, false);


--
-- Name: lmsapp_book_bookid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lmsapp_book_bookid_seq', 3, true);


--
-- Name: lmsapp_book_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lmsapp_book_genre_id_seq', 3, true);


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
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


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
-- Name: libraryapp_author libraryapp_author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_author
    ADD CONSTRAINT libraryapp_author_pkey PRIMARY KEY (uid);


--
-- Name: libraryapp_bookinstance libraryapp_bookinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_bookinstance
    ADD CONSTRAINT libraryapp_bookinstance_pkey PRIMARY KEY (id);


--
-- Name: libraryapp_genre libraryapp_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_genre
    ADD CONSTRAINT libraryapp_genre_pkey PRIMARY KEY (id);


--
-- Name: libraryapp_language libraryapp_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_language
    ADD CONSTRAINT libraryapp_language_pkey PRIMARY KEY (id);


--
-- Name: lmsapp_book_genre lmsapp_book_genre_book_id_genre_id_935a33db_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lmsapp_book_genre
    ADD CONSTRAINT lmsapp_book_genre_book_id_genre_id_935a33db_uniq UNIQUE (book_id, genre_id);


--
-- Name: lmsapp_book_genre lmsapp_book_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lmsapp_book_genre
    ADD CONSTRAINT lmsapp_book_genre_pkey PRIMARY KEY (id);


--
-- Name: lmsapp_book lmsapp_book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lmsapp_book
    ADD CONSTRAINT lmsapp_book_pkey PRIMARY KEY (bookid);


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
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


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
-- Name: libraryapp_bookinstance_book_id_ba1efcd0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX libraryapp_bookinstance_book_id_ba1efcd0 ON public.libraryapp_bookinstance USING btree (book_id);


--
-- Name: libraryapp_bookinstance_borrower_id_75beb0c5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX libraryapp_bookinstance_borrower_id_75beb0c5 ON public.libraryapp_bookinstance USING btree (borrower_id);


--
-- Name: lmsapp_book_author_id_d3942f88; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lmsapp_book_author_id_d3942f88 ON public.lmsapp_book USING btree (author_id);


--
-- Name: lmsapp_book_genre_book_id_6152a372; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lmsapp_book_genre_book_id_6152a372 ON public.lmsapp_book_genre USING btree (book_id);


--
-- Name: lmsapp_book_genre_genre_id_0009d2c6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lmsapp_book_genre_genre_id_0009d2c6 ON public.lmsapp_book_genre USING btree (genre_id);


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
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: libraryapp_bookinstance libraryapp_bookinstance_book_id_ba1efcd0_fk_lmsapp_book_bookid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_bookinstance
    ADD CONSTRAINT libraryapp_bookinstance_book_id_ba1efcd0_fk_lmsapp_book_bookid FOREIGN KEY (book_id) REFERENCES public.lmsapp_book(bookid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: libraryapp_bookinstance libraryapp_bookinstance_borrower_id_75beb0c5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libraryapp_bookinstance
    ADD CONSTRAINT libraryapp_bookinstance_borrower_id_75beb0c5_fk_auth_user_id FOREIGN KEY (borrower_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lmsapp_book lmsapp_book_author_id_d3942f88_fk_libraryapp_author_uid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lmsapp_book
    ADD CONSTRAINT lmsapp_book_author_id_d3942f88_fk_libraryapp_author_uid FOREIGN KEY (author_id) REFERENCES public.libraryapp_author(uid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lmsapp_book_genre lmsapp_book_genre_book_id_6152a372_fk_lmsapp_book_bookid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lmsapp_book_genre
    ADD CONSTRAINT lmsapp_book_genre_book_id_6152a372_fk_lmsapp_book_bookid FOREIGN KEY (book_id) REFERENCES public.lmsapp_book(bookid) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lmsapp_book_genre lmsapp_book_genre_genre_id_0009d2c6_fk_libraryapp_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lmsapp_book_genre
    ADD CONSTRAINT lmsapp_book_genre_genre_id_0009d2c6_fk_libraryapp_genre_id FOREIGN KEY (genre_id) REFERENCES public.libraryapp_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

