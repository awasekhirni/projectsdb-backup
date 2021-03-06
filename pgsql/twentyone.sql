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
-- Name: ticketapp_attachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_attachment (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    file_name character varying(100),
    ticket_rel_id integer
);


ALTER TABLE public.ticketapp_attachment OWNER TO postgres;

--
-- Name: ticketapp_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_attachment_id_seq OWNER TO postgres;

--
-- Name: ticketapp_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_attachment_id_seq OWNED BY public.ticketapp_attachment.id;


--
-- Name: ticketapp_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_comments (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    comment text,
    private boolean NOT NULL,
    ticket_rel_id integer NOT NULL,
    user_rel_id integer NOT NULL
);


ALTER TABLE public.ticketapp_comments OWNER TO postgres;

--
-- Name: ticketapp_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_comments_id_seq OWNER TO postgres;

--
-- Name: ticketapp_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_comments_id_seq OWNED BY public.ticketapp_comments.id;


--
-- Name: ticketapp_company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_company (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(250) NOT NULL,
    logo character varying(100) NOT NULL,
    address character varying(250) NOT NULL
);


ALTER TABLE public.ticketapp_company OWNER TO postgres;

--
-- Name: ticketapp_company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_company_id_seq OWNER TO postgres;

--
-- Name: ticketapp_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_company_id_seq OWNED BY public.ticketapp_company.id;


--
-- Name: ticketapp_inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_inventory (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(100) NOT NULL,
    ip inet NOT NULL,
    group_rel_id integer
);


ALTER TABLE public.ticketapp_inventory OWNER TO postgres;

--
-- Name: ticketapp_inventory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_inventory_id_seq OWNER TO postgres;

--
-- Name: ticketapp_inventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_inventory_id_seq OWNED BY public.ticketapp_inventory.id;


--
-- Name: ticketapp_inventorygroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_inventorygroup (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(100) NOT NULL,
    company_rel_id integer
);


ALTER TABLE public.ticketapp_inventorygroup OWNER TO postgres;

--
-- Name: ticketapp_inventorygroup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_inventorygroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_inventorygroup_id_seq OWNER TO postgres;

--
-- Name: ticketapp_inventorygroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_inventorygroup_id_seq OWNED BY public.ticketapp_inventorygroup.id;


--
-- Name: ticketapp_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_logs (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    log_action character varying(200) NOT NULL,
    log_destiny character varying(200) NOT NULL,
    log_ticket_id integer NOT NULL,
    log_user_id integer NOT NULL
);


ALTER TABLE public.ticketapp_logs OWNER TO postgres;

--
-- Name: ticketapp_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_logs_id_seq OWNER TO postgres;

--
-- Name: ticketapp_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_logs_id_seq OWNED BY public.ticketapp_logs.id;


--
-- Name: ticketapp_microtasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_microtasks (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    subject character varying(40) NOT NULL,
    body text,
    percentage integer,
    assigned_state_id integer,
    ticket_rel_id integer NOT NULL
);


ALTER TABLE public.ticketapp_microtasks OWNER TO postgres;

--
-- Name: ticketapp_microtasks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_microtasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_microtasks_id_seq OWNER TO postgres;

--
-- Name: ticketapp_microtasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_microtasks_id_seq OWNED BY public.ticketapp_microtasks.id;


