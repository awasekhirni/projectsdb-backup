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
-- Name: badges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.badges (
    id bigint NOT NULL,
    video_id integer,
    badge_type integer,
    badge_from integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.badges OWNER TO postgres;

--
-- Name: badges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.badges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.badges_id_seq OWNER TO postgres;

--
-- Name: badges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.badges_id_seq OWNED BY public.badges.id;


--
-- Name: banned_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banned_users (
    id bigint NOT NULL,
    email character varying,
    reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    detailed_reason text
);


ALTER TABLE public.banned_users OWNER TO postgres;

--
-- Name: banned_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banned_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banned_users_id_seq OWNER TO postgres;

--
-- Name: banned_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banned_users_id_seq OWNED BY public.banned_users.id;


--
-- Name: banner_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banner_images (
    id bigint NOT NULL,
    path character varying,
    filename character varying,
    active boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.banner_images OWNER TO postgres;

--
-- Name: banner_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banner_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banner_images_id_seq OWNER TO postgres;

--
-- Name: banner_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banner_images_id_seq OWNED BY public.banner_images.id;


--
-- Name: blockings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blockings (
    id bigint NOT NULL,
    requesting_user integer,
    blocked_user integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.blockings OWNER TO postgres;

--
-- Name: blockings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blockings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blockings_id_seq OWNER TO postgres;

--
-- Name: blockings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blockings_id_seq OWNED BY public.blockings.id;


--
-- Name: channel_requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.channel_requests (
    id bigint NOT NULL,
    channel_id integer,
    user_id integer,
    token character varying,
    ignored boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.channel_requests OWNER TO postgres;

--
-- Name: channel_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.channel_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.channel_requests_id_seq OWNER TO postgres;

--
-- Name: channel_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.channel_requests_id_seq OWNED BY public.channel_requests.id;


--
-- Name: channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.channels (
    id bigint NOT NULL,
    user_id integer,
    title character varying,
    private boolean DEFAULT false,
    featured boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    public_token character varying,
    recommended boolean DEFAULT false
);


ALTER TABLE public.channels OWNER TO postgres;

--
-- Name: channels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.channels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.channels_id_seq OWNER TO postgres;

--
-- Name: channels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.channels_id_seq OWNED BY public.channels.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    video_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    content text,
    user_id integer
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: delayed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delayed_jobs (
    id bigint NOT NULL,
    priority integer DEFAULT 0,
    attempts integer DEFAULT 0,
    handler text,
    last_error text,
    run_at timestamp without time zone,
    locked_at timestamp without time zone,
    failed_at timestamp without time zone,
    locked_by character varying,
    queue character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.delayed_jobs OWNER TO postgres;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.delayed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.delayed_jobs_id_seq OWNER TO postgres;

--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.delayed_jobs_id_seq OWNED BY public.delayed_jobs.id;


--
-- Name: flags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flags (
    id bigint NOT NULL,
    reason character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.flags OWNER TO postgres;

--
-- Name: flags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flags_id_seq OWNER TO postgres;

--
-- Name: flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flags_id_seq OWNED BY public.flags.id;


--
-- Name: icons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.icons (
    id bigint NOT NULL,
    name character varying,
    css_class character varying,
    active boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    icon_type character varying
);


ALTER TABLE public.icons OWNER TO postgres;

--
-- Name: icons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.icons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.icons_id_seq OWNER TO postgres;

--
-- Name: icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.icons_id_seq OWNED BY public.icons.id;


--
-- Name: invitation_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invitation_links (
    id bigint NOT NULL,
    user_id integer,
    email_asking_for_invite character varying,
    invitation_limit integer,
    token character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    has_been_invited boolean DEFAULT true,
    click_count integer DEFAULT 0
);


ALTER TABLE public.invitation_links OWNER TO postgres;

--
-- Name: invitation_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invitation_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invitation_links_id_seq OWNER TO postgres;

--
-- Name: invitation_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invitation_links_id_seq OWNED BY public.invitation_links.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profiles (
    id bigint NOT NULL,
    user_id integer,
    interests text,
    favorite_music text,
    favorite_movies text,
    favorite_books text,
    favorite_people text,
    things_i_could_live_without text,
    one_thing_i_would_change_in_the_world text,
    quotes_to_live_by text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    favorite_foods text,
    bio character varying,
    website character varying
);


ALTER TABLE public.profiles OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: restricted_usernames; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restricted_usernames (
    id bigint NOT NULL,
    username character varying,
    inclusive boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.restricted_usernames OWNER TO postgres;

--
-- Name: restricted_usernames_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.restricted_usernames_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restricted_usernames_id_seq OWNER TO postgres;

--
-- Name: restricted_usernames_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.restricted_usernames_id_seq OWNED BY public.restricted_usernames.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.settings (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer,
    hide_getting_started boolean DEFAULT false,
    send_email_for_new_badges boolean DEFAULT true,
    send_email_for_new_comments boolean DEFAULT true,
    send_email_for_replies_to_a_prior_comment boolean DEFAULT true,
    send_email_for_new_subscriber boolean DEFAULT true,
    send_email_for_featured_video boolean DEFAULT true,
    send_email_for_private_channel_request boolean DEFAULT true,
    send_email_for_encoding_completion boolean DEFAULT true
);


ALTER TABLE public.settings OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO postgres;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: social_networks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_networks (
    id bigint NOT NULL,
    uid character varying,
    provider character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    token character varying,
    user_id integer,
    token_secret character varying
);


ALTER TABLE public.social_networks OWNER TO postgres;

--
-- Name: social_networks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_networks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_networks_id_seq OWNER TO postgres;

--
-- Name: social_networks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_networks_id_seq OWNED BY public.social_networks.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    subscriber_id integer,
    publisher_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    channel_id integer,
    collaborator boolean DEFAULT false
);


ALTER TABLE public.subscriptions OWNER TO postgres;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriptions_id_seq OWNER TO postgres;

--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: taggings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taggings (
    id bigint NOT NULL,
    video_id integer,
    tag_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    video_owner_id integer
);


ALTER TABLE public.taggings OWNER TO postgres;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO postgres;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    content character varying
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: user_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_events (
    id bigint NOT NULL,
    event_type integer,
    event_object_id integer,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    event_creator_id integer,
    error_during_render boolean DEFAULT false,
    seen_by_user boolean DEFAULT false
);


ALTER TABLE public.user_events OWNER TO postgres;

--
-- Name: user_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_events_id_seq OWNER TO postgres;

--
-- Name: user_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_events_id_seq OWNED BY public.user_events.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password character varying,
    salt character varying,
    name character varying,
    image character varying,
    birthday date,
    gender character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    location character varying,
    reset_token character varying,
    pw_reset_timestamp timestamp without time zone,
    image_status character varying,
    is_deactivated boolean DEFAULT false,
    delta boolean DEFAULT true NOT NULL,
    username character varying,
    banner_image character varying,
    banner_image_id integer DEFAULT 1,
    username_changed_at timestamp without time zone,
    background_image_id integer DEFAULT 0
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
-- Name: video_errors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_errors (
    id bigint NOT NULL,
    video_graph_id integer,
    error_status integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    error_message text,
    user_id integer
);


ALTER TABLE public.video_errors OWNER TO postgres;

--
-- Name: video_errors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.video_errors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_errors_id_seq OWNER TO postgres;

--
-- Name: video_errors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.video_errors_id_seq OWNED BY public.video_errors.id;


--
-- Name: video_flags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_flags (
    id bigint NOT NULL,
    flag_id integer,
    video_id integer,
    flagged_by integer,
    detailed_reason text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.video_flags OWNER TO postgres;

--
-- Name: video_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.video_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_flags_id_seq OWNER TO postgres;

--
-- Name: video_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.video_flags_id_seq OWNED BY public.video_flags.id;


--
-- Name: video_graphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.video_graphs (
    id bigint NOT NULL,
    thumbnail_path character varying,
    path character varying,
    callback_url character varying,
    base_filename character varying,
    encoding_type character varying DEFAULT 'enc1'::character varying,
    thumbnail_type character varying DEFAULT 'thumb1'::character varying,
    status integer DEFAULT 0,
    zencoder_job_id integer,
    remote_host character varying,
    remote_video_id character varying,
    remote_thumbnail character varying,
    delta boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    submitting_error_count integer DEFAULT 0,
    transcoding_error_count integer DEFAULT 0,
    error_message text,
    user_id integer,
    deleted boolean DEFAULT false
);


ALTER TABLE public.video_graphs OWNER TO postgres;

--
-- Name: video_graphs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.video_graphs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_graphs_id_seq OWNER TO postgres;

--
-- Name: video_graphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.video_graphs_id_seq OWNED BY public.video_graphs.id;


--
-- Name: videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videos (
    id bigint NOT NULL,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    delta boolean DEFAULT true NOT NULL,
    selected_thumbnail integer DEFAULT 0,
    public_token character varying,
    send_to_facebook boolean DEFAULT false,
    send_to_twitter boolean DEFAULT false,
    video_graph_id integer,
    channel_id integer,
    title character varying,
    description text,
    featured_at timestamp without time zone
);


ALTER TABLE public.videos OWNER TO postgres;

--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.videos_id_seq OWNER TO postgres;

--
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;


--
-- Name: badges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.badges ALTER COLUMN id SET DEFAULT nextval('public.badges_id_seq'::regclass);


--
-- Name: banned_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banned_users ALTER COLUMN id SET DEFAULT nextval('public.banned_users_id_seq'::regclass);


--
-- Name: banner_images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banner_images ALTER COLUMN id SET DEFAULT nextval('public.banner_images_id_seq'::regclass);


--
-- Name: blockings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blockings ALTER COLUMN id SET DEFAULT nextval('public.blockings_id_seq'::regclass);


--
-- Name: channel_requests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channel_requests ALTER COLUMN id SET DEFAULT nextval('public.channel_requests_id_seq'::regclass);


--
-- Name: channels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channels ALTER COLUMN id SET DEFAULT nextval('public.channels_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: delayed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delayed_jobs ALTER COLUMN id SET DEFAULT nextval('public.delayed_jobs_id_seq'::regclass);


--
-- Name: flags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flags ALTER COLUMN id SET DEFAULT nextval('public.flags_id_seq'::regclass);


--
-- Name: icons id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icons ALTER COLUMN id SET DEFAULT nextval('public.icons_id_seq'::regclass);


--
-- Name: invitation_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invitation_links ALTER COLUMN id SET DEFAULT nextval('public.invitation_links_id_seq'::regclass);


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Name: restricted_usernames id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restricted_usernames ALTER COLUMN id SET DEFAULT nextval('public.restricted_usernames_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: social_networks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_networks ALTER COLUMN id SET DEFAULT nextval('public.social_networks_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: user_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_events ALTER COLUMN id SET DEFAULT nextval('public.user_events_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: video_errors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_errors ALTER COLUMN id SET DEFAULT nextval('public.video_errors_id_seq'::regclass);


--
-- Name: video_flags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_flags ALTER COLUMN id SET DEFAULT nextval('public.video_flags_id_seq'::regclass);


--
-- Name: video_graphs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_graphs ALTER COLUMN id SET DEFAULT nextval('public.video_graphs_id_seq'::regclass);


--
-- Name: videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-04-22 00:21:25.654163	2020-04-22 00:21:25.654163
schema_sha1	d442eee8eb8d2e043e54382062dea52e1388c911	2020-04-22 00:21:25.667059	2020-04-22 00:21:25.667059
\.


--
-- Data for Name: badges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.badges (id, video_id, badge_type, badge_from, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: banned_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banned_users (id, email, reason, created_at, updated_at, detailed_reason) FROM stdin;
\.


--
-- Data for Name: banner_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banner_images (id, path, filename, active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: blockings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blockings (id, requesting_user, blocked_user, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: channel_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.channel_requests (id, channel_id, user_id, token, ignored, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: channels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.channels (id, user_id, title, private, featured, created_at, updated_at, public_token, recommended) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, video_id, created_at, updated_at, content, user_id) FROM stdin;
\.


--
-- Data for Name: delayed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delayed_jobs (id, priority, attempts, handler, last_error, run_at, locked_at, failed_at, locked_by, queue, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flags (id, reason, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: icons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.icons (id, name, css_class, active, created_at, updated_at, icon_type) FROM stdin;
\.


--
-- Data for Name: invitation_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invitation_links (id, user_id, email_asking_for_invite, invitation_limit, token, created_at, updated_at, has_been_invited, click_count) FROM stdin;
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profiles (id, user_id, interests, favorite_music, favorite_movies, favorite_books, favorite_people, things_i_could_live_without, one_thing_i_would_change_in_the_world, quotes_to_live_by, created_at, updated_at, favorite_foods, bio, website) FROM stdin;
\.


--
-- Data for Name: restricted_usernames; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restricted_usernames (id, username, inclusive, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20130604202246
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.settings (id, created_at, updated_at, user_id, hide_getting_started, send_email_for_new_badges, send_email_for_new_comments, send_email_for_replies_to_a_prior_comment, send_email_for_new_subscriber, send_email_for_featured_video, send_email_for_private_channel_request, send_email_for_encoding_completion) FROM stdin;
\.


--
-- Data for Name: social_networks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_networks (id, uid, provider, created_at, updated_at, token, user_id, token_secret) FROM stdin;
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscriptions (id, subscriber_id, publisher_id, created_at, updated_at, channel_id, collaborator) FROM stdin;
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.taggings (id, video_id, tag_id, created_at, updated_at, video_owner_id) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (id, created_at, updated_at, content) FROM stdin;
\.


--
-- Data for Name: user_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_events (id, event_type, event_object_id, user_id, created_at, updated_at, event_creator_id, error_during_render, seen_by_user) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, salt, name, image, birthday, gender, created_at, updated_at, location, reset_token, pw_reset_timestamp, image_status, is_deactivated, delta, username, banner_image, banner_image_id, username_changed_at, background_image_id) FROM stdin;
\.


--
-- Data for Name: video_errors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video_errors (id, video_graph_id, error_status, created_at, updated_at, error_message, user_id) FROM stdin;
\.


--
-- Data for Name: video_flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video_flags (id, flag_id, video_id, flagged_by, detailed_reason, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: video_graphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.video_graphs (id, thumbnail_path, path, callback_url, base_filename, encoding_type, thumbnail_type, status, zencoder_job_id, remote_host, remote_video_id, remote_thumbnail, delta, created_at, updated_at, submitting_error_count, transcoding_error_count, error_message, user_id, deleted) FROM stdin;
\.


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.videos (id, user_id, created_at, updated_at, delta, selected_thumbnail, public_token, send_to_facebook, send_to_twitter, video_graph_id, channel_id, title, description, featured_at) FROM stdin;
\.


--
-- Name: badges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.badges_id_seq', 1, false);


--
-- Name: banned_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banned_users_id_seq', 1, false);


--
-- Name: banner_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banner_images_id_seq', 1, false);


--
-- Name: blockings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blockings_id_seq', 1, false);


--
-- Name: channel_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.channel_requests_id_seq', 1, false);


--
-- Name: channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.channels_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: delayed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.delayed_jobs_id_seq', 1, false);


--
-- Name: flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flags_id_seq', 1, false);


--
-- Name: icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.icons_id_seq', 1, false);


--
-- Name: invitation_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invitation_links_id_seq', 1, false);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profiles_id_seq', 1, false);


--
-- Name: restricted_usernames_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.restricted_usernames_id_seq', 1, false);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.settings_id_seq', 1, false);


--
-- Name: social_networks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_networks_id_seq', 1, false);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 1, false);


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taggings_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: user_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_events_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: video_errors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.video_errors_id_seq', 1, false);


--
-- Name: video_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.video_flags_id_seq', 1, false);


--
-- Name: video_graphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.video_graphs_id_seq', 1, false);


--
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.videos_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: badges badges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.badges
    ADD CONSTRAINT badges_pkey PRIMARY KEY (id);


--
-- Name: banned_users banned_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banned_users
    ADD CONSTRAINT banned_users_pkey PRIMARY KEY (id);


--
-- Name: banner_images banner_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banner_images
    ADD CONSTRAINT banner_images_pkey PRIMARY KEY (id);


--
-- Name: blockings blockings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blockings
    ADD CONSTRAINT blockings_pkey PRIMARY KEY (id);


--
-- Name: channel_requests channel_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channel_requests
    ADD CONSTRAINT channel_requests_pkey PRIMARY KEY (id);


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs delayed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);


--
-- Name: flags flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flags
    ADD CONSTRAINT flags_pkey PRIMARY KEY (id);


--
-- Name: icons icons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.icons
    ADD CONSTRAINT icons_pkey PRIMARY KEY (id);


--
-- Name: invitation_links invitation_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invitation_links
    ADD CONSTRAINT invitation_links_pkey PRIMARY KEY (id);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: restricted_usernames restricted_usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restricted_usernames
    ADD CONSTRAINT restricted_usernames_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: social_networks social_networks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_networks
    ADD CONSTRAINT social_networks_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: user_events user_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_events
    ADD CONSTRAINT user_events_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: video_errors video_errors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_errors
    ADD CONSTRAINT video_errors_pkey PRIMARY KEY (id);


--
-- Name: video_flags video_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_flags
    ADD CONSTRAINT video_flags_pkey PRIMARY KEY (id);


--
-- Name: video_graphs video_graphs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.video_graphs
    ADD CONSTRAINT video_graphs_pkey PRIMARY KEY (id);


--
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- Name: delayed_jobs_priority; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX delayed_jobs_priority ON public.delayed_jobs USING btree (priority, run_at);


--
-- Name: index_badges_on_badge_from; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_badges_on_badge_from ON public.badges USING btree (badge_from);


--
-- Name: index_badges_on_badge_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_badges_on_badge_type ON public.badges USING btree (badge_type);


--
-- Name: index_badges_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_badges_on_created_at ON public.badges USING btree (created_at);


--
-- Name: index_badges_on_video_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_badges_on_video_id ON public.badges USING btree (video_id);


--
-- Name: index_banned_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_banned_users_on_email ON public.banned_users USING btree (email);


--
-- Name: index_banner_images_on_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_banner_images_on_active ON public.banner_images USING btree (active);


--
-- Name: index_blockings_on_blocked_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_blockings_on_blocked_user ON public.blockings USING btree (blocked_user);


--
-- Name: index_blockings_on_requesting_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_blockings_on_requesting_user ON public.blockings USING btree (requesting_user);


--
-- Name: index_channel_requests_on_channel_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channel_requests_on_channel_id ON public.channel_requests USING btree (channel_id);


--
-- Name: index_channel_requests_on_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channel_requests_on_token ON public.channel_requests USING btree (token);


--
-- Name: index_channel_requests_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channel_requests_on_user_id ON public.channel_requests USING btree (user_id);


--
-- Name: index_channels_on_created_at_and_updated_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channels_on_created_at_and_updated_at ON public.channels USING btree (created_at, updated_at);


--
-- Name: index_channels_on_featured; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channels_on_featured ON public.channels USING btree (featured);


--
-- Name: index_channels_on_private; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channels_on_private ON public.channels USING btree (private);


--
-- Name: index_channels_on_public_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channels_on_public_token ON public.channels USING btree (public_token);


--
-- Name: index_channels_on_recommended; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channels_on_recommended ON public.channels USING btree (recommended);


--
-- Name: index_channels_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_channels_on_user_id ON public.channels USING btree (user_id);


--
-- Name: index_comments_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_created_at ON public.comments USING btree (created_at);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_comments_on_video_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_comments_on_video_id ON public.comments USING btree (video_id);


--
-- Name: index_icons_on_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_icons_on_active ON public.icons USING btree (active);


--
-- Name: index_invitation_links_on_email_asking_for_invite; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_invitation_links_on_email_asking_for_invite ON public.invitation_links USING btree (email_asking_for_invite);


--
-- Name: index_invitation_links_on_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_invitation_links_on_token ON public.invitation_links USING btree (token);


--
-- Name: index_invitation_links_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_invitation_links_on_user_id ON public.invitation_links USING btree (user_id);


--
-- Name: index_profiles_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_profiles_on_user_id ON public.profiles USING btree (user_id);


--
-- Name: index_restricted_usernames_on_inclusive; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_restricted_usernames_on_inclusive ON public.restricted_usernames USING btree (inclusive);


--
-- Name: index_restricted_usernames_on_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_restricted_usernames_on_username ON public.restricted_usernames USING btree (username);


--
-- Name: index_settings_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_settings_on_user_id ON public.settings USING btree (user_id);


--
-- Name: index_social_networks_on_provider; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_social_networks_on_provider ON public.social_networks USING btree (provider);


--
-- Name: index_social_networks_on_token_secret; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_social_networks_on_token_secret ON public.social_networks USING btree (token_secret);


--
-- Name: index_social_networks_on_uid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_social_networks_on_uid ON public.social_networks USING btree (uid);


--
-- Name: index_social_networks_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_social_networks_on_user_id ON public.social_networks USING btree (user_id);


--
-- Name: index_subscriptions_on_channel_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subscriptions_on_channel_id ON public.subscriptions USING btree (channel_id);


--
-- Name: index_subscriptions_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subscriptions_on_created_at ON public.subscriptions USING btree (created_at);


--
-- Name: index_subscriptions_on_publisher_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subscriptions_on_publisher_id ON public.subscriptions USING btree (publisher_id);


--
-- Name: index_subscriptions_on_subscriber_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_subscriptions_on_subscriber_id ON public.subscriptions USING btree (subscriber_id);


--
-- Name: index_taggings_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taggings_on_created_at ON public.taggings USING btree (created_at);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_taggings_on_video_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taggings_on_video_id ON public.taggings USING btree (video_id);


--
-- Name: index_taggings_on_video_owner_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_taggings_on_video_owner_id ON public.taggings USING btree (video_owner_id);


--
-- Name: index_user_events_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_events_on_created_at ON public.user_events USING btree (created_at);


--
-- Name: index_user_events_on_event_object_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_events_on_event_object_id ON public.user_events USING btree (event_object_id);


--
-- Name: index_user_events_on_event_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_events_on_event_type ON public.user_events USING btree (event_type);


--
-- Name: index_user_events_on_seen_by_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_events_on_seen_by_user ON public.user_events USING btree (seen_by_user);


--
-- Name: index_user_events_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_events_on_user_id ON public.user_events USING btree (user_id);


--
-- Name: index_users_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_created_at ON public.users USING btree (created_at);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_username ON public.users USING btree (username);


--
-- Name: index_video_flags_on_flag_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_video_flags_on_flag_id ON public.video_flags USING btree (flag_id);


--
-- Name: index_video_flags_on_flagged_by; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_video_flags_on_flagged_by ON public.video_flags USING btree (flagged_by);


--
-- Name: index_video_flags_on_video_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_video_flags_on_video_id ON public.video_flags USING btree (video_id);


--
-- Name: index_video_graphs_on_base_filename; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_video_graphs_on_base_filename ON public.video_graphs USING btree (base_filename);


--
-- Name: index_video_graphs_on_deleted; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_video_graphs_on_deleted ON public.video_graphs USING btree (deleted);


--
-- Name: index_video_graphs_on_remote_host; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_video_graphs_on_remote_host ON public.video_graphs USING btree (remote_host);


--
-- Name: index_video_graphs_on_remote_video_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_video_graphs_on_remote_video_id ON public.video_graphs USING btree (remote_video_id);


--
-- Name: index_video_graphs_on_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_video_graphs_on_status ON public.video_graphs USING btree (status);


--
-- Name: index_videos_on_channel_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_videos_on_channel_id ON public.videos USING btree (channel_id);


--
-- Name: index_videos_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_videos_on_created_at ON public.videos USING btree (created_at);


--
-- Name: index_videos_on_featured_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_videos_on_featured_at ON public.videos USING btree (featured_at);


--
-- Name: index_videos_on_public_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_videos_on_public_token ON public.videos USING btree (public_token);


--
-- Name: index_videos_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_videos_on_user_id ON public.videos USING btree (user_id);


--
-- Name: index_videos_on_video_graph_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_videos_on_video_graph_id ON public.videos USING btree (video_graph_id);


--
-- PostgreSQL database dump complete
--

