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
-- Name: classroom_answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_answer (
    id integer NOT NULL,
    text character varying(255) NOT NULL,
    is_correct boolean NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.classroom_answer OWNER TO postgres;

--
-- Name: classroom_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_answer_id_seq OWNER TO postgres;

--
-- Name: classroom_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_answer_id_seq OWNED BY public.classroom_answer.id;


--
-- Name: classroom_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_question (
    id integer NOT NULL,
    text character varying(255) NOT NULL,
    quiz_id integer NOT NULL
);


ALTER TABLE public.classroom_question OWNER TO postgres;

--
-- Name: classroom_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_question_id_seq OWNER TO postgres;

--
-- Name: classroom_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_question_id_seq OWNED BY public.classroom_question.id;


--
-- Name: classroom_quiz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_quiz (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    owner_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE public.classroom_quiz OWNER TO postgres;

--
-- Name: classroom_quiz_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_quiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_quiz_id_seq OWNER TO postgres;

--
-- Name: classroom_quiz_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_quiz_id_seq OWNED BY public.classroom_quiz.id;


--
-- Name: classroom_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_student (
    user_id integer NOT NULL
);


ALTER TABLE public.classroom_student OWNER TO postgres;

--
-- Name: classroom_student_interests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_student_interests (
    id integer NOT NULL,
    student_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE public.classroom_student_interests OWNER TO postgres;

--
-- Name: classroom_student_interests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_student_interests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_student_interests_id_seq OWNER TO postgres;

--
-- Name: classroom_student_interests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_student_interests_id_seq OWNED BY public.classroom_student_interests.id;


--
-- Name: classroom_studentanswer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_studentanswer (
    id integer NOT NULL,
    answer_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.classroom_studentanswer OWNER TO postgres;

--
-- Name: classroom_studentanswer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_studentanswer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_studentanswer_id_seq OWNER TO postgres;

--
-- Name: classroom_studentanswer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_studentanswer_id_seq OWNED BY public.classroom_studentanswer.id;


--
-- Name: classroom_subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_subject (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(7) NOT NULL
);


ALTER TABLE public.classroom_subject OWNER TO postgres;

--
-- Name: classroom_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_subject_id_seq OWNER TO postgres;

--
-- Name: classroom_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_subject_id_seq OWNED BY public.classroom_subject.id;


--
-- Name: classroom_takequiz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_takequiz (
    id integer NOT NULL,
    score double precision NOT NULL,
    date timestamp with time zone NOT NULL,
    quiz_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.classroom_takequiz OWNER TO postgres;

--
-- Name: classroom_takequiz_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_takequiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_takequiz_id_seq OWNER TO postgres;

--
-- Name: classroom_takequiz_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_takequiz_id_seq OWNED BY public.classroom_takequiz.id;


--
-- Name: classroom_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_user (
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
    date_joined timestamp with time zone NOT NULL,
    is_student boolean NOT NULL,
    is_teacher boolean NOT NULL
);


ALTER TABLE public.classroom_user OWNER TO postgres;

--
-- Name: classroom_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.classroom_user_groups OWNER TO postgres;

--
-- Name: classroom_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_user_groups_id_seq OWNER TO postgres;

--
-- Name: classroom_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_user_groups_id_seq OWNED BY public.classroom_user_groups.id;


--
-- Name: classroom_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_user_id_seq OWNER TO postgres;

--
-- Name: classroom_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_user_id_seq OWNED BY public.classroom_user.id;


--
-- Name: classroom_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.classroom_user_user_permissions OWNER TO postgres;

--
-- Name: classroom_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classroom_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: classroom_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_user_user_permissions_id_seq OWNED BY public.classroom_user_user_permissions.id;


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
-- Name: classroom_answer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_answer ALTER COLUMN id SET DEFAULT nextval('public.classroom_answer_id_seq'::regclass);


--
-- Name: classroom_question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_question ALTER COLUMN id SET DEFAULT nextval('public.classroom_question_id_seq'::regclass);


--
-- Name: classroom_quiz id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_quiz ALTER COLUMN id SET DEFAULT nextval('public.classroom_quiz_id_seq'::regclass);


--
-- Name: classroom_student_interests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_student_interests ALTER COLUMN id SET DEFAULT nextval('public.classroom_student_interests_id_seq'::regclass);


--
-- Name: classroom_studentanswer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_studentanswer ALTER COLUMN id SET DEFAULT nextval('public.classroom_studentanswer_id_seq'::regclass);


--
-- Name: classroom_subject id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_subject ALTER COLUMN id SET DEFAULT nextval('public.classroom_subject_id_seq'::regclass);


--
-- Name: classroom_takequiz id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_takequiz ALTER COLUMN id SET DEFAULT nextval('public.classroom_takequiz_id_seq'::regclass);


--
-- Name: classroom_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user ALTER COLUMN id SET DEFAULT nextval('public.classroom_user_id_seq'::regclass);


--
-- Name: classroom_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_groups ALTER COLUMN id SET DEFAULT nextval('public.classroom_user_groups_id_seq'::regclass);


--
-- Name: classroom_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.classroom_user_user_permissions_id_seq'::regclass);


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
25	Can add answer	7	add_answer
26	Can change answer	7	change_answer
27	Can delete answer	7	delete_answer
28	Can view answer	7	view_answer
29	Can add question	8	add_question
30	Can change question	8	change_question
31	Can delete question	8	delete_question
32	Can view question	8	view_question
33	Can add quiz	9	add_quiz
34	Can change quiz	9	change_quiz
35	Can delete quiz	9	delete_quiz
36	Can view quiz	9	view_quiz
37	Can add student answer	10	add_studentanswer
38	Can change student answer	10	change_studentanswer
39	Can delete student answer	10	delete_studentanswer
40	Can view student answer	10	view_studentanswer
41	Can add subject	11	add_subject
42	Can change subject	11	change_subject
43	Can delete subject	11	delete_subject
44	Can view subject	11	view_subject
45	Can add take quiz	12	add_takequiz
46	Can change take quiz	12	change_takequiz
47	Can delete take quiz	12	delete_takequiz
48	Can view take quiz	12	view_takequiz
49	Can add student	13	add_student
50	Can change student	13	change_student
51	Can delete student	13	delete_student
52	Can view student	13	view_student
\.


--
-- Data for Name: classroom_answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_answer (id, text, is_correct, question_id) FROM stdin;
\.


--
-- Data for Name: classroom_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_question (id, text, quiz_id) FROM stdin;
\.


--
-- Data for Name: classroom_quiz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_quiz (id, name, owner_id, subject_id) FROM stdin;
\.


--
-- Data for Name: classroom_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_student (user_id) FROM stdin;
\.


--
-- Data for Name: classroom_student_interests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_student_interests (id, student_id, subject_id) FROM stdin;
\.


--
-- Data for Name: classroom_studentanswer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_studentanswer (id, answer_id, student_id) FROM stdin;
\.


--
-- Data for Name: classroom_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_subject (id, name, color) FROM stdin;
\.


--
-- Data for Name: classroom_takequiz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_takequiz (id, score, date, quiz_id, student_id) FROM stdin;
\.


--
-- Data for Name: classroom_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, is_student, is_teacher) FROM stdin;
1	pbkdf2_sha256$120000$jqq9vGTd8vZh$5fw2+Dx5uorZ8V7MzXL8kyA7j4ANGAQvstCqjny8AfE=	2019-03-24 10:59:07.906231+05:30	t	admin			awasekhirni@gmail.com	t	t	2019-03-24 10:57:59.104518+05:30	f	f
\.


--
-- Data for Name: classroom_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: classroom_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classroom_user_user_permissions (id, user_id, permission_id) FROM stdin;
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
6	classroom	user
7	classroom	answer
8	classroom	question
9	classroom	quiz
10	classroom	studentanswer
11	classroom	subject
12	classroom	takequiz
13	classroom	student
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-03-24 10:57:02.134646+05:30
2	contenttypes	0002_remove_content_type_name	2019-03-24 10:57:02.173154+05:30
3	auth	0001_initial	2019-03-24 10:57:03.110798+05:30
4	auth	0002_alter_permission_name_max_length	2019-03-24 10:57:03.125803+05:30
5	auth	0003_alter_user_email_max_length	2019-03-24 10:57:03.128012+05:30
6	auth	0004_alter_user_username_opts	2019-03-24 10:57:03.143653+05:30
7	auth	0005_alter_user_last_login_null	2019-03-24 10:57:03.159462+05:30
8	auth	0006_require_contenttypes_0002	2019-03-24 10:57:03.162461+05:30
9	auth	0007_alter_validators_add_error_messages	2019-03-24 10:57:03.185447+05:30
10	auth	0008_alter_user_username_max_length	2019-03-24 10:57:03.192459+05:30
11	auth	0009_alter_user_last_name_max_length	2019-03-24 10:57:03.202436+05:30
12	classroom	0001_initial	2019-03-24 10:57:05.591208+05:30
13	admin	0001_initial	2019-03-24 10:57:05.849008+05:30
14	admin	0002_logentry_remove_auto_add	2019-03-24 10:57:05.893099+05:30
15	admin	0003_logentry_add_action_flag_choices	2019-03-24 10:57:05.914087+05:30
16	sessions	0001_initial	2019-03-24 10:57:06.066532+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: classroom_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_answer_id_seq', 1, false);


--
-- Name: classroom_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_question_id_seq', 1, false);


--
-- Name: classroom_quiz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_quiz_id_seq', 1, false);


--
-- Name: classroom_student_interests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_student_interests_id_seq', 1, false);


--
-- Name: classroom_studentanswer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_studentanswer_id_seq', 1, false);


--
-- Name: classroom_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_subject_id_seq', 1, false);


--
-- Name: classroom_takequiz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_takequiz_id_seq', 1, false);


--
-- Name: classroom_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_user_groups_id_seq', 1, false);


--
-- Name: classroom_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_user_id_seq', 1, true);


--
-- Name: classroom_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 16, true);


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
-- Name: classroom_answer classroom_answer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_answer
    ADD CONSTRAINT classroom_answer_pkey PRIMARY KEY (id);


--
-- Name: classroom_question classroom_question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_question
    ADD CONSTRAINT classroom_question_pkey PRIMARY KEY (id);


--
-- Name: classroom_quiz classroom_quiz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_quiz
    ADD CONSTRAINT classroom_quiz_pkey PRIMARY KEY (id);


--
-- Name: classroom_student_interests classroom_student_interests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_student_interests
    ADD CONSTRAINT classroom_student_interests_pkey PRIMARY KEY (id);


--
-- Name: classroom_student_interests classroom_student_interests_student_id_subject_id_a8e5cda6_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_student_interests
    ADD CONSTRAINT classroom_student_interests_student_id_subject_id_a8e5cda6_uniq UNIQUE (student_id, subject_id);


--
-- Name: classroom_student classroom_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_student
    ADD CONSTRAINT classroom_student_pkey PRIMARY KEY (user_id);


--
-- Name: classroom_studentanswer classroom_studentanswer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_studentanswer
    ADD CONSTRAINT classroom_studentanswer_pkey PRIMARY KEY (id);


--
-- Name: classroom_subject classroom_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_subject
    ADD CONSTRAINT classroom_subject_pkey PRIMARY KEY (id);


--
-- Name: classroom_takequiz classroom_takequiz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_takequiz
    ADD CONSTRAINT classroom_takequiz_pkey PRIMARY KEY (id);


--
-- Name: classroom_user_groups classroom_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_groups
    ADD CONSTRAINT classroom_user_groups_pkey PRIMARY KEY (id);


--
-- Name: classroom_user_groups classroom_user_groups_user_id_group_id_cb852cf0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_groups
    ADD CONSTRAINT classroom_user_groups_user_id_group_id_cb852cf0_uniq UNIQUE (user_id, group_id);


--
-- Name: classroom_user classroom_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user
    ADD CONSTRAINT classroom_user_pkey PRIMARY KEY (id);


--
-- Name: classroom_user_user_permissions classroom_user_user_perm_user_id_permission_id_37c329f2_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_user_permissions
    ADD CONSTRAINT classroom_user_user_perm_user_id_permission_id_37c329f2_uniq UNIQUE (user_id, permission_id);


--
-- Name: classroom_user_user_permissions classroom_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_user_permissions
    ADD CONSTRAINT classroom_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: classroom_user classroom_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user
    ADD CONSTRAINT classroom_user_username_key UNIQUE (username);


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
-- Name: classroom_answer_question_id_c6bd564e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_answer_question_id_c6bd564e ON public.classroom_answer USING btree (question_id);


--
-- Name: classroom_question_quiz_id_2a7a64c7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_question_quiz_id_2a7a64c7 ON public.classroom_question USING btree (quiz_id);


--
-- Name: classroom_quiz_owner_id_9ec11b9b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_quiz_owner_id_9ec11b9b ON public.classroom_quiz USING btree (owner_id);


--
-- Name: classroom_quiz_subject_id_1ffd6be8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_quiz_subject_id_1ffd6be8 ON public.classroom_quiz USING btree (subject_id);


--
-- Name: classroom_student_interests_student_id_262224bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_student_interests_student_id_262224bc ON public.classroom_student_interests USING btree (student_id);


--
-- Name: classroom_student_interests_subject_id_acdf92f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_student_interests_subject_id_acdf92f5 ON public.classroom_student_interests USING btree (subject_id);


--
-- Name: classroom_studentanswer_answer_id_049dfa94; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_studentanswer_answer_id_049dfa94 ON public.classroom_studentanswer USING btree (answer_id);


--
-- Name: classroom_studentanswer_student_id_435cb2a2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_studentanswer_student_id_435cb2a2 ON public.classroom_studentanswer USING btree (student_id);


--
-- Name: classroom_takequiz_quiz_id_ab36921c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_takequiz_quiz_id_ab36921c ON public.classroom_takequiz USING btree (quiz_id);


--
-- Name: classroom_takequiz_student_id_68bb87d9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_takequiz_student_id_68bb87d9 ON public.classroom_takequiz USING btree (student_id);


--
-- Name: classroom_user_groups_group_id_b5028fea; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_user_groups_group_id_b5028fea ON public.classroom_user_groups USING btree (group_id);


--
-- Name: classroom_user_groups_user_id_70bae1b0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_user_groups_user_id_70bae1b0 ON public.classroom_user_groups USING btree (user_id);


--
-- Name: classroom_user_user_permissions_permission_id_ccaa6935; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_user_user_permissions_permission_id_ccaa6935 ON public.classroom_user_user_permissions USING btree (permission_id);


--
-- Name: classroom_user_user_permissions_user_id_fc6f1134; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_user_user_permissions_user_id_fc6f1134 ON public.classroom_user_user_permissions USING btree (user_id);


--
-- Name: classroom_user_username_54b108ef_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classroom_user_username_54b108ef_like ON public.classroom_user USING btree (username varchar_pattern_ops);


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
-- Name: classroom_answer classroom_answer_question_id_c6bd564e_fk_classroom_question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_answer
    ADD CONSTRAINT classroom_answer_question_id_c6bd564e_fk_classroom_question_id FOREIGN KEY (question_id) REFERENCES public.classroom_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_question classroom_question_quiz_id_2a7a64c7_fk_classroom_quiz_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_question
    ADD CONSTRAINT classroom_question_quiz_id_2a7a64c7_fk_classroom_quiz_id FOREIGN KEY (quiz_id) REFERENCES public.classroom_quiz(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_quiz classroom_quiz_owner_id_9ec11b9b_fk_classroom_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_quiz
    ADD CONSTRAINT classroom_quiz_owner_id_9ec11b9b_fk_classroom_user_id FOREIGN KEY (owner_id) REFERENCES public.classroom_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_quiz classroom_quiz_subject_id_1ffd6be8_fk_classroom_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_quiz
    ADD CONSTRAINT classroom_quiz_subject_id_1ffd6be8_fk_classroom_subject_id FOREIGN KEY (subject_id) REFERENCES public.classroom_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_student_interests classroom_student_in_student_id_262224bc_fk_classroom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_student_interests
    ADD CONSTRAINT classroom_student_in_student_id_262224bc_fk_classroom FOREIGN KEY (student_id) REFERENCES public.classroom_student(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_student_interests classroom_student_in_subject_id_acdf92f5_fk_classroom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_student_interests
    ADD CONSTRAINT classroom_student_in_subject_id_acdf92f5_fk_classroom FOREIGN KEY (subject_id) REFERENCES public.classroom_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_student classroom_student_user_id_3a3bf7a3_fk_classroom_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_student
    ADD CONSTRAINT classroom_student_user_id_3a3bf7a3_fk_classroom_user_id FOREIGN KEY (user_id) REFERENCES public.classroom_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_studentanswer classroom_studentans_answer_id_049dfa94_fk_classroom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_studentanswer
    ADD CONSTRAINT classroom_studentans_answer_id_049dfa94_fk_classroom FOREIGN KEY (answer_id) REFERENCES public.classroom_answer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_studentanswer classroom_studentans_student_id_435cb2a2_fk_classroom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_studentanswer
    ADD CONSTRAINT classroom_studentans_student_id_435cb2a2_fk_classroom FOREIGN KEY (student_id) REFERENCES public.classroom_student(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_takequiz classroom_takequiz_quiz_id_ab36921c_fk_classroom_quiz_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_takequiz
    ADD CONSTRAINT classroom_takequiz_quiz_id_ab36921c_fk_classroom_quiz_id FOREIGN KEY (quiz_id) REFERENCES public.classroom_quiz(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_takequiz classroom_takequiz_student_id_68bb87d9_fk_classroom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_takequiz
    ADD CONSTRAINT classroom_takequiz_student_id_68bb87d9_fk_classroom FOREIGN KEY (student_id) REFERENCES public.classroom_student(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_user_groups classroom_user_groups_group_id_b5028fea_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_groups
    ADD CONSTRAINT classroom_user_groups_group_id_b5028fea_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_user_groups classroom_user_groups_user_id_70bae1b0_fk_classroom_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_groups
    ADD CONSTRAINT classroom_user_groups_user_id_70bae1b0_fk_classroom_user_id FOREIGN KEY (user_id) REFERENCES public.classroom_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_user_user_permissions classroom_user_user__permission_id_ccaa6935_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_user_permissions
    ADD CONSTRAINT classroom_user_user__permission_id_ccaa6935_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_user_user_permissions classroom_user_user__user_id_fc6f1134_fk_classroom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom_user_user_permissions
    ADD CONSTRAINT classroom_user_user__user_id_fc6f1134_fk_classroom FOREIGN KEY (user_id) REFERENCES public.classroom_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_classroom_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_classroom_user_id FOREIGN KEY (user_id) REFERENCES public.classroom_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

