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
-- Name: accountsapp_campus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_campus (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    address character varying(60) NOT NULL
);


ALTER TABLE public.accountsapp_campus OWNER TO postgres;

--
-- Name: accountsapp_campus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accountsapp_campus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountsapp_campus_id_seq OWNER TO postgres;

--
-- Name: accountsapp_campus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accountsapp_campus_id_seq OWNED BY public.accountsapp_campus.id;


--
-- Name: accountsapp_cursus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_cursus (
    id integer NOT NULL,
    title character varying(30) NOT NULL
);


ALTER TABLE public.accountsapp_cursus OWNER TO postgres;

--
-- Name: accountsapp_cursus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accountsapp_cursus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountsapp_cursus_id_seq OWNER TO postgres;

--
-- Name: accountsapp_cursus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accountsapp_cursus_id_seq OWNED BY public.accountsapp_cursus.id;


--
-- Name: accountsapp_employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_employee (
    user_ptr_id uuid NOT NULL,
    office character varying(30) NOT NULL,
    campus_id integer NOT NULL,
    job_id integer NOT NULL
);


ALTER TABLE public.accountsapp_employee OWNER TO postgres;

--
-- Name: accountsapp_enterprise; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_enterprise (
    user_ptr_id uuid NOT NULL,
    logo character varying(100) NOT NULL,
    office character varying(30) NOT NULL,
    address text NOT NULL,
    description character varying(300) NOT NULL
);


ALTER TABLE public.accountsapp_enterprise OWNER TO postgres;

--
-- Name: accountsapp_faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_faculty (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(6) NOT NULL
);


ALTER TABLE public.accountsapp_faculty OWNER TO postgres;

--
-- Name: accountsapp_faculty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accountsapp_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountsapp_faculty_id_seq OWNER TO postgres;

--
-- Name: accountsapp_faculty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accountsapp_faculty_id_seq OWNED BY public.accountsapp_faculty.id;


--
-- Name: accountsapp_job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_job (
    id integer NOT NULL,
    title character varying(30) NOT NULL
);


ALTER TABLE public.accountsapp_job OWNER TO postgres;

--
-- Name: accountsapp_job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accountsapp_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountsapp_job_id_seq OWNER TO postgres;

--
-- Name: accountsapp_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accountsapp_job_id_seq OWNED BY public.accountsapp_job.id;


--
-- Name: accountsapp_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_message (
    id integer NOT NULL,
    topic character varying(2) NOT NULL,
    content text NOT NULL,
    publication_date date NOT NULL,
    author_id uuid NOT NULL
);


ALTER TABLE public.accountsapp_message OWNER TO postgres;

--
-- Name: accountsapp_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accountsapp_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountsapp_message_id_seq OWNER TO postgres;

--
-- Name: accountsapp_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accountsapp_message_id_seq OWNED BY public.accountsapp_message.id;


