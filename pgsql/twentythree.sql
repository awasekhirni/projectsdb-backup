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
-- Name: classifiedapp_area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classifiedapp_area (
    id integer NOT NULL,
    slug character varying(50) NOT NULL,
    title character varying(100) NOT NULL
);


ALTER TABLE public.classifiedapp_area OWNER TO postgres;

--
-- Name: classifiedapp_area_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classifiedapp_area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classifiedapp_area_id_seq OWNER TO postgres;

--
-- Name: classifiedapp_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classifiedapp_area_id_seq OWNED BY public.classifiedapp_area.id;


--
-- Name: classifiedapp_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classifiedapp_group (
    id integer NOT NULL,
    slug character varying(50),
    title character varying(100) NOT NULL,
    section_id integer NOT NULL
);


ALTER TABLE public.classifiedapp_group OWNER TO postgres;

--
-- Name: classifiedapp_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classifiedapp_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classifiedapp_group_id_seq OWNER TO postgres;

--
-- Name: classifiedapp_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classifiedapp_group_id_seq OWNED BY public.classifiedapp_group.id;


--
-- Name: classifiedapp_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classifiedapp_image (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    item_id integer NOT NULL
);


ALTER TABLE public.classifiedapp_image OWNER TO postgres;

--
-- Name: classifiedapp_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classifiedapp_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classifiedapp_image_id_seq OWNER TO postgres;

--
-- Name: classifiedapp_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classifiedapp_image_id_seq OWNED BY public.classifiedapp_image.id;