--
-- Name: ticketapp_priority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_priority (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.ticketapp_priority OWNER TO postgres;

--
-- Name: ticketapp_priority_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_priority_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_priority_id_seq OWNER TO postgres;

--
-- Name: ticketapp_priority_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_priority_id_seq OWNED BY public.ticketapp_priority.id;


--
-- Name: ticketapp_queue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_queue (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(100) NOT NULL,
    shortcode character varying(10) NOT NULL,
    description character varying(30),
    company_rel_id integer NOT NULL
);


ALTER TABLE public.ticketapp_queue OWNER TO postgres;

--
-- Name: ticketapp_queue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_queue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_queue_id_seq OWNER TO postgres;

--
-- Name: ticketapp_queue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_queue_id_seq OWNED BY public.ticketapp_queue.id;


--
-- Name: ticketapp_rights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_rights (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    enabled boolean NOT NULL,
    can_view boolean NOT NULL,
    can_create boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_edit boolean NOT NULL,
    can_comment boolean NOT NULL,
    grp_src_id integer,
    queue_dst_id integer
);


ALTER TABLE public.ticketapp_rights OWNER TO postgres;

--
-- Name: ticketapp_rights_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_rights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_rights_id_seq OWNER TO postgres;

--
-- Name: ticketapp_rights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_rights_id_seq OWNED BY public.ticketapp_rights.id;


--
-- Name: ticketapp_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_state (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(150),
    active boolean NOT NULL,
    color character varying(10)
);


ALTER TABLE public.ticketapp_state OWNER TO postgres;

--
-- Name: ticketapp_state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_state_id_seq OWNER TO postgres;

--
-- Name: ticketapp_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_state_id_seq OWNED BY public.ticketapp_state.id;


--
-- Name: ticketapp_ticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_ticket (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    subject character varying(50) NOT NULL,
    body text,
    percentage integer,
    labels character varying(256) NOT NULL,
    assigned_company_id integer,
    assigned_inventory_id integer,
    assigned_prio_id integer NOT NULL,
    assigned_queue_id integer,
    assigned_state_id integer NOT NULL,
    assigned_user_id integer,
    create_user_id integer
);


ALTER TABLE public.ticketapp_ticket OWNER TO postgres;

--
-- Name: ticketapp_ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_ticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_ticket_id_seq OWNER TO postgres;

--
-- Name: ticketapp_ticket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_ticket_id_seq OWNED BY public.ticketapp_ticket.id;


--
-- Name: ticketapp_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_user (
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
    avatar character varying(100),
    rssfeed character varying(400),
    collapsednavbar boolean NOT NULL,
    status_rel_id integer
);


ALTER TABLE public.ticketapp_user OWNER TO postgres;

--
-- Name: ticketapp_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.ticketapp_user_groups OWNER TO postgres;

--
-- Name: ticketapp_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_user_groups_id_seq OWNER TO postgres;

--
-- Name: ticketapp_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_user_groups_id_seq OWNED BY public.ticketapp_user_groups.id;


--
-- Name: ticketapp_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_user_id_seq OWNER TO postgres;

--
-- Name: ticketapp_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_user_id_seq OWNED BY public.ticketapp_user.id;


--
-- Name: ticketapp_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.ticketapp_user_user_permissions OWNER TO postgres;

--
-- Name: ticketapp_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: ticketapp_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_user_user_permissions_id_seq OWNED BY public.ticketapp_user_user_permissions.id;


--
-- Name: ticketapp_usertype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticketapp_usertype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    status character varying(20) NOT NULL
);


ALTER TABLE public.ticketapp_usertype OWNER TO postgres;

--
-- Name: ticketapp_usertype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticketapp_usertype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticketapp_usertype_id_seq OWNER TO postgres;

--
-- Name: ticketapp_usertype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticketapp_usertype_id_seq OWNED BY public.ticketapp_usertype.id;


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
-- Name: ticketapp_attachment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_attachment ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_attachment_id_seq'::regclass);


--
-- Name: ticketapp_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_comments ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_comments_id_seq'::regclass);


--
-- Name: ticketapp_company id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_company ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_company_id_seq'::regclass);


--
-- Name: ticketapp_inventory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_inventory ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_inventory_id_seq'::regclass);


--
-- Name: ticketapp_inventorygroup id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_inventorygroup ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_inventorygroup_id_seq'::regclass);


--
-- Name: ticketapp_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_logs ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_logs_id_seq'::regclass);


--
-- Name: ticketapp_microtasks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_microtasks ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_microtasks_id_seq'::regclass);


--
-- Name: ticketapp_priority id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_priority ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_priority_id_seq'::regclass);


--
-- Name: ticketapp_queue id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_queue ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_queue_id_seq'::regclass);


