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
-- Name: admins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admins (
    id bigint NOT NULL,
    parent_id integer,
    login_id character varying(60) NOT NULL,
    email character varying(100),
    nickname character varying(100),
    encrypted_password character varying(60) NOT NULL,
    photo character varying(150),
    enable boolean DEFAULT true NOT NULL,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.admins OWNER TO postgres;

--
-- Name: admins_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admins_id_seq OWNER TO postgres;

--
-- Name: admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admins_id_seq OWNED BY public.admins.id;


--
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers (
    id bigint NOT NULL,
    question_id integer NOT NULL,
    title character varying(255) NOT NULL,
    photo character varying(100),
    sub_questions_count integer DEFAULT 0 NOT NULL,
    has_custom boolean DEFAULT false NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    "only" boolean DEFAULT false NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.answers OWNER TO postgres;

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO postgres;

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;


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
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ckeditor_assets (
    id bigint NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    assetable_id integer,
    assetable_type character varying(30),
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ckeditor_assets OWNER TO postgres;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ckeditor_assets_id_seq OWNER TO postgres;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ckeditor_assets_id_seq OWNED BY public.ckeditor_assets.id;


--
-- Name: educations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.educations (
    id bigint NOT NULL,
    title character varying(150) NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.educations OWNER TO postgres;

--
-- Name: educations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.educations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.educations_id_seq OWNER TO postgres;

--
-- Name: educations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.educations_id_seq OWNED BY public.educations.id;


--
-- Name: families; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.families (
    id bigint NOT NULL,
    family_category_id integer NOT NULL,
    member integer DEFAULT 0 NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.families OWNER TO postgres;

--
-- Name: families_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.families_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.families_id_seq OWNER TO postgres;

--
-- Name: families_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.families_id_seq OWNED BY public.families.id;


--
-- Name: family_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.family_categories (
    id bigint NOT NULL,
    title character varying NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.family_categories OWNER TO postgres;

--
-- Name: family_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.family_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.family_categories_id_seq OWNER TO postgres;

--
-- Name: family_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.family_categories_id_seq OWNED BY public.family_categories.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    title character varying(150) NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: live_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.live_types (
    id bigint NOT NULL,
    title character varying(150) NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.live_types OWNER TO postgres;

--
-- Name: live_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.live_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.live_types_id_seq OWNER TO postgres;

--
-- Name: live_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.live_types_id_seq OWNED BY public.live_types.id;


--
-- Name: question_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question_categories (
    id bigint NOT NULL,
    title character varying(60) NOT NULL,
    questions_count integer DEFAULT 0 NOT NULL,
    female_only boolean DEFAULT false NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.question_categories OWNER TO postgres;

--
-- Name: question_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_categories_id_seq OWNER TO postgres;

--
-- Name: question_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.question_categories_id_seq OWNED BY public.question_categories.id;


--
-- Name: question_descriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question_descriptions (
    id bigint NOT NULL,
    question_id integer NOT NULL,
    description text NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.question_descriptions OWNER TO postgres;

--
-- Name: question_descriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_descriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_descriptions_id_seq OWNER TO postgres;

--
-- Name: question_descriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.question_descriptions_id_seq OWNED BY public.question_descriptions.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id bigint NOT NULL,
    question_category_id integer NOT NULL,
    title character varying(255) NOT NULL,
    answers_count integer DEFAULT 0 NOT NULL,
    multi_answer boolean DEFAULT false NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    title character varying(60) NOT NULL,
    enable boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_admins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles_admins (
    id bigint NOT NULL,
    role_id integer,
    admin_id integer
);


ALTER TABLE public.roles_admins OWNER TO postgres;

--
-- Name: roles_admins_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_admins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_admins_id_seq OWNER TO postgres;

--
-- Name: roles_admins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_admins_id_seq OWNED BY public.roles_admins.id;


--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: sub_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sub_answers (
    id bigint NOT NULL,
    sub_question_id integer NOT NULL,
    title character varying(60) NOT NULL,
    photo character varying(100),
    has_custom boolean DEFAULT false NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    "only" boolean DEFAULT false NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.sub_answers OWNER TO postgres;

--
-- Name: sub_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sub_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_answers_id_seq OWNER TO postgres;

--
-- Name: sub_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sub_answers_id_seq OWNED BY public.sub_answers.id;


--
-- Name: sub_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sub_questions (
    id bigint NOT NULL,
    answer_id integer NOT NULL,
    title character varying(150),
    sub_answers_count integer DEFAULT 0 NOT NULL,
    multi_answer boolean DEFAULT false NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.sub_questions OWNER TO postgres;

--
-- Name: sub_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sub_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_questions_id_seq OWNER TO postgres;

--
-- Name: sub_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sub_questions_id_seq OWNED BY public.sub_questions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    login_id character varying(60) NOT NULL,
    name character varying(100) NOT NULL,
    birthday date NOT NULL,
    encrypted_password character varying(60) NOT NULL,
    sex boolean DEFAULT true NOT NULL,
    photo character varying(150),
    enable boolean DEFAULT true NOT NULL,
    users_questions_count integer DEFAULT 0 NOT NULL,
    users_families_count integer DEFAULT 0 NOT NULL,
    job text,
    live_type_id integer,
    education_id integer,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_families; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_families (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    family_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users_families OWNER TO postgres;

--
-- Name: users_families_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_families_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_families_id_seq OWNER TO postgres;

--
-- Name: users_families_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_families_id_seq OWNED BY public.users_families.id;


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
-- Name: users_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_questions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    question_id integer NOT NULL,
    users_questions_answers_count integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users_questions OWNER TO postgres;

--
-- Name: users_questions_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_questions_answers (
    id bigint NOT NULL,
    users_question_id integer NOT NULL,
    answer_id integer NOT NULL,
    users_questions_answers_sub_questions_count integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users_questions_answers OWNER TO postgres;

--
-- Name: users_questions_answers_custom_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_questions_answers_custom_answers (
    id bigint NOT NULL,
    users_questions_answer_id integer NOT NULL,
    title character varying(255) NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users_questions_answers_custom_answers OWNER TO postgres;

--
-- Name: users_questions_answers_custom_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_questions_answers_custom_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_questions_answers_custom_answers_id_seq OWNER TO postgres;

--
-- Name: users_questions_answers_custom_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_questions_answers_custom_answers_id_seq OWNED BY public.users_questions_answers_custom_answers.id;


--
-- Name: users_questions_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_questions_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_questions_answers_id_seq OWNER TO postgres;

--
-- Name: users_questions_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_questions_answers_id_seq OWNED BY public.users_questions_answers.id;


--
-- Name: users_questions_answers_sub_questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_questions_answers_sub_questions (
    id bigint NOT NULL,
    users_questions_answer_id integer NOT NULL,
    sub_question_id integer NOT NULL,
    users_questions_answers_sub_questions_sub_answers_count integer DEFAULT 0 NOT NULL,
    enable boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users_questions_answers_sub_questions OWNER TO postgres;

--
-- Name: users_questions_answers_sub_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_questions_answers_sub_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_questions_answers_sub_questions_id_seq OWNER TO postgres;

--
-- Name: users_questions_answers_sub_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_questions_answers_sub_questions_id_seq OWNED BY public.users_questions_answers_sub_questions.id;


--
-- Name: users_questions_answers_sub_questions_sub_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_questions_answers_sub_questions_sub_answers (
    id bigint NOT NULL,
    users_questions_answers_sub_question_id integer NOT NULL,
    sub_answer_id integer NOT NULL,
    enable boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users_questions_answers_sub_questions_sub_answers OWNER TO postgres;

--
-- Name: users_questions_answers_sub_questions_sub_answers_custom_answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_questions_answers_sub_questions_sub_answers_custom_answer (
    id bigint NOT NULL,
    users_questions_answers_sub_questions_sub_answer_id integer NOT NULL,
    title character varying(255) NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users_questions_answers_sub_questions_sub_answers_custom_answer OWNER TO postgres;

--
-- Name: users_questions_answers_sub_questions_sub_answers_custom_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_questions_answers_sub_questions_sub_answers_custom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_questions_answers_sub_questions_sub_answers_custom_id_seq OWNER TO postgres;

--
-- Name: users_questions_answers_sub_questions_sub_answers_custom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_questions_answers_sub_questions_sub_answers_custom_id_seq OWNED BY public.users_questions_answers_sub_questions_sub_answers_custom_answer.id;


--
-- Name: users_questions_answers_sub_questions_sub_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_questions_answers_sub_questions_sub_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_questions_answers_sub_questions_sub_answers_id_seq OWNER TO postgres;

--
-- Name: users_questions_answers_sub_questions_sub_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_questions_answers_sub_questions_sub_answers_id_seq OWNED BY public.users_questions_answers_sub_questions_sub_answers.id;


--
-- Name: users_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_questions_id_seq OWNER TO postgres;

--
-- Name: users_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_questions_id_seq OWNED BY public.users_questions.id;


--
-- Name: admins id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admins ALTER COLUMN id SET DEFAULT nextval('public.admins_id_seq'::regclass);


--
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- Name: ckeditor_assets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('public.ckeditor_assets_id_seq'::regclass);


--
-- Name: educations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educations ALTER COLUMN id SET DEFAULT nextval('public.educations_id_seq'::regclass);


--
-- Name: families id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.families ALTER COLUMN id SET DEFAULT nextval('public.families_id_seq'::regclass);


--
-- Name: family_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family_categories ALTER COLUMN id SET DEFAULT nextval('public.family_categories_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: live_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.live_types ALTER COLUMN id SET DEFAULT nextval('public.live_types_id_seq'::regclass);


--
-- Name: question_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_categories ALTER COLUMN id SET DEFAULT nextval('public.question_categories_id_seq'::regclass);


--
-- Name: question_descriptions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_descriptions ALTER COLUMN id SET DEFAULT nextval('public.question_descriptions_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: roles_admins id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_admins ALTER COLUMN id SET DEFAULT nextval('public.roles_admins_id_seq'::regclass);


--
-- Name: sub_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sub_answers ALTER COLUMN id SET DEFAULT nextval('public.sub_answers_id_seq'::regclass);


--
-- Name: sub_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sub_questions ALTER COLUMN id SET DEFAULT nextval('public.sub_questions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users_families id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_families ALTER COLUMN id SET DEFAULT nextval('public.users_families_id_seq'::regclass);


--
-- Name: users_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions ALTER COLUMN id SET DEFAULT nextval('public.users_questions_id_seq'::regclass);


--
-- Name: users_questions_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers ALTER COLUMN id SET DEFAULT nextval('public.users_questions_answers_id_seq'::regclass);


--
-- Name: users_questions_answers_custom_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers_custom_answers ALTER COLUMN id SET DEFAULT nextval('public.users_questions_answers_custom_answers_id_seq'::regclass);


--
-- Name: users_questions_answers_sub_questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers_sub_questions ALTER COLUMN id SET DEFAULT nextval('public.users_questions_answers_sub_questions_id_seq'::regclass);


--
-- Name: users_questions_answers_sub_questions_sub_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers_sub_questions_sub_answers ALTER COLUMN id SET DEFAULT nextval('public.users_questions_answers_sub_questions_sub_answers_id_seq'::regclass);


--
-- Name: users_questions_answers_sub_questions_sub_answers_custom_answer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers_sub_questions_sub_answers_custom_answer ALTER COLUMN id SET DEFAULT nextval('public.users_questions_answers_sub_questions_sub_answers_custom_id_seq'::regclass);


--
-- Data for Name: admins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admins (id, parent_id, login_id, email, nickname, encrypted_password, photo, enable, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.answers (id, question_id, title, photo, sub_questions_count, has_custom, "default", "only", enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-22 01:49:45.998478	2020-04-22 01:49:45.998478
schema_sha1	e7c76800245c8e77abefbc3d02d6acb28d7fb6f6	2020-04-22 01:49:46.009348	2020-04-22 01:49:46.009348
\.


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ckeditor_assets (id, data_file_name, data_content_type, data_file_size, assetable_id, assetable_type, type, width, height, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: educations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.educations (id, title, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: families; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.families (id, family_category_id, member, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: family_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.family_categories (id, title, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, title, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: live_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.live_types (id, title, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: question_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question_categories (id, title, questions_count, female_only, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: question_descriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question_descriptions (id, question_id, description, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (id, question_category_id, title, answers_count, multi_answer, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, title, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: roles_admins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles_admins (id, role_id, admin_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20170228164638
\.


--
-- Data for Name: sub_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sub_answers (id, sub_question_id, title, photo, has_custom, "default", "only", enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sub_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sub_questions (id, answer_id, title, sub_answers_count, multi_answer, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, login_id, name, birthday, encrypted_password, sex, photo, enable, users_questions_count, users_families_count, job, live_type_id, education_id, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users_families; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_families (id, user_id, family_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_questions (id, user_id, question_id, users_questions_answers_count, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users_questions_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_questions_answers (id, users_question_id, answer_id, users_questions_answers_sub_questions_count, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users_questions_answers_custom_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_questions_answers_custom_answers (id, users_questions_answer_id, title, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users_questions_answers_sub_questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_questions_answers_sub_questions (id, users_questions_answer_id, sub_question_id, users_questions_answers_sub_questions_sub_answers_count, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users_questions_answers_sub_questions_sub_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_questions_answers_sub_questions_sub_answers (id, users_questions_answers_sub_question_id, sub_answer_id, enable, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users_questions_answers_sub_questions_sub_answers_custom_answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_questions_answers_sub_questions_sub_answers_custom_answer (id, users_questions_answers_sub_questions_sub_answer_id, title, enable, created_at, updated_at) FROM stdin;
\.


--
-- Name: admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admins_id_seq', 1, false);


--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_id_seq', 1, false);


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ckeditor_assets_id_seq', 1, false);


--
-- Name: educations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.educations_id_seq', 1, false);


--
-- Name: families_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.families_id_seq', 1, false);


--
-- Name: family_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.family_categories_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: live_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.live_types_id_seq', 1, false);


--
-- Name: question_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_categories_id_seq', 1, false);


--
-- Name: question_descriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_descriptions_id_seq', 1, false);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 1, false);


--
-- Name: roles_admins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_admins_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- Name: sub_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sub_answers_id_seq', 1, false);


--
-- Name: sub_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sub_questions_id_seq', 1, false);


--
-- Name: users_families_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_families_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: users_questions_answers_custom_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_questions_answers_custom_answers_id_seq', 1, false);


--
-- Name: users_questions_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_questions_answers_id_seq', 1, false);


--
-- Name: users_questions_answers_sub_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_questions_answers_sub_questions_id_seq', 1, false);


--
-- Name: users_questions_answers_sub_questions_sub_answers_custom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_questions_answers_sub_questions_sub_answers_custom_id_seq', 1, false);


--
-- Name: users_questions_answers_sub_questions_sub_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_questions_answers_sub_questions_sub_answers_id_seq', 1, false);


--
-- Name: users_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_questions_id_seq', 1, false);


--
-- Name: admins admins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: ckeditor_assets ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: educations educations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.educations
    ADD CONSTRAINT educations_pkey PRIMARY KEY (id);


--
-- Name: families families_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.families
    ADD CONSTRAINT families_pkey PRIMARY KEY (id);


--
-- Name: family_categories family_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family_categories
    ADD CONSTRAINT family_categories_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: live_types live_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.live_types
    ADD CONSTRAINT live_types_pkey PRIMARY KEY (id);


--
-- Name: question_categories question_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_categories
    ADD CONSTRAINT question_categories_pkey PRIMARY KEY (id);


--
-- Name: question_descriptions question_descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_descriptions
    ADD CONSTRAINT question_descriptions_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: roles_admins roles_admins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_admins
    ADD CONSTRAINT roles_admins_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sub_answers sub_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sub_answers
    ADD CONSTRAINT sub_answers_pkey PRIMARY KEY (id);


--
-- Name: sub_questions sub_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sub_questions
    ADD CONSTRAINT sub_questions_pkey PRIMARY KEY (id);


--
-- Name: users_families users_families_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_families
    ADD CONSTRAINT users_families_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_questions_answers_custom_answers users_questions_answers_custom_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers_custom_answers
    ADD CONSTRAINT users_questions_answers_custom_answers_pkey PRIMARY KEY (id);


--
-- Name: users_questions_answers users_questions_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers
    ADD CONSTRAINT users_questions_answers_pkey PRIMARY KEY (id);


--
-- Name: users_questions_answers_sub_questions users_questions_answers_sub_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers_sub_questions
    ADD CONSTRAINT users_questions_answers_sub_questions_pkey PRIMARY KEY (id);


--
-- Name: users_questions_answers_sub_questions_sub_answers_custom_answer users_questions_answers_sub_questions_sub_answers_custom_a_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers_sub_questions_sub_answers_custom_answer
    ADD CONSTRAINT users_questions_answers_sub_questions_sub_answers_custom_a_pkey PRIMARY KEY (id);


--
-- Name: users_questions_answers_sub_questions_sub_answers users_questions_answers_sub_questions_sub_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions_answers_sub_questions_sub_answers
    ADD CONSTRAINT users_questions_answers_sub_questions_sub_answers_pkey PRIMARY KEY (id);


--
-- Name: users_questions users_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_questions
    ADD CONSTRAINT users_questions_pkey PRIMARY KEY (id);


--
-- Name: idx_ckeditor_assetable; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_ckeditor_assetable ON public.ckeditor_assets USING btree (assetable_type, assetable_id);


--
-- Name: idx_ckeditor_assetable_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_ckeditor_assetable_type ON public.ckeditor_assets USING btree (assetable_type, type, assetable_id);


--
-- Name: index_admins_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_admins_on_email ON public.admins USING btree (email);


--
-- Name: index_admins_on_login_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_admins_on_login_id ON public.admins USING btree (login_id);


--
-- Name: index_admins_on_nickname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_admins_on_nickname ON public.admins USING btree (nickname);


--
-- Name: index_roles_admins_on_admin_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_roles_admins_on_admin_id ON public.roles_admins USING btree (admin_id);


--
-- Name: index_roles_admins_on_role_id_and_admin_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_roles_admins_on_role_id_and_admin_id ON public.roles_admins USING btree (role_id, admin_id);


--
-- Name: index_users_families_on_user_id_and_family_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_families_on_user_id_and_family_id ON public.users_families USING btree (user_id, family_id);


--
-- Name: index_users_on_login_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_login_id ON public.users USING btree (login_id);


--
-- Name: index_users_questions_on_user_id_and_question_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_questions_on_user_id_and_question_id ON public.users_questions USING btree (user_id, question_id);


--
-- Name: sub_answers_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sub_answers_unique ON public.sub_answers USING btree (sub_question_id, title);


--
-- Name: users_qa_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_qa_unique ON public.users_questions_answers USING btree (users_question_id, answer_id);


--
-- Name: users_sub_q_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_sub_q_unique ON public.users_questions_answers_sub_questions USING btree (users_questions_answer_id, sub_question_id);


--
-- Name: users_sub_qa_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_sub_qa_unique ON public.users_questions_answers_sub_questions_sub_answers USING btree (users_questions_answers_sub_question_id, sub_answer_id);


--
-- PostgreSQL database dump complete
--