--
-- Name: classifiedapp_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classifiedapp_item (
    id integer NOT NULL,
    slug character varying(100),
    title character varying(100) NOT NULL,
    description text NOT NULL,
    price numeric(10,2) NOT NULL,
    is_active boolean NOT NULL,
    updated timestamp with time zone NOT NULL,
    posted timestamp with time zone NOT NULL,
    area_id integer,
    group_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.classifiedapp_item OWNER TO postgres;

--
-- Name: classifiedapp_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classifiedapp_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classifiedapp_item_id_seq OWNER TO postgres;

--
-- Name: classifiedapp_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classifiedapp_item_id_seq OWNED BY public.classifiedapp_item.id;


--
-- Name: classifiedapp_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classifiedapp_profile (
    id integer NOT NULL,
    phone character varying(30),
    receive_news boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.classifiedapp_profile OWNER TO postgres;

--
-- Name: classifiedapp_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classifiedapp_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classifiedapp_profile_id_seq OWNER TO postgres;

--
-- Name: classifiedapp_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classifiedapp_profile_id_seq OWNED BY public.classifiedapp_profile.id;


--
-- Name: classifiedapp_section; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classifiedapp_section (
    id integer NOT NULL,
    title character varying(100) NOT NULL
);


ALTER TABLE public.classifiedapp_section OWNER TO postgres;

--
-- Name: classifiedapp_section_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classifiedapp_section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classifiedapp_section_id_seq OWNER TO postgres;

--
-- Name: classifiedapp_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classifiedapp_section_id_seq OWNED BY public.classifiedapp_section.id;


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
-- Name: classifiedapp_area id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_area ALTER COLUMN id SET DEFAULT nextval('public.classifiedapp_area_id_seq'::regclass);


--
-- Name: classifiedapp_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_group ALTER COLUMN id SET DEFAULT nextval('public.classifiedapp_group_id_seq'::regclass);


--
-- Name: classifiedapp_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_image ALTER COLUMN id SET DEFAULT nextval('public.classifiedapp_image_id_seq'::regclass);


--
-- Name: classifiedapp_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_item ALTER COLUMN id SET DEFAULT nextval('public.classifiedapp_item_id_seq'::regclass);


--
-- Name: classifiedapp_profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_profile ALTER COLUMN id SET DEFAULT nextval('public.classifiedapp_profile_id_seq'::regclass);


--
-- Name: classifiedapp_section id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_section ALTER COLUMN id SET DEFAULT nextval('public.classifiedapp_section_id_seq'::regclass);


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
25	Can add area	7	add_area
26	Can change area	7	change_area
27	Can delete area	7	delete_area
28	Can view area	7	view_area
29	Can add item	8	add_item
30	Can change item	8	change_item
31	Can delete item	8	delete_item
32	Can view item	8	view_item
33	Can add group	9	add_group
34	Can change group	9	change_group
35	Can delete group	9	delete_group
36	Can view group	9	view_group
37	Can add image	10	add_image
38	Can change image	10	change_image
39	Can delete image	10	delete_image
40	Can view image	10	view_image
41	Can add profile	11	add_profile
42	Can change profile	11	change_profile
43	Can delete profile	11	delete_profile
44	Can view profile	11	view_profile
45	Can add section	12	add_section
46	Can change section	12	change_section
47	Can delete section	12	delete_section
48	Can view section	12	view_section
49	Can add site	13	add_site
50	Can change site	13	change_site
51	Can delete site	13	delete_site
52	Can view site	13	view_site
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$vKftssRutNgx$Ox3Hc3hg2AgjmqOXWK2XoqI/ooGjdnKSbFp4PbX7Hi0=	2019-04-06 20:59:27.369953+05:30	t	admin			awasekhirni@gmail.com	t	t	2019-04-06 18:09:25.161723+05:30
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
-- Data for Name: classifiedapp_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classifiedapp_area (id, slug, title) FROM stdin;
1	Bangalore	Bangalore
2	Hyderabad	Hyderabad
3	Madras	Madras
\.


--
-- Data for Name: classifiedapp_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classifiedapp_group (id, slug, title, section_id) FROM stdin;
1	Cars	Cars	1
2	MixerGrinder	Mixer Grinder	2
\.


--
-- Data for Name: classifiedapp_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classifiedapp_image (id, file, item_id) FROM stdin;
\.


--
-- Data for Name: classifiedapp_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classifiedapp_item (id, slug, title, description, price, is_active, updated, posted, area_id, group_id, user_id) FROM stdin;
1	Samsung_Note	Samsung Note 9	Samsung Note 9 Phone	64000.00	t	2019-04-06 21:03:13.734235+05:30	2019-04-06 21:03:13.734235+05:30	1	2	1
\.


--
-- Data for Name: classifiedapp_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classifiedapp_profile (id, phone, receive_news, user_id) FROM stdin;
1	\N	t	1
\.


--
-- Data for Name: classifiedapp_section; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classifiedapp_section (id, title) FROM stdin;
1	Automotives
2	Electronics
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-04-06 21:00:14.255938+05:30	1	Bangalore	1	[{"added": {}}]	7	1
2	2019-04-06 21:00:21.984149+05:30	2	Hyderabad	1	[{"added": {}}]	7	1
3	2019-04-06 21:00:30.69139+05:30	3	Madras	1	[{"added": {}}]	7	1
4	2019-04-06 21:01:13.672276+05:30	1	Automotives	1	[{"added": {}}]	12	1
5	2019-04-06 21:01:19.856205+05:30	2	Electronics	1	[{"added": {}}]	12	1
6	2019-04-06 21:01:39.981099+05:30	1	Automotives - Cars	1	[{"added": {}}]	9	1
7	2019-04-06 21:02:22.801842+05:30	2	Electronics - Mixer Grinder	1	[{"added": {}}]	9	1
8	2019-04-06 21:03:13.803195+05:30	1	Samsung Note 9	1	[{"added": {}}]	8	1
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
7	classifiedapp	area
8	classifiedapp	item
9	classifiedapp	group
10	classifiedapp	image
11	classifiedapp	profile
12	classifiedapp	section
13	sites	site
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-04-06 18:07:12.670131+05:30
2	auth	0001_initial	2019-04-06 18:07:14.41281+05:30
3	admin	0001_initial	2019-04-06 18:07:14.947017+05:30
4	admin	0002_logentry_remove_auto_add	2019-04-06 18:07:14.97899+05:30
5	admin	0003_logentry_add_action_flag_choices	2019-04-06 18:07:15.00198+05:30
6	contenttypes	0002_remove_content_type_name	2019-04-06 18:07:15.059957+05:30
7	auth	0002_alter_permission_name_max_length	2019-04-06 18:07:15.067966+05:30
8	auth	0003_alter_user_email_max_length	2019-04-06 18:07:15.080958+05:30
9	auth	0004_alter_user_username_opts	2019-04-06 18:07:15.091952+05:30
10	auth	0005_alter_user_last_login_null	2019-04-06 18:07:15.107943+05:30
11	auth	0006_require_contenttypes_0002	2019-04-06 18:07:15.109941+05:30
12	auth	0007_alter_validators_add_error_messages	2019-04-06 18:07:15.122934+05:30
13	auth	0008_alter_user_username_max_length	2019-04-06 18:07:15.218168+05:30
14	auth	0009_alter_user_last_name_max_length	2019-04-06 18:07:15.230037+05:30
15	sessions	0001_initial	2019-04-06 18:07:15.476985+05:30
16	classifiedapp	0001_initial	2019-04-06 18:11:51.414104+05:30
17	sites	0001_initial	2019-04-06 20:30:35.559688+05:30
18	sites	0002_alter_domain_unique	2019-04-06 20:30:35.658818+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
xncxqcaxatxdfg22c1i42h0nj33hncc4	NGU3MjBmMGMxNDQ4M2Y5ZWY4NmVkYjBhZDkwYmQ0M2MzMTA0MDc1MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzk0MDczMzU2MDBhNDRkNDVjZTZlNmZjMGE5ZDhhMjE3ZDFiOTNiIn0=	2019-04-20 20:59:27.568075+05:30
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
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
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: classifiedapp_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classifiedapp_area_id_seq', 3, true);


--
-- Name: classifiedapp_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classifiedapp_group_id_seq', 2, true);


--
-- Name: classifiedapp_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classifiedapp_image_id_seq', 1, false);


--
-- Name: classifiedapp_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classifiedapp_item_id_seq', 1, true);


--
-- Name: classifiedapp_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classifiedapp_profile_id_seq', 1, true);


--
-- Name: classifiedapp_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classifiedapp_section_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 8, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


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
-- Name: classifiedapp_area classifiedapp_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_area
    ADD CONSTRAINT classifiedapp_area_pkey PRIMARY KEY (id);


--
-- Name: classifiedapp_group classifiedapp_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_group
    ADD CONSTRAINT classifiedapp_group_pkey PRIMARY KEY (id);


--
-- Name: classifiedapp_image classifiedapp_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_image
    ADD CONSTRAINT classifiedapp_image_pkey PRIMARY KEY (id);


--
-- Name: classifiedapp_item classifiedapp_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_item
    ADD CONSTRAINT classifiedapp_item_pkey PRIMARY KEY (id);


--
-- Name: classifiedapp_profile classifiedapp_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_profile
    ADD CONSTRAINT classifiedapp_profile_pkey PRIMARY KEY (id);


--
-- Name: classifiedapp_profile classifiedapp_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_profile
    ADD CONSTRAINT classifiedapp_profile_user_id_key UNIQUE (user_id);


--
-- Name: classifiedapp_section classifiedapp_section_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_section
    ADD CONSTRAINT classifiedapp_section_pkey PRIMARY KEY (id);


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
-- Name: classifiedapp_area_slug_1a485c23; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_area_slug_1a485c23 ON public.classifiedapp_area USING btree (slug);


--
-- Name: classifiedapp_area_slug_1a485c23_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_area_slug_1a485c23_like ON public.classifiedapp_area USING btree (slug varchar_pattern_ops);


--
-- Name: classifiedapp_group_section_id_1b78e96e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_group_section_id_1b78e96e ON public.classifiedapp_group USING btree (section_id);


--
-- Name: classifiedapp_group_slug_9c04ec9d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_group_slug_9c04ec9d ON public.classifiedapp_group USING btree (slug);


--
-- Name: classifiedapp_group_slug_9c04ec9d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_group_slug_9c04ec9d_like ON public.classifiedapp_group USING btree (slug varchar_pattern_ops);


--
-- Name: classifiedapp_image_item_id_e8208373; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_image_item_id_e8208373 ON public.classifiedapp_image USING btree (item_id);


--
-- Name: classifiedapp_item_area_id_fdc900c3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_item_area_id_fdc900c3 ON public.classifiedapp_item USING btree (area_id);


--
-- Name: classifiedapp_item_group_id_eb4c22c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_item_group_id_eb4c22c1 ON public.classifiedapp_item USING btree (group_id);


--
-- Name: classifiedapp_item_is_active_d1c122bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_item_is_active_d1c122bc ON public.classifiedapp_item USING btree (is_active);


--
-- Name: classifiedapp_item_slug_2943adff; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_item_slug_2943adff ON public.classifiedapp_item USING btree (slug);


--
-- Name: classifiedapp_item_slug_2943adff_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_item_slug_2943adff_like ON public.classifiedapp_item USING btree (slug varchar_pattern_ops);


--
-- Name: classifiedapp_item_updated_b72bceab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_item_updated_b72bceab ON public.classifiedapp_item USING btree (updated);


--
-- Name: classifiedapp_item_user_id_6b17baf4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_item_user_id_6b17baf4 ON public.classifiedapp_item USING btree (user_id);


--
-- Name: classifiedapp_profile_receive_news_8730a33e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX classifiedapp_profile_receive_news_8730a33e ON public.classifiedapp_profile USING btree (receive_news);


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
-- Name: classifiedapp_group classifiedapp_group_section_id_1b78e96e_fk_classifie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_group
    ADD CONSTRAINT classifiedapp_group_section_id_1b78e96e_fk_classifie FOREIGN KEY (section_id) REFERENCES public.classifiedapp_section(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classifiedapp_image classifiedapp_image_item_id_e8208373_fk_classifiedapp_item_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_image
    ADD CONSTRAINT classifiedapp_image_item_id_e8208373_fk_classifiedapp_item_id FOREIGN KEY (item_id) REFERENCES public.classifiedapp_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classifiedapp_item classifiedapp_item_area_id_fdc900c3_fk_classifiedapp_area_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_item
    ADD CONSTRAINT classifiedapp_item_area_id_fdc900c3_fk_classifiedapp_area_id FOREIGN KEY (area_id) REFERENCES public.classifiedapp_area(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classifiedapp_item classifiedapp_item_group_id_eb4c22c1_fk_classifiedapp_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_item
    ADD CONSTRAINT classifiedapp_item_group_id_eb4c22c1_fk_classifiedapp_group_id FOREIGN KEY (group_id) REFERENCES public.classifiedapp_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classifiedapp_item classifiedapp_item_user_id_6b17baf4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_item
    ADD CONSTRAINT classifiedapp_item_user_id_6b17baf4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classifiedapp_profile classifiedapp_profile_user_id_f2d9b807_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classifiedapp_profile
    ADD CONSTRAINT classifiedapp_profile_user_id_f2d9b807_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- PostgreSQL database dump complete
--