--
-- Name: ticketapp_rights id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_rights ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_rights_id_seq'::regclass);


--
-- Name: ticketapp_state id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_state ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_state_id_seq'::regclass);


--
-- Name: ticketapp_ticket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_ticket_id_seq'::regclass);


--
-- Name: ticketapp_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_user_id_seq'::regclass);


--
-- Name: ticketapp_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_groups ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_user_groups_id_seq'::regclass);


--
-- Name: ticketapp_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_user_user_permissions_id_seq'::regclass);


--
-- Name: ticketapp_usertype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_usertype ALTER COLUMN id SET DEFAULT nextval('public.ticketapp_usertype_id_seq'::regclass);


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
25	Can add attachment	7	add_attachment
26	Can change attachment	7	change_attachment
27	Can delete attachment	7	delete_attachment
28	Can view attachment	7	view_attachment
29	Can add comments	8	add_comments
30	Can change comments	8	change_comments
31	Can delete comments	8	delete_comments
32	Can view comments	8	view_comments
33	Can add company	9	add_company
34	Can change company	9	change_company
35	Can delete company	9	delete_company
36	Can view company	9	view_company
37	Can add inventory	10	add_inventory
38	Can change inventory	10	change_inventory
39	Can delete inventory	10	delete_inventory
40	Can view inventory	10	view_inventory
41	Can add inventory group	11	add_inventorygroup
42	Can change inventory group	11	change_inventorygroup
43	Can delete inventory group	11	delete_inventorygroup
44	Can view inventory group	11	view_inventorygroup
45	Can add logs	12	add_logs
46	Can change logs	12	change_logs
47	Can delete logs	12	delete_logs
48	Can view logs	12	view_logs
49	Can add microtasks	13	add_microtasks
50	Can change microtasks	13	change_microtasks
51	Can delete microtasks	13	delete_microtasks
52	Can view microtasks	13	view_microtasks
53	Can add priority	14	add_priority
54	Can change priority	14	change_priority
55	Can delete priority	14	delete_priority
56	Can view priority	14	view_priority
57	Can add queue	15	add_queue
58	Can change queue	15	change_queue
59	Can delete queue	15	delete_queue
60	Can view queue	15	view_queue
61	Can add rights	16	add_rights
62	Can change rights	16	change_rights
63	Can delete rights	16	delete_rights
64	Can view rights	16	view_rights
65	Can add state	17	add_state
66	Can change state	17	change_state
67	Can delete state	17	delete_state
68	Can view state	17	view_state
69	Can add ticket	18	add_ticket
70	Can change ticket	18	change_ticket
71	Can delete ticket	18	delete_ticket
72	Can view ticket	18	view_ticket
73	Can add user type	19	add_usertype
74	Can change user type	19	change_usertype
75	Can delete user type	19	delete_usertype
76	Can view user type	19	view_usertype
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
6	ticketapp	user
7	ticketapp	attachment
8	ticketapp	comments
9	ticketapp	company
10	ticketapp	inventory
11	ticketapp	inventorygroup
12	ticketapp	logs
13	ticketapp	microtasks
14	ticketapp	priority
15	ticketapp	queue
16	ticketapp	rights
17	ticketapp	state
18	ticketapp	ticket
19	ticketapp	usertype
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-04-04 20:38:22.856665+05:30
2	contenttypes	0002_remove_content_type_name	2019-04-04 20:38:22.922644+05:30
3	auth	0001_initial	2019-04-04 20:38:23.32487+05:30
4	auth	0002_alter_permission_name_max_length	2019-04-04 20:38:23.354855+05:30
5	auth	0003_alter_user_email_max_length	2019-04-04 20:38:23.364845+05:30
6	auth	0004_alter_user_username_opts	2019-04-04 20:38:23.373841+05:30
7	auth	0005_alter_user_last_login_null	2019-04-04 20:38:23.386832+05:30
8	auth	0006_require_contenttypes_0002	2019-04-04 20:38:23.392831+05:30
9	auth	0007_alter_validators_add_error_messages	2019-04-04 20:38:23.416816+05:30
10	auth	0008_alter_user_username_max_length	2019-04-04 20:38:23.424811+05:30
11	auth	0009_alter_user_last_name_max_length	2019-04-04 20:38:23.432806+05:30
12	ticketapp	0001_initial	2019-04-04 20:38:26.474759+05:30
13	admin	0001_initial	2019-04-04 20:38:26.88704+05:30
14	admin	0002_logentry_remove_auto_add	2019-04-04 20:38:26.927015+05:30
15	admin	0003_logentry_add_action_flag_choices	2019-04-04 20:38:26.947003+05:30
16	sessions	0001_initial	2019-04-04 20:38:27.283338+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: ticketapp_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_attachment (id, created, updated, file_name, ticket_rel_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_comments (id, created, updated, comment, private, ticket_rel_id, user_rel_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_company (id, created, updated, name, logo, address) FROM stdin;
\.


--
-- Data for Name: ticketapp_inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_inventory (id, created, updated, name, ip, group_rel_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_inventorygroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_inventorygroup (id, created, updated, name, company_rel_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_logs (id, created, updated, log_action, log_destiny, log_ticket_id, log_user_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_microtasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_microtasks (id, created, updated, subject, body, percentage, assigned_state_id, ticket_rel_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_priority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_priority (id, created, updated, name) FROM stdin;
\.


--
-- Data for Name: ticketapp_queue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_queue (id, created, updated, name, shortcode, description, company_rel_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_rights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_rights (id, created, updated, enabled, can_view, can_create, can_delete, can_edit, can_comment, grp_src_id, queue_dst_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_state (id, created, updated, name, description, active, color) FROM stdin;
\.


--
-- Data for Name: ticketapp_ticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_ticket (id, created, updated, subject, body, percentage, labels, assigned_company_id, assigned_inventory_id, assigned_prio_id, assigned_queue_id, assigned_state_id, assigned_user_id, create_user_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, avatar, rssfeed, collapsednavbar, status_rel_id) FROM stdin;
1	pbkdf2_sha256$120000$3KANCDekgca9$Ar7G0cILJoTaTA6waNHB7F9/sCmlO0fwzmtwTxnmDA4=	2019-04-04 22:27:59.571469+05:30	t	admin			awasekhirni@gmail.com	t	t	2019-04-04 21:45:42.573854+05:30		\N	f	\N
\.


--
-- Data for Name: ticketapp_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: ticketapp_usertype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticketapp_usertype (id, created, updated, status) FROM stdin;
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 16, true);


--
-- Name: ticketapp_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_attachment_id_seq', 1, false);


--
-- Name: ticketapp_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_comments_id_seq', 1, false);


--
-- Name: ticketapp_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_company_id_seq', 1, false);


--
-- Name: ticketapp_inventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_inventory_id_seq', 1, false);


--
-- Name: ticketapp_inventorygroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_inventorygroup_id_seq', 1, false);


--
-- Name: ticketapp_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_logs_id_seq', 1, false);


--
-- Name: ticketapp_microtasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_microtasks_id_seq', 1, false);


--
-- Name: ticketapp_priority_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_priority_id_seq', 1, false);


--
-- Name: ticketapp_queue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_queue_id_seq', 1, false);


--
-- Name: ticketapp_rights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_rights_id_seq', 1, false);


--
-- Name: ticketapp_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_state_id_seq', 1, false);


--
-- Name: ticketapp_ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_ticket_id_seq', 1, false);


--
-- Name: ticketapp_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_user_groups_id_seq', 1, false);


--
-- Name: ticketapp_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_user_id_seq', 1, true);


--
-- Name: ticketapp_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_user_user_permissions_id_seq', 1, false);


--
-- Name: ticketapp_usertype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticketapp_usertype_id_seq', 1, false);


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
-- Name: ticketapp_attachment ticketapp_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_attachment
    ADD CONSTRAINT ticketapp_attachment_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_comments ticketapp_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_comments
    ADD CONSTRAINT ticketapp_comments_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_company ticketapp_company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_company
    ADD CONSTRAINT ticketapp_company_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_inventory ticketapp_inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_inventory
    ADD CONSTRAINT ticketapp_inventory_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_inventorygroup ticketapp_inventorygroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_inventorygroup
    ADD CONSTRAINT ticketapp_inventorygroup_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_logs ticketapp_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_logs
    ADD CONSTRAINT ticketapp_logs_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_microtasks ticketapp_microtasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_microtasks
    ADD CONSTRAINT ticketapp_microtasks_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_priority ticketapp_priority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_priority
    ADD CONSTRAINT ticketapp_priority_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_queue ticketapp_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_queue
    ADD CONSTRAINT ticketapp_queue_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_rights ticketapp_rights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_rights
    ADD CONSTRAINT ticketapp_rights_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_state ticketapp_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_state
    ADD CONSTRAINT ticketapp_state_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_ticket ticketapp_ticket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket
    ADD CONSTRAINT ticketapp_ticket_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_user_groups ticketapp_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_groups
    ADD CONSTRAINT ticketapp_user_groups_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_user_groups ticketapp_user_groups_user_id_group_id_e8c0d75a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_groups
    ADD CONSTRAINT ticketapp_user_groups_user_id_group_id_e8c0d75a_uniq UNIQUE (user_id, group_id);


--
-- Name: ticketapp_user ticketapp_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user
    ADD CONSTRAINT ticketapp_user_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_user_user_permissions ticketapp_user_user_perm_user_id_permission_id_b661bb54_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_user_permissions
    ADD CONSTRAINT ticketapp_user_user_perm_user_id_permission_id_b661bb54_uniq UNIQUE (user_id, permission_id);


--
-- Name: ticketapp_user_user_permissions ticketapp_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_user_permissions
    ADD CONSTRAINT ticketapp_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: ticketapp_user ticketapp_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user
    ADD CONSTRAINT ticketapp_user_username_key UNIQUE (username);


--
-- Name: ticketapp_usertype ticketapp_usertype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_usertype
    ADD CONSTRAINT ticketapp_usertype_pkey PRIMARY KEY (id);


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
-- Name: ticketapp_attachment_ticket_rel_id_7fa4bb2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_attachment_ticket_rel_id_7fa4bb2c ON public.ticketapp_attachment USING btree (ticket_rel_id);


--
-- Name: ticketapp_attachment_updated_488d815d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_attachment_updated_488d815d ON public.ticketapp_attachment USING btree (updated);


--
-- Name: ticketapp_comments_ticket_rel_id_fb7d0285; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_comments_ticket_rel_id_fb7d0285 ON public.ticketapp_comments USING btree (ticket_rel_id);


--
-- Name: ticketapp_comments_updated_b493213a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_comments_updated_b493213a ON public.ticketapp_comments USING btree (updated);


--
-- Name: ticketapp_comments_user_rel_id_a83376b3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_comments_user_rel_id_a83376b3 ON public.ticketapp_comments USING btree (user_rel_id);


--
-- Name: ticketapp_company_updated_b69d3d7e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_company_updated_b69d3d7e ON public.ticketapp_company USING btree (updated);


--
-- Name: ticketapp_inventory_group_rel_id_cc9d557a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_inventory_group_rel_id_cc9d557a ON public.ticketapp_inventory USING btree (group_rel_id);


--
-- Name: ticketapp_inventory_updated_11edd5f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_inventory_updated_11edd5f5 ON public.ticketapp_inventory USING btree (updated);


--
-- Name: ticketapp_inventorygroup_company_rel_id_ed0c0a1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_inventorygroup_company_rel_id_ed0c0a1b ON public.ticketapp_inventorygroup USING btree (company_rel_id);


--
-- Name: ticketapp_inventorygroup_updated_ff9dc199; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_inventorygroup_updated_ff9dc199 ON public.ticketapp_inventorygroup USING btree (updated);


--
-- Name: ticketapp_logs_log_ticket_id_5e3aa2e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_logs_log_ticket_id_5e3aa2e3 ON public.ticketapp_logs USING btree (log_ticket_id);


--
-- Name: ticketapp_logs_log_user_id_4708ec0c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_logs_log_user_id_4708ec0c ON public.ticketapp_logs USING btree (log_user_id);


--
-- Name: ticketapp_logs_updated_905968b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_logs_updated_905968b2 ON public.ticketapp_logs USING btree (updated);


--
-- Name: ticketapp_microtasks_assigned_state_id_e960830b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_microtasks_assigned_state_id_e960830b ON public.ticketapp_microtasks USING btree (assigned_state_id);


--
-- Name: ticketapp_microtasks_ticket_rel_id_c3ed3bba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_microtasks_ticket_rel_id_c3ed3bba ON public.ticketapp_microtasks USING btree (ticket_rel_id);


--
-- Name: ticketapp_microtasks_updated_4edc0268; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_microtasks_updated_4edc0268 ON public.ticketapp_microtasks USING btree (updated);


--
-- Name: ticketapp_priority_updated_6ed97b7a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_priority_updated_6ed97b7a ON public.ticketapp_priority USING btree (updated);


--
-- Name: ticketapp_queue_company_rel_id_efe8e93b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_queue_company_rel_id_efe8e93b ON public.ticketapp_queue USING btree (company_rel_id);


--
-- Name: ticketapp_queue_updated_65d33616; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_queue_updated_65d33616 ON public.ticketapp_queue USING btree (updated);


--
-- Name: ticketapp_rights_grp_src_id_86d5f40e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_rights_grp_src_id_86d5f40e ON public.ticketapp_rights USING btree (grp_src_id);


--
-- Name: ticketapp_rights_queue_dst_id_f80f28cb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_rights_queue_dst_id_f80f28cb ON public.ticketapp_rights USING btree (queue_dst_id);


--
-- Name: ticketapp_rights_updated_14fceafe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_rights_updated_14fceafe ON public.ticketapp_rights USING btree (updated);


--
-- Name: ticketapp_state_updated_629a7804; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_state_updated_629a7804 ON public.ticketapp_state USING btree (updated);


--
-- Name: ticketapp_ticket_assigned_company_id_586ea40c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_ticket_assigned_company_id_586ea40c ON public.ticketapp_ticket USING btree (assigned_company_id);


--
-- Name: ticketapp_ticket_assigned_inventory_id_bcb68e1d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_ticket_assigned_inventory_id_bcb68e1d ON public.ticketapp_ticket USING btree (assigned_inventory_id);


--
-- Name: ticketapp_ticket_assigned_prio_id_3d362c22; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_ticket_assigned_prio_id_3d362c22 ON public.ticketapp_ticket USING btree (assigned_prio_id);


--
-- Name: ticketapp_ticket_assigned_queue_id_c6783cd3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_ticket_assigned_queue_id_c6783cd3 ON public.ticketapp_ticket USING btree (assigned_queue_id);


--
-- Name: ticketapp_ticket_assigned_state_id_0a86e40e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_ticket_assigned_state_id_0a86e40e ON public.ticketapp_ticket USING btree (assigned_state_id);


--
-- Name: ticketapp_ticket_assigned_user_id_bbfad11e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_ticket_assigned_user_id_bbfad11e ON public.ticketapp_ticket USING btree (assigned_user_id);


--
-- Name: ticketapp_ticket_create_user_id_7d08f137; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_ticket_create_user_id_7d08f137 ON public.ticketapp_ticket USING btree (create_user_id);


--
-- Name: ticketapp_ticket_updated_99ec538f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_ticket_updated_99ec538f ON public.ticketapp_ticket USING btree (updated);


--
-- Name: ticketapp_user_groups_group_id_c52cdc26; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_user_groups_group_id_c52cdc26 ON public.ticketapp_user_groups USING btree (group_id);


--
-- Name: ticketapp_user_groups_user_id_1a2e28a3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_user_groups_user_id_1a2e28a3 ON public.ticketapp_user_groups USING btree (user_id);


--
-- Name: ticketapp_user_status_rel_id_f5b81341; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_user_status_rel_id_f5b81341 ON public.ticketapp_user USING btree (status_rel_id);


--
-- Name: ticketapp_user_user_permissions_permission_id_590a7cbf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_user_user_permissions_permission_id_590a7cbf ON public.ticketapp_user_user_permissions USING btree (permission_id);


--
-- Name: ticketapp_user_user_permissions_user_id_a270b57a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_user_user_permissions_user_id_a270b57a ON public.ticketapp_user_user_permissions USING btree (user_id);


--
-- Name: ticketapp_user_username_42e4bf97_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_user_username_42e4bf97_like ON public.ticketapp_user USING btree (username varchar_pattern_ops);


--
-- Name: ticketapp_usertype_updated_d9fe13f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticketapp_usertype_updated_d9fe13f6 ON public.ticketapp_usertype USING btree (updated);


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
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_ticketapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_ticketapp_user_id FOREIGN KEY (user_id) REFERENCES public.ticketapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_attachment ticketapp_attachment_ticket_rel_id_7fa4bb2c_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_attachment
    ADD CONSTRAINT ticketapp_attachment_ticket_rel_id_7fa4bb2c_fk_ticketapp FOREIGN KEY (ticket_rel_id) REFERENCES public.ticketapp_ticket(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_comments ticketapp_comments_ticket_rel_id_fb7d0285_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_comments
    ADD CONSTRAINT ticketapp_comments_ticket_rel_id_fb7d0285_fk_ticketapp FOREIGN KEY (ticket_rel_id) REFERENCES public.ticketapp_ticket(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_comments ticketapp_comments_user_rel_id_a83376b3_fk_ticketapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_comments
    ADD CONSTRAINT ticketapp_comments_user_rel_id_a83376b3_fk_ticketapp_user_id FOREIGN KEY (user_rel_id) REFERENCES public.ticketapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_inventory ticketapp_inventory_group_rel_id_cc9d557a_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_inventory
    ADD CONSTRAINT ticketapp_inventory_group_rel_id_cc9d557a_fk_ticketapp FOREIGN KEY (group_rel_id) REFERENCES public.ticketapp_inventorygroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_inventorygroup ticketapp_inventoryg_company_rel_id_ed0c0a1b_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_inventorygroup
    ADD CONSTRAINT ticketapp_inventoryg_company_rel_id_ed0c0a1b_fk_ticketapp FOREIGN KEY (company_rel_id) REFERENCES public.ticketapp_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_logs ticketapp_logs_log_ticket_id_5e3aa2e3_fk_ticketapp_ticket_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_logs
    ADD CONSTRAINT ticketapp_logs_log_ticket_id_5e3aa2e3_fk_ticketapp_ticket_id FOREIGN KEY (log_ticket_id) REFERENCES public.ticketapp_ticket(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_logs ticketapp_logs_log_user_id_4708ec0c_fk_ticketapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_logs
    ADD CONSTRAINT ticketapp_logs_log_user_id_4708ec0c_fk_ticketapp_user_id FOREIGN KEY (log_user_id) REFERENCES public.ticketapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_microtasks ticketapp_microtasks_assigned_state_id_e960830b_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_microtasks
    ADD CONSTRAINT ticketapp_microtasks_assigned_state_id_e960830b_fk_ticketapp FOREIGN KEY (assigned_state_id) REFERENCES public.ticketapp_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_microtasks ticketapp_microtasks_ticket_rel_id_c3ed3bba_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_microtasks
    ADD CONSTRAINT ticketapp_microtasks_ticket_rel_id_c3ed3bba_fk_ticketapp FOREIGN KEY (ticket_rel_id) REFERENCES public.ticketapp_ticket(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_queue ticketapp_queue_company_rel_id_efe8e93b_fk_ticketapp_company_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_queue
    ADD CONSTRAINT ticketapp_queue_company_rel_id_efe8e93b_fk_ticketapp_company_id FOREIGN KEY (company_rel_id) REFERENCES public.ticketapp_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_rights ticketapp_rights_grp_src_id_86d5f40e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_rights
    ADD CONSTRAINT ticketapp_rights_grp_src_id_86d5f40e_fk_auth_group_id FOREIGN KEY (grp_src_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_rights ticketapp_rights_queue_dst_id_f80f28cb_fk_ticketapp_queue_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_rights
    ADD CONSTRAINT ticketapp_rights_queue_dst_id_f80f28cb_fk_ticketapp_queue_id FOREIGN KEY (queue_dst_id) REFERENCES public.ticketapp_queue(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_ticket ticketapp_ticket_assigned_company_id_586ea40c_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket
    ADD CONSTRAINT ticketapp_ticket_assigned_company_id_586ea40c_fk_ticketapp FOREIGN KEY (assigned_company_id) REFERENCES public.ticketapp_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_ticket ticketapp_ticket_assigned_inventory_i_bcb68e1d_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket
    ADD CONSTRAINT ticketapp_ticket_assigned_inventory_i_bcb68e1d_fk_ticketapp FOREIGN KEY (assigned_inventory_id) REFERENCES public.ticketapp_inventory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_ticket ticketapp_ticket_assigned_prio_id_3d362c22_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket
    ADD CONSTRAINT ticketapp_ticket_assigned_prio_id_3d362c22_fk_ticketapp FOREIGN KEY (assigned_prio_id) REFERENCES public.ticketapp_priority(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_ticket ticketapp_ticket_assigned_queue_id_c6783cd3_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket
    ADD CONSTRAINT ticketapp_ticket_assigned_queue_id_c6783cd3_fk_ticketapp FOREIGN KEY (assigned_queue_id) REFERENCES public.ticketapp_queue(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_ticket ticketapp_ticket_assigned_state_id_0a86e40e_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket
    ADD CONSTRAINT ticketapp_ticket_assigned_state_id_0a86e40e_fk_ticketapp FOREIGN KEY (assigned_state_id) REFERENCES public.ticketapp_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_ticket ticketapp_ticket_assigned_user_id_bbfad11e_fk_ticketapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket
    ADD CONSTRAINT ticketapp_ticket_assigned_user_id_bbfad11e_fk_ticketapp_user_id FOREIGN KEY (assigned_user_id) REFERENCES public.ticketapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_ticket ticketapp_ticket_create_user_id_7d08f137_fk_ticketapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_ticket
    ADD CONSTRAINT ticketapp_ticket_create_user_id_7d08f137_fk_ticketapp_user_id FOREIGN KEY (create_user_id) REFERENCES public.ticketapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_user_groups ticketapp_user_groups_group_id_c52cdc26_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_groups
    ADD CONSTRAINT ticketapp_user_groups_group_id_c52cdc26_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_user_groups ticketapp_user_groups_user_id_1a2e28a3_fk_ticketapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_groups
    ADD CONSTRAINT ticketapp_user_groups_user_id_1a2e28a3_fk_ticketapp_user_id FOREIGN KEY (user_id) REFERENCES public.ticketapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_user ticketapp_user_status_rel_id_f5b81341_fk_ticketapp_usertype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user
    ADD CONSTRAINT ticketapp_user_status_rel_id_f5b81341_fk_ticketapp_usertype_id FOREIGN KEY (status_rel_id) REFERENCES public.ticketapp_usertype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_user_user_permissions ticketapp_user_user__permission_id_590a7cbf_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_user_permissions
    ADD CONSTRAINT ticketapp_user_user__permission_id_590a7cbf_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticketapp_user_user_permissions ticketapp_user_user__user_id_a270b57a_fk_ticketapp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticketapp_user_user_permissions
    ADD CONSTRAINT ticketapp_user_user__user_id_a270b57a_fk_ticketapp FOREIGN KEY (user_id) REFERENCES public.ticketapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