--
-- Name: accountsapp_notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_notification (
    id integer NOT NULL,
    object_id integer NOT NULL,
    status character varying(20) NOT NULL,
    seen boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    content_type_id integer NOT NULL,
    receiver_id uuid NOT NULL,
    CONSTRAINT accountsapp_notification_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.accountsapp_notification OWNER TO postgres;

--
-- Name: accountsapp_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accountsapp_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountsapp_notification_id_seq OWNER TO postgres;

--
-- Name: accountsapp_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accountsapp_notification_id_seq OWNED BY public.accountsapp_notification.id;


--
-- Name: accountsapp_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_student (
    user_ptr_id uuid NOT NULL,
    year integer NOT NULL,
    campus_id integer NOT NULL
);


ALTER TABLE public.accountsapp_student OWNER TO postgres;

--
-- Name: accountsapp_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_user (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    registration_number uuid NOT NULL,
    last_name character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    birth_date date,
    email character varying(255) NOT NULL,
    active boolean NOT NULL,
    staff boolean NOT NULL,
    admin boolean NOT NULL,
    home_phone character varying(20) NOT NULL,
    mobile_phone character varying(30) NOT NULL,
    faculty_id integer
);


ALTER TABLE public.accountsapp_user OWNER TO postgres;

--
-- Name: accountsapp_user_friends; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accountsapp_user_friends (
    id integer NOT NULL,
    from_user_id uuid NOT NULL,
    to_user_id uuid NOT NULL
);


ALTER TABLE public.accountsapp_user_friends OWNER TO postgres;

--
-- Name: accountsapp_user_friends_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accountsapp_user_friends_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountsapp_user_friends_id_seq OWNER TO postgres;

--
-- Name: accountsapp_user_friends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accountsapp_user_friends_id_seq OWNED BY public.accountsapp_user_friends.id;


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
    user_id uuid NOT NULL,
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
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: accountsapp_campus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_campus ALTER COLUMN id SET DEFAULT nextval('public.accountsapp_campus_id_seq'::regclass);


--
-- Name: accountsapp_cursus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_cursus ALTER COLUMN id SET DEFAULT nextval('public.accountsapp_cursus_id_seq'::regclass);


--
-- Name: accountsapp_faculty id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_faculty ALTER COLUMN id SET DEFAULT nextval('public.accountsapp_faculty_id_seq'::regclass);


--
-- Name: accountsapp_job id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_job ALTER COLUMN id SET DEFAULT nextval('public.accountsapp_job_id_seq'::regclass);


--
-- Name: accountsapp_message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_message ALTER COLUMN id SET DEFAULT nextval('public.accountsapp_message_id_seq'::regclass);


--
-- Name: accountsapp_notification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_notification ALTER COLUMN id SET DEFAULT nextval('public.accountsapp_notification_id_seq'::regclass);


--
-- Name: accountsapp_user_friends id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_user_friends ALTER COLUMN id SET DEFAULT nextval('public.accountsapp_user_friends_id_seq'::regclass);


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
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Data for Name: accountsapp_campus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_campus (id, name, address) FROM stdin;
\.


--
-- Data for Name: accountsapp_cursus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_cursus (id, title) FROM stdin;
\.


--
-- Data for Name: accountsapp_employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_employee (user_ptr_id, office, campus_id, job_id) FROM stdin;
\.


--
-- Data for Name: accountsapp_enterprise; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_enterprise (user_ptr_id, logo, office, address, description) FROM stdin;
\.


--
-- Data for Name: accountsapp_faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_faculty (id, name, color) FROM stdin;
\.


--
-- Data for Name: accountsapp_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_job (id, title) FROM stdin;
\.


--
-- Data for Name: accountsapp_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_message (id, topic, content, publication_date, author_id) FROM stdin;
\.


--
-- Data for Name: accountsapp_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_notification (id, object_id, status, seen, created, modified, content_type_id, receiver_id) FROM stdin;
\.


--
-- Data for Name: accountsapp_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_student (user_ptr_id, year, campus_id) FROM stdin;
\.


--
-- Data for Name: accountsapp_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_user (password, last_login, registration_number, last_name, first_name, birth_date, email, active, staff, admin, home_phone, mobile_phone, faculty_id) FROM stdin;
\.


--
-- Data for Name: accountsapp_user_friends; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accountsapp_user_friends (id, from_user_id, to_user_id) FROM stdin;
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
21	Can add site	6	add_site
22	Can change site	6	change_site
23	Can delete site	6	delete_site
24	Can view site	6	view_site
25	Can add User	7	add_user
26	Can change User	7	change_user
27	Can delete User	7	delete_user
28	Can view User	7	view_user
29	Can add Campus	8	add_campus
30	Can change Campus	8	change_campus
31	Can delete Campus	8	delete_campus
32	Can view Campus	8	view_campus
33	Can add Cursus	9	add_cursus
34	Can change Cursus	9	change_cursus
35	Can delete Cursus	9	delete_cursus
36	Can view Cursus	9	view_cursus
37	Can add Faculty	10	add_faculty
38	Can change Faculty	10	change_faculty
39	Can delete Faculty	10	delete_faculty
40	Can view Faculty	10	view_faculty
41	Can add job	11	add_job
42	Can change job	11	change_job
43	Can delete job	11	delete_job
44	Can view job	11	view_job
45	Can add Message	12	add_message
46	Can change Message	12	change_message
47	Can delete Message	12	delete_message
48	Can view Message	12	view_message
49	Can add Notification	13	add_notification
50	Can change Notification	13	change_notification
51	Can delete Notification	13	delete_notification
52	Can view Notification	13	view_notification
53	Can add employee	14	add_employee
54	Can change employee	14	change_employee
55	Can delete employee	14	delete_employee
56	Can view employee	14	view_employee
57	Can add enterprise	15	add_enterprise
58	Can change enterprise	15	change_enterprise
59	Can delete enterprise	15	delete_enterprise
60	Can view enterprise	15	view_enterprise
61	Can add student	16	add_student
62	Can change student	16	change_student
63	Can delete student	16	delete_student
64	Can view student	16	view_student
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
6	sites	site
7	accountsapp	user
8	accountsapp	campus
9	accountsapp	cursus
10	accountsapp	faculty
11	accountsapp	job
12	accountsapp	message
13	accountsapp	notification
14	accountsapp	employee
15	accountsapp	enterprise
16	accountsapp	student
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-04-13 10:44:13.180204+05:30
2	contenttypes	0002_remove_content_type_name	2019-04-13 10:44:13.455823+05:30
3	accountsapp	0001_initial	2019-04-13 10:44:17.531217+05:30
4	admin	0001_initial	2019-04-13 10:44:18.070644+05:30
5	admin	0002_logentry_remove_auto_add	2019-04-13 10:44:18.119611+05:30
6	admin	0003_logentry_add_action_flag_choices	2019-04-13 10:44:18.139602+05:30
7	auth	0001_initial	2019-04-13 10:44:19.433584+05:30
8	auth	0002_alter_permission_name_max_length	2019-04-13 10:44:19.46055+05:30
9	auth	0003_alter_user_email_max_length	2019-04-13 10:44:19.899439+05:30
10	auth	0004_alter_user_username_opts	2019-04-13 10:44:20.158383+05:30
11	auth	0005_alter_user_last_login_null	2019-04-13 10:44:20.178353+05:30
12	auth	0006_require_contenttypes_0002	2019-04-13 10:44:20.196343+05:30
13	auth	0007_alter_validators_add_error_messages	2019-04-13 10:44:20.208336+05:30
14	auth	0008_alter_user_username_max_length	2019-04-13 10:44:20.225326+05:30
15	auth	0009_alter_user_last_name_max_length	2019-04-13 10:44:20.25331+05:30
16	sessions	0001_initial	2019-04-13 10:44:21.376363+05:30
17	sites	0001_initial	2019-04-13 10:44:21.482889+05:30
18	sites	0002_alter_domain_unique	2019-04-13 10:44:22.079901+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: accountsapp_campus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accountsapp_campus_id_seq', 1, false);


--
-- Name: accountsapp_cursus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accountsapp_cursus_id_seq', 1, false);


--
-- Name: accountsapp_faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accountsapp_faculty_id_seq', 1, false);


--
-- Name: accountsapp_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accountsapp_job_id_seq', 1, false);


--
-- Name: accountsapp_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accountsapp_message_id_seq', 1, false);


--
-- Name: accountsapp_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accountsapp_notification_id_seq', 1, false);


--
-- Name: accountsapp_user_friends_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accountsapp_user_friends_id_seq', 1, false);


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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: accountsapp_campus accountsapp_campus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_campus
    ADD CONSTRAINT accountsapp_campus_pkey PRIMARY KEY (id);


--
-- Name: accountsapp_cursus accountsapp_cursus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_cursus
    ADD CONSTRAINT accountsapp_cursus_pkey PRIMARY KEY (id);


--
-- Name: accountsapp_cursus accountsapp_cursus_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_cursus
    ADD CONSTRAINT accountsapp_cursus_title_key UNIQUE (title);


--
-- Name: accountsapp_employee accountsapp_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_employee
    ADD CONSTRAINT accountsapp_employee_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: accountsapp_enterprise accountsapp_enterprise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_enterprise
    ADD CONSTRAINT accountsapp_enterprise_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: accountsapp_faculty accountsapp_faculty_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_faculty
    ADD CONSTRAINT accountsapp_faculty_name_key UNIQUE (name);


--
-- Name: accountsapp_faculty accountsapp_faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_faculty
    ADD CONSTRAINT accountsapp_faculty_pkey PRIMARY KEY (id);


--
-- Name: accountsapp_job accountsapp_job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_job
    ADD CONSTRAINT accountsapp_job_pkey PRIMARY KEY (id);


--
-- Name: accountsapp_job accountsapp_job_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_job
    ADD CONSTRAINT accountsapp_job_title_key UNIQUE (title);


--
-- Name: accountsapp_message accountsapp_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_message
    ADD CONSTRAINT accountsapp_message_pkey PRIMARY KEY (id);


--
-- Name: accountsapp_notification accountsapp_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_notification
    ADD CONSTRAINT accountsapp_notification_pkey PRIMARY KEY (id);


--
-- Name: accountsapp_student accountsapp_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_student
    ADD CONSTRAINT accountsapp_student_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: accountsapp_user accountsapp_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_user
    ADD CONSTRAINT accountsapp_user_email_key UNIQUE (email);


--
-- Name: accountsapp_user_friends accountsapp_user_friends_from_user_id_to_user_id_fd75c809_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_user_friends
    ADD CONSTRAINT accountsapp_user_friends_from_user_id_to_user_id_fd75c809_uniq UNIQUE (from_user_id, to_user_id);


--
-- Name: accountsapp_user_friends accountsapp_user_friends_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_user_friends
    ADD CONSTRAINT accountsapp_user_friends_pkey PRIMARY KEY (id);


--
-- Name: accountsapp_user accountsapp_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_user
    ADD CONSTRAINT accountsapp_user_pkey PRIMARY KEY (registration_number);


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
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: accountsapp_cursus_title_df9d0a24_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_cursus_title_df9d0a24_like ON public.accountsapp_cursus USING btree (title varchar_pattern_ops);


--
-- Name: accountsapp_employee_campus_id_9e56f55f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_employee_campus_id_9e56f55f ON public.accountsapp_employee USING btree (campus_id);


--
-- Name: accountsapp_employee_job_id_31e5c598; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_employee_job_id_31e5c598 ON public.accountsapp_employee USING btree (job_id);


--
-- Name: accountsapp_faculty_name_a7c81acd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_faculty_name_a7c81acd_like ON public.accountsapp_faculty USING btree (name varchar_pattern_ops);


--
-- Name: accountsapp_job_title_396b84ba_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_job_title_396b84ba_like ON public.accountsapp_job USING btree (title varchar_pattern_ops);


--
-- Name: accountsapp_message_author_id_b8f2dd03; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_message_author_id_b8f2dd03 ON public.accountsapp_message USING btree (author_id);


--
-- Name: accountsapp_notification_content_type_id_66610d50; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_notification_content_type_id_66610d50 ON public.accountsapp_notification USING btree (content_type_id);


--
-- Name: accountsapp_notification_receiver_id_2b5972e7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_notification_receiver_id_2b5972e7 ON public.accountsapp_notification USING btree (receiver_id);


--
-- Name: accountsapp_student_campus_id_226d166e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_student_campus_id_226d166e ON public.accountsapp_student USING btree (campus_id);


--
-- Name: accountsapp_user_email_f9b52a7b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_user_email_f9b52a7b_like ON public.accountsapp_user USING btree (email varchar_pattern_ops);


--
-- Name: accountsapp_user_faculty_id_38fec021; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_user_faculty_id_38fec021 ON public.accountsapp_user USING btree (faculty_id);


--
-- Name: accountsapp_user_friends_from_user_id_72c0e9eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_user_friends_from_user_id_72c0e9eb ON public.accountsapp_user_friends USING btree (from_user_id);


--
-- Name: accountsapp_user_friends_to_user_id_a2266feb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accountsapp_user_friends_to_user_id_a2266feb ON public.accountsapp_user_friends USING btree (to_user_id);


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
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: accountsapp_employee accountsapp_employee_campus_id_9e56f55f_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_employee
    ADD CONSTRAINT accountsapp_employee_campus_id_9e56f55f_fk_accountsa FOREIGN KEY (campus_id) REFERENCES public.accountsapp_campus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_employee accountsapp_employee_job_id_31e5c598_fk_accountsapp_job_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_employee
    ADD CONSTRAINT accountsapp_employee_job_id_31e5c598_fk_accountsapp_job_id FOREIGN KEY (job_id) REFERENCES public.accountsapp_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_employee accountsapp_employee_user_ptr_id_71f9e27a_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_employee
    ADD CONSTRAINT accountsapp_employee_user_ptr_id_71f9e27a_fk_accountsa FOREIGN KEY (user_ptr_id) REFERENCES public.accountsapp_user(registration_number) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_enterprise accountsapp_enterpri_user_ptr_id_8be55aec_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_enterprise
    ADD CONSTRAINT accountsapp_enterpri_user_ptr_id_8be55aec_fk_accountsa FOREIGN KEY (user_ptr_id) REFERENCES public.accountsapp_user(registration_number) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_message accountsapp_message_author_id_b8f2dd03_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_message
    ADD CONSTRAINT accountsapp_message_author_id_b8f2dd03_fk_accountsa FOREIGN KEY (author_id) REFERENCES public.accountsapp_user(registration_number) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_notification accountsapp_notifica_content_type_id_66610d50_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_notification
    ADD CONSTRAINT accountsapp_notifica_content_type_id_66610d50_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_notification accountsapp_notifica_receiver_id_2b5972e7_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_notification
    ADD CONSTRAINT accountsapp_notifica_receiver_id_2b5972e7_fk_accountsa FOREIGN KEY (receiver_id) REFERENCES public.accountsapp_user(registration_number) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_student accountsapp_student_campus_id_226d166e_fk_accountsapp_campus_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_student
    ADD CONSTRAINT accountsapp_student_campus_id_226d166e_fk_accountsapp_campus_id FOREIGN KEY (campus_id) REFERENCES public.accountsapp_campus(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_student accountsapp_student_user_ptr_id_6bc4d453_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_student
    ADD CONSTRAINT accountsapp_student_user_ptr_id_6bc4d453_fk_accountsa FOREIGN KEY (user_ptr_id) REFERENCES public.accountsapp_user(registration_number) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_user accountsapp_user_faculty_id_38fec021_fk_accountsapp_faculty_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_user
    ADD CONSTRAINT accountsapp_user_faculty_id_38fec021_fk_accountsapp_faculty_id FOREIGN KEY (faculty_id) REFERENCES public.accountsapp_faculty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_user_friends accountsapp_user_fri_from_user_id_72c0e9eb_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_user_friends
    ADD CONSTRAINT accountsapp_user_fri_from_user_id_72c0e9eb_fk_accountsa FOREIGN KEY (from_user_id) REFERENCES public.accountsapp_user(registration_number) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accountsapp_user_friends accountsapp_user_fri_to_user_id_a2266feb_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accountsapp_user_friends
    ADD CONSTRAINT accountsapp_user_fri_to_user_id_a2266feb_fk_accountsa FOREIGN KEY (to_user_id) REFERENCES public.accountsapp_user(registration_number) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_accountsa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accountsa FOREIGN KEY (user_id) REFERENCES public.accountsapp_user(registration_number) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

