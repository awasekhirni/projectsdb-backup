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
-- Name: AO_0AC321_RECOMMENDATION_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_0AC321_RECOMMENDATION_AO" (
    "CATEGORY" character varying(255),
    "CUSTOM_FIELD_ID" bigint,
    "ID" character varying(255) NOT NULL,
    "NAME" character varying(255),
    "PERFORMANCE_IMPACT" double precision,
    "PROJECT_IDS" text,
    "RESOLVED" boolean,
    "TYPE" character varying(255)
);


ALTER TABLE public."AO_0AC321_RECOMMENDATION_AO" OWNER TO postgres;

--
-- Name: AO_21D670_WHITELIST_RULES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_21D670_WHITELIST_RULES" (
    "ALLOWINBOUND" boolean,
    "EXPRESSION" text NOT NULL,
    "ID" integer NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21D670_WHITELIST_RULES" OWNER TO postgres;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNER TO postgres;

--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNED BY public."AO_21D670_WHITELIST_RULES"."ID";


--
-- Name: AO_21F425_MESSAGE_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_21F425_MESSAGE_AO" (
    "CONTENT" text NOT NULL,
    "ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_MESSAGE_AO" OWNER TO postgres;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_21F425_MESSAGE_MAPPING_AO" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" character varying(255) NOT NULL,
    "USER_HASH" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_MESSAGE_MAPPING_AO" OWNER TO postgres;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNER TO postgres;

--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNED BY public."AO_21F425_MESSAGE_MAPPING_AO"."ID";


--
-- Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_21F425_USER_PROPERTY_AO" (
    "ID" integer NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "USER" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_21F425_USER_PROPERTY_AO" OWNER TO postgres;

--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_21F425_USER_PROPERTY_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_21F425_USER_PROPERTY_AO_ID_seq" OWNER TO postgres;

--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_21F425_USER_PROPERTY_AO_ID_seq" OWNED BY public."AO_21F425_USER_PROPERTY_AO"."ID";


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" (
    "CONTENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "LINK_LABEL" character varying(255),
    "LINK_URL" character varying(255),
    "SEQUENCE" integer DEFAULT 0
);


ALTER TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" OWNER TO postgres;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNER TO postgres;

--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNED BY public."AO_38321B_CUSTOM_CONTENT_LINK"."ID";


--
-- Name: AO_3B1893_LOOP_DETECTION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_3B1893_LOOP_DETECTION" (
    "COUNTER" integer DEFAULT 0 NOT NULL,
    "EXPIRES_AT" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "SENDER_EMAIL" text NOT NULL
);


ALTER TABLE public."AO_3B1893_LOOP_DETECTION" OWNER TO postgres;

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_3B1893_LOOP_DETECTION_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_3B1893_LOOP_DETECTION_ID_seq" OWNER TO postgres;

--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_3B1893_LOOP_DETECTION_ID_seq" OWNED BY public."AO_3B1893_LOOP_DETECTION"."ID";


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" character varying(255),
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" character varying(450),
    "ID" integer NOT NULL,
    "IS_HEALTHY" boolean,
    "IS_RESOLVED" boolean,
    "RESOLVED_DATE" timestamp without time zone,
    "SEVERITY" character varying(255),
    "STATUS_NAME" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_HEALTH_CHECK_STATUS" OWNER TO postgres;

--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" OWNER TO postgres;

--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" OWNED BY public."AO_4789DD_HEALTH_CHECK_STATUS"."ID";


--
-- Name: AO_4789DD_PROPERTIES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_PROPERTIES" (
    "ID" integer NOT NULL,
    "PROPERTY_NAME" character varying(255) NOT NULL,
    "PROPERTY_VALUE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_PROPERTIES" OWNER TO postgres;

--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4789DD_PROPERTIES_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_PROPERTIES_ID_seq" OWNER TO postgres;

--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4789DD_PROPERTIES_ID_seq" OWNED BY public."AO_4789DD_PROPERTIES"."ID";


--
-- Name: AO_4789DD_READ_NOTIFICATIONS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_READ_NOTIFICATIONS" (
    "ID" integer NOT NULL,
    "IS_SNOOZED" boolean,
    "NOTIFICATION_ID" integer NOT NULL,
    "SNOOZE_COUNT" integer,
    "SNOOZE_DATE" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
);


ALTER TABLE public."AO_4789DD_READ_NOTIFICATIONS" OWNER TO postgres;

--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq" OWNER TO postgres;

--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq" OWNED BY public."AO_4789DD_READ_NOTIFICATIONS"."ID";


--
-- Name: AO_4789DD_TASK_MONITOR; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_TASK_MONITOR" (
    "CLUSTERED_TASK_ID" character varying(255),
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "ID" integer NOT NULL,
    "NODE_ID" character varying(255),
    "PROGRESS_MESSAGE" text,
    "PROGRESS_PERCENTAGE" integer,
    "SERIALIZED_ERRORS" text,
    "SERIALIZED_WARNINGS" text,
    "TASK_ID" character varying(255) NOT NULL,
    "TASK_MONITOR_KIND" character varying(255),
    "TASK_STATUS" text
);


ALTER TABLE public."AO_4789DD_TASK_MONITOR" OWNER TO postgres;

--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4789DD_TASK_MONITOR_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4789DD_TASK_MONITOR_ID_seq" OWNER TO postgres;

--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4789DD_TASK_MONITOR_ID_seq" OWNED BY public."AO_4789DD_TASK_MONITOR"."ID";


--
-- Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4AEACD_WEBHOOK_DAO" (
    "ENABLED" boolean,
    "ENCODED_EVENTS" text,
    "FILTER" text,
    "ID" integer NOT NULL,
    "JQL" character varying(255),
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255) NOT NULL,
    "NAME" text NOT NULL,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL,
    "EXCLUDE_ISSUE_DETAILS" boolean,
    "PARAMETERS" text
);


ALTER TABLE public."AO_4AEACD_WEBHOOK_DAO" OWNER TO postgres;

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_4AEACD_WEBHOOK_DAO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNER TO postgres;

--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNED BY public."AO_4AEACD_WEBHOOK_DAO"."ID";


--
-- Name: AO_550953_SHORTCUT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_550953_SHORTCUT" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PROJECT_ID" bigint,
    "SHORTCUT_URL" text,
    "URL" character varying(255),
    "ICON" character varying(255)
);


ALTER TABLE public."AO_550953_SHORTCUT" OWNER TO postgres;

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_550953_SHORTCUT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_550953_SHORTCUT_ID_seq" OWNER TO postgres;

--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_550953_SHORTCUT_ID_seq" OWNED BY public."AO_550953_SHORTCUT"."ID";


--
-- Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_ACTIVITY_ENTITY" (
    "ACTIVITY_ID" bigint NOT NULL,
    "ACTOR_ID" integer,
    "CONTENT" text,
    "GENERATOR_DISPLAY_NAME" character varying(255),
    "GENERATOR_ID" character varying(450),
    "ICON_ID" integer,
    "ID" character varying(450),
    "ISSUE_KEY" character varying(255),
    "OBJECT_ID" integer,
    "POSTER" character varying(255),
    "PROJECT_KEY" character varying(255),
    "PUBLISHED" timestamp without time zone,
    "TARGET_ID" integer,
    "TITLE" character varying(255),
    "URL" character varying(450),
    "USERNAME" character varying(255),
    "VERB" character varying(450)
);


ALTER TABLE public."AO_563AEE_ACTIVITY_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNED BY public."AO_563AEE_ACTIVITY_ENTITY"."ACTIVITY_ID";


--
-- Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_ACTOR_ENTITY" (
    "FULL_NAME" character varying(255),
    "ID" integer NOT NULL,
    "PROFILE_PAGE_URI" character varying(450),
    "PROFILE_PICTURE_URI" character varying(450),
    "USERNAME" character varying(255)
);


ALTER TABLE public."AO_563AEE_ACTOR_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNED BY public."AO_563AEE_ACTOR_ENTITY"."ID";


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" (
    "DURATION" integer,
    "HEIGHT" integer,
    "ID" integer NOT NULL,
    "URL" character varying(450),
    "WIDTH" integer
);


ALTER TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNED BY public."AO_563AEE_MEDIA_LINK_ENTITY"."ID";


--
-- Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_OBJECT_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE public."AO_563AEE_OBJECT_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNED BY public."AO_563AEE_OBJECT_ENTITY"."ID";


--
-- Name: AO_563AEE_TARGET_ENTITY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_563AEE_TARGET_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
);


ALTER TABLE public."AO_563AEE_TARGET_ENTITY" OWNER TO postgres;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNER TO postgres;

--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNED BY public."AO_563AEE_TARGET_ENTITY"."ID";


--
-- Name: AO_575BF5_DEV_SUMMARY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_575BF5_DEV_SUMMARY" (
    "CREATED" timestamp without time zone NOT NULL,
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "JSON" text,
    "PROVIDER_SOURCE_ID" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone NOT NULL
);


ALTER TABLE public."AO_575BF5_DEV_SUMMARY" OWNER TO postgres;

--
-- Name: AO_575BF5_DEV_SUMMARY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_575BF5_DEV_SUMMARY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_575BF5_DEV_SUMMARY_ID_seq" OWNER TO postgres;

--
-- Name: AO_575BF5_DEV_SUMMARY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_575BF5_DEV_SUMMARY_ID_seq" OWNED BY public."AO_575BF5_DEV_SUMMARY"."ID";


--
-- Name: AO_575BF5_PROCESSED_COMMITS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_575BF5_PROCESSED_COMMITS" (
    "COMMIT_HASH" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "METADATA_HASH" character varying(255)
);


ALTER TABLE public."AO_575BF5_PROCESSED_COMMITS" OWNER TO postgres;

--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_575BF5_PROCESSED_COMMITS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_575BF5_PROCESSED_COMMITS_ID_seq" OWNER TO postgres;

--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_575BF5_PROCESSED_COMMITS_ID_seq" OWNED BY public."AO_575BF5_PROCESSED_COMMITS"."ID";


--
-- Name: AO_575BF5_PROVIDER_ISSUE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_575BF5_PROVIDER_ISSUE" (
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "PROVIDER_SOURCE_ID" character varying(255) NOT NULL,
    "STALE_AFTER" bigint
);


ALTER TABLE public."AO_575BF5_PROVIDER_ISSUE" OWNER TO postgres;

--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_575BF5_PROVIDER_ISSUE_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_575BF5_PROVIDER_ISSUE_ID_seq" OWNER TO postgres;

--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_575BF5_PROVIDER_ISSUE_ID_seq" OWNED BY public."AO_575BF5_PROVIDER_ISSUE"."ID";


--
-- Name: AO_575BF5_PROVIDER_SEQ_NO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_575BF5_PROVIDER_SEQ_NO" (
    "ID" integer NOT NULL,
    "PROVIDER_SOURCE_ID" character varying(255) NOT NULL,
    "SEQUENCE_NO" character varying(255)
);


ALTER TABLE public."AO_575BF5_PROVIDER_SEQ_NO" OWNER TO postgres;

--
-- Name: AO_575BF5_PROVIDER_SEQ_NO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq" OWNER TO postgres;

--
-- Name: AO_575BF5_PROVIDER_SEQ_NO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq" OWNED BY public."AO_575BF5_PROVIDER_SEQ_NO"."ID";


--
-- Name: AO_587B34_GLANCE_CONFIG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_587B34_GLANCE_CONFIG" (
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "STATE" character varying(255),
    "SYNC_NEEDED" boolean,
    "APPLICATION_USER_KEY" character varying(255),
    "JQL" character varying(255),
    "NAME" character varying(255)
);


ALTER TABLE public."AO_587B34_GLANCE_CONFIG" OWNER TO postgres;

--
-- Name: AO_587B34_PROJECT_CONFIG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_587B34_PROJECT_CONFIG" (
    "CONFIGURATION_GROUP_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "NAME_UNIQUE_CONSTRAINT" character varying(255) NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0 NOT NULL,
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "VALUE" character varying(255)
);


ALTER TABLE public."AO_587B34_PROJECT_CONFIG" OWNER TO postgres;

--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_587B34_PROJECT_CONFIG_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_587B34_PROJECT_CONFIG_ID_seq" OWNER TO postgres;

--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_587B34_PROJECT_CONFIG_ID_seq" OWNED BY public."AO_587B34_PROJECT_CONFIG"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK" (
    "ADDON_TOKEN_EXPIRY" timestamp without time zone,
    "API_URL" character varying(255),
    "CONNECT_DESCRIPTOR" text,
    "GROUP_ID" integer DEFAULT 0,
    "GROUP_NAME" character varying(255),
    "ID" integer NOT NULL,
    "OAUTH_ID" character varying(255),
    "SECRET_KEY" character varying(255),
    "SYSTEM_PASSWORD" character varying(255),
    "SYSTEM_TOKEN_EXPIRY" timestamp without time zone,
    "SYSTEM_USER" character varying(255),
    "SYSTEM_USER_TOKEN" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK" OWNER TO postgres;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNER TO postgres;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNED BY public."AO_5FB9D7_AOHIP_CHAT_LINK"."ID";


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_5FB9D7_AOHIP_CHAT_USER" (
    "HIP_CHAT_LINK_ID" integer,
    "HIP_CHAT_USER_ID" character varying(255),
    "HIP_CHAT_USER_NAME" character varying(255),
    "ID" integer NOT NULL,
    "REFRESH_CODE" character varying(255),
    "USER_KEY" character varying(255),
    "USER_SCOPES" character varying(255),
    "USER_TOKEN" character varying(255),
    "USER_TOKEN_EXPIRY" timestamp without time zone
);


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_USER" OWNER TO postgres;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNER TO postgres;

--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNED BY public."AO_5FB9D7_AOHIP_CHAT_USER"."ID";


--
-- Name: AO_60DB71_AUDITENTRY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_AUDITENTRY" (
    "CATEGORY" character varying(255) NOT NULL,
    "DATA" text NOT NULL,
    "ENTITY_CLASS" character varying(255) NOT NULL,
    "ENTITY_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "TIME" bigint,
    "USER" character varying(255)
);


ALTER TABLE public."AO_60DB71_AUDITENTRY" OWNER TO postgres;

--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_AUDITENTRY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_AUDITENTRY_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_AUDITENTRY_ID_seq" OWNED BY public."AO_60DB71_AUDITENTRY"."ID";


--
-- Name: AO_60DB71_BOARDADMINS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_BOARDADMINS" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_BOARDADMINS" OWNER TO postgres;

--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_BOARDADMINS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_BOARDADMINS_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_BOARDADMINS_ID_seq" OWNED BY public."AO_60DB71_BOARDADMINS"."ID";


--
-- Name: AO_60DB71_CARDCOLOR; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_CARDCOLOR" (
    "COLOR" character varying(255),
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "STRATEGY" character varying(255),
    "VAL" character varying(255)
);


ALTER TABLE public."AO_60DB71_CARDCOLOR" OWNER TO postgres;

--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_CARDCOLOR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_CARDCOLOR_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_CARDCOLOR_ID_seq" OWNED BY public."AO_60DB71_CARDCOLOR"."ID";


--
-- Name: AO_60DB71_CARDLAYOUT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_CARDLAYOUT" (
    "FIELD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "MODE_NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_CARDLAYOUT" OWNER TO postgres;

--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_CARDLAYOUT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_CARDLAYOUT_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_CARDLAYOUT_ID_seq" OWNED BY public."AO_60DB71_CARDLAYOUT"."ID";


--
-- Name: AO_60DB71_COLUMN; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_COLUMN" (
    "ID" bigint NOT NULL,
    "MAXIM" double precision,
    "MINIM" double precision,
    "NAME" character varying(255),
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_COLUMN" OWNER TO postgres;

--
-- Name: AO_60DB71_COLUMNSTATUS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_COLUMNSTATUS" (
    "COLUMN_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "STATUS_ID" character varying(255)
);


ALTER TABLE public."AO_60DB71_COLUMNSTATUS" OWNER TO postgres;

--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_COLUMNSTATUS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_COLUMNSTATUS_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_COLUMNSTATUS_ID_seq" OWNED BY public."AO_60DB71_COLUMNSTATUS"."ID";


--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_COLUMN_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_COLUMN_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_COLUMN_ID_seq" OWNED BY public."AO_60DB71_COLUMN"."ID";


--
-- Name: AO_60DB71_DETAILVIEWFIELD; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_DETAILVIEWFIELD" (
    "FIELD_ID" character varying(255) NOT NULL,
    "ID" bigint NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_DETAILVIEWFIELD" OWNER TO postgres;

--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_DETAILVIEWFIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_DETAILVIEWFIELD_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_DETAILVIEWFIELD_ID_seq" OWNED BY public."AO_60DB71_DETAILVIEWFIELD"."ID";


--
-- Name: AO_60DB71_ESTIMATESTATISTIC; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_ESTIMATESTATISTIC" (
    "FIELD_ID" character varying(255),
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_ESTIMATESTATISTIC" OWNER TO postgres;

--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_ESTIMATESTATISTIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_ESTIMATESTATISTIC_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_ESTIMATESTATISTIC_ID_seq" OWNED BY public."AO_60DB71_ESTIMATESTATISTIC"."ID";


--
-- Name: AO_60DB71_ISSUERANKING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_ISSUERANKING" (
    "CUSTOM_FIELD_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "NEXT_ID" bigint
);


ALTER TABLE public."AO_60DB71_ISSUERANKING" OWNER TO postgres;

--
-- Name: AO_60DB71_ISSUERANKINGLOG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_ISSUERANKINGLOG" (
    "CUSTOM_FIELD_ID" bigint,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint,
    "LOG_TYPE" character varying(255),
    "NEW_NEXT_ID" bigint,
    "NEW_PREVIOUS_ID" bigint,
    "OLD_NEXT_ID" bigint,
    "OLD_PREVIOUS_ID" bigint,
    "SANITY_CHECKED" character varying(255)
);


ALTER TABLE public."AO_60DB71_ISSUERANKINGLOG" OWNER TO postgres;

--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_ISSUERANKINGLOG_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_ISSUERANKINGLOG_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_ISSUERANKINGLOG_ID_seq" OWNED BY public."AO_60DB71_ISSUERANKINGLOG"."ID";


--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_ISSUERANKING_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_ISSUERANKING_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_ISSUERANKING_ID_seq" OWNED BY public."AO_60DB71_ISSUERANKING"."ID";


--
-- Name: AO_60DB71_LEXORANK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_LEXORANK" (
    "BUCKET" integer DEFAULT 0,
    "FIELD_ID" bigint DEFAULT 0 NOT NULL,
    "ID" bigint NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0 NOT NULL,
    "LOCK_HASH" character varying(255),
    "LOCK_TIME" bigint,
    "RANK" character varying(255) NOT NULL,
    "TYPE" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_60DB71_LEXORANK" OWNER TO postgres;

--
-- Name: AO_60DB71_LEXORANKBALANCER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_LEXORANKBALANCER" (
    "DISABLE_RANK_OPERATIONS" boolean NOT NULL,
    "FIELD_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "REBALANCE_TIME" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_LEXORANKBALANCER" OWNER TO postgres;

--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_LEXORANKBALANCER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_LEXORANKBALANCER_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_LEXORANKBALANCER_ID_seq" OWNED BY public."AO_60DB71_LEXORANKBALANCER"."ID";


--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_LEXORANK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_LEXORANK_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_LEXORANK_ID_seq" OWNED BY public."AO_60DB71_LEXORANK"."ID";


--
-- Name: AO_60DB71_NONWORKINGDAY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_NONWORKINGDAY" (
    "ID" bigint NOT NULL,
    "ISO8601_DATE" character varying(255) NOT NULL,
    "WORKING_DAYS_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_NONWORKINGDAY" OWNER TO postgres;

--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_NONWORKINGDAY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_NONWORKINGDAY_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_NONWORKINGDAY_ID_seq" OWNED BY public."AO_60DB71_NONWORKINGDAY"."ID";


--
-- Name: AO_60DB71_QUICKFILTER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_QUICKFILTER" (
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_QUICKFILTER" OWNER TO postgres;

--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_QUICKFILTER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_QUICKFILTER_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_QUICKFILTER_ID_seq" OWNED BY public."AO_60DB71_QUICKFILTER"."ID";


--
-- Name: AO_60DB71_RANKABLEOBJECT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_RANKABLEOBJECT" (
    "ID" bigint NOT NULL,
    "TYPE" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_RANKABLEOBJECT" OWNER TO postgres;

--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_RANKABLEOBJECT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_RANKABLEOBJECT_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_RANKABLEOBJECT_ID_seq" OWNED BY public."AO_60DB71_RANKABLEOBJECT"."ID";


--
-- Name: AO_60DB71_RAPIDVIEW; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_RAPIDVIEW" (
    "CARD_COLOR_STRATEGY" character varying(255),
    "ID" bigint NOT NULL,
    "KAN_PLAN_ENABLED" boolean,
    "NAME" character varying(255) NOT NULL,
    "OLD_DONE_ISSUES_CUTOFF" character varying(255),
    "OWNER_USER_NAME" character varying(255) NOT NULL,
    "SAVED_FILTER_ID" bigint NOT NULL,
    "SHOW_DAYS_IN_COLUMN" boolean,
    "SHOW_EPIC_AS_PANEL" boolean,
    "SPRINTS_ENABLED" boolean,
    "SWIMLANE_STRATEGY" character varying(255)
);


ALTER TABLE public."AO_60DB71_RAPIDVIEW" OWNER TO postgres;

--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_RAPIDVIEW_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_RAPIDVIEW_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_RAPIDVIEW_ID_seq" OWNED BY public."AO_60DB71_RAPIDVIEW"."ID";


--
-- Name: AO_60DB71_SPRINT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_SPRINT" (
    "CLOSED" boolean NOT NULL,
    "COMPLETE_DATE" bigint,
    "END_DATE" bigint,
    "GOAL" text,
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "RAPID_VIEW_ID" bigint,
    "SEQUENCE" bigint,
    "STARTED" boolean,
    "START_DATE" bigint
);


ALTER TABLE public."AO_60DB71_SPRINT" OWNER TO postgres;

--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_SPRINT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_SPRINT_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_SPRINT_ID_seq" OWNED BY public."AO_60DB71_SPRINT"."ID";


--
-- Name: AO_60DB71_STATSFIELD; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_STATSFIELD" (
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_STATSFIELD" OWNER TO postgres;

--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_STATSFIELD_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_STATSFIELD_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_STATSFIELD_ID_seq" OWNED BY public."AO_60DB71_STATSFIELD"."ID";


--
-- Name: AO_60DB71_SUBQUERY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_SUBQUERY" (
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint,
    "SECTION" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_SUBQUERY" OWNER TO postgres;

--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_SUBQUERY_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_SUBQUERY_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_SUBQUERY_ID_seq" OWNED BY public."AO_60DB71_SUBQUERY"."ID";


--
-- Name: AO_60DB71_SWIMLANE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_SWIMLANE" (
    "DEFAULT_LANE" boolean NOT NULL,
    "DESCRIPTION" character varying(255),
    "ID" bigint NOT NULL,
    "LONG_QUERY" text,
    "NAME" character varying(255) NOT NULL,
    "POS" integer DEFAULT 0 NOT NULL,
    "QUERY" character varying(255),
    "RAPID_VIEW_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_SWIMLANE" OWNER TO postgres;

--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_SWIMLANE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_SWIMLANE_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_SWIMLANE_ID_seq" OWNED BY public."AO_60DB71_SWIMLANE"."ID";


--
-- Name: AO_60DB71_TRACKINGSTATISTIC; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_TRACKINGSTATISTIC" (
    "FIELD_ID" character varying(255),
    "ID" bigint NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "TYPE_ID" character varying(255) NOT NULL
);


ALTER TABLE public."AO_60DB71_TRACKINGSTATISTIC" OWNER TO postgres;

--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_TRACKINGSTATISTIC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_TRACKINGSTATISTIC_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_TRACKINGSTATISTIC_ID_seq" OWNED BY public."AO_60DB71_TRACKINGSTATISTIC"."ID";


--
-- Name: AO_60DB71_VERSION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_VERSION" (
    "ID" bigint NOT NULL,
    "START_DATE" bigint,
    "VERSION_ID" bigint NOT NULL
);


ALTER TABLE public."AO_60DB71_VERSION" OWNER TO postgres;

--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_VERSION_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_VERSION_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_VERSION_ID_seq" OWNED BY public."AO_60DB71_VERSION"."ID";


--
-- Name: AO_60DB71_WORKINGDAYS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_60DB71_WORKINGDAYS" (
    "FRIDAY" boolean NOT NULL,
    "ID" bigint NOT NULL,
    "MONDAY" boolean NOT NULL,
    "RAPID_VIEW_ID" bigint NOT NULL,
    "SATURDAY" boolean NOT NULL,
    "SUNDAY" boolean NOT NULL,
    "THURSDAY" boolean NOT NULL,
    "TIMEZONE" character varying(255) NOT NULL,
    "TUESDAY" boolean NOT NULL,
    "WEDNESDAY" boolean NOT NULL
);


ALTER TABLE public."AO_60DB71_WORKINGDAYS" OWNER TO postgres;

--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_60DB71_WORKINGDAYS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_60DB71_WORKINGDAYS_ID_seq" OWNER TO postgres;

--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_60DB71_WORKINGDAYS_ID_seq" OWNED BY public."AO_60DB71_WORKINGDAYS"."ID";


--
-- Name: AO_97EDAB_USERINVITATION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_97EDAB_USERINVITATION" (
    "APPLICATION_KEYS" character varying(255),
    "EMAIL_ADDRESS" character varying(255),
    "EXPIRY" timestamp without time zone,
    "ID" integer NOT NULL,
    "REDEEMED" boolean,
    "SENDER_USERNAME" character varying(255),
    "TOKEN" character varying(255)
);


ALTER TABLE public."AO_97EDAB_USERINVITATION" OWNER TO postgres;

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_97EDAB_USERINVITATION_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_97EDAB_USERINVITATION_ID_seq" OWNER TO postgres;

--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_97EDAB_USERINVITATION_ID_seq" OWNED BY public."AO_97EDAB_USERINVITATION"."ID";


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" (
    "DESCRIPTION" text,
    "ENABLED" boolean,
    "EVENTS" text,
    "EXCLUDE_BODY" boolean,
    "FILTERS" text,
    "ID" integer NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255),
    "NAME" text NOT NULL,
    "PARAMETERS" text,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL
);


ALTER TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" OWNER TO postgres;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNER TO postgres;

--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNED BY public."AO_A0B856_WEB_HOOK_LISTENER_AO"."ID";


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_B9A0F0_APPLIED_TEMPLATE" (
    "ID" integer NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0,
    "PROJECT_TEMPLATE_MODULE_KEY" character varying(255),
    "PROJECT_TEMPLATE_WEB_ITEM_KEY" character varying(255)
);


ALTER TABLE public."AO_B9A0F0_APPLIED_TEMPLATE" OWNER TO postgres;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNER TO postgres;

--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNED BY public."AO_B9A0F0_APPLIED_TEMPLATE"."ID";


--
-- Name: AO_C16815_ALERT_AO; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_C16815_ALERT_AO" (
    "CREATED_DATE" bigint DEFAULT 0,
    "DETAILS_JSON" text,
    "ID" bigint NOT NULL,
    "ISSUE_COMPONENT_ID" character varying(255),
    "ISSUE_ID" character varying(255),
    "ISSUE_SEVERITY" integer DEFAULT 0,
    "NODE_NAME" character varying(255),
    "TRIGGER_MODULE" character varying(255),
    "TRIGGER_PLUGIN_KEY" character varying(255),
    "TRIGGER_PLUGIN_KEY_VERSION" character varying(255),
    "TRIGGER_PLUGIN_VERSION" character varying(255)
);


ALTER TABLE public."AO_C16815_ALERT_AO" OWNER TO postgres;

--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_C16815_ALERT_AO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_C16815_ALERT_AO_ID_seq" OWNER TO postgres;

--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_C16815_ALERT_AO_ID_seq" OWNED BY public."AO_C16815_ALERT_AO"."ID";


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_CFF990_AOTRANSITION_FAILURE" (
    "ERROR_MESSAGES" text,
    "FAILURE_TIME" timestamp without time zone,
    "ID" integer NOT NULL,
    "ISSUE_ID" bigint DEFAULT 0,
    "LOG_REFERRAL_HASH" character varying(255),
    "TRANSITION_ID" bigint DEFAULT 0,
    "TRIGGER_ID" bigint DEFAULT 0,
    "USER_KEY" character varying(255),
    "WORKFLOW_ID" character varying(255)
);


ALTER TABLE public."AO_CFF990_AOTRANSITION_FAILURE" OWNER TO postgres;

--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq" OWNER TO postgres;

--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq" OWNED BY public."AO_CFF990_AOTRANSITION_FAILURE"."ID";


--
-- Name: AO_E8B6CC_BRANCH; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_BRANCH" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "REPOSITORY_ID" integer
);


ALTER TABLE public."AO_E8B6CC_BRANCH" OWNER TO postgres;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_BRANCH_HEAD_MAPPING" (
    "BRANCH_NAME" character varying(255),
    "HEAD" character varying(255),
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer
);


ALTER TABLE public."AO_E8B6CC_BRANCH_HEAD_MAPPING" OWNER TO postgres;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_BRANCH_HEAD_MAPPING"."ID";


--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_BRANCH_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_BRANCH_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_BRANCH_ID_seq" OWNED BY public."AO_E8B6CC_BRANCH"."ID";


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_CHANGESET_MAPPING" (
    "AUTHOR" character varying(255),
    "AUTHOR_EMAIL" character varying(255),
    "BRANCH" character varying(255),
    "DATE" timestamp without time zone,
    "FILES_DATA" text,
    "FILE_COUNT" integer DEFAULT 0,
    "FILE_DETAILS_JSON" text,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "MESSAGE" text,
    "NODE" character varying(255),
    "PARENTS_DATA" character varying(255),
    "PROJECT_KEY" character varying(255),
    "RAW_AUTHOR" character varying(255),
    "RAW_NODE" character varying(255),
    "REPOSITORY_ID" integer DEFAULT 0,
    "SMARTCOMMIT_AVAILABLE" boolean,
    "VERSION" integer
);


ALTER TABLE public."AO_E8B6CC_CHANGESET_MAPPING" OWNER TO postgres;

--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_CHANGESET_MAPPING"."ID";


--
-- Name: AO_E8B6CC_COMMIT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_COMMIT" (
    "AUTHOR" character varying(255),
    "AUTHOR_AVATAR_URL" character varying(255),
    "DATE" timestamp without time zone NOT NULL,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "MERGE" boolean,
    "MESSAGE" text,
    "NODE" character varying(255),
    "RAW_AUTHOR" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_COMMIT" OWNER TO postgres;

--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_COMMIT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_COMMIT_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_COMMIT_ID_seq" OWNED BY public."AO_E8B6CC_COMMIT"."ID";


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_GIT_HUB_EVENT" (
    "CREATED_AT" timestamp without time zone NOT NULL,
    "GIT_HUB_ID" character varying(255) DEFAULT '0'::character varying NOT NULL,
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer NOT NULL,
    "SAVE_POINT" boolean
);


ALTER TABLE public."AO_E8B6CC_GIT_HUB_EVENT" OWNER TO postgres;

--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq" OWNED BY public."AO_E8B6CC_GIT_HUB_EVENT"."ID";


--
-- Name: AO_E8B6CC_ISSUE_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_ISSUE_MAPPING" (
    "ID" integer NOT NULL,
    "ISSUE_ID" character varying(255),
    "NODE" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_URI" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ISSUE_MAPPING" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_ISSUE_MAPPING_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ISSUE_MAPPING_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_ISSUE_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_ISSUE_MAPPING"."ID";


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_ISSUE_MAPPING_V2" (
    "AUTHOR" character varying(255),
    "BRANCH" character varying(255),
    "DATE" timestamp without time zone,
    "FILES_DATA" text,
    "ID" integer NOT NULL,
    "ISSUE_ID" character varying(255),
    "MESSAGE" text,
    "NODE" character varying(255),
    "PARENTS_DATA" character varying(255),
    "RAW_AUTHOR" character varying(255),
    "RAW_NODE" character varying(255),
    "REPOSITORY_ID" integer DEFAULT 0,
    "VERSION" integer
);


ALTER TABLE public."AO_E8B6CC_ISSUE_MAPPING_V2" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq" OWNED BY public."AO_E8B6CC_ISSUE_MAPPING_V2"."ID";


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_ISSUE_TO_BRANCH" (
    "BRANCH_ID" integer,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ISSUE_TO_BRANCH" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq" OWNED BY public."AO_E8B6CC_ISSUE_TO_BRANCH"."ID";


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_ISSUE_TO_CHANGESET" (
    "CHANGESET_ID" integer,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "PROJECT_KEY" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ISSUE_TO_CHANGESET" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq" OWNED BY public."AO_E8B6CC_ISSUE_TO_CHANGESET"."ID";


--
-- Name: AO_E8B6CC_MESSAGE; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_MESSAGE" (
    "ADDRESS" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "PAYLOAD" text NOT NULL,
    "PAYLOAD_TYPE" character varying(255) NOT NULL,
    "PRIORITY" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."AO_E8B6CC_MESSAGE" OWNER TO postgres;

--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_MESSAGE_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_MESSAGE_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_MESSAGE_ID_seq" OWNED BY public."AO_E8B6CC_MESSAGE"."ID";


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" (
    "ID" integer NOT NULL,
    "LAST_FAILED" timestamp without time zone,
    "MESSAGE_ID" integer NOT NULL,
    "QUEUE" character varying(255) NOT NULL,
    "RETRIES_COUNT" integer DEFAULT 0 NOT NULL,
    "STATE" character varying(255) NOT NULL,
    "STATE_INFO" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" OWNER TO postgres;

--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq" OWNED BY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM"."ID";


--
-- Name: AO_E8B6CC_MESSAGE_TAG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_MESSAGE_TAG" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" integer,
    "TAG" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_MESSAGE_TAG" OWNER TO postgres;

--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_MESSAGE_TAG_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_MESSAGE_TAG_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_MESSAGE_TAG_ID_seq" OWNED BY public."AO_E8B6CC_MESSAGE_TAG"."ID";


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_ORGANIZATION_MAPPING" (
    "ACCESS_TOKEN" character varying(255),
    "ADMIN_PASSWORD" character varying(255),
    "ADMIN_USERNAME" character varying(255),
    "APPROVAL_STATE" character varying(255),
    "AUTOLINK_NEW_REPOS" boolean,
    "DEFAULT_GROUPS_SLUGS" character varying(255),
    "DVCS_TYPE" character varying(255),
    "HOST_URL" character varying(255),
    "ID" integer NOT NULL,
    "LAST_POLLED" bigint,
    "NAME" character varying(255),
    "OAUTH_KEY" character varying(255),
    "OAUTH_SECRET" character varying(255),
    "PRINCIPAL_ID" character varying(255),
    "SMARTCOMMITS_FOR_NEW_REPOS" boolean
);


ALTER TABLE public."AO_E8B6CC_ORGANIZATION_MAPPING" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_ORGANIZATION_MAPPING"."ID";


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_ORG_TO_PROJECT" (
    "ID" integer NOT NULL,
    "ORGANIZATION_ID" integer,
    "PROJECT_KEY" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_ORG_TO_PROJECT" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq" OWNED BY public."AO_E8B6CC_ORG_TO_PROJECT"."ID";


--
-- Name: AO_E8B6CC_PROJECT_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_PROJECT_MAPPING" (
    "ID" integer NOT NULL,
    "PASSWORD" character varying(255),
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_URI" character varying(255),
    "USERNAME" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_PROJECT_MAPPING" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_PROJECT_MAPPING_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PROJECT_MAPPING_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_PROJECT_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_PROJECT_MAPPING"."ID";


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_PROJECT_MAPPING_V2" (
    "ACCESS_TOKEN" character varying(255),
    "ADMIN_PASSWORD" character varying(255),
    "ADMIN_USERNAME" character varying(255),
    "ID" integer NOT NULL,
    "LAST_COMMIT_DATE" timestamp without time zone,
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_NAME" character varying(255),
    "REPOSITORY_TYPE" character varying(255),
    "REPOSITORY_URL" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_PROJECT_MAPPING_V2" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq" OWNED BY public."AO_E8B6CC_PROJECT_MAPPING_V2"."ID";


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_PR_ISSUE_KEY" (
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "ISSUE_KEY" character varying(255),
    "PULL_REQUEST_ID" integer DEFAULT 0
);


ALTER TABLE public."AO_E8B6CC_PR_ISSUE_KEY" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq" OWNED BY public."AO_E8B6CC_PR_ISSUE_KEY"."ID";


--
-- Name: AO_E8B6CC_PR_PARTICIPANT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_PR_PARTICIPANT" (
    "APPROVED" boolean,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "PULL_REQUEST_ID" integer,
    "ROLE" character varying(255),
    "USERNAME" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_PR_PARTICIPANT" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_PR_PARTICIPANT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PR_PARTICIPANT_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_PR_PARTICIPANT_ID_seq" OWNED BY public."AO_E8B6CC_PR_PARTICIPANT"."ID";


--
-- Name: AO_E8B6CC_PR_TO_COMMIT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_PR_TO_COMMIT" (
    "COMMIT_ID" integer NOT NULL,
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "REQUEST_ID" integer NOT NULL
);


ALTER TABLE public."AO_E8B6CC_PR_TO_COMMIT" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_PR_TO_COMMIT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PR_TO_COMMIT_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_PR_TO_COMMIT_ID_seq" OWNED BY public."AO_E8B6CC_PR_TO_COMMIT"."ID";


--
-- Name: AO_E8B6CC_PULL_REQUEST; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_PULL_REQUEST" (
    "AUTHOR" character varying(255),
    "COMMENT_COUNT" integer DEFAULT 0,
    "CREATED_ON" timestamp without time zone,
    "DESTINATION_BRANCH" character varying(255),
    "DOMAIN_ID" integer DEFAULT 0 NOT NULL,
    "EXECUTED_BY" character varying(255),
    "ID" integer NOT NULL,
    "LAST_STATUS" character varying(255),
    "NAME" character varying(255),
    "REMOTE_ID" bigint,
    "SOURCE_BRANCH" character varying(255),
    "SOURCE_REPO" character varying(255),
    "TO_REPOSITORY_ID" integer DEFAULT 0,
    "UPDATED_ON" timestamp without time zone,
    "URL" character varying(255)
);


ALTER TABLE public."AO_E8B6CC_PULL_REQUEST" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_PULL_REQUEST_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_PULL_REQUEST_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_PULL_REQUEST_ID_seq" OWNED BY public."AO_E8B6CC_PULL_REQUEST"."ID";


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_REPOSITORY_MAPPING" (
    "ACTIVITY_LAST_SYNC" timestamp without time zone,
    "DELETED" boolean,
    "FORK" boolean,
    "FORK_OF_NAME" character varying(255),
    "FORK_OF_OWNER" character varying(255),
    "FORK_OF_SLUG" character varying(255),
    "ID" integer NOT NULL,
    "LAST_CHANGESET_NODE" character varying(255),
    "LAST_COMMIT_DATE" timestamp without time zone,
    "LINKED" boolean,
    "LOGO" text,
    "NAME" character varying(255),
    "ORGANIZATION_ID" integer DEFAULT 0,
    "SLUG" character varying(255),
    "SMARTCOMMITS_ENABLED" boolean,
    "UPDATE_LINK_AUTHORISED" boolean
);


ALTER TABLE public."AO_E8B6CC_REPOSITORY_MAPPING" OWNER TO postgres;

--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq" OWNED BY public."AO_E8B6CC_REPOSITORY_MAPPING"."ID";


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_REPO_TO_CHANGESET" (
    "CHANGESET_ID" integer,
    "ID" integer NOT NULL,
    "REPOSITORY_ID" integer
);


ALTER TABLE public."AO_E8B6CC_REPO_TO_CHANGESET" OWNER TO postgres;

--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq" OWNED BY public."AO_E8B6CC_REPO_TO_CHANGESET"."ID";


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_REPO_TO_PROJECT" (
    "ID" integer NOT NULL,
    "PROJECT_KEY" character varying(255),
    "REPOSITORY_ID" integer
);


ALTER TABLE public."AO_E8B6CC_REPO_TO_PROJECT" OWNER TO postgres;

--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq" OWNED BY public."AO_E8B6CC_REPO_TO_PROJECT"."ID";


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_SYNC_AUDIT_LOG" (
    "END_DATE" timestamp without time zone,
    "EXC_TRACE" text,
    "FIRST_REQUEST_DATE" timestamp without time zone,
    "FLIGHT_TIME_MS" integer DEFAULT 0,
    "ID" integer NOT NULL,
    "NUM_REQUESTS" integer DEFAULT 0,
    "REPO_ID" integer DEFAULT 0,
    "START_DATE" timestamp without time zone,
    "SYNC_STATUS" character varying(255),
    "SYNC_TYPE" character varying(255),
    "TOTAL_ERRORS" integer DEFAULT 0
);


ALTER TABLE public."AO_E8B6CC_SYNC_AUDIT_LOG" OWNER TO postgres;

--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq" OWNED BY public."AO_E8B6CC_SYNC_AUDIT_LOG"."ID";


--
-- Name: AO_E8B6CC_SYNC_EVENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_E8B6CC_SYNC_EVENT" (
    "EVENT_CLASS" text NOT NULL,
    "EVENT_DATE" timestamp without time zone NOT NULL,
    "EVENT_JSON" text NOT NULL,
    "ID" integer NOT NULL,
    "REPO_ID" integer DEFAULT 0 NOT NULL,
    "SCHEDULED_SYNC" boolean
);


ALTER TABLE public."AO_E8B6CC_SYNC_EVENT" OWNER TO postgres;

--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_E8B6CC_SYNC_EVENT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_E8B6CC_SYNC_EVENT_ID_seq" OWNER TO postgres;

--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_E8B6CC_SYNC_EVENT_ID_seq" OWNED BY public."AO_E8B6CC_SYNC_EVENT"."ID";


--
-- Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_ED669C_SEEN_ASSERTIONS" (
    "ASSERTION_ID" character varying(255) NOT NULL,
    "EXPIRY_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL
);


ALTER TABLE public."AO_ED669C_SEEN_ASSERTIONS" OWNER TO postgres;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNER TO postgres;

--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNED BY public."AO_ED669C_SEEN_ASSERTIONS"."ID";


--
-- Name: app_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_user (
    id numeric(18,0) NOT NULL,
    user_key character varying(255),
    lower_user_name character varying(255)
);


ALTER TABLE public.app_user OWNER TO postgres;

--
-- Name: audit_changed_value; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_changed_value (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    name character varying(255),
    delta_from text,
    delta_to text
);


ALTER TABLE public.audit_changed_value OWNER TO postgres;

--
-- Name: audit_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_item (
    id numeric(18,0) NOT NULL,
    log_id numeric(18,0),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255)
);


ALTER TABLE public.audit_item OWNER TO postgres;

--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_log (
    id numeric(18,0) NOT NULL,
    remote_address character varying(60),
    created timestamp with time zone,
    author_key character varying(255),
    summary character varying(255),
    category character varying(255),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255),
    author_type numeric(9,0),
    event_source_name character varying(255),
    description character varying(255),
    long_description text,
    search_field text
);


ALTER TABLE public.audit_log OWNER TO postgres;

--
-- Name: avatar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avatar (
    id numeric(18,0) NOT NULL,
    filename character varying(255),
    contenttype character varying(255),
    avatartype character varying(60),
    owner character varying(255),
    systemavatar numeric(9,0)
);


ALTER TABLE public.avatar OWNER TO postgres;

--
-- Name: board; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.board (
    id numeric(18,0) NOT NULL,
    jql text
);


ALTER TABLE public.board OWNER TO postgres;

--
-- Name: boardproject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boardproject (
    board_id numeric(18,0) NOT NULL,
    project_id numeric(18,0) NOT NULL
);


ALTER TABLE public.boardproject OWNER TO postgres;

--
-- Name: changegroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.changegroup (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.changegroup OWNER TO postgres;

--
-- Name: changeitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.changeitem (
    id numeric(18,0) NOT NULL,
    groupid numeric(18,0),
    fieldtype character varying(255),
    field character varying(255),
    oldvalue text,
    oldstring text,
    newvalue text,
    newstring text
);


ALTER TABLE public.changeitem OWNER TO postgres;

--
-- Name: clusteredjob; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusteredjob (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    job_runner_key character varying(255),
    sched_type character(1),
    interval_millis numeric(18,0),
    first_run numeric(18,0),
    cron_expression character varying(255),
    time_zone character varying(60),
    next_run numeric(18,0),
    version numeric(18,0),
    parameters bytea
);


ALTER TABLE public.clusteredjob OWNER TO postgres;

--
-- Name: clusterlockstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusterlockstatus (
    id numeric(18,0) NOT NULL,
    lock_name character varying(255),
    locked_by_node character varying(60),
    update_time numeric(18,0)
);


ALTER TABLE public.clusterlockstatus OWNER TO postgres;

--
-- Name: clustermessage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clustermessage (
    id numeric(18,0) NOT NULL,
    source_node character varying(60),
    destination_node character varying(60),
    claimed_by_node character varying(60),
    message character varying(255),
    message_time timestamp with time zone
);


ALTER TABLE public.clustermessage OWNER TO postgres;

--
-- Name: clusternode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusternode (
    node_id character varying(60) NOT NULL,
    node_state character varying(60),
    "timestamp" numeric(18,0),
    ip character varying(60),
    cache_listener_port numeric(18,0),
    node_build_number numeric(18,0),
    node_version character varying(60)
);


ALTER TABLE public.clusternode OWNER TO postgres;

--
-- Name: clusternodeheartbeat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusternodeheartbeat (
    node_id character varying(60) NOT NULL,
    heartbeat_time numeric(18,0),
    database_time numeric(18,0)
);


ALTER TABLE public.clusternodeheartbeat OWNER TO postgres;

--
-- Name: clusterupgradestate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clusterupgradestate (
    id numeric(18,0) NOT NULL,
    database_time numeric(18,0),
    cluster_build_number numeric(18,0),
    cluster_version character varying(60),
    state character varying(60),
    order_number numeric(18,0)
);


ALTER TABLE public.clusterupgradestate OWNER TO postgres;

--
-- Name: columnlayout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.columnlayout (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    searchrequest numeric(18,0)
);


ALTER TABLE public.columnlayout OWNER TO postgres;

--
-- Name: columnlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.columnlayoutitem (
    id numeric(18,0) NOT NULL,
    columnlayout numeric(18,0),
    fieldidentifier character varying(255),
    horizontalposition numeric(18,0)
);


ALTER TABLE public.columnlayoutitem OWNER TO postgres;

--
-- Name: component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.component (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    cname character varying(255),
    description text,
    url character varying(255),
    lead character varying(255),
    assigneetype numeric(18,0)
);


ALTER TABLE public.component OWNER TO postgres;

--
-- Name: configurationcontext; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.configurationcontext (
    id numeric(18,0) NOT NULL,
    projectcategory numeric(18,0),
    project numeric(18,0),
    customfield character varying(255),
    fieldconfigscheme numeric(18,0)
);


ALTER TABLE public.configurationcontext OWNER TO postgres;

--
-- Name: customfield; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customfield (
    id numeric(18,0) NOT NULL,
    cfkey character varying(255),
    customfieldtypekey character varying(255),
    customfieldsearcherkey character varying(255),
    cfname character varying(255),
    description text,
    defaultvalue character varying(255),
    fieldtype numeric(18,0),
    project numeric(18,0),
    issuetype character varying(255)
);


ALTER TABLE public.customfield OWNER TO postgres;

--
-- Name: customfieldoption; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customfieldoption (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    parentoptionid numeric(18,0),
    sequence numeric(18,0),
    customvalue character varying(255),
    optiontype character varying(60),
    disabled character varying(60)
);


ALTER TABLE public.customfieldoption OWNER TO postgres;

--
-- Name: customfieldvalue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customfieldvalue (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    customfield numeric(18,0),
    updated numeric(18,0),
    parentkey character varying(255),
    stringvalue character varying(255),
    numbervalue double precision,
    textvalue text,
    datevalue timestamp with time zone,
    valuetype character varying(255)
);


ALTER TABLE public.customfieldvalue OWNER TO postgres;

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_application (
    id numeric(18,0) NOT NULL,
    application_name character varying(255),
    lower_application_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    application_type character varying(255),
    credential character varying(255)
);


ALTER TABLE public.cwd_application OWNER TO postgres;

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_application_address (
    application_id numeric(18,0) NOT NULL,
    remote_address character varying(255) NOT NULL,
    encoded_address_binary character varying(255),
    remote_address_mask numeric(9,0)
);


ALTER TABLE public.cwd_application_address OWNER TO postgres;

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory (
    id numeric(18,0) NOT NULL,
    directory_name character varying(255),
    lower_directory_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9,0),
    description character varying(255),
    impl_class character varying(255),
    lower_impl_class character varying(255),
    directory_type character varying(60),
    directory_position numeric(18,0)
);


ALTER TABLE public.cwd_directory OWNER TO postgres;

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory_attribute (
    directory_id numeric(18,0) NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(4000)
);


ALTER TABLE public.cwd_directory_attribute OWNER TO postgres;

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory_operation (
    directory_id numeric(18,0) NOT NULL,
    operation_type character varying(60) NOT NULL
);


ALTER TABLE public.cwd_directory_operation OWNER TO postgres;

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_group (
    id numeric(18,0) NOT NULL,
    group_name character varying(255),
    lower_group_name character varying(255),
    active numeric(9,0),
    local numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    description character varying(255),
    lower_description character varying(255),
    group_type character varying(60),
    directory_id numeric(18,0)
);


ALTER TABLE public.cwd_group OWNER TO postgres;

--
-- Name: cwd_group_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_group_attributes (
    id numeric(18,0) NOT NULL,
    group_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE public.cwd_group_attributes OWNER TO postgres;

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_membership (
    id numeric(18,0) NOT NULL,
    parent_id numeric(18,0),
    child_id numeric(18,0),
    membership_type character varying(60),
    group_type character varying(60),
    parent_name character varying(255),
    lower_parent_name character varying(255),
    child_name character varying(255),
    lower_child_name character varying(255),
    directory_id numeric(18,0)
);


ALTER TABLE public.cwd_membership OWNER TO postgres;

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_user (
    id numeric(18,0) NOT NULL,
    directory_id numeric(18,0),
    user_name character varying(255),
    lower_user_name character varying(255),
    active numeric(9,0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    credential character varying(255),
    deleted_externally numeric(9,0),
    external_id character varying(255)
);


ALTER TABLE public.cwd_user OWNER TO postgres;

--
-- Name: cwd_user_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_user_attributes (
    id numeric(18,0) NOT NULL,
    user_id numeric(18,0),
    directory_id numeric(18,0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
);


ALTER TABLE public.cwd_user_attributes OWNER TO postgres;

--
-- Name: deadletter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deadletter (
    id numeric(18,0) NOT NULL,
    message_id character varying(255),
    last_seen numeric(18,0),
    mail_server_id numeric(18,0),
    folder_name character varying(255)
);


ALTER TABLE public.deadletter OWNER TO postgres;

--
-- Name: draftworkflowscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.draftworkflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    workflow_scheme_id numeric(18,0),
    last_modified_date timestamp with time zone,
    last_modified_user character varying(255)
);


ALTER TABLE public.draftworkflowscheme OWNER TO postgres;

--
-- Name: draftworkflowschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.draftworkflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE public.draftworkflowschemeentity OWNER TO postgres;

--
-- Name: entity_property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entity_property (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    json_value text
);


ALTER TABLE public.entity_property OWNER TO postgres;

--
-- Name: entity_property_index_document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entity_property_index_document (
    id numeric(18,0) NOT NULL,
    plugin_key character varying(255),
    module_key character varying(255),
    entity_key character varying(255),
    updated timestamp with time zone,
    document text
);


ALTER TABLE public.entity_property_index_document OWNER TO postgres;

--
-- Name: entity_translation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entity_translation (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    locale character varying(60),
    trans_name character varying(255),
    trans_desc character varying(255)
);


ALTER TABLE public.entity_translation OWNER TO postgres;

--
-- Name: external_entities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.external_entities (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    entitytype character varying(255)
);


ALTER TABLE public.external_entities OWNER TO postgres;

--
-- Name: externalgadget; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.externalgadget (
    id numeric(18,0) NOT NULL,
    gadget_xml text
);


ALTER TABLE public.externalgadget OWNER TO postgres;

--
-- Name: favouriteassociations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favouriteassociations (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    entitytype character varying(60),
    entityid numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.favouriteassociations OWNER TO postgres;

--
-- Name: feature; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feature (
    id numeric(18,0) NOT NULL,
    feature_name character varying(255),
    feature_type character varying(10),
    user_key character varying(255)
);


ALTER TABLE public.feature OWNER TO postgres;

--
-- Name: fieldconfigscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldconfigscheme (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE public.fieldconfigscheme OWNER TO postgres;

--
-- Name: fieldconfigschemeissuetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldconfigschemeissuetype (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    fieldconfigscheme numeric(18,0),
    fieldconfiguration numeric(18,0)
);


ALTER TABLE public.fieldconfigschemeissuetype OWNER TO postgres;

--
-- Name: fieldconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldconfiguration (
    id numeric(18,0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18,0)
);


ALTER TABLE public.fieldconfiguration OWNER TO postgres;

--
-- Name: fieldlayout; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayout (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    layout_type character varying(255),
    layoutscheme numeric(18,0)
);


ALTER TABLE public.fieldlayout OWNER TO postgres;

--
-- Name: fieldlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldlayout numeric(18,0),
    fieldidentifier character varying(255),
    description text,
    verticalposition numeric(18,0),
    ishidden character varying(60),
    isrequired character varying(60),
    renderertype character varying(255)
);


ALTER TABLE public.fieldlayoutitem OWNER TO postgres;

--
-- Name: fieldlayoutscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayoutscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.fieldlayoutscheme OWNER TO postgres;

--
-- Name: fieldlayoutschemeassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayoutschemeassociation (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    project numeric(18,0),
    fieldlayoutscheme numeric(18,0)
);


ALTER TABLE public.fieldlayoutschemeassociation OWNER TO postgres;

--
-- Name: fieldlayoutschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldlayoutschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    issuetype character varying(255),
    fieldlayout numeric(18,0)
);


ALTER TABLE public.fieldlayoutschemeentity OWNER TO postgres;

--
-- Name: fieldscreen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreen (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.fieldscreen OWNER TO postgres;

--
-- Name: fieldscreenlayoutitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreenlayoutitem (
    id numeric(18,0) NOT NULL,
    fieldidentifier character varying(255),
    sequence numeric(18,0),
    fieldscreentab numeric(18,0)
);


ALTER TABLE public.fieldscreenlayoutitem OWNER TO postgres;

--
-- Name: fieldscreenscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.fieldscreenscheme OWNER TO postgres;

--
-- Name: fieldscreenschemeitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreenschemeitem (
    id numeric(18,0) NOT NULL,
    operation numeric(18,0),
    fieldscreen numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE public.fieldscreenschemeitem OWNER TO postgres;

--
-- Name: fieldscreentab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fieldscreentab (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fieldscreen numeric(18,0)
);


ALTER TABLE public.fieldscreentab OWNER TO postgres;

--
-- Name: fileattachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fileattachment (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    mimetype character varying(255),
    filename character varying(255),
    created timestamp with time zone,
    filesize numeric(18,0),
    author character varying(255),
    zip numeric(9,0),
    thumbnailable numeric(9,0)
);


ALTER TABLE public.fileattachment OWNER TO postgres;

--
-- Name: filtersubscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filtersubscription (
    id numeric(18,0) NOT NULL,
    filter_i_d numeric(18,0),
    username character varying(60),
    groupname character varying(60),
    last_run timestamp with time zone,
    email_on_empty character varying(10)
);


ALTER TABLE public.filtersubscription OWNER TO postgres;

--
-- Name: gadgetuserpreference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gadgetuserpreference (
    id numeric(18,0) NOT NULL,
    portletconfiguration numeric(18,0),
    userprefkey character varying(255),
    userprefvalue text
);


ALTER TABLE public.gadgetuserpreference OWNER TO postgres;

--
-- Name: genericconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genericconfiguration (
    id numeric(18,0) NOT NULL,
    datatype character varying(60),
    datakey character varying(60),
    xmlvalue text
);


ALTER TABLE public.genericconfiguration OWNER TO postgres;

--
-- Name: globalpermissionentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.globalpermissionentry (
    id numeric(18,0) NOT NULL,
    permission character varying(255),
    group_id character varying(255)
);


ALTER TABLE public.globalpermissionentry OWNER TO postgres;

--
-- Name: groupbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groupbase (
    id numeric(18,0) NOT NULL,
    groupname character varying(255)
);


ALTER TABLE public.groupbase OWNER TO postgres;

--
-- Name: issue_field_option; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issue_field_option (
    id numeric(18,0) NOT NULL,
    option_id numeric(18,0),
    field_key character varying(255),
    option_value character varying(255),
    properties text
);


ALTER TABLE public.issue_field_option OWNER TO postgres;

--
-- Name: issue_field_option_scope; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issue_field_option_scope (
    id numeric(18,0) NOT NULL,
    option_id numeric(18,0),
    entity_id character varying(255),
    scope_type character varying(255)
);


ALTER TABLE public.issue_field_option_scope OWNER TO postgres;

--
-- Name: issuelink; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuelink (
    id numeric(18,0) NOT NULL,
    linktype numeric(18,0),
    source numeric(18,0),
    destination numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.issuelink OWNER TO postgres;

--
-- Name: issuelinktype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuelinktype (
    id numeric(18,0) NOT NULL,
    linkname character varying(255),
    inward character varying(255),
    outward character varying(255),
    pstyle character varying(60)
);


ALTER TABLE public.issuelinktype OWNER TO postgres;

--
-- Name: issuesecurityscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuesecurityscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    defaultlevel numeric(18,0)
);


ALTER TABLE public.issuesecurityscheme OWNER TO postgres;

--
-- Name: issuestatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuestatus (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    statuscategory numeric(18,0)
);


ALTER TABLE public.issuestatus OWNER TO postgres;

--
-- Name: issuetype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuetype (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    pstyle character varying(60),
    description text,
    iconurl character varying(255),
    avatar numeric(18,0)
);


ALTER TABLE public.issuetype OWNER TO postgres;

--
-- Name: issuetypescreenscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuetypescreenscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description character varying(255)
);


ALTER TABLE public.issuetypescreenscheme OWNER TO postgres;

--
-- Name: issuetypescreenschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.issuetypescreenschemeentity (
    id numeric(18,0) NOT NULL,
    issuetype character varying(255),
    scheme numeric(18,0),
    fieldscreenscheme numeric(18,0)
);


ALTER TABLE public.issuetypescreenschemeentity OWNER TO postgres;

--
-- Name: jiraaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraaction (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    actiontype character varying(255),
    actionlevel character varying(255),
    rolelevel numeric(18,0),
    actionbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    actionnum numeric(18,0)
);


ALTER TABLE public.jiraaction OWNER TO postgres;

--
-- Name: jiradraftworkflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiradraftworkflows (
    id numeric(18,0) NOT NULL,
    parentname character varying(255),
    descriptor text
);


ALTER TABLE public.jiradraftworkflows OWNER TO postgres;

--
-- Name: jiraeventtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraeventtype (
    id numeric(18,0) NOT NULL,
    template_id numeric(18,0),
    name character varying(255),
    description text,
    event_type character varying(60)
);


ALTER TABLE public.jiraeventtype OWNER TO postgres;

--
-- Name: jiraissue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraissue (
    id numeric(18,0) NOT NULL,
    pkey character varying(255),
    issuenum numeric(18,0),
    project numeric(18,0),
    reporter character varying(255),
    assignee character varying(255),
    creator character varying(255),
    issuetype character varying(255),
    summary character varying(255),
    description text,
    environment text,
    priority character varying(255),
    resolution character varying(255),
    issuestatus character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    duedate timestamp with time zone,
    resolutiondate timestamp with time zone,
    votes numeric(18,0),
    watches numeric(18,0),
    timeoriginalestimate numeric(18,0),
    timeestimate numeric(18,0),
    timespent numeric(18,0),
    workflow_id numeric(18,0),
    security numeric(18,0),
    fixfor numeric(18,0),
    component numeric(18,0)
);


ALTER TABLE public.jiraissue OWNER TO postgres;

--
-- Name: jiraperms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraperms (
    id numeric(18,0) NOT NULL,
    permtype numeric(18,0),
    projectid numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE public.jiraperms OWNER TO postgres;

--
-- Name: jiraworkflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraworkflows (
    id numeric(18,0) NOT NULL,
    workflowname character varying(255),
    creatorname character varying(255),
    descriptor text,
    islocked character varying(60)
);


ALTER TABLE public.jiraworkflows OWNER TO postgres;

--
-- Name: jiraworkflowstatuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jiraworkflowstatuses (
    id numeric(18,0) NOT NULL,
    status character varying(255),
    parentname character varying(255)
);


ALTER TABLE public.jiraworkflowstatuses OWNER TO postgres;

--
-- Name: jquartz_blob_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_blob_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
);


ALTER TABLE public.jquartz_blob_triggers OWNER TO postgres;

--
-- Name: jquartz_calendars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_calendars (
    sched_name character varying(120),
    calendar_name character varying(200) NOT NULL,
    calendar bytea
);


ALTER TABLE public.jquartz_calendars OWNER TO postgres;

--
-- Name: jquartz_cron_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_cron_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120),
    time_zone_id character varying(80)
);


ALTER TABLE public.jquartz_cron_triggers OWNER TO postgres;

--
-- Name: jquartz_fired_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_fired_triggers (
    sched_name character varying(120),
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200),
    trigger_group character varying(200),
    is_volatile boolean,
    instance_name character varying(200),
    fired_time numeric(18,0),
    sched_time numeric(18,0),
    priority numeric(9,0),
    state character varying(16),
    job_name character varying(200),
    job_group character varying(200),
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean
);


ALTER TABLE public.jquartz_fired_triggers OWNER TO postgres;

--
-- Name: jquartz_job_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_job_details (
    sched_name character varying(120),
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250),
    is_durable boolean,
    is_volatile boolean,
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean,
    job_data bytea
);


ALTER TABLE public.jquartz_job_details OWNER TO postgres;

--
-- Name: jquartz_job_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_job_listeners (
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    job_listener character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_job_listeners OWNER TO postgres;

--
-- Name: jquartz_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_locks (
    sched_name character varying(120),
    lock_name character varying(40) NOT NULL
);


ALTER TABLE public.jquartz_locks OWNER TO postgres;

--
-- Name: jquartz_paused_trigger_grps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_paused_trigger_grps (
    sched_name character varying(120),
    trigger_group character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_paused_trigger_grps OWNER TO postgres;

--
-- Name: jquartz_scheduler_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_scheduler_state (
    sched_name character varying(120),
    instance_name character varying(200) NOT NULL,
    last_checkin_time numeric(18,0),
    checkin_interval numeric(18,0)
);


ALTER TABLE public.jquartz_scheduler_state OWNER TO postgres;

--
-- Name: jquartz_simple_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_simple_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count numeric(18,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(18,0)
);


ALTER TABLE public.jquartz_simple_triggers OWNER TO postgres;

--
-- Name: jquartz_simprop_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_simprop_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 numeric(9,0),
    int_prop_2 numeric(9,0),
    long_prop_1 numeric(18,0),
    long_prop_2 numeric(18,0),
    dec_prop_1 numeric(13,4),
    dec_prop_2 numeric(13,4),
    bool_prop_1 boolean,
    bool_prop_2 boolean
);


ALTER TABLE public.jquartz_simprop_triggers OWNER TO postgres;

--
-- Name: jquartz_trigger_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_trigger_listeners (
    trigger_name character varying(200),
    trigger_group character varying(200) NOT NULL,
    trigger_listener character varying(200) NOT NULL
);


ALTER TABLE public.jquartz_trigger_listeners OWNER TO postgres;

--
-- Name: jquartz_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jquartz_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_volatile boolean,
    description character varying(250),
    next_fire_time numeric(18,0),
    prev_fire_time numeric(18,0),
    priority numeric(9,0),
    trigger_state character varying(16),
    trigger_type character varying(8),
    start_time numeric(18,0),
    end_time numeric(18,0),
    calendar_name character varying(200),
    misfire_instr numeric(4,0),
    job_data bytea
);


ALTER TABLE public.jquartz_triggers OWNER TO postgres;

--
-- Name: label; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.label (
    id numeric(18,0) NOT NULL,
    fieldid numeric(18,0),
    issue numeric(18,0),
    label character varying(255)
);


ALTER TABLE public.label OWNER TO postgres;

--
-- Name: licenserolesdefault; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licenserolesdefault (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255)
);


ALTER TABLE public.licenserolesdefault OWNER TO postgres;

--
-- Name: licenserolesgroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licenserolesgroup (
    id numeric(18,0) NOT NULL,
    license_role_name character varying(255),
    group_id character varying(255),
    primary_group character(1)
);


ALTER TABLE public.licenserolesgroup OWNER TO postgres;

--
-- Name: listenerconfig; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listenerconfig (
    id numeric(18,0) NOT NULL,
    clazz character varying(255),
    listenername character varying(255)
);


ALTER TABLE public.listenerconfig OWNER TO postgres;

--
-- Name: mailserver; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mailserver (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    mailfrom character varying(255),
    prefix character varying(60),
    smtp_port character varying(60),
    protocol character varying(60),
    server_type character varying(60),
    servername character varying(255),
    jndilocation character varying(255),
    mailusername character varying(255),
    mailpassword character varying(255),
    istlsrequired character varying(60),
    timeout numeric(18,0),
    socks_port character varying(60),
    socks_host character varying(60)
);


ALTER TABLE public.mailserver OWNER TO postgres;

--
-- Name: managedconfigurationitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.managedconfigurationitem (
    id numeric(18,0) NOT NULL,
    item_id character varying(255),
    item_type character varying(255),
    managed character varying(10),
    access_level character varying(255),
    source character varying(255),
    description_key character varying(255)
);


ALTER TABLE public.managedconfigurationitem OWNER TO postgres;

--
-- Name: membershipbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.membershipbase (
    id numeric(18,0) NOT NULL,
    user_name character varying(255),
    group_name character varying(255)
);


ALTER TABLE public.membershipbase OWNER TO postgres;

--
-- Name: moved_issue_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moved_issue_key (
    id numeric(18,0) NOT NULL,
    old_issue_key character varying(255),
    issue_id numeric(18,0)
);


ALTER TABLE public.moved_issue_key OWNER TO postgres;

--
-- Name: nodeassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nodeassociation (
    source_node_id numeric(18,0) NOT NULL,
    source_node_entity character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0)
);


ALTER TABLE public.nodeassociation OWNER TO postgres;

--
-- Name: nodeindexcounter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nodeindexcounter (
    id numeric(18,0) NOT NULL,
    node_id character varying(60),
    sending_node_id character varying(60),
    index_operation_id numeric(18,0)
);


ALTER TABLE public.nodeindexcounter OWNER TO postgres;

--
-- Name: notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    event character varying(60),
    event_type_id numeric(18,0),
    template_id numeric(18,0),
    notif_type character varying(60),
    notif_parameter character varying(60)
);


ALTER TABLE public.notification OWNER TO postgres;

--
-- Name: notificationinstance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notificationinstance (
    id numeric(18,0) NOT NULL,
    notificationtype character varying(60),
    source numeric(18,0),
    emailaddress character varying(255),
    messageid character varying(255)
);


ALTER TABLE public.notificationinstance OWNER TO postgres;

--
-- Name: notificationscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notificationscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.notificationscheme OWNER TO postgres;

--
-- Name: oauthconsumer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauthconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumername character varying(255),
    consumer_key character varying(255),
    consumerservice character varying(255),
    public_key text,
    private_key text,
    description text,
    callback text,
    signature_method character varying(60),
    shared_secret text
);


ALTER TABLE public.oauthconsumer OWNER TO postgres;

--
-- Name: oauthconsumertoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauthconsumertoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token_key character varying(255),
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255)
);


ALTER TABLE public.oauthconsumertoken OWNER TO postgres;

--
-- Name: oauthspconsumer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauthspconsumer (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    consumer_key character varying(255),
    consumername character varying(255),
    public_key text,
    description text,
    callback text,
    two_l_o_allowed character varying(60),
    executing_two_l_o_user character varying(255),
    two_l_o_impersonation_allowed character varying(60),
    three_l_o_allowed character varying(60)
);


ALTER TABLE public.oauthspconsumer OWNER TO postgres;

--
-- Name: oauthsptoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oauthsptoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255),
    username character varying(255),
    ttl numeric(18,0),
    spauth character varying(60),
    callback text,
    spverifier character varying(255),
    spversion character varying(60),
    session_handle character varying(255),
    session_creation_time timestamp with time zone,
    session_last_renewal_time timestamp with time zone,
    session_time_to_live timestamp with time zone
);


ALTER TABLE public.oauthsptoken OWNER TO postgres;

--
-- Name: optionconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.optionconfiguration (
    id numeric(18,0) NOT NULL,
    fieldid character varying(60),
    optionid character varying(60),
    fieldconfig numeric(18,0),
    sequence numeric(18,0)
);


ALTER TABLE public.optionconfiguration OWNER TO postgres;

--
-- Name: os_currentstep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_currentstep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(60),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(60)
);


ALTER TABLE public.os_currentstep OWNER TO postgres;

--
-- Name: os_currentstep_prev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_currentstep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE public.os_currentstep_prev OWNER TO postgres;

--
-- Name: os_historystep; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_historystep (
    id numeric(18,0) NOT NULL,
    entry_id numeric(18,0),
    step_id numeric(9,0),
    action_id numeric(9,0),
    owner character varying(60),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(60)
);


ALTER TABLE public.os_historystep OWNER TO postgres;

--
-- Name: os_historystep_prev; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_historystep_prev (
    id numeric(18,0) NOT NULL,
    previous_id numeric(18,0) NOT NULL
);


ALTER TABLE public.os_historystep_prev OWNER TO postgres;

--
-- Name: os_wfentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_wfentry (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    initialized numeric(9,0),
    state numeric(9,0)
);


ALTER TABLE public.os_wfentry OWNER TO postgres;

--
-- Name: permissionscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissionscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.permissionscheme OWNER TO postgres;

--
-- Name: permissionschemeattribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permissionschemeattribute (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    attribute_key character varying(255),
    attribute_value text
);


ALTER TABLE public.permissionschemeattribute OWNER TO postgres;

--
-- Name: pluginstate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pluginstate (
    pluginkey character varying(255) NOT NULL,
    pluginenabled character varying(60)
);


ALTER TABLE public.pluginstate OWNER TO postgres;

--
-- Name: pluginversion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pluginversion (
    id numeric(18,0) NOT NULL,
    pluginname character varying(255),
    pluginkey character varying(255),
    pluginversion character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.pluginversion OWNER TO postgres;

--
-- Name: portalpage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.portalpage (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    pagename character varying(255),
    description character varying(255),
    sequence numeric(18,0),
    fav_count numeric(18,0),
    layout character varying(255),
    ppversion numeric(18,0)
);


ALTER TABLE public.portalpage OWNER TO postgres;

--
-- Name: portletconfiguration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.portletconfiguration (
    id numeric(18,0) NOT NULL,
    portalpage numeric(18,0),
    portlet_id character varying(255),
    column_number numeric(9,0),
    positionseq numeric(9,0),
    gadget_xml text,
    color character varying(255),
    dashboard_module_complete_key text
);


ALTER TABLE public.portletconfiguration OWNER TO postgres;

--
-- Name: priority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.priority (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    status_color character varying(60)
);


ALTER TABLE public.priority OWNER TO postgres;

--
-- Name: productlicense; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productlicense (
    id numeric(18,0) NOT NULL,
    license text
);


ALTER TABLE public.productlicense OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    id numeric(18,0) NOT NULL,
    pname character varying(255),
    url character varying(255),
    lead character varying(255),
    description text,
    pkey character varying(255),
    pcounter numeric(18,0),
    assigneetype numeric(18,0),
    avatar numeric(18,0),
    originalkey character varying(255),
    projecttype character varying(255)
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: project_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_key (
    id numeric(18,0) NOT NULL,
    project_id numeric(18,0),
    project_key character varying(255)
);


ALTER TABLE public.project_key OWNER TO postgres;

--
-- Name: projectcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectcategory (
    id numeric(18,0) NOT NULL,
    cname character varying(255),
    description text
);


ALTER TABLE public.projectcategory OWNER TO postgres;

--
-- Name: projectchangedtime; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectchangedtime (
    project_id numeric(18,0) NOT NULL,
    issue_changed_time timestamp with time zone
);


ALTER TABLE public.projectchangedtime OWNER TO postgres;

--
-- Name: projectrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectrole (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.projectrole OWNER TO postgres;

--
-- Name: projectroleactor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectroleactor (
    id numeric(18,0) NOT NULL,
    pid numeric(18,0),
    projectroleid numeric(18,0),
    roletype character varying(255),
    roletypeparameter character varying(255)
);


ALTER TABLE public.projectroleactor OWNER TO postgres;

--
-- Name: projectversion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projectversion (
    id numeric(18,0) NOT NULL,
    project numeric(18,0),
    vname character varying(255),
    description text,
    sequence numeric(18,0),
    released character varying(10),
    archived character varying(10),
    url character varying(255),
    startdate timestamp with time zone,
    releasedate timestamp with time zone
);


ALTER TABLE public.projectversion OWNER TO postgres;

--
-- Name: propertydata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertydata (
    id numeric(18,0) NOT NULL,
    propertyvalue oid
);


ALTER TABLE public.propertydata OWNER TO postgres;

--
-- Name: propertydate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertydate (
    id numeric(18,0) NOT NULL,
    propertyvalue timestamp with time zone
);


ALTER TABLE public.propertydate OWNER TO postgres;

--
-- Name: propertydecimal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertydecimal (
    id numeric(18,0) NOT NULL,
    propertyvalue double precision
);


ALTER TABLE public.propertydecimal OWNER TO postgres;

--
-- Name: propertyentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertyentry (
    id numeric(18,0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18,0),
    property_key character varying(255),
    propertytype numeric(9,0)
);


ALTER TABLE public.propertyentry OWNER TO postgres;

--
-- Name: propertynumber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertynumber (
    id numeric(18,0) NOT NULL,
    propertyvalue numeric(18,0)
);


ALTER TABLE public.propertynumber OWNER TO postgres;

--
-- Name: propertystring; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertystring (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE public.propertystring OWNER TO postgres;

--
-- Name: propertytext; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propertytext (
    id numeric(18,0) NOT NULL,
    propertyvalue text
);


ALTER TABLE public.propertytext OWNER TO postgres;

--
-- Name: qrtz_calendars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_calendars (
    id numeric(18,0),
    calendar_name character varying(255) NOT NULL,
    calendar text
);


ALTER TABLE public.qrtz_calendars OWNER TO postgres;

--
-- Name: qrtz_cron_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_cron_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    cronexperssion character varying(255)
);


ALTER TABLE public.qrtz_cron_triggers OWNER TO postgres;

--
-- Name: qrtz_fired_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_fired_triggers (
    id numeric(18,0),
    entry_id character varying(255) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255),
    fired_time timestamp with time zone,
    trigger_state character varying(255)
);


ALTER TABLE public.qrtz_fired_triggers OWNER TO postgres;

--
-- Name: qrtz_job_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_job_details (
    id numeric(18,0) NOT NULL,
    job_name character varying(255),
    job_group character varying(255),
    class_name character varying(255),
    is_durable character varying(60),
    is_stateful character varying(60),
    requests_recovery character varying(60),
    job_data character varying(255)
);


ALTER TABLE public.qrtz_job_details OWNER TO postgres;

--
-- Name: qrtz_job_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_job_listeners (
    id numeric(18,0) NOT NULL,
    job numeric(18,0),
    job_listener character varying(255)
);


ALTER TABLE public.qrtz_job_listeners OWNER TO postgres;

--
-- Name: qrtz_simple_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_simple_triggers (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    repeat_count numeric(9,0),
    repeat_interval numeric(18,0),
    times_triggered numeric(9,0)
);


ALTER TABLE public.qrtz_simple_triggers OWNER TO postgres;

--
-- Name: qrtz_trigger_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_trigger_listeners (
    id numeric(18,0) NOT NULL,
    trigger_id numeric(18,0),
    trigger_listener character varying(255)
);


ALTER TABLE public.qrtz_trigger_listeners OWNER TO postgres;

--
-- Name: qrtz_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.qrtz_triggers (
    id numeric(18,0) NOT NULL,
    trigger_name character varying(255),
    trigger_group character varying(255),
    job numeric(18,0),
    next_fire timestamp with time zone,
    trigger_state character varying(255),
    trigger_type character varying(60),
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    calendar_name character varying(255),
    misfire_instr numeric(9,0)
);


ALTER TABLE public.qrtz_triggers OWNER TO postgres;

--
-- Name: reindex_component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reindex_component (
    id numeric(18,0) NOT NULL,
    request_id numeric(18,0),
    affected_index character varying(60),
    entity_type character varying(60)
);


ALTER TABLE public.reindex_component OWNER TO postgres;

--
-- Name: reindex_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reindex_request (
    id numeric(18,0) NOT NULL,
    type character varying(60),
    request_time timestamp with time zone,
    start_time timestamp with time zone,
    completion_time timestamp with time zone,
    status character varying(60),
    execution_node_id character varying(60),
    query text
);


ALTER TABLE public.reindex_request OWNER TO postgres;

--
-- Name: remembermetoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.remembermetoken (
    id numeric(18,0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    username character varying(255)
);


ALTER TABLE public.remembermetoken OWNER TO postgres;

--
-- Name: remotelink; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.remotelink (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    globalid character varying(255),
    title character varying(255),
    summary text,
    url text,
    iconurl text,
    icontitle text,
    relationship character varying(255),
    resolved character(1),
    statusname character varying(255),
    statusdescription text,
    statusiconurl text,
    statusicontitle text,
    statusiconlink text,
    statuscategorykey character varying(255),
    statuscategorycolorname character varying(255),
    applicationtype character varying(255),
    applicationname character varying(255)
);


ALTER TABLE public.remotelink OWNER TO postgres;

--
-- Name: replicatedindexoperation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.replicatedindexoperation (
    id numeric(18,0) NOT NULL,
    index_time timestamp with time zone,
    node_id character varying(60),
    affected_index character varying(60),
    entity_type character varying(60),
    affected_ids text,
    operation character varying(60),
    filename character varying(255)
);


ALTER TABLE public.replicatedindexoperation OWNER TO postgres;

--
-- Name: resolution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resolution (
    id character varying(60) NOT NULL,
    sequence numeric(18,0),
    pname character varying(60),
    description text,
    iconurl character varying(255)
);


ALTER TABLE public.resolution OWNER TO postgres;

--
-- Name: rundetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rundetails (
    id numeric(18,0) NOT NULL,
    job_id character varying(255),
    start_time timestamp with time zone,
    run_duration numeric(18,0),
    run_outcome character(1),
    info_message character varying(255)
);


ALTER TABLE public.rundetails OWNER TO postgres;

--
-- Name: schemeissuesecurities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schemeissuesecurities (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    security numeric(18,0),
    sec_type character varying(255),
    sec_parameter character varying(255)
);


ALTER TABLE public.schemeissuesecurities OWNER TO postgres;

--
-- Name: schemeissuesecuritylevels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schemeissuesecuritylevels (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text,
    scheme numeric(18,0)
);


ALTER TABLE public.schemeissuesecuritylevels OWNER TO postgres;

--
-- Name: schemepermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schemepermissions (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    permission numeric(18,0),
    perm_type character varying(255),
    perm_parameter character varying(255),
    permission_key character varying(255)
);


ALTER TABLE public.schemepermissions OWNER TO postgres;

--
-- Name: searchrequest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.searchrequest (
    id numeric(18,0) NOT NULL,
    filtername character varying(255),
    authorname character varying(255),
    description text,
    username character varying(255),
    groupname character varying(255),
    projectid numeric(18,0),
    reqcontent text,
    fav_count numeric(18,0),
    filtername_lower character varying(255)
);


ALTER TABLE public.searchrequest OWNER TO postgres;

--
-- Name: sequence_value_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sequence_value_item (
    seq_name character varying(60) NOT NULL,
    seq_id numeric(18,0)
);


ALTER TABLE public.sequence_value_item OWNER TO postgres;

--
-- Name: serviceconfig; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.serviceconfig (
    id numeric(18,0) NOT NULL,
    delaytime numeric(18,0),
    clazz character varying(255),
    servicename character varying(255),
    cron_expression character varying(255)
);


ALTER TABLE public.serviceconfig OWNER TO postgres;

--
-- Name: sharepermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sharepermissions (
    id numeric(18,0) NOT NULL,
    entityid numeric(18,0),
    entitytype character varying(60),
    sharetype character varying(10),
    param1 character varying(255),
    param2 character varying(60),
    rights numeric(9,0)
);


ALTER TABLE public.sharepermissions OWNER TO postgres;

--
-- Name: tempattachmentsmonitor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tempattachmentsmonitor (
    temporary_attachment_id character varying(255) NOT NULL,
    form_token character varying(255),
    file_name character varying(255),
    content_type character varying(255),
    file_size numeric(18,0),
    created_time numeric(18,0)
);


ALTER TABLE public.tempattachmentsmonitor OWNER TO postgres;

--
-- Name: trackback_ping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trackback_ping (
    id numeric(18,0) NOT NULL,
    issue numeric(18,0),
    url character varying(255),
    title character varying(255),
    blogname character varying(255),
    excerpt character varying(255),
    created timestamp with time zone
);


ALTER TABLE public.trackback_ping OWNER TO postgres;

--
-- Name: trustedapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trustedapp (
    id numeric(18,0) NOT NULL,
    application_id character varying(255),
    name character varying(255),
    public_key text,
    ip_match text,
    url_match text,
    timeout numeric(18,0),
    created timestamp with time zone,
    created_by character varying(255),
    updated timestamp with time zone,
    updated_by character varying(255)
);


ALTER TABLE public.trustedapp OWNER TO postgres;

--
-- Name: upgradehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upgradehistory (
    id numeric(18,0),
    upgradeclass character varying(255) NOT NULL,
    targetbuild character varying(255),
    status character varying(255),
    downgradetaskrequired character(1)
);


ALTER TABLE public.upgradehistory OWNER TO postgres;

--
-- Name: upgradetaskhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upgradetaskhistory (
    id numeric(18,0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9,0),
    status character varying(60),
    upgrade_type character varying(10)
);


ALTER TABLE public.upgradetaskhistory OWNER TO postgres;

--
-- Name: upgradetaskhistoryauditlog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upgradetaskhistoryauditlog (
    id numeric(18,0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9,0),
    status character varying(60),
    upgrade_type character varying(10),
    timeperformed timestamp with time zone,
    action character varying(10)
);


ALTER TABLE public.upgradetaskhistoryauditlog OWNER TO postgres;

--
-- Name: upgradeversionhistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upgradeversionhistory (
    id numeric(18,0),
    timeperformed timestamp with time zone,
    targetbuild character varying(255) NOT NULL,
    targetversion character varying(255)
);


ALTER TABLE public.upgradeversionhistory OWNER TO postgres;

--
-- Name: userassociation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userassociation (
    source_name character varying(60) NOT NULL,
    sink_node_id numeric(18,0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9,0),
    created timestamp with time zone
);


ALTER TABLE public.userassociation OWNER TO postgres;

--
-- Name: userbase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userbase (
    id numeric(18,0) NOT NULL,
    username character varying(255),
    password_hash character varying(255)
);


ALTER TABLE public.userbase OWNER TO postgres;

--
-- Name: userhistoryitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userhistoryitem (
    id numeric(18,0) NOT NULL,
    entitytype character varying(10),
    entityid character varying(60),
    username character varying(255),
    lastviewed numeric(18,0),
    data text
);


ALTER TABLE public.userhistoryitem OWNER TO postgres;

--
-- Name: userpickerfilter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userpickerfilter (
    id numeric(18,0) NOT NULL,
    customfield numeric(18,0),
    customfieldconfig numeric(18,0),
    enabled character varying(60)
);


ALTER TABLE public.userpickerfilter OWNER TO postgres;

--
-- Name: userpickerfiltergroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userpickerfiltergroup (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    groupname character varying(255)
);


ALTER TABLE public.userpickerfiltergroup OWNER TO postgres;

--
-- Name: userpickerfilterrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userpickerfilterrole (
    id numeric(18,0) NOT NULL,
    userpickerfilter numeric(18,0),
    projectroleid numeric(18,0)
);


ALTER TABLE public.userpickerfilterrole OWNER TO postgres;

--
-- Name: versioncontrol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.versioncontrol (
    id numeric(18,0) NOT NULL,
    vcsname character varying(255),
    vcsdescription character varying(255),
    vcstype character varying(255)
);


ALTER TABLE public.versioncontrol OWNER TO postgres;

--
-- Name: votehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.votehistory (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    votes numeric(18,0),
    "timestamp" timestamp with time zone
);


ALTER TABLE public.votehistory OWNER TO postgres;

--
-- Name: workflowscheme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workflowscheme (
    id numeric(18,0) NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE public.workflowscheme OWNER TO postgres;

--
-- Name: workflowschemeentity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workflowschemeentity (
    id numeric(18,0) NOT NULL,
    scheme numeric(18,0),
    workflow character varying(255),
    issuetype character varying(255)
);


ALTER TABLE public.workflowschemeentity OWNER TO postgres;

--
-- Name: worklog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worklog (
    id numeric(18,0) NOT NULL,
    issueid numeric(18,0),
    author character varying(255),
    grouplevel character varying(255),
    rolelevel numeric(18,0),
    worklogbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    startdate timestamp with time zone,
    timeworked numeric(18,0)
);


ALTER TABLE public.worklog OWNER TO postgres;

--
-- Name: AO_21D670_WHITELIST_RULES ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21D670_WHITELIST_RULES_ID_seq"'::regclass);


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_MAPPING_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"'::regclass);


--
-- Name: AO_21F425_USER_PROPERTY_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_USER_PROPERTY_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_21F425_USER_PROPERTY_AO_ID_seq"'::regclass);


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"'::regclass);


--
-- Name: AO_3B1893_LOOP_DETECTION ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_3B1893_LOOP_DETECTION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_3B1893_LOOP_DETECTION_ID_seq"'::regclass);


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_STATUS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"'::regclass);


--
-- Name: AO_4789DD_PROPERTIES ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_PROPERTIES" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_PROPERTIES_ID_seq"'::regclass);


--
-- Name: AO_4789DD_READ_NOTIFICATIONS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_READ_NOTIFICATIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"'::regclass);


--
-- Name: AO_4789DD_TASK_MONITOR ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4789DD_TASK_MONITOR_ID_seq"'::regclass);


--
-- Name: AO_4AEACD_WEBHOOK_DAO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4AEACD_WEBHOOK_DAO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_4AEACD_WEBHOOK_DAO_ID_seq"'::regclass);


--
-- Name: AO_550953_SHORTCUT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_550953_SHORTCUT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_550953_SHORTCUT_ID_seq"'::regclass);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY ACTIVITY_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY" ALTER COLUMN "ACTIVITY_ID" SET DEFAULT nextval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_ACTOR_ENTITY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_OBJECT_ENTITY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_563AEE_TARGET_ENTITY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_563AEE_TARGET_ENTITY_ID_seq"'::regclass);


--
-- Name: AO_575BF5_DEV_SUMMARY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_575BF5_DEV_SUMMARY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_575BF5_DEV_SUMMARY_ID_seq"'::regclass);


--
-- Name: AO_575BF5_PROCESSED_COMMITS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_575BF5_PROCESSED_COMMITS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_575BF5_PROCESSED_COMMITS_ID_seq"'::regclass);


--
-- Name: AO_575BF5_PROVIDER_ISSUE ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_575BF5_PROVIDER_ISSUE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_575BF5_PROVIDER_ISSUE_ID_seq"'::regclass);


--
-- Name: AO_575BF5_PROVIDER_SEQ_NO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_575BF5_PROVIDER_SEQ_NO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq"'::regclass);


--
-- Name: AO_587B34_PROJECT_CONFIG ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_587B34_PROJECT_CONFIG_ID_seq"'::regclass);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_LINK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"'::regclass);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"'::regclass);


--
-- Name: AO_60DB71_AUDITENTRY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_AUDITENTRY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_AUDITENTRY_ID_seq"'::regclass);


--
-- Name: AO_60DB71_BOARDADMINS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_BOARDADMINS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_BOARDADMINS_ID_seq"'::regclass);


--
-- Name: AO_60DB71_CARDCOLOR ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_CARDCOLOR" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_CARDCOLOR_ID_seq"'::regclass);


--
-- Name: AO_60DB71_CARDLAYOUT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_CARDLAYOUT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_CARDLAYOUT_ID_seq"'::regclass);


--
-- Name: AO_60DB71_COLUMN ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_COLUMN" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_COLUMN_ID_seq"'::regclass);


--
-- Name: AO_60DB71_COLUMNSTATUS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_COLUMNSTATUS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_COLUMNSTATUS_ID_seq"'::regclass);


--
-- Name: AO_60DB71_DETAILVIEWFIELD ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_DETAILVIEWFIELD" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_DETAILVIEWFIELD_ID_seq"'::regclass);


--
-- Name: AO_60DB71_ESTIMATESTATISTIC ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_ESTIMATESTATISTIC" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_ESTIMATESTATISTIC_ID_seq"'::regclass);


--
-- Name: AO_60DB71_ISSUERANKING ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_ISSUERANKING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_ISSUERANKING_ID_seq"'::regclass);


--
-- Name: AO_60DB71_ISSUERANKINGLOG ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_ISSUERANKINGLOG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_ISSUERANKINGLOG_ID_seq"'::regclass);


--
-- Name: AO_60DB71_LEXORANK ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_LEXORANK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_LEXORANK_ID_seq"'::regclass);


--
-- Name: AO_60DB71_LEXORANKBALANCER ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_LEXORANKBALANCER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_LEXORANKBALANCER_ID_seq"'::regclass);


--
-- Name: AO_60DB71_NONWORKINGDAY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_NONWORKINGDAY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_NONWORKINGDAY_ID_seq"'::regclass);


--
-- Name: AO_60DB71_QUICKFILTER ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_QUICKFILTER" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_QUICKFILTER_ID_seq"'::regclass);


--
-- Name: AO_60DB71_RANKABLEOBJECT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_RANKABLEOBJECT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_RANKABLEOBJECT_ID_seq"'::regclass);


--
-- Name: AO_60DB71_RAPIDVIEW ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_RAPIDVIEW" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_RAPIDVIEW_ID_seq"'::regclass);


--
-- Name: AO_60DB71_SPRINT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_SPRINT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_SPRINT_ID_seq"'::regclass);


--
-- Name: AO_60DB71_STATSFIELD ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_STATSFIELD" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_STATSFIELD_ID_seq"'::regclass);


--
-- Name: AO_60DB71_SUBQUERY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_SUBQUERY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_SUBQUERY_ID_seq"'::regclass);


--
-- Name: AO_60DB71_SWIMLANE ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_SWIMLANE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_SWIMLANE_ID_seq"'::regclass);


--
-- Name: AO_60DB71_TRACKINGSTATISTIC ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_TRACKINGSTATISTIC" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_TRACKINGSTATISTIC_ID_seq"'::regclass);


--
-- Name: AO_60DB71_VERSION ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_VERSION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_VERSION_ID_seq"'::regclass);


--
-- Name: AO_60DB71_WORKINGDAYS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_WORKINGDAYS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_60DB71_WORKINGDAYS_ID_seq"'::regclass);


--
-- Name: AO_97EDAB_USERINVITATION ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_97EDAB_USERINVITATION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_97EDAB_USERINVITATION_ID_seq"'::regclass);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_B9A0F0_APPLIED_TEMPLATE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"'::regclass);


--
-- Name: AO_C16815_ALERT_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_C16815_ALERT_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_C16815_ALERT_AO_ID_seq"'::regclass);


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_CFF990_AOTRANSITION_FAILURE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_BRANCH ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_BRANCH_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH_HEAD_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_CHANGESET_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_COMMIT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_COMMIT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_COMMIT_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_GIT_HUB_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_ISSUE_MAPPING ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ISSUE_MAPPING_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2 ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_MAPPING_V2" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_BRANCH" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_CHANGESET" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_MESSAGE ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_MESSAGE_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_MESSAGE_TAG ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_TAG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_MESSAGE_TAG_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ORGANIZATION_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ORG_TO_PROJECT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_PROJECT_MAPPING ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PROJECT_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PROJECT_MAPPING_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2 ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PROJECT_MAPPING_V2" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_ISSUE_KEY" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_PR_PARTICIPANT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_PARTICIPANT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PR_PARTICIPANT_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_PR_TO_COMMIT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_TO_COMMIT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PR_TO_COMMIT_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_PULL_REQUEST ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PULL_REQUEST" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_PULL_REQUEST_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_REPOSITORY_MAPPING" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_CHANGESET" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_PROJECT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_SYNC_AUDIT_LOG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"'::regclass);


--
-- Name: AO_E8B6CC_SYNC_EVENT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_SYNC_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_E8B6CC_SYNC_EVENT_ID_seq"'::regclass);


--
-- Name: AO_ED669C_SEEN_ASSERTIONS ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"'::regclass);


--
-- Data for Name: AO_0AC321_RECOMMENDATION_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_0AC321_RECOMMENDATION_AO" ("CATEGORY", "CUSTOM_FIELD_ID", "ID", "NAME", "PERFORMANCE_IMPACT", "PROJECT_IDS", "RESOLVED", "TYPE") FROM stdin;
\.


--
-- Data for Name: AO_21D670_WHITELIST_RULES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_21D670_WHITELIST_RULES" ("ALLOWINBOUND", "EXPRESSION", "ID", "TYPE") FROM stdin;
f	http://www.atlassian.com/*	1	WILDCARD_EXPRESSION
f	http://www.atlassian.com/*	2	WILDCARD_EXPRESSION
\.


--
-- Data for Name: AO_21F425_MESSAGE_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_21F425_MESSAGE_AO" ("CONTENT", "ID") FROM stdin;
\.


--
-- Data for Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_21F425_MESSAGE_MAPPING_AO" ("ID", "MESSAGE_ID", "USER_HASH") FROM stdin;
\.


--
-- Data for Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_21F425_USER_PROPERTY_AO" ("ID", "KEY", "USER", "VALUE") FROM stdin;
\.


--
-- Data for Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_38321B_CUSTOM_CONTENT_LINK" ("CONTENT_KEY", "ID", "LINK_LABEL", "LINK_URL", "SEQUENCE") FROM stdin;
\.


--
-- Data for Name: AO_3B1893_LOOP_DETECTION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_3B1893_LOOP_DETECTION" ("COUNTER", "EXPIRES_AT", "ID", "SENDER_EMAIL") FROM stdin;
\.


--
-- Data for Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-03 22:55:00.901	JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	8	t	t	2020-04-03 23:54:51.272	WARNING	Gadget feed URL
Unknown	com.atlassian.troubleshooting.plugin-jira:hsqlHealthCheck	Checks if the instance is connected to an HSQL or H2 database	2020-04-05 07:18:54.98	The health check was unable to complete within the timeout of 20000ms.	9	t	t	2020-04-05 08:43:11.212	UNDEFINED	Embedded database
Unknown	com.atlassian.troubleshooting.plugin-jira:endOfLifeHealthCheck	Checks if the running version of JIRA is approaching, or has reached End of Life.	2020-04-05 07:18:54.98	The health check was unable to complete within the timeout of 20000ms.	10	t	t	2020-04-05 08:43:11.212	UNDEFINED	End of Life
Unknown	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-05 07:18:54.98	The health check was unable to complete within the timeout of 30000ms.	11	t	t	2020-04-05 08:43:11.212	UNDEFINED	Gadget feed URL
Unknown	com.atlassian.troubleshooting.plugin-jira:collationHealthCheck	Checks if the database and tables are configured using the required collation.	2020-04-05 07:18:54.98	The health check was unable to complete within the timeout of 20000ms.	12	t	t	2020-04-05 08:43:11.212	UNDEFINED	Collation
Unknown	com.atlassian.troubleshooting.plugin-jira:databaseConfigCheck	Checks if the database connection is configured as per our recommended settings.	2020-04-05 07:18:54.98	The health check was unable to complete within the timeout of 20000ms.	13	t	t	2020-04-05 08:43:11.212	UNDEFINED	Connection settings
Unknown	com.atlassian.troubleshooting.plugin-jira:storageIndexSnapshotHealthCheck	Checks if there is enough free space to backup and restore index.	2020-04-05 07:18:54.98	The health check was unable to complete within the timeout of 20000ms.	14	t	t	2020-04-05 08:43:11.212	UNDEFINED	Free space
Unknown	com.atlassian.troubleshooting.plugin-jira:attachmentHealthCheck	Checks that the most recent attachments can be found and are able to be opened.	2020-04-05 07:18:54.98	The health check was unable to complete within the timeout of 20000ms.	15	t	t	2020-04-05 08:43:11.212	UNDEFINED	Attachments
Unknown	com.atlassian.troubleshooting.plugin-jira:secondaryAttachmentHealthCheck	Checks secondary storage for attachments is correctly configured.	2020-04-05 07:18:54.98	The health check was unable to complete within the timeout of 20000ms.	16	t	t	2020-04-05 08:43:11.212	UNDEFINED	Attachments
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-05 08:43:11.212	JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	17	t	t	2020-04-05 09:43:04.064	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-06 18:42:52.675	JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	18	t	t	2020-04-06 19:42:46.554	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-10 08:44:23.058	JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	19	t	t	2020-04-10 09:42:48.753	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-10 12:44:45.507	JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	20	t	t	2020-04-10 15:42:48.102	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-10 19:48:33.197	JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	21	t	t	2020-04-10 20:43:44.384	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-14 18:31:30.986	JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	22	t	t	2020-04-14 23:23:05.066	WARNING	Gadget feed URL
JIRA	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-15 09:40:28.746	JIRA is not able to access itself through the Gadget feed URL. This is necessary so that dashboard gadgets can be generated successfully. Please verify the current Base URL and if necessary, review your network configurations to resolve the problem.	23	t	t	2020-04-15 10:40:23.577	WARNING	Gadget feed URL
Unknown	com.atlassian.troubleshooting.plugin-jira:endOfLifeHealthCheck	Checks if the running version of JIRA is approaching, or has reached End of Life.	2020-04-15 19:42:51.093	The health check was unable to complete within the timeout of 20000ms.	24	t	t	2020-04-15 20:40:25.415	UNDEFINED	End of Life
Unknown	com.atlassian.troubleshooting.plugin-jira:gadgetFeedUrlHealthCheck	Checks if JIRA is able to access itself through the gadgets feed URL to ensure that dashboard gadgets will work.	2020-04-15 19:42:51.093	The health check was unable to complete within the timeout of 30000ms.	25	t	t	2020-04-15 20:40:25.415	UNDEFINED	Gadget feed URL
\.


--
-- Data for Name: AO_4789DD_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
1	last-run	1587001227730
\.


--
-- Data for Name: AO_4789DD_READ_NOTIFICATIONS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_READ_NOTIFICATIONS" ("ID", "IS_SNOOZED", "NOTIFICATION_ID", "SNOOZE_COUNT", "SNOOZE_DATE", "USER_KEY") FROM stdin;
\.


--
-- Data for Name: AO_4789DD_TASK_MONITOR; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_TASK_MONITOR" ("CLUSTERED_TASK_ID", "CREATED_TIMESTAMP", "ID", "NODE_ID", "PROGRESS_MESSAGE", "PROGRESS_PERCENTAGE", "SERIALIZED_ERRORS", "SERIALIZED_WARNINGS", "TASK_ID", "TASK_MONITOR_KIND", "TASK_STATUS") FROM stdin;
\.


--
-- Data for Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4AEACD_WEBHOOK_DAO" ("ENABLED", "ENCODED_EVENTS", "FILTER", "ID", "JQL", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "REGISTRATION_METHOD", "URL", "EXCLUDE_ISSUE_DETAILS", "PARAMETERS") FROM stdin;
\.


--
-- Data for Name: AO_550953_SHORTCUT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_550953_SHORTCUT" ("ID", "NAME", "PROJECT_ID", "SHORTCUT_URL", "URL", "ICON") FROM stdin;
1	Project management ideas	10001	https://docs.atlassian.com/jira/jcore-docs-0713/Project+management	\N	
2	Working in a project	10001	https://docs.atlassian.com/jira/jcore-docs-0713/Working+in+a+project	\N	
\.


--
-- Data for Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_ACTIVITY_ENTITY" ("ACTIVITY_ID", "ACTOR_ID", "CONTENT", "GENERATOR_DISPLAY_NAME", "GENERATOR_ID", "ICON_ID", "ID", "ISSUE_KEY", "OBJECT_ID", "POSTER", "PROJECT_KEY", "PUBLISHED", "TARGET_ID", "TITLE", "URL", "USERNAME", "VERB") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_ACTOR_ENTITY" ("FULL_NAME", "ID", "PROFILE_PAGE_URI", "PROFILE_PICTURE_URI", "USERNAME") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_MEDIA_LINK_ENTITY" ("DURATION", "HEIGHT", "ID", "URL", "WIDTH") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_OBJECT_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Data for Name: AO_563AEE_TARGET_ENTITY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_563AEE_TARGET_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
\.


--
-- Data for Name: AO_575BF5_DEV_SUMMARY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_575BF5_DEV_SUMMARY" ("CREATED", "ID", "ISSUE_ID", "JSON", "PROVIDER_SOURCE_ID", "UPDATED") FROM stdin;
\.


--
-- Data for Name: AO_575BF5_PROCESSED_COMMITS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_575BF5_PROCESSED_COMMITS" ("COMMIT_HASH", "ID", "METADATA_HASH") FROM stdin;
\.


--
-- Data for Name: AO_575BF5_PROVIDER_ISSUE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_575BF5_PROVIDER_ISSUE" ("ID", "ISSUE_ID", "PROVIDER_SOURCE_ID", "STALE_AFTER") FROM stdin;
\.


--
-- Data for Name: AO_575BF5_PROVIDER_SEQ_NO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_575BF5_PROVIDER_SEQ_NO" ("ID", "PROVIDER_SOURCE_ID", "SEQUENCE_NO") FROM stdin;
\.


--
-- Data for Name: AO_587B34_GLANCE_CONFIG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_587B34_GLANCE_CONFIG" ("ROOM_ID", "STATE", "SYNC_NEEDED", "APPLICATION_USER_KEY", "JQL", "NAME") FROM stdin;
\.


--
-- Data for Name: AO_587B34_PROJECT_CONFIG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_587B34_PROJECT_CONFIG" ("CONFIGURATION_GROUP_ID", "ID", "NAME", "NAME_UNIQUE_CONSTRAINT", "PROJECT_ID", "ROOM_ID", "VALUE") FROM stdin;
\.


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_5FB9D7_AOHIP_CHAT_LINK" ("ADDON_TOKEN_EXPIRY", "API_URL", "CONNECT_DESCRIPTOR", "GROUP_ID", "GROUP_NAME", "ID", "OAUTH_ID", "SECRET_KEY", "SYSTEM_PASSWORD", "SYSTEM_TOKEN_EXPIRY", "SYSTEM_USER", "SYSTEM_USER_TOKEN", "TOKEN") FROM stdin;
\.


--
-- Data for Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_5FB9D7_AOHIP_CHAT_USER" ("HIP_CHAT_LINK_ID", "HIP_CHAT_USER_ID", "HIP_CHAT_USER_NAME", "ID", "REFRESH_CODE", "USER_KEY", "USER_SCOPES", "USER_TOKEN", "USER_TOKEN_EXPIRY") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_AUDITENTRY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_AUDITENTRY" ("CATEGORY", "DATA", "ENTITY_CLASS", "ENTITY_ID", "ID", "TIME", "USER") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_BOARDADMINS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_BOARDADMINS" ("ID", "KEY", "RAPID_VIEW_ID", "TYPE") FROM stdin;
1	syedawase	1	USER
2	syedawase	2	USER
3	syedawase	3	USER
\.


--
-- Data for Name: AO_60DB71_CARDCOLOR; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_CARDCOLOR" ("COLOR", "ID", "POS", "RAPID_VIEW_ID", "STRATEGY", "VAL") FROM stdin;
#ff9933	10	0	3	assignee	syedawase
#cc0000	9	1	3	assignee	unassigned
#d04437	8	2	3	priority	1
#f15c75	7	3	3	priority	2
#f79232	6	4	3	priority	3
#707070	5	5	3	priority	4
#999999	4	6	3	priority	5
#009900	3	7	3	issuetype	10004
#bfe4ff	2	8	3	issuetype	10003
#cc0000	1	9	3	issuetype	10001
\.


--
-- Data for Name: AO_60DB71_CARDLAYOUT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_CARDLAYOUT" ("FIELD_ID", "ID", "MODE_NAME", "POS", "RAPID_VIEW_ID") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_COLUMN; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_COLUMN" ("ID", "MAXIM", "MINIM", "NAME", "POS", "RAPID_VIEW_ID") FROM stdin;
4	\N	\N	gh.workflow.preset.todo	0	1
5	\N	\N	gh.workflow.preset.inprogress	1	1
6	\N	\N	gh.workflow.preset.done	2	1
11	\N	\N	gh.kanplan.column@name=gh.workflow.preset.backlog	0	2
12	\N	\N	gh.workflow.preset.backlog	1	2
13	\N	\N	gh.workflow.preset.selectedfordevelopment	2	2
14	\N	\N	gh.workflow.preset.inprogress	3	2
15	\N	\N	gh.workflow.preset.done	4	2
16	\N	\N	gh.boards.todo	0	3
17	\N	\N	gh.boards.inprog	1	3
18	\N	\N	gh.boards.done	2	3
\.


--
-- Data for Name: AO_60DB71_COLUMNSTATUS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_COLUMNSTATUS" ("COLUMN_ID", "ID", "POS", "STATUS_ID") FROM stdin;
4	4	0	10000
5	5	0	3
6	6	0	10001
12	11	0	10002
13	12	0	10003
14	13	0	3
15	14	0	10001
16	15	0	10000
17	16	0	3
18	17	0	10001
\.


--
-- Data for Name: AO_60DB71_DETAILVIEWFIELD; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_DETAILVIEWFIELD" ("FIELD_ID", "ID", "POS", "RAPID_VIEW_ID") FROM stdin;
status	1	0	1
priority	2	1	1
components	3	2	1
labels	4	3	1
versions	5	4	1
fixVersions	6	5	1
issuelinks	7	6	1
reporter	8	7	1
assignee	9	8	1
created	10	9	1
updated	11	10	1
customfield_10101	12	11	1
status	13	0	2
priority	14	1	2
components	15	2	2
labels	16	3	2
versions	17	4	2
fixVersions	18	5	2
issuelinks	19	6	2
reporter	20	7	2
assignee	21	8	2
created	22	9	2
updated	23	10	2
customfield_10101	24	11	2
status	25	0	3
priority	26	1	3
components	27	2	3
labels	28	3	3
versions	29	4	3
fixVersions	30	5	3
issuelinks	31	6	3
reporter	32	7	3
assignee	33	8	3
created	34	9	3
updated	35	10	3
customfield_10101	36	11	3
\.


--
-- Data for Name: AO_60DB71_ESTIMATESTATISTIC; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_ESTIMATESTATISTIC" ("FIELD_ID", "ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
customfield_10106	1	1	field
\N	2	2	none
customfield_10106	3	3	field
\.


--
-- Data for Name: AO_60DB71_ISSUERANKING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_ISSUERANKING" ("CUSTOM_FIELD_ID", "ID", "ISSUE_ID", "NEXT_ID") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_ISSUERANKINGLOG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_ISSUERANKINGLOG" ("CUSTOM_FIELD_ID", "ID", "ISSUE_ID", "LOG_TYPE", "NEW_NEXT_ID", "NEW_PREVIOUS_ID", "OLD_NEXT_ID", "OLD_PREVIOUS_ID", "SANITY_CHECKED") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_LEXORANK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_LEXORANK" ("BUCKET", "FIELD_ID", "ID", "ISSUE_ID", "LOCK_HASH", "LOCK_TIME", "RANK", "TYPE") FROM stdin;
0	10105	7	-9223372036854775808	\N	\N	0|000000:	0
0	10105	9	10000	\N	\N	0|hzzzzz:	1
0	10105	10	10001	\N	\N	0|i00007:	1
0	10105	11	10002	\N	\N	0|i0000f:	1
0	10105	12	10003	\N	\N	0|i0000n:	1
0	10105	13	10004	\N	\N	0|i0000v:	1
0	10105	14	10005	\N	\N	0|i00013:	1
0	10105	15	10006	\N	\N	0|i0001b:	1
0	10105	16	10007	\N	\N	0|i0001j:	1
0	10105	17	10008	\N	\N	0|i0001r:	1
0	10105	18	10009	\N	\N	0|i0001z:	1
0	10105	19	10010	\N	\N	0|i00027:	1
0	10105	20	10011	\N	\N	0|i0002f:	1
0	10105	21	10012	\N	\N	0|i0002n:	1
0	10105	22	10013	\N	\N	0|i0002v:	1
0	10105	23	10014	\N	\N	0|i00033:	1
0	10105	24	10015	\N	\N	0|i0003b:	1
0	10105	25	10016	\N	\N	0|i0003j:	1
0	10105	26	10017	\N	\N	0|i0003r:	1
0	10105	27	10018	\N	\N	0|i0003z:	1
0	10105	28	10019	\N	\N	0|i00047:	1
0	10105	29	10020	\N	\N	0|i0004f:	1
0	10105	31	10022	\N	\N	0|i0004v:	1
0	10105	8	9223372036854775807	\N	\N	0|zzzzzz:	2
0	10105	30	10021	\N	\N	0|i0004n:	1
\.


--
-- Data for Name: AO_60DB71_LEXORANKBALANCER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_LEXORANKBALANCER" ("DISABLE_RANK_OPERATIONS", "FIELD_ID", "ID", "REBALANCE_TIME") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_NONWORKINGDAY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_NONWORKINGDAY" ("ID", "ISO8601_DATE", "WORKING_DAYS_ID") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_QUICKFILTER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_QUICKFILTER" ("DESCRIPTION", "ID", "LONG_QUERY", "NAME", "POS", "QUERY", "RAPID_VIEW_ID") FROM stdin;
gh.rapid.quickfilters.only.my.issues.desc	1	assignee = currentUser()	gh.rapid.quickfilters.only.my.issues	0	\N	1
gh.rapid.quickfilters.recently.updated.desc	2	updatedDate >= -1d	gh.rapid.quickfilters.recently.updated	1	\N	1
gh.rapid.quickfilters.only.my.issues.desc	3	assignee = currentUser()	gh.rapid.quickfilters.only.my.issues	0	\N	2
gh.rapid.quickfilters.recently.updated.desc	4	updatedDate >= -1d	gh.rapid.quickfilters.recently.updated	1	\N	2
gh.rapid.quickfilters.only.my.issues.desc	5	assignee = currentUser()	gh.rapid.quickfilters.only.my.issues	0	\N	3
gh.rapid.quickfilters.recently.updated.desc	6	updatedDate >= -1d	gh.rapid.quickfilters.recently.updated	1	\N	3
\.


--
-- Data for Name: AO_60DB71_RANKABLEOBJECT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_RANKABLEOBJECT" ("ID", "TYPE") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_RAPIDVIEW; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_RAPIDVIEW" ("CARD_COLOR_STRATEGY", "ID", "KAN_PLAN_ENABLED", "NAME", "OLD_DONE_ISSUES_CUTOFF", "OWNER_USER_NAME", "SAVED_FILTER_ID", "SHOW_DAYS_IN_COLUMN", "SHOW_EPIC_AS_PANEL", "SPRINTS_ENABLED", "SWIMLANE_STRATEGY") FROM stdin;
none	1	\N	SYC board	NONE	syedawase	10000	f	t	t	parentChild
none	2	\N	TRUES board	-2w	syedawase	10004	f	t	f	custom
none	3	\N	myboard	NONE	syedawase	10005	f	t	t	parentChild
\.


--
-- Data for Name: AO_60DB71_SPRINT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_SPRINT" ("CLOSED", "COMPLETE_DATE", "END_DATE", "GOAL", "ID", "NAME", "RAPID_VIEW_ID", "SEQUENCE", "STARTED", "START_DATE") FROM stdin;
f	\N	1585839978117	\N	1	Sample Sprint 2	1	\N	t	1584629178117
t	1584620180024	1584624980024	\N	2	Sample Sprint 1	1	\N	t	1583418980024
\.


--
-- Data for Name: AO_60DB71_STATSFIELD; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_STATSFIELD" ("ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
1	1	none
2	2	issueCount
3	3	none
\.


--
-- Data for Name: AO_60DB71_SUBQUERY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_SUBQUERY" ("ID", "LONG_QUERY", "QUERY", "RAPID_VIEW_ID", "SECTION") FROM stdin;
1	fixVersion in unreleasedVersions() OR fixVersion is EMPTY	\N	2	board.kanban.work
\.


--
-- Data for Name: AO_60DB71_SWIMLANE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_SWIMLANE" ("DEFAULT_LANE", "DESCRIPTION", "ID", "LONG_QUERY", "NAME", "POS", "QUERY", "RAPID_VIEW_ID") FROM stdin;
t		1		gh.rapid.swimlane.default.name	0	\N	1
f	gh.rapid.swimlane.expedite.desc	2	priority = Highest	gh.rapid.swimlane.expedite.name	0	\N	2
t		3		gh.rapid.swimlane.default.name	1	\N	2
t		4		gh.rapid.swimlane.default.name	0	\N	3
\.


--
-- Data for Name: AO_60DB71_TRACKINGSTATISTIC; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_TRACKINGSTATISTIC" ("FIELD_ID", "ID", "RAPID_VIEW_ID", "TYPE_ID") FROM stdin;
\N	1	1	none
\N	2	2	none
\N	3	3	none
\.


--
-- Data for Name: AO_60DB71_VERSION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_VERSION" ("ID", "START_DATE", "VERSION_ID") FROM stdin;
\.


--
-- Data for Name: AO_60DB71_WORKINGDAYS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_60DB71_WORKINGDAYS" ("FRIDAY", "ID", "MONDAY", "RAPID_VIEW_ID", "SATURDAY", "SUNDAY", "THURSDAY", "TIMEZONE", "TUESDAY", "WEDNESDAY") FROM stdin;
t	1	t	1	f	f	t	defaultTimeZoneId	t	t
t	2	t	2	f	f	t	defaultTimeZoneId	t	t
t	3	t	3	f	f	t	defaultTimeZoneId	t	t
\.


--
-- Data for Name: AO_97EDAB_USERINVITATION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_97EDAB_USERINVITATION" ("APPLICATION_KEYS", "EMAIL_ADDRESS", "EXPIRY", "ID", "REDEEMED", "SENDER_USERNAME", "TOKEN") FROM stdin;
\.


--
-- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
\.


--
-- Data for Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_B9A0F0_APPLIED_TEMPLATE" ("ID", "PROJECT_ID", "PROJECT_TEMPLATE_MODULE_KEY", "PROJECT_TEMPLATE_WEB_ITEM_KEY") FROM stdin;
1	10000	com.pyxis.greenhopper.jira:gh-scrum-template	com.pyxis.greenhopper.jira:gh-scrum-template
2	10001	com.atlassian.jira-core-project-templates:jira-core-project-management	com.atlassian.jira-core-project-templates:jira-core-project-management
3	10002	com.pyxis.greenhopper.jira:gh-kanban-template	com.pyxis.greenhopper.jira:gh-kanban-template
\.


--
-- Data for Name: AO_C16815_ALERT_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_C16815_ALERT_AO" ("CREATED_DATE", "DETAILS_JSON", "ID", "ISSUE_COMPONENT_ID", "ISSUE_ID", "ISSUE_SEVERITY", "NODE_NAME", "TRIGGER_MODULE", "TRIGGER_PLUGIN_KEY", "TRIGGER_PLUGIN_KEY_VERSION", "TRIGGER_PLUGIN_VERSION") FROM stdin;
1585331733061	{"thread":"http-nio-9090-exec-21","query":"{assignee = currentUser()} AND {resolution = \\"unresolved\\"} order by priority DESC,created ASC","reason":{"query":{"whereClause":{"clauses":[{"name":"assignee","operator":"EQUALS","operand":{"name":"currentUser","args":[],"displayString":"currentUser()"},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]},{"name":"resolution","operator":"EQUALS","operand":{"longValue":null,"stringValue":"unresolved","name":"SingleValueOperand","displayString":"\\"unresolved\\""},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]}],"name":"AND"},"orderByClause":{"searchSorts":[{"order":"DESC","field":"priority","property":{"defined":false,"empty":true,"orNull":null},"sortOrder":"DESC","reverse":true},{"order":"ASC","field":"created","property":{"defined":false,"empty":true,"orNull":null},"sortOrder":"ASC","reverse":false}]},"queryString":null},"numberOfClausesInQuery":2,"executionTime":862,"numberOfResults":5,"collectorType":"TopDocs","name":"com.atlassian.jira.issue.search.metrics.LuceneQueryExecutionEvent"}}	1	JQL	JQL-1001	100	jira	\N	not-detected	\N	\N
1585331752785	{"thread":"StreamsCompletionService::thread-3","query":"{project in (10000, 10001)} order by updated DESC","reason":{"query":{"whereClause":{"name":"project","operator":"IN","operand":{"values":[{"longValue":10000,"stringValue":null,"name":"SingleValueOperand","displayString":"10000"},{"longValue":10001,"stringValue":null,"name":"SingleValueOperand","displayString":"10001"}],"name":"MultiValueOperand","displayString":"(10000, 10001)"},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]},"orderByClause":{"searchSorts":[{"order":"DESC","field":"updated","property":{"defined":false,"empty":true,"orNull":null},"sortOrder":"DESC","reverse":true}]},"queryString":null},"numberOfClausesInQuery":2,"executionTime":648,"numberOfResults":23,"collectorType":"TopDocs","name":"com.atlassian.jira.issue.search.metrics.LuceneQueryExecutionEvent"}}	2	JQL	JQL-1001	100	jira	\N	not-detected	\N	\N
1585331905559	{"thread":"http-nio-9090-exec-5","query":"{project = \\"TRUES\\"} AND {status in (\\"10001\\", \\"10003\\", \\"3\\", \\"10002\\")} AND ( {fixVersion in unreleasedVersions()} OR {fixVersion is EMPTY} ) AND ( {updated >= \\"-2w\\"} OR {statusCategory != \\"Done\\"} ) order by Rank ASC","reason":{"query":{"whereClause":{"clauses":[{"clauses":[{"clauses":[{"name":"project","operator":"EQUALS","operand":{"longValue":null,"stringValue":"TRUES","name":"SingleValueOperand","displayString":"\\"TRUES\\""},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]},{"name":"status","operator":"IN","operand":{"values":[{"longValue":null,"stringValue":"10001","name":"SingleValueOperand","displayString":"\\"10001\\""},{"longValue":null,"stringValue":"10003","name":"SingleValueOperand","displayString":"\\"10003\\""},{"longValue":null,"stringValue":"3","name":"SingleValueOperand","displayString":"\\"3\\""},{"longValue":null,"stringValue":"10002","name":"SingleValueOperand","displayString":"\\"10002\\""}],"name":"MultiValueOperand","displayString":"(\\"10001\\", \\"10003\\", \\"3\\", \\"10002\\")"},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]}],"name":"AND"},{"clauses":[{"name":"fixVersion","operator":"IN","operand":{"name":"unreleasedVersions","args":[],"displayString":"unreleasedVersions()"},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]},{"name":"fixVersion","operator":"IS","operand":{"name":"EMPTY","displayString":"EMPTY"},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]}],"name":"OR"}],"name":"AND"},{"clauses":[{"name":"updated","operator":"GREATER_THAN_EQUALS","operand":{"longValue":null,"stringValue":"-2w","name":"SingleValueOperand","displayString":"\\"-2w\\""},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]},{"name":"statusCategory","operator":"NOT_EQUALS","operand":{"longValue":null,"stringValue":"Done","name":"SingleValueOperand","displayString":"\\"Done\\""},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]}],"name":"OR"}],"name":"AND"},"orderByClause":{"searchSorts":[{"order":"ASC","field":"Rank","property":{"defined":false,"empty":true,"orNull":null},"sortOrder":"ASC","reverse":false}]},"queryString":null},"numberOfClausesInQuery":13,"executionTime":477,"numberOfResults":0,"collectorType":"TopDocs","name":"com.atlassian.jira.issue.search.metrics.LuceneQueryExecutionEvent"}}	3	JQL	JQL-1001	100	jira	\N	not-detected	\N	\N
1585339241376	{"thread":"http-nio-9090-exec-21","query":"{summary ~ \\"story*\\"} OR {description ~ \\"story*\\"} order by lastViewed DESC","reason":{"query":{"whereClause":{"clauses":[{"name":"summary","operator":"LIKE","operand":{"longValue":null,"stringValue":"story*","name":"SingleValueOperand","displayString":"\\"story*\\""},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]},{"name":"description","operator":"LIKE","operand":{"longValue":null,"stringValue":"story*","name":"SingleValueOperand","displayString":"\\"story*\\""},"property":{"defined":false,"empty":true,"orNull":null},"clauses":[]}],"name":"OR"},"orderByClause":{"searchSorts":[{"order":"DESC","field":"lastViewed","property":{"defined":false,"empty":true,"orNull":null},"sortOrder":"DESC","reverse":true}]},"queryString":null},"numberOfClausesInQuery":6,"executionTime":500,"numberOfResults":16,"collectorType":"TopDocs","name":"com.atlassian.jira.issue.search.metrics.LuceneQueryExecutionEvent"}}	4	JQL	JQL-1001	100	jira	\N	not-detected	\N	\N
1586090534926	{"thread":"Caesium-1-4","query":"order by updated DESC","reason":{"query":{"whereClause":null,"orderByClause":{"searchSorts":[{"order":"DESC","field":"updated","property":{"defined":false,"empty":true,"orNull":null},"sortOrder":"DESC","reverse":true}]},"queryString":null},"numberOfClausesInQuery":1,"executionTime":1634,"numberOfResults":23,"collectorType":"TopDocs","name":"com.atlassian.jira.issue.search.metrics.LuceneQueryExecutionEvent"}}	5	JQL	JQL-1001	100	jira	\N	not-detected	\N	\N
1586212931177	{"thread":"Caesium-1-1","query":"order by updated DESC","reason":{"query":{"whereClause":null,"orderByClause":{"searchSorts":[{"order":"DESC","field":"updated","property":{"defined":false,"empty":true,"orNull":null},"reverse":true,"sortOrder":"DESC"}]},"queryString":null},"numberOfClausesInQuery":1,"executionTime":972,"numberOfResults":23,"collectorType":"TopDocs","name":"com.atlassian.jira.issue.search.metrics.LuceneQueryExecutionEvent"}}	6	JQL	JQL-1001	100	jira	\N	not-detected	\N	\N
1586903438502	{"thread":"Caesium-1-1","query":"order by updated DESC","reason":{"query":{"whereClause":null,"orderByClause":{"searchSorts":[{"order":"DESC","field":"updated","property":{"defined":false,"empty":true,"orNull":null},"sortOrder":"DESC","reverse":true}]},"queryString":null},"numberOfClausesInQuery":1,"executionTime":503,"numberOfResults":23,"collectorType":"TopDocs","name":"com.atlassian.jira.issue.search.metrics.LuceneQueryExecutionEvent"}}	7	JQL	JQL-1001	100	jira	\N	not-detected	\N	\N
1586957974077	{"thread":"Caesium-1-4","query":"order by updated DESC","reason":{"query":{"whereClause":null,"orderByClause":{"searchSorts":[{"order":"DESC","field":"updated","property":{"defined":false,"empty":true,"orNull":null},"reverse":true,"sortOrder":"DESC"}]},"queryString":null},"numberOfClausesInQuery":1,"executionTime":545,"numberOfResults":23,"collectorType":"TopDocs","name":"com.atlassian.jira.issue.search.metrics.LuceneQueryExecutionEvent"}}	8	JQL	JQL-1001	100	jira	\N	not-detected	\N	\N
\.


--
-- Data for Name: AO_CFF990_AOTRANSITION_FAILURE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_CFF990_AOTRANSITION_FAILURE" ("ERROR_MESSAGES", "FAILURE_TIME", "ID", "ISSUE_ID", "LOG_REFERRAL_HASH", "TRANSITION_ID", "TRIGGER_ID", "USER_KEY", "WORKFLOW_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_BRANCH; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_BRANCH" ("ID", "NAME", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_BRANCH_HEAD_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_BRANCH_HEAD_MAPPING" ("BRANCH_NAME", "HEAD", "ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_CHANGESET_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_CHANGESET_MAPPING" ("AUTHOR", "AUTHOR_EMAIL", "BRANCH", "DATE", "FILES_DATA", "FILE_COUNT", "FILE_DETAILS_JSON", "ID", "ISSUE_KEY", "MESSAGE", "NODE", "PARENTS_DATA", "PROJECT_KEY", "RAW_AUTHOR", "RAW_NODE", "REPOSITORY_ID", "SMARTCOMMIT_AVAILABLE", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_COMMIT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_COMMIT" ("AUTHOR", "AUTHOR_AVATAR_URL", "DATE", "DOMAIN_ID", "ID", "MERGE", "MESSAGE", "NODE", "RAW_AUTHOR") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_GIT_HUB_EVENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_GIT_HUB_EVENT" ("CREATED_AT", "GIT_HUB_ID", "ID", "REPOSITORY_ID", "SAVE_POINT") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_ISSUE_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_ISSUE_MAPPING" ("ID", "ISSUE_ID", "NODE", "PROJECT_KEY", "REPOSITORY_URI") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_ISSUE_MAPPING_V2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_ISSUE_MAPPING_V2" ("AUTHOR", "BRANCH", "DATE", "FILES_DATA", "ID", "ISSUE_ID", "MESSAGE", "NODE", "PARENTS_DATA", "RAW_AUTHOR", "RAW_NODE", "REPOSITORY_ID", "VERSION") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_ISSUE_TO_BRANCH; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_ISSUE_TO_BRANCH" ("BRANCH_ID", "ID", "ISSUE_KEY") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_ISSUE_TO_CHANGESET; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_ISSUE_TO_CHANGESET" ("CHANGESET_ID", "ID", "ISSUE_KEY", "PROJECT_KEY") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_MESSAGE; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_MESSAGE" ("ADDRESS", "ID", "PAYLOAD", "PAYLOAD_TYPE", "PRIORITY") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" ("ID", "LAST_FAILED", "MESSAGE_ID", "QUEUE", "RETRIES_COUNT", "STATE", "STATE_INFO") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_MESSAGE_TAG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_MESSAGE_TAG" ("ID", "MESSAGE_ID", "TAG") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_ORGANIZATION_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_ORGANIZATION_MAPPING" ("ACCESS_TOKEN", "ADMIN_PASSWORD", "ADMIN_USERNAME", "APPROVAL_STATE", "AUTOLINK_NEW_REPOS", "DEFAULT_GROUPS_SLUGS", "DVCS_TYPE", "HOST_URL", "ID", "LAST_POLLED", "NAME", "OAUTH_KEY", "OAUTH_SECRET", "PRINCIPAL_ID", "SMARTCOMMITS_FOR_NEW_REPOS") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_ORG_TO_PROJECT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_ORG_TO_PROJECT" ("ID", "ORGANIZATION_ID", "PROJECT_KEY") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_PROJECT_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_PROJECT_MAPPING" ("ID", "PASSWORD", "PROJECT_KEY", "REPOSITORY_URI", "USERNAME") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_PROJECT_MAPPING_V2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_PROJECT_MAPPING_V2" ("ACCESS_TOKEN", "ADMIN_PASSWORD", "ADMIN_USERNAME", "ID", "LAST_COMMIT_DATE", "PROJECT_KEY", "REPOSITORY_NAME", "REPOSITORY_TYPE", "REPOSITORY_URL") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_PR_ISSUE_KEY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_PR_ISSUE_KEY" ("DOMAIN_ID", "ID", "ISSUE_KEY", "PULL_REQUEST_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_PR_PARTICIPANT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_PR_PARTICIPANT" ("APPROVED", "DOMAIN_ID", "ID", "PULL_REQUEST_ID", "ROLE", "USERNAME") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_PR_TO_COMMIT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_PR_TO_COMMIT" ("COMMIT_ID", "DOMAIN_ID", "ID", "REQUEST_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_PULL_REQUEST; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_PULL_REQUEST" ("AUTHOR", "COMMENT_COUNT", "CREATED_ON", "DESTINATION_BRANCH", "DOMAIN_ID", "EXECUTED_BY", "ID", "LAST_STATUS", "NAME", "REMOTE_ID", "SOURCE_BRANCH", "SOURCE_REPO", "TO_REPOSITORY_ID", "UPDATED_ON", "URL") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_REPOSITORY_MAPPING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_REPOSITORY_MAPPING" ("ACTIVITY_LAST_SYNC", "DELETED", "FORK", "FORK_OF_NAME", "FORK_OF_OWNER", "FORK_OF_SLUG", "ID", "LAST_CHANGESET_NODE", "LAST_COMMIT_DATE", "LINKED", "LOGO", "NAME", "ORGANIZATION_ID", "SLUG", "SMARTCOMMITS_ENABLED", "UPDATE_LINK_AUTHORISED") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_REPO_TO_CHANGESET; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_REPO_TO_CHANGESET" ("CHANGESET_ID", "ID", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_REPO_TO_PROJECT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_REPO_TO_PROJECT" ("ID", "PROJECT_KEY", "REPOSITORY_ID") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_SYNC_AUDIT_LOG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_SYNC_AUDIT_LOG" ("END_DATE", "EXC_TRACE", "FIRST_REQUEST_DATE", "FLIGHT_TIME_MS", "ID", "NUM_REQUESTS", "REPO_ID", "START_DATE", "SYNC_STATUS", "SYNC_TYPE", "TOTAL_ERRORS") FROM stdin;
\.


--
-- Data for Name: AO_E8B6CC_SYNC_EVENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_E8B6CC_SYNC_EVENT" ("EVENT_CLASS", "EVENT_DATE", "EVENT_JSON", "ID", "REPO_ID", "SCHEDULED_SYNC") FROM stdin;
\.


--
-- Data for Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_ED669C_SEEN_ASSERTIONS" ("ASSERTION_ID", "EXPIRY_TIMESTAMP", "ID") FROM stdin;
\.


--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_user (id, user_key, lower_user_name) FROM stdin;
10000	syedawase	syedawase
\.


--
-- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_changed_value (id, log_id, name, delta_from, delta_to) FROM stdin;
10000	10001	Permission		Browse Users
10001	10001	Group		jira-software-users
10002	10002	Permission		Manage Group Filter Subscriptions
10003	10002	Group		jira-software-users
10004	10003	Permission		Bulk Change
10005	10003	Group		jira-software-users
10006	10004	Permission		Create Shared Objects
10007	10004	Group		jira-software-users
10008	10005	Organisation	\N	individual
10009	10005	Date Purchased	\N	26/Mar/20
10010	10005	License Type	\N	Jira Software (Server): Evaluation
10011	10005	Server ID	\N	B5O4-QAVF-BFKT-ALQH
10012	10005	Support Entitlement Number (SEN)	\N	SEN-L15207189
10013	10005	User Limit	\N	Unlimited
10014	10005	jira-software	\N	-1
10015	10006	Username	\N	syedawase
10016	10006	Full name	\N	Syed Awase Khirni
10017	10006	Email	\N	awase008@gmail.com
10018	10006	Active / Inactive	\N	Active
10019	10008	Permission		Manage Group Filter Subscriptions
10020	10008	Group		jira-administrators
10021	10009	Permission		Bulk Change
10022	10009	Group		jira-administrators
10023	10010	Permission		Browse Users
10024	10010	Group		jira-administrators
10025	10011	Permission		Create Shared Objects
10026	10011	Group		jira-administrators
10100	10100	Name	\N	Sprint
10101	10100	Description	\N	Jira Software sprint field
10102	10100	Type	\N	Jira Sprint Field
10103	10101	Name	\N	Epic Link
10104	10101	Description	\N	Choose an epic to assign this issue to.
10105	10101	Type	\N	Epic Link Relationship
10106	10102	Name	\N	Epic Status
10107	10102	Description	\N	Epic Status field for Jira Software use only.
10108	10102	Type	\N	Status of Epic
10109	10103	Name	\N	Epic Name
10110	10103	Description	\N	Provide a short name to identify this epic.
10111	10103	Type	\N	Name of Epic
10112	10104	Name	\N	Epic Color
10113	10104	Description	\N	Epic Colour field for Jira Software use only.
10114	10104	Type	\N	Color of Epic
10115	10105	Name	\N	Rank
10116	10105	Description	\N	Global rank field for Jira Software use only.
10117	10105	Type	\N	Global Rank
10118	10108	Name	\N	Story Points
10119	10108	Description	\N	Measurement of complexity and/or size of a requirement.
10120	10108	Type	\N	Number Field
10121	10109	Permission		Manage Sprints
10122	10109	Type		Project Role
10123	10109	Value		Administrators
10124	10110	Permission	Manage Sprints	
10125	10110	Type	Project Role	
10126	10110	Value	Administrators	
10127	10111	Permission		Manage Sprints
10128	10111	Type		Project Role
10129	10111	Value		Administrators
10130	10112	Name	\N	Software Simplified Workflow for Project SYC
10131	10112	Description	\N	Generated by JIRA Software version 7.13.0-DAILY20180924115437. This workflow is managed internally by Jira Software. Do not manually modify this workflow.
10132	10112	Status	\N	To Do
10133	10112	Status	\N	In Progress
10134	10112	Status	\N	Done
10135	10112	Transition	\N	Create (To Do)
10136	10112	Transition	\N	To Do (To Do)
10137	10112	Transition	\N	In Progress (In Progress)
10138	10112	Transition	\N	Done (Done)
10139	10113	Name	\N	SYC: Software Simplified Workflow Scheme
10140	10113	Description	\N	Generated by JIRA Software version 7.13.0-DAILY20180924115437. This workflow scheme is managed internally by Jira Software. Do not manually modify this workflow scheme.
10141	10115	Name		Filter for SYC board
10142	10115	Description		\N
10143	10115	Owner		syedawase
10144	10115	Shared With	[]	[Project: sycliqscrum (VIEW)]
10145	10115	JQL Query		{project = "SYC"} order by Rank ASC
10146	10117	Name	\N	Default software scheme
10147	10117	Description	\N	Default scheme for Software projects.
10148	10118	Permission		Browse Projects
10149	10118	Type		Application access
10150	10119	Permission		Create Issues
10151	10119	Type		Application access
10152	10120	Permission		Edit Issues
10153	10120	Type		Application access
10154	10121	Permission		Assign Issues
10155	10121	Type		Application access
10156	10122	Permission		Resolve Issues
10157	10122	Type		Application access
10158	10123	Permission		Add Comments
10159	10123	Type		Application access
10160	10124	Permission		Delete Issues
10161	10124	Type		Project Role
10162	10124	Value		Administrators
10163	10125	Permission		Assignable User
10164	10125	Type		Application access
10165	10126	Permission		Close Issues
10166	10126	Type		Application access
10167	10127	Permission		Create Attachments
10168	10127	Type		Application access
10169	10128	Permission		Work On Issues
10170	10128	Type		Application access
10171	10129	Permission		Link Issues
10172	10129	Type		Application access
10173	10130	Permission		Administer Projects
10174	10130	Type		Project Role
10175	10130	Value		Administrators
10176	10131	Permission		Move Issues
10177	10131	Type		Application access
10178	10132	Permission		Schedule Issues
10179	10132	Type		Application access
10180	10133	Permission		Modify Reporter
10181	10133	Type		Project Role
10182	10133	Value		Administrators
10183	10134	Permission		View Voters and Watchers
10184	10134	Type		Application access
10185	10135	Permission		Manage Watchers
10186	10135	Type		Project Role
10187	10135	Value		Administrators
10188	10136	Permission		Edit All Comments
10189	10136	Type		Project Role
10190	10136	Value		Administrators
10191	10137	Permission		Edit Own Comments
10192	10137	Type		Application access
10193	10138	Permission		Delete All Comments
10194	10138	Type		Project Role
10195	10138	Value		Administrators
10196	10139	Permission		Delete Own Comments
10197	10139	Type		Application access
10198	10140	Permission		Delete All Attachments
10199	10140	Type		Project Role
10200	10140	Value		Administrators
10201	10141	Permission		Delete Own Attachments
10202	10141	Type		Application access
10203	10142	Permission		Edit Own Worklogs
10204	10142	Type		Application access
10205	10143	Permission		Edit All Worklogs
10206	10143	Type		Project Role
10207	10143	Value		Administrators
10208	10144	Permission		Delete Own Worklogs
10209	10144	Type		Application access
10210	10145	Permission		Delete All Worklogs
10211	10145	Type		Project Role
10212	10145	Value		Administrators
10213	10146	Permission		View Read-Only Workflow
10214	10146	Type		Application access
10215	10147	Permission		Transition Issues
10216	10147	Type		Application access
10217	10148	Permission		View Development Tools
10218	10148	Type		Application access
10219	10149	Permission		Manage Sprints
10220	10149	Type		Application access
10221	10152	Name	\N	sycliqscrum
10222	10152	Key	\N	SYC
10223	10152	Description	\N	
10224	10152	Project Lead	\N	syedawase
10225	10152	Default Assignee	\N	Unassigned
10226	10153	Users	\N	syedawase
10227	10154	Name	\N	Version 1.0
10228	10154	Release date	\N	2020-03-19
10229	10156	Name	\N	Version 2.0
10230	10156	Release date	\N	2020-04-02
10231	10157	Name	\N	Version 3.0
10232	10158	Name	\N	TPRI: Project Management Workflow
10233	10158	Description	\N	
10234	10158	Status	\N	To Do
10235	10158	Status	\N	In Progress
10236	10158	Status	\N	Done
10237	10158	Transition	\N	Create (To Do)
10238	10158	Transition	\N	Start Progress (To Do -> In Progress)
10239	10158	Transition	\N	Done (To Do -> Done)
10240	10158	Transition	\N	Stop Progress (In Progress -> To Do)
10241	10158	Transition	\N	Done (In Progress -> Done)
10242	10158	Transition	\N	Reopen (Done -> To Do)
10243	10158	Transition	\N	Reopen and start progress (Done -> In Progress)
10244	10159	Name	\N	TPRI: Project Management Workflow Scheme
10245	10159	Description	\N	
10246	10162	Name		Open and unassigned (TPRI)
10247	10162	Description		\N
10248	10162	Owner		syedawase
10249	10162	Shared With	[]	[Project: tpri (VIEW)]
10250	10162	JQL Query		{project = 10001} AND {statusCategory != "Done"} AND {assignee = EMPTY} order by priority DESC
10251	10163	Name		Due this week (TPRI)
10252	10163	Description		\N
10253	10163	Owner		syedawase
10254	10163	Shared With	[]	[Project: tpri (VIEW)]
10255	10163	JQL Query		{project = 10001} AND {duedate >= startOfWeek()} AND {duedate <= endOfWeek()} order by priority DESC
10256	10164	Name		Overdue (TPRI)
10257	10164	Description		\N
10258	10164	Owner		syedawase
10259	10164	Shared With	[]	[Project: tpri (VIEW)]
10260	10164	JQL Query		{project = 10001} AND {statusCategory != "Done"} AND {duedate < now()} order by duedate DESC
10261	10165	Name	\N	tpri
10262	10165	Key	\N	TPRI
10263	10165	Description	\N	
10264	10165	URL	\N	
10265	10165	Project Lead	\N	syedawase
10266	10165	Default Assignee	\N	Unassigned
10267	10166	Name	\N	Software Simplified Workflow for Project TRUES
10268	10166	Description	\N	Generated by JIRA Software version 7.13.0-DAILY20180924115437. This workflow is managed internally by Jira Software. Do not manually modify this workflow.
10269	10166	Status	\N	Backlog
10270	10166	Status	\N	Selected for Development
10271	10166	Status	\N	In Progress
10272	10166	Status	\N	Done
10273	10166	Transition	\N	Create (Backlog)
10274	10166	Transition	\N	Backlog (Backlog)
10275	10166	Transition	\N	Selected for Development (Selected for Development)
10276	10166	Transition	\N	In Progress (In Progress)
10277	10166	Transition	\N	Done (Done)
10278	10167	Name	\N	TRUES: Software Simplified Workflow Scheme
10279	10167	Description	\N	Generated by JIRA Software version 7.13.0-DAILY20180924115437. This workflow scheme is managed internally by Jira Software. Do not manually modify this workflow scheme.
10280	10169	Name		Filter for TRUES board
10281	10169	Description		\N
10282	10169	Owner		syedawase
10283	10169	Shared With	[]	[Project: truestate (VIEW)]
10284	10169	JQL Query		{project = "TRUES"} order by Rank ASC
10285	10173	Name	\N	truestate
10286	10173	Key	\N	TRUES
10287	10173	Description	\N	
10288	10173	URL	\N	
10289	10173	Project Lead	\N	syedawase
10290	10173	Default Assignee	\N	Unassigned
10291	10174	Name		aicydashboard
10292	10174	Description		\N
10293	10174	Owner		syedawase
10294	10175	Name		Filter for myboard
10295	10175	Description		\N
10296	10175	Owner		syedawase
10297	10175	Shared With	[]	[Project: sycliqscrum (VIEW)]
10298	10175	JQL Query		{project = "SYC"} order by Rank ASC
\.


--
-- Data for Name: audit_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_item (id, log_id, object_type, object_id, object_name, object_parent_id, object_parent_name) FROM stdin;
10000	10007	USER	syedawase	syedawase	1	Jira Internal Directory
10001	10012	USER	syedawase	syedawase	1	Jira Internal Directory
10100	10114	SCHEME	10100	SYC: Software Simplified Workflow Scheme	\N	\N
10101	10115	USER	syedawase	syedawase	1	Jira Internal Directory
10102	10115	PROJECT	10000	sycliqscrum	\N	\N
10103	10116	BOARD	1	SYC board		
10104	10150	SCHEME	0	Default Permission Scheme	\N	\N
10105	10151	SCHEME	10000	Default software scheme	\N	\N
10106	10152	USER	syedawase	syedawase	1	Jira Internal Directory
10107	10153	PROJECT	10000	sycliqscrum	\N	\N
10108	10154	PROJECT	10000	sycliqscrum	\N	\N
10109	10155	PROJECT	10000	sycliqscrum	\N	\N
10110	10156	PROJECT	10000	sycliqscrum	\N	\N
10111	10157	PROJECT	10000	sycliqscrum	\N	\N
10112	10160	SCHEME	10101	TPRI: Project Management Workflow Scheme	\N	\N
10113	10162	PROJECT	10001	tpri	\N	\N
10114	10162	USER	syedawase	syedawase	1	Jira Internal Directory
10115	10163	PROJECT	10001	tpri	\N	\N
10116	10163	USER	syedawase	syedawase	1	Jira Internal Directory
10117	10164	PROJECT	10001	tpri	\N	\N
10118	10164	USER	syedawase	syedawase	1	Jira Internal Directory
10119	10165	USER	syedawase	syedawase	1	Jira Internal Directory
10120	10168	SCHEME	10102	TRUES: Software Simplified Workflow Scheme	\N	\N
10121	10169	PROJECT	10002	truestate	\N	\N
10122	10169	USER	syedawase	syedawase	1	Jira Internal Directory
10123	10170	BOARD	2	TRUES board		
10124	10171	SCHEME	0	Default Permission Scheme	\N	\N
10125	10172	SCHEME	10000	Default software scheme	\N	\N
10126	10173	USER	syedawase	syedawase	1	Jira Internal Directory
10127	10174	USER	syedawase	syedawase	1	Jira Internal Directory
10128	10175	USER	syedawase	syedawase	1	Jira Internal Directory
10129	10175	PROJECT	10000	sycliqscrum	\N	\N
10130	10176	BOARD	3	myboard		
\.


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_log (id, remote_address, created, author_key, summary, category, object_type, object_id, object_name, object_parent_id, object_parent_name, author_type, event_source_name, description, long_description, search_field) FROM stdin;
10000	0:0:0:0:0:0:0:1	2020-03-27 05:21:13.641+05:30	\N	Group created	group management	GROUP	\N	jira-software-users	1	Jira Internal Directory	0		\N		0:0:0:0:0:0:0:1 group created management jira-software-users jira internal directory
10001	0:0:0:0:0:0:0:1	2020-03-27 05:21:13.775+05:30	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		0:0:0:0:0:0:0:1 global permission added permissions browse users jira-software-users
10002	0:0:0:0:0:0:0:1	2020-03-27 05:21:14.019+05:30	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		0:0:0:0:0:0:0:1 global permission added permissions manage group filter subscriptions jira-software-users
10003	0:0:0:0:0:0:0:1	2020-03-27 05:21:14.107+05:30	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		0:0:0:0:0:0:0:1 global permission added permissions bulk change jira-software-users
10004	0:0:0:0:0:0:0:1	2020-03-27 05:21:14.199+05:30	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		0:0:0:0:0:0:0:1 global permission added permissions create shared objects jira-software-users
10005	0:0:0:0:0:0:0:1	2020-03-27 05:21:14.267+05:30	\N	New license added	system	LICENSE	0	SEN-L15207189	0	License SEN	0		\N		0:0:0:0:0:0:0:1 new license added system sen-l15207189 sen individual 26/mar/20 jira software (server): evaluation b5o4-qavf-bfkt-alqh unlimited -1
10006	0:0:0:0:0:0:0:1	2020-03-27 05:23:36.144+05:30	\N	User created	user management	USER	syedawase	syedawase	1	Jira Internal Directory	0		\N		0:0:0:0:0:0:0:1 user created management syedawase jira internal directory syed awase khirni awase008@gmail.com active
10007	0:0:0:0:0:0:0:1	2020-03-27 05:23:36.208+05:30	\N	User added to group	group management	GROUP	\N	jira-administrators	1	Jira Internal Directory	0		\N		0:0:0:0:0:0:0:1 user added to group management jira-administrators jira internal directory syedawase
10008	0:0:0:0:0:0:0:1	2020-03-27 05:23:36.272+05:30	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		0:0:0:0:0:0:0:1 global permission added permissions manage group filter subscriptions jira-administrators
10009	0:0:0:0:0:0:0:1	2020-03-27 05:23:36.277+05:30	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		0:0:0:0:0:0:0:1 global permission added permissions bulk change jira-administrators
10010	0:0:0:0:0:0:0:1	2020-03-27 05:23:36.282+05:30	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		0:0:0:0:0:0:0:1 global permission added permissions browse users jira-administrators
10011	0:0:0:0:0:0:0:1	2020-03-27 05:23:36.288+05:30	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		0:0:0:0:0:0:0:1 global permission added permissions create shared objects jira-administrators
10012	0:0:0:0:0:0:0:1	2020-03-27 05:23:36.296+05:30	\N	User added to group	group management	GROUP	\N	jira-software-users	1	Jira Internal Directory	0		\N		0:0:0:0:0:0:0:1 user added to group management jira-software-users jira internal directory syedawase
10100	0:0:0:0:0:0:0:1	2020-03-27 05:23:52.72+05:30	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10100	Sprint	\N	\N	0		\N		0:0:0:0:0:0:0:1 custom field created fields sprint jira software
10101	0:0:0:0:0:0:0:1	2020-03-27 05:23:53.522+05:30	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10101	Epic Link	\N	\N	0		\N		0:0:0:0:0:0:0:1 custom field created fields epic link choose an to assign this issue to. relationship
10102	0:0:0:0:0:0:0:1	2020-03-27 05:23:53.592+05:30	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10102	Epic Status	\N	\N	0		\N		0:0:0:0:0:0:0:1 custom field created fields epic status for jira software use only. of
10103	0:0:0:0:0:0:0:1	2020-03-27 05:23:53.65+05:30	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10103	Epic Name	\N	\N	0		\N		0:0:0:0:0:0:0:1 custom field created fields epic name provide a short to identify this epic. of
10104	0:0:0:0:0:0:0:1	2020-03-27 05:23:53.742+05:30	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10104	Epic Color	\N	\N	0		\N		0:0:0:0:0:0:0:1 custom field created fields epic color colour for jira software use only. of
10105	0:0:0:0:0:0:0:1	2020-03-27 05:23:53.995+05:30	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10105	Rank	\N	\N	0		\N		0:0:0:0:0:0:0:1 custom field created fields rank global for jira software use only.
10106	0:0:0:0:0:0:0:1	2020-03-27 05:23:57.473+05:30	\N	Issue type created	issue types	ISSUE_TYPE	10000	Epic	\N	\N	0		\N		0:0:0:0:0:0:0:1 issue type created types epic
10107	0:0:0:0:0:0:0:1	2020-03-27 05:23:57.519+05:30	\N	Issue type created	issue types	ISSUE_TYPE	10001	Story	\N	\N	0		\N		0:0:0:0:0:0:0:1 issue type created types story
10108	0:0:0:0:0:0:0:1	2020-03-27 05:23:57.547+05:30	\N	Custom field created	fields	CUSTOM_FIELD	customfield_10106	Story Points	\N	\N	0		\N		0:0:0:0:0:0:0:1 custom field created fields story points measurement of complexity and/or size a requirement. number
10109	0:0:0:0:0:0:0:1	2020-03-27 05:23:58.309+05:30	\N	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	0		\N		0:0:0:0:0:0:0:1 permission scheme updated permissions default manage sprints project role administrators
10110	0:0:0:0:0:0:0:1	2020-03-27 05:23:58.352+05:30	\N	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	0		\N		0:0:0:0:0:0:0:1 permission scheme updated permissions default manage sprints project role administrators
10111	0:0:0:0:0:0:0:1	2020-03-27 05:23:58.361+05:30	\N	Permission scheme updated	permissions	SCHEME	0	Default Permission Scheme	\N	\N	0		\N		0:0:0:0:0:0:0:1 permission scheme updated permissions default manage sprints project role administrators
10112	0:0:0:0:0:0:0:1	2020-03-27 05:26:12.244+05:30	syedawase	Workflow created	workflows	WORKFLOW	Software Simplified Workflow for Project SYC	Software Simplified Workflow for Project SYC	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow created workflows software simplified for project syc generated by jira version 7.13.0-daily20180924115437. this is managed internally software. do not manually modify workflow. to in progress done create (to do) (in progress) (done)
10113	0:0:0:0:0:0:0:1	2020-03-27 05:26:12.289+05:30	syedawase	Workflow scheme created	workflows	SCHEME	10100	SYC: Software Simplified Workflow Scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow scheme created workflows syc: software simplified generated by jira version 7.13.0-daily20180924115437. this is managed internally software. do not manually modify scheme.
10114	0:0:0:0:0:0:0:1	2020-03-27 05:26:12.324+05:30	syedawase	Workflow scheme added to project	workflows	PROJECT	10000	sycliqscrum	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow scheme added to project workflows sycliqscrum syc: software simplified
10115	0:0:0:0:0:0:0:1	2020-03-27 05:26:12.873+05:30	syedawase	Filter created	filters	FILTER	10000	Filter for SYC board	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 filter created filters for syc board jira internal directory sycliqscrum [] [project: (view)] {project = "syc"} order by rank asc
10116	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.538+05:30	syedawase	Board created	boards 	BOARD	1	SYC board			1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 board created boards syc
10117	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.676+05:30	syedawase	Permission scheme created	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme created permissions default software for projects.
10118	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.693+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software browse projects application access
10119	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.761+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software create issues application access
10120	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.769+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software edit issues application access
10121	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.776+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software assign issues application access
10122	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.782+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software resolve issues application access
10123	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.788+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software add comments application access
10124	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.794+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software delete issues project role administrators
10125	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.803+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software assignable user application access
10126	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.81+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software close issues application access
10127	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.819+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software create attachments application access
10128	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.828+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software work on issues application access
10129	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.836+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software link issues application access
10130	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.843+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software administer projects project role administrators
10131	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.861+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software move issues application access
10132	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.868+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software schedule issues application access
10133	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.882+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software modify reporter project role administrators
10134	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.908+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software view voters and watchers application access
10135	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.917+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software manage watchers project role administrators
10136	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.927+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software edit all comments project role administrators
10137	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.935+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software edit own comments application access
10138	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.942+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software delete all comments project role administrators
10139	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.951+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software delete own comments application access
10140	0:0:0:0:0:0:0:1	2020-03-27 05:26:13.971+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software delete all attachments project role administrators
10141	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.004+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software delete own attachments application access
10142	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.011+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software edit own worklogs application access
10143	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.018+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software edit all worklogs project role administrators
10170	0:0:0:0:0:0:0:1	2020-03-27 23:28:07.178+05:30	syedawase	Board created	boards 	BOARD	2	TRUES board			1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 board created boards trues
10144	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.026+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software delete own worklogs application access
10145	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.037+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software delete all worklogs project role administrators
10146	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.047+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software view read-only workflow application access
10147	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.055+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software transition issues application access
10148	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.068+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software view development tools application access
10149	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.075+05:30	syedawase	Permission scheme updated	permissions	SCHEME	10000	Default software scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme updated permissions default software manage sprints application access
10150	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.095+05:30	syedawase	Permission scheme removed from project	permissions	PROJECT	10000	sycliqscrum	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme removed from project permissions sycliqscrum default
10151	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.13+05:30	syedawase	Permission scheme added to project	permissions	PROJECT	10000	sycliqscrum	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme added to project permissions sycliqscrum default software
10152	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.251+05:30	syedawase	Project created	projects	PROJECT	10000	sycliqscrum	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 project created projects sycliqscrum jira internal directory syc unassigned
10153	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.737+05:30	syedawase	Project roles changed	projects	PROJECT_ROLE	10100	Developers	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 project roles changed projects developers sycliqscrum
10154	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.909+05:30	syedawase	Project version created	projects	VERSION	10000	Version 1.0	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 project version created projects 1.0 sycliqscrum 2020-03-19
10155	0:0:0:0:0:0:0:1	2020-03-27 05:26:14.984+05:30	syedawase	Project version released	projects	VERSION	10000	Version 1.0	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 project version released projects 1.0 sycliqscrum
10156	0:0:0:0:0:0:0:1	2020-03-27 05:26:15.001+05:30	syedawase	Project version created	projects	VERSION	10001	Version 2.0	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 project version created projects 2.0 sycliqscrum 2020-04-02
10157	0:0:0:0:0:0:0:1	2020-03-27 05:26:15.008+05:30	syedawase	Project version created	projects	VERSION	10002	Version 3.0	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 project version created projects 3.0 sycliqscrum
10158	0:0:0:0:0:0:0:1	2020-03-27 05:30:14.165+05:30	syedawase	Workflow created	workflows	WORKFLOW	TPRI: Project Management Workflow	TPRI: Project Management Workflow	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow created workflows tpri: project management to do in progress done create (to do) start -> progress) done) stop (in reopen (done and
10159	0:0:0:0:0:0:0:1	2020-03-27 05:30:14.188+05:30	syedawase	Workflow scheme created	workflows	SCHEME	10101	TPRI: Project Management Workflow Scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow scheme created workflows tpri: project management
10160	0:0:0:0:0:0:0:1	2020-03-27 05:30:14.2+05:30	syedawase	Workflow scheme added to project	workflows	PROJECT	10001	tpri	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow scheme added to project workflows tpri tpri: management
10161	0:0:0:0:0:0:0:1	2020-03-27 05:30:14.969+05:30	syedawase	Workflow updated	workflows	WORKFLOW	TPRI: Project Management Workflow	TPRI: Project Management Workflow	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow updated workflows tpri: project management
10162	0:0:0:0:0:0:0:1	2020-03-27 05:30:15.106+05:30	syedawase	Filter created	filters	FILTER	10001	Open and unassigned (TPRI)	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 filter created filters open and unassigned (tpri) tpri jira internal directory [] [project: (view)] {project = 10001} {statuscategory != "done"} {assignee empty} order by priority desc
10163	0:0:0:0:0:0:0:1	2020-03-27 05:30:15.15+05:30	syedawase	Filter created	filters	FILTER	10002	Due this week (TPRI)	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 filter created filters due this week (tpri) tpri jira internal directory [] [project: (view)] {project = 10001} and {duedate >= startofweek()} <= endofweek()} order by priority desc
10164	0:0:0:0:0:0:0:1	2020-03-27 05:30:15.181+05:30	syedawase	Filter created	filters	FILTER	10003	Overdue (TPRI)	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 filter created filters overdue (tpri) tpri jira internal directory [] [project: (view)] {project = 10001} and {statuscategory != "done"} {duedate < now()} order by duedate desc
10165	0:0:0:0:0:0:0:1	2020-03-27 05:30:15.239+05:30	syedawase	Project created	projects	PROJECT	10001	tpri	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 project created projects tpri jira internal directory unassigned
10166	0:0:0:0:0:0:0:1	2020-03-27 23:28:04.778+05:30	syedawase	Workflow created	workflows	WORKFLOW	Software Simplified Workflow for Project TRUES	Software Simplified Workflow for Project TRUES	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow created workflows software simplified for project trues generated by jira version 7.13.0-daily20180924115437. this is managed internally software. do not manually modify workflow. backlog selected development in progress done create (backlog) (selected development) (in progress) (done)
10167	0:0:0:0:0:0:0:1	2020-03-27 23:28:04.853+05:30	syedawase	Workflow scheme created	workflows	SCHEME	10102	TRUES: Software Simplified Workflow Scheme	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow scheme created workflows trues: software simplified generated by jira version 7.13.0-daily20180924115437. this is managed internally software. do not manually modify scheme.
10168	0:0:0:0:0:0:0:1	2020-03-27 23:28:04.886+05:30	syedawase	Workflow scheme added to project	workflows	PROJECT	10002	truestate	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 workflow scheme added to project workflows truestate trues: software simplified
10169	0:0:0:0:0:0:0:1	2020-03-27 23:28:06.37+05:30	syedawase	Filter created	filters	FILTER	10004	Filter for TRUES board	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 filter created filters for trues board truestate jira internal directory [] [project: (view)] {project = "trues"} order by rank asc
10171	0:0:0:0:0:0:0:1	2020-03-27 23:28:07.428+05:30	syedawase	Permission scheme removed from project	permissions	PROJECT	10002	truestate	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme removed from project permissions truestate default
10172	0:0:0:0:0:0:0:1	2020-03-27 23:28:07.454+05:30	syedawase	Permission scheme added to project	permissions	PROJECT	10002	truestate	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 permission scheme added to project permissions truestate default software
10173	0:0:0:0:0:0:0:1	2020-03-27 23:28:07.69+05:30	syedawase	Project created	projects	PROJECT	10002	truestate	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 project created projects truestate jira internal directory trues unassigned
10174	0:0:0:0:0:0:0:1	2020-03-28 01:39:27.812+05:30	syedawase	Dashboard created	dashboards	DASHBOARD	10100	aicydashboard	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 dashboard created dashboards aicydashboard jira internal directory
10175	0:0:0:0:0:0:0:1	2020-03-28 03:07:01.392+05:30	syedawase	Filter created	filters	FILTER	10005	Filter for myboard	\N	\N	1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 filter created filters for myboard jira internal directory sycliqscrum [] [project: (view)] {project = "syc"} order by rank asc
10176	0:0:0:0:0:0:0:1	2020-03-28 03:07:01.858+05:30	syedawase	Board created	boards 	BOARD	3	myboard			1		\N		syedawase syed awase khirni 0:0:0:0:0:0:0:1 board created boards myboard
\.


--
-- Data for Name: avatar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avatar (id, filename, contenttype, avatartype, owner, systemavatar) FROM stdin;
10000	codegeist.png	image/png	project	\N	1
10001	bird.svg	image/svg+xml	project	\N	1
10002	jm_black.png	image/png	project	\N	1
10003	jm_brown.png	image/png	project	\N	1
10004	jm_orange.png	image/png	project	\N	1
10005	jm_red.png	image/png	project	\N	1
10006	jm_white.png	image/png	project	\N	1
10007	jm_yellow.png	image/png	project	\N	1
10008	monster.png	image/png	project	\N	1
10009	nature.svg	image/svg+xml	project	\N	1
10010	koala.svg	image/svg+xml	project	\N	1
10011	rocket.svg	image/svg+xml	project	\N	1
10100	Avatar-1.png	image/png	user	\N	1
10101	Avatar-2.png	image/png	user	\N	1
10102	Avatar-3.png	image/png	user	\N	1
10103	Avatar-4.png	image/png	user	\N	1
10104	Avatar-5.png	image/png	user	\N	1
10105	Avatar-6.png	image/png	user	\N	1
10106	Avatar-7.png	image/png	user	\N	1
10107	Avatar-8.png	image/png	user	\N	1
10108	Avatar-9.png	image/png	user	\N	1
10109	Avatar-10.png	image/png	user	\N	1
10110	Avatar-11.png	image/png	user	\N	1
10111	Avatar-12.png	image/png	user	\N	1
10112	Avatar-13.png	image/png	user	\N	1
10113	Avatar-14.png	image/png	user	\N	1
10114	Avatar-15.png	image/png	user	\N	1
10115	Avatar-16.png	image/png	user	\N	1
10116	Avatar-17.png	image/png	user	\N	1
10117	Avatar-18.png	image/png	user	\N	1
10118	Avatar-19.png	image/png	user	\N	1
10119	Avatar-20.png	image/png	user	\N	1
10120	Avatar-21.png	image/png	user	\N	1
10121	Avatar-22.png	image/png	user	\N	1
10122	Avatar-default.svg	image/svg+xml	user	\N	1
10123	Avatar-unknown.png	image/png	user	\N	1
10200	cloud.svg	image/svg+xml	project	\N	1
10201	spanner.svg	image/svg+xml	project	\N	1
10202	cd.svg	image/svg+xml	project	\N	1
10203	money.svg	image/svg+xml	project	\N	1
10204	mouse-hand.svg	image/svg+xml	project	\N	1
10205	yeti.svg	image/svg+xml	project	\N	1
10206	power.svg	image/svg+xml	project	\N	1
10207	refresh.svg	image/svg+xml	project	\N	1
10208	phone.svg	image/svg+xml	project	\N	1
10209	settings.svg	image/svg+xml	project	\N	1
10210	storm.svg	image/svg+xml	project	\N	1
10211	plane.svg	image/svg+xml	project	\N	1
10300	genericissue.svg	image/svg+xml	issuetype	\N	1
10303	bug.svg	image/svg+xml	issuetype	\N	1
10304	defect.svg	image/svg+xml	issuetype	\N	1
10306	documentation.svg	image/svg+xml	issuetype	\N	1
10307	epic.svg	image/svg+xml	issuetype	\N	1
10308	exclamation.svg	image/svg+xml	issuetype	\N	1
10309	design_task.svg	image/svg+xml	issuetype	\N	1
10310	improvement.svg	image/svg+xml	issuetype	\N	1
10311	newfeature.svg	image/svg+xml	issuetype	\N	1
10312	remove_feature.svg	image/svg+xml	issuetype	\N	1
10313	requirement.svg	image/svg+xml	issuetype	\N	1
10314	sales.svg	image/svg+xml	issuetype	\N	1
10315	story.svg	image/svg+xml	issuetype	\N	1
10316	subtask.svg	image/svg+xml	issuetype	\N	1
10318	task.svg	image/svg+xml	issuetype	\N	1
10320	question.svg	image/svg+xml	issuetype	\N	1
10321	development_task.svg	image/svg+xml	issuetype	\N	1
10322	feedback.svg	image/svg+xml	issuetype	\N	1
10323	request_access.svg	image/svg+xml	issuetype	\N	1
10324	default.svg	image/svg+xml	project	\N	1
10325	code.svg	image/svg+xml	project	\N	1
10326	coffee.svg	image/svg+xml	project	\N	1
10327	design.svg	image/svg+xml	project	\N	1
10328	drill.svg	image/svg+xml	project	\N	1
10329	food.svg	image/svg+xml	project	\N	1
10330	notes.svg	image/svg+xml	project	\N	1
10331	red-flag.svg	image/svg+xml	project	\N	1
10332	science.svg	image/svg+xml	project	\N	1
10333	support.svg	image/svg+xml	project	\N	1
10334	bull.svg	image/svg+xml	user	\N	1
10335	cat.svg	image/svg+xml	user	\N	1
10336	dog.svg	image/svg+xml	user	\N	1
10337	female_1.svg	image/svg+xml	user	\N	1
10338	female_2.svg	image/svg+xml	user	\N	1
10339	female_3.svg	image/svg+xml	user	\N	1
10340	female_4.svg	image/svg+xml	user	\N	1
10341	ghost.svg	image/svg+xml	user	\N	1
10342	male_1.svg	image/svg+xml	user	\N	1
10343	male_2.svg	image/svg+xml	user	\N	1
10344	male_3.svg	image/svg+xml	user	\N	1
10345	male_4.svg	image/svg+xml	user	\N	1
10346	male_5.svg	image/svg+xml	user	\N	1
10347	male_6.svg	image/svg+xml	user	\N	1
10348	male_8.svg	image/svg+xml	user	\N	1
10349	owl.svg	image/svg+xml	user	\N	1
10350	pirate.svg	image/svg+xml	user	\N	1
10351	robot.svg	image/svg+xml	user	\N	1
10352	vampire.svg	image/svg+xml	user	\N	1
\.


--
-- Data for Name: board; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.board (id, jql) FROM stdin;
\.


--
-- Data for Name: boardproject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boardproject (board_id, project_id) FROM stdin;
\.


--
-- Data for Name: changegroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.changegroup (id, issueid, author, created) FROM stdin;
10000	10010	syedawase	2020-03-23 08:18:14.55+05:30
10001	10011	syedawase	2020-03-24 05:43:14.555+05:30
10002	10009	syedawase	2020-03-19 20:16:14.55+05:30
10003	10012	syedawase	2020-03-19 20:16:14.555+05:30
10004	10013	syedawase	2020-03-26 01:16:14.556+05:30
10005	10014	syedawase	2020-03-19 20:16:14.558+05:30
10006	10014	syedawase	2020-03-22 01:00:14.558+05:30
10007	10014	syedawase	2020-03-24 10:52:14.558+05:30
10008	10015	syedawase	2020-03-05 20:06:14.558+05:30
10009	10015	syedawase	2020-03-19 20:16:14.558+05:30
10010	10015	syedawase	2020-03-20 01:00:14.558+05:30
10011	10015	syedawase	2020-03-21 02:48:14.558+05:30
10012	10016	syedawase	2020-03-19 20:16:14.559+05:30
10013	10016	syedawase	2020-03-20 07:00:14.559+05:30
10014	10016	syedawase	2020-03-23 12:52:14.559+05:30
10015	10017	syedawase	2020-03-05 20:06:14.559+05:30
10016	10017	syedawase	2020-03-06 16:36:14.56+05:30
10017	10018	syedawase	2020-03-05 20:06:14.56+05:30
10018	10018	syedawase	2020-03-09 15:30:14.56+05:30
10019	10019	syedawase	2020-03-05 20:06:14.56+05:30
10020	10019	syedawase	2020-03-11 04:05:14.56+05:30
10021	10020	syedawase	2020-03-05 20:06:14.561+05:30
10022	10020	syedawase	2020-03-13 10:43:14.561+05:30
10023	10021	syedawase	2020-03-05 20:06:14.563+05:30
10024	10021	syedawase	2020-03-16 02:03:14.563+05:30
10025	10022	syedawase	2020-03-05 20:06:14.563+05:30
10026	10022	syedawase	2020-03-18 03:41:14.563+05:30
\.


--
-- Data for Name: changeitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.changeitem (id, groupid, fieldtype, field, oldvalue, oldstring, newvalue, newstring) FROM stdin;
10000	10000	jira	status	10000	To Do	3	In Progress
10001	10001	jira	status	10000	To Do	3	In Progress
10002	10002	custom	Sprint	\N		1	Sample Sprint 2
10003	10003	custom	Sprint	\N		1	Sample Sprint 2
10004	10004	custom	Sprint	\N		1	Sample Sprint 2
10005	10005	custom	Sprint	\N		1	Sample Sprint 2
10006	10006	jira	status	10000	To Do	3	In Progress
10007	10007	jira	status	3	In Progress	10001	Done
10008	10008	custom	Sprint	\N		2	Sample Sprint 1
10009	10009	custom	Sprint	2	Sample Sprint 1	2, 1	Sample Sprint 1, Sample Sprint 2
10010	10010	jira	status	10000	To Do	3	In Progress
10011	10011	jira	status	3	In Progress	10001	Done
10012	10012	custom	Sprint	\N		1	Sample Sprint 2
10013	10013	jira	status	10000	To Do	3	In Progress
10014	10014	jira	status	3	In Progress	10001	Done
10015	10015	custom	Sprint	\N		2	Sample Sprint 1
10016	10016	jira	status	10000	To Do	10001	Done
10017	10017	custom	Sprint	\N		2	Sample Sprint 1
10018	10018	jira	status	10000	To Do	10001	Done
10019	10019	custom	Sprint	\N		2	Sample Sprint 1
10020	10020	jira	status	10000	To Do	10001	Done
10021	10021	custom	Sprint	\N		2	Sample Sprint 1
10022	10022	jira	status	10000	To Do	10001	Done
10023	10023	custom	Sprint	\N		2	Sample Sprint 1
10024	10024	jira	status	10000	To Do	10001	Done
10025	10025	custom	Sprint	\N		2	Sample Sprint 1
10026	10026	jira	status	10000	To Do	10001	Done
\.


--
-- Data for Name: clusteredjob; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusteredjob (id, job_id, job_runner_key, sched_type, interval_millis, first_run, cron_expression, time_zone, next_run, version, parameters) FROM stdin;
12511	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler	I	3600000	1585267818685	\N	\N	1587004771439	460	\N
12902	data-provider-poll	com.atlassian.jira.plugin.devstatus.provider.DevSummaryUpdateJob	I	300000	1586957936835	\N	\N	1587002371495	149	\N
12903	data-provider-cleanup	com.atlassian.jira.plugin.devstatus.provider.DataProviderCleanupJob	I	1800000	1586957937031	\N	\N	1587002971525	26	\N
12910	CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.connect.InstallGlancesJobHandler	I	3600000	1586957984690	\N	\N	1587004792910	14	\N
12909	CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.ping.RefreshConnectionStatusJobHandler	I	3600000	1586957986187	\N	\N	1587004792912	14	\N
12914	com.atlassian.whisper.plugin.fetch.FetchJob	com.atlassian.whisper.plugin.fetch.FetchJob	I	21600000	1586961563347	\N	\N	1587004763347	3	\N
12900	analytics-collection	com.atlassian.plugins.authentication.impl.analytics.StatisticsCollectionService	C	\N	\N	0 0 23 * * ?	\N	1587006000000	1	\N
12908	CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.connect.UpdateGlancesDataJobHandler	I	60000	1586957985101	\N	\N	1587002332884	739	\N
12911	e54dc63c-938a-400c-9d9f-0fd8792215c0	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1586957963278	\N	\N	1587002332885	739	\N
12712	706f6248-e73e-4ec1-91d3-abbacb54f832	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1586212906401	\N	\N	1587002371327	12502	\N
12414	com.atlassian.jira.service.JiraService:10001	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 20 0/12 * * ?	\N	1587010800000	41	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002711
12912	com.atlassian.jira.analytics.scheduler.AnalyticsScheduler	com.atlassian.jira.analytics.scheduler.AnalyticsScheduler	I	604800000	1587044363287	\N	\N	1587044363287	1	\N
12913	CompatibilityPluginScheduler.JobId.Service Provider Session Remover	CompatibilityPluginScheduler.JobRunnerKey.Service Provider Session Remover	I	28800000	1586986763327	\N	\N	1587015563328	2	\N
10001	com.atlassian.jira.service.JiraService:10002	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 30 5 * * ?	\N	1587029400000	23	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002712
12507	PluginUpdateCheckJob-job	PluginUpdateCheckJob-runner	I	86400000	1585297334591	\N	\N	1587044371451	21	\N
12508	InstanceTopologyJob-job	InstanceTopologyJob-runner	I	86400000	1585310550546	\N	\N	1587044371464	21	\N
12915	applink-status-analytics-job	com.atlassian.applinks.analytics.ApplinkStatusJob	I	86400000	\N	\N	\N	1587044371672	2	\N
12901	assertionId-cleanup	com.atlassian.plugins.authentication.impl.web.saml.AssertionValidationService	I	3600000	1586961527065	\N	\N	1587004727068	13	\N
12905	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	I	3600000	1586961552727	\N	\N	1587004752736	13	\N
12506	PluginRequestCheckJob-job	PluginRequestCheckJob-runner	I	3600000	1585266854597	\N	\N	1587004771439	460	\N
12501	27040277-d3c7-479f-bd69-30ca6b7328b1	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1585266830902	\N	\N	1587002371283	27371	\N
12615	86443f8d-3cde-4c0c-865f-eb5f506054c4	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1586090523752	\N	\N	1587002371359	14508	\N
12813	8291672e-c4b4-4088-bc93-1a0f0f74f1fa	com.atlassian.jira.plugin.ext.bamboo.service.PlanStatusUpdateJob	I	60000	1586903432945	\N	\N	1587002371408	1028	\N
12502	CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.greenhopper.service.lexorank.balance.LexoRankBalancePluginJob	I	60000	1585266836496	\N	\N	1587002371746	27371	\N
12904	com.atlassian.diagnostics.internal.analytics.DailyAlertAnalyticsJob	DailyAlertAnalyticsJob	C	\N	\N	0 19 * * * ?	\N	1587003540000	13	\N
12505	LocalPluginLicenseNotificationJob-job	LocalPluginLicenseNotificationJob-runner	I	86400000	1585266854591	\N	\N	1587044371447	21	\N
\.


--
-- Data for Name: clusterlockstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusterlockstatus (id, lock_name, locked_by_node, update_time) FROM stdin;
\.


--
-- Data for Name: clustermessage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clustermessage (id, source_node, destination_node, claimed_by_node, message, message_time) FROM stdin;
\.


--
-- Data for Name: clusternode; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusternode (node_id, node_state, "timestamp", ip, cache_listener_port, node_build_number, node_version) FROM stdin;
\.


--
-- Data for Name: clusternodeheartbeat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusternodeheartbeat (node_id, heartbeat_time, database_time) FROM stdin;
\.


--
-- Data for Name: clusterupgradestate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clusterupgradestate (id, database_time, cluster_build_number, cluster_version, state, order_number) FROM stdin;
\.


--
-- Data for Name: columnlayout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.columnlayout (id, username, searchrequest) FROM stdin;
10000	\N	\N
\.


--
-- Data for Name: columnlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.columnlayoutitem (id, columnlayout, fieldidentifier, horizontalposition) FROM stdin;
10000	10000	issuekey	0
10001	10000	status	1
10002	10000	created	2
10003	10000	updated	3
10004	10000	customfield_10000	4
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.component (id, project, cname, description, url, lead, assigneetype) FROM stdin;
\.


--
-- Data for Name: configurationcontext; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.configurationcontext (id, projectcategory, project, customfield, fieldconfigscheme) FROM stdin;
10000	\N	\N	issuetype	10000
10100	\N	\N	priority	10100
10200	\N	\N	customfield_10000	10200
10300	\N	\N	customfield_10100	10300
10301	\N	\N	customfield_10101	10301
10302	\N	\N	customfield_10105	10302
10303	\N	\N	customfield_10103	10303
10304	\N	\N	customfield_10102	10304
10305	\N	\N	customfield_10104	10305
10306	\N	\N	customfield_10106	10306
10307	\N	10000	issuetype	10307
10308	\N	10001	issuetype	10308
10309	\N	10002	issuetype	10309
\.


--
-- Data for Name: customfield; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customfield (id, cfkey, customfieldtypekey, customfieldsearcherkey, cfname, description, defaultvalue, fieldtype, project, issuetype) FROM stdin;
10000	\N	com.atlassian.jira.plugins.jira-development-integration-plugin:devsummary	com.atlassian.jira.plugins.jira-development-integration-plugin:devsummarysearcher	Development	Development Summary Field for Jira Software use only.	\N	\N	\N	\N
10100	\N	com.pyxis.greenhopper.jira:gh-sprint	com.pyxis.greenhopper.jira:gh-sprint-searcher	Sprint	Jira Software sprint field	\N	\N	\N	\N
10101	\N	com.pyxis.greenhopper.jira:gh-epic-link	com.pyxis.greenhopper.jira:gh-epic-link-searcher	Epic Link	Choose an epic to assign this issue to.	\N	\N	\N	\N
10102	\N	com.pyxis.greenhopper.jira:gh-epic-status	com.pyxis.greenhopper.jira:gh-epic-status-searcher	Epic Status	Epic Status field for Jira Software use only.	\N	\N	\N	\N
10103	\N	com.pyxis.greenhopper.jira:gh-epic-label	com.pyxis.greenhopper.jira:gh-epic-label-searcher	Epic Name	Provide a short name to identify this epic.	\N	\N	\N	\N
10104	\N	com.pyxis.greenhopper.jira:gh-epic-color	com.pyxis.greenhopper.jira:gh-epic-color-searcher	Epic Color	Epic Colour field for Jira Software use only.	\N	\N	\N	\N
10105	\N	com.pyxis.greenhopper.jira:gh-lexo-rank	com.pyxis.greenhopper.jira:gh-lexo-rank-searcher	Rank	Global rank field for Jira Software use only.	\N	\N	\N	\N
10106	\N	com.atlassian.jira.plugin.system.customfieldtypes:float	com.atlassian.jira.plugin.system.customfieldtypes:exactnumber	Story Points	Measurement of complexity and/or size of a requirement.	\N	\N	\N	\N
\.


--
-- Data for Name: customfieldoption; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customfieldoption (id, customfield, customfieldconfig, parentoptionid, sequence, customvalue, optiontype, disabled) FROM stdin;
10000	10102	10304	\N	0	To Do	\N	N
10001	10102	10304	\N	1	In Progress	\N	N
10002	10102	10304	\N	2	Done	\N	N
\.


--
-- Data for Name: customfieldvalue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customfieldvalue (id, issue, customfield, updated, parentkey, stringvalue, numbervalue, textvalue, datevalue, valuetype) FROM stdin;
10000	10000	10106	1585266975486	\N	\N	2	\N	\N	\N
10001	10001	10106	1585266976762	\N	\N	2	\N	\N	\N
10002	10002	10106	1585266976869	\N	\N	5	\N	\N	\N
10003	10003	10106	1585266977009	\N	\N	5	\N	\N	\N
10004	10004	10106	1585266977103	\N	\N	1	\N	\N	\N
10005	10005	10106	1585266977630	\N	\N	1	\N	\N	\N
10006	10008	10106	1585266978055	\N	\N	3	\N	\N	\N
10007	10009	10106	1585266978322	\N	\N	5	\N	\N	\N
10008	10009	10100	1585266978326	\N	1	\N	\N	\N	\N
10009	10012	10100	1585266979440	\N	1	\N	\N	\N	\N
10010	10013	10106	1585266979576	\N	\N	3	\N	\N	\N
10011	10013	10100	1585266979580	\N	1	\N	\N	\N	\N
10012	10014	10106	1585266979852	\N	\N	4	\N	\N	\N
10013	10014	10100	1585266979855	\N	1	\N	\N	\N	\N
10014	10015	10106	1585266980058	\N	\N	2	\N	\N	\N
10015	10015	10100	1585266980061	\N	1	\N	\N	\N	\N
10016	10015	10100	1585266980061	\N	2	\N	\N	\N	\N
10017	10016	10100	1585266980227	\N	1	\N	\N	\N	\N
10018	10017	10106	1585266980366	\N	\N	3	\N	\N	\N
10019	10017	10100	1585266980371	\N	2	\N	\N	\N	\N
10020	10018	10106	1585266980506	\N	\N	5	\N	\N	\N
10021	10018	10100	1585266980515	\N	2	\N	\N	\N	\N
10022	10019	10106	1585266980749	\N	\N	3	\N	\N	\N
10023	10019	10100	1585266980756	\N	2	\N	\N	\N	\N
10024	10020	10106	1585266980916	\N	\N	1	\N	\N	\N
10025	10020	10100	1585266980921	\N	2	\N	\N	\N	\N
10026	10021	10106	1585266981037	\N	\N	2	\N	\N	\N
10027	10021	10100	1585266981041	\N	2	\N	\N	\N	\N
10028	10022	10106	1585266981131	\N	\N	2	\N	\N	\N
10029	10022	10100	1585266981135	\N	2	\N	\N	\N	\N
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
1	crowd-embedded	crowd-embedded	2013-02-28 11:57:51.302+05:30	2013-02-28 11:57:51.302+05:30	1		CROWD	X
\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_application_address (application_id, remote_address, encoded_address_binary, remote_address_mask) FROM stdin;
\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type, directory_position) FROM stdin;
1	Jira Internal Directory	jira internal directory	2013-02-28 11:57:51.308+05:30	2013-02-28 11:57:51.308+05:30	1	Jira default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL	0
\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory_attribute (directory_id, attribute_name, attribute_value) FROM stdin;
1	user_encryption_method	atlassian-security
\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory_operation (directory_id, operation_type) FROM stdin;
1	CREATE_GROUP
1	CREATE_ROLE
1	CREATE_USER
1	DELETE_GROUP
1	DELETE_ROLE
1	DELETE_USER
1	UPDATE_GROUP
1	UPDATE_GROUP_ATTRIBUTE
1	UPDATE_ROLE
1	UPDATE_ROLE_ATTRIBUTE
1	UPDATE_USER
1	UPDATE_USER_ATTRIBUTE
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, lower_description, group_type, directory_id) FROM stdin;
10000	jira-administrators	jira-administrators	1	0	2013-02-28 11:57:51.326+05:30	2013-02-28 11:57:51.326+05:30		\N	GROUP	1
10010	jira-software-users	jira-software-users	1	0	2020-03-27 05:21:13.515+05:30	2020-03-27 05:21:13.515+05:30	\N	\N	GROUP	1
\.


--
-- Data for Name: cwd_group_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_group_attributes (id, group_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, directory_id) FROM stdin;
10000	10000	10000	GROUP_USER	\N	jira-administrators	jira-administrators	syedawase	syedawase	1
10001	10010	10000	GROUP_USER	\N	jira-software-users	jira-software-users	syedawase	syedawase	1
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_user (id, directory_id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, credential, deleted_externally, external_id) FROM stdin;
10000	1	syedawase	syedawase	1	2020-03-27 05:23:35.313+05:30	2020-03-27 05:23:35.313+05:30	Syed	syed	Awase Khirni	awase khirni	Syed Awase Khirni	syed awase khirni	awase008@gmail.com	awase008@gmail.com	{PKCS5S2}Mq8dL4TJXUFxo5vke8mRkHwYGjSWryUFRLUEFXNgv9O1tR9NtIaoLnlUVfOMn2pU	\N	6023b23f-b48e-4c37-8b9f-f15ac045f35c
\.


--
-- Data for Name: cwd_user_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_user_attributes (id, user_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
10000	10000	1	requiresPasswordChange	false	false
10001	10000	1	invalidPasswordAttempts	0	0
10002	10000	1	passwordLastChanged	1585266815591	1585266815591
10003	10000	1	password.reset.request.expiry	1585353216170	1585353216170
10004	10000	1	password.reset.request.token	d1d732c530b451a6210a650b9333a4d15081dfa1	d1d732c530b451a6210a650b9333a4d15081dfa1
10100	10000	1	login.currentFailedCount	0	0
10103	10000	1	lastAuthenticated	1585506240077	1585506240077
10101	10000	1	login.lastLoginMillis	1585506240672	1585506240672
10104	10000	1	login.previousLoginMillis	1585339804695	1585339804695
10102	10000	1	login.count	4	4
\.


--
-- Data for Name: deadletter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deadletter (id, message_id, last_seen, mail_server_id, folder_name) FROM stdin;
\.


--
-- Data for Name: draftworkflowscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.draftworkflowscheme (id, name, description, workflow_scheme_id, last_modified_date, last_modified_user) FROM stdin;
\.


--
-- Data for Name: draftworkflowschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.draftworkflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
\.


--
-- Data for Name: entity_property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_property (id, entity_name, entity_id, property_key, created, updated, json_value) FROM stdin;
10000	ProjectProperty	10000	searchRequests	2020-03-27 05:26:14.213+05:30	2020-03-27 05:26:14.213+05:30	{"ids":[]}
10001	ProjectProperty	10001	searchRequests	2020-03-27 05:30:15.214+05:30	2020-03-27 05:30:15.214+05:30	{"ids":[10001,10002,10003]}
10002	ProjectProperty	10002	searchRequests	2020-03-27 23:28:07.682+05:30	2020-03-27 23:28:07.682+05:30	{"ids":[]}
\.


--
-- Data for Name: entity_property_index_document; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_property_index_document (id, plugin_key, module_key, entity_key, updated, document) FROM stdin;
10000	com.atlassian.jira.plugins.jira-development-integration-plugin	jira-issue-fusion-jql	IssueProperty	2019-07-08 21:19:01.442+05:30	<?xml version="1.0" encoding="UTF-8"?>\n<index-document-configuration entity-key="IssueProperty"><key property-key="development"><extract path="totalBuilds" type="NUMBER"/><extract path="failingbuilds" type="NUMBER"/><extract path="passedbuilds" type="NUMBER"/><extract path="buildstatus" type="STRING"/><extract path="openprs" type="NUMBER"/><extract path="mergedprs" type="NUMBER"/><extract path="declinedprs" type="NUMBER"/><extract path="prs" type="NUMBER"/><extract path="prstatus" type="STRING"/><extract path="reviews" type="NUMBER"/><extract path="openreviews" type="NUMBER"/><extract path="commits" type="NUMBER"/><extract path="totalDeployments" type="NUMBER"/><extract path="deployed" type="NUMBER"/><extract path="notDeployed" type="NUMBER"/><extract path="environment" type="STRING"/><extract path="totalBranches" type="NUMBER"/></key></index-document-configuration>
\.


--
-- Data for Name: entity_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entity_translation (id, entity_name, entity_id, locale, trans_name, trans_desc) FROM stdin;
\.


--
-- Data for Name: external_entities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.external_entities (id, name, entitytype) FROM stdin;
\.


--
-- Data for Name: externalgadget; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.externalgadget (id, gadget_xml) FROM stdin;
\.


--
-- Data for Name: favouriteassociations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favouriteassociations (id, username, entitytype, entityid, sequence) FROM stdin;
10000	syedawase	PortalPage	10100	0
\.


--
-- Data for Name: feature; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feature (id, feature_name, feature_type, user_key) FROM stdin;
10001	com.atlassian.jira.projects.issuenavigator	site	
10000	com.atlassian.jira.projects.ProjectCentricNavigation.Switch	site	
10100	com.atlassian.jira.agile.darkfeature.kanplan.enabled	site	
10101	com.atlassian.jira.agile.darkfeature.kanplan.epics.and.versions.enabled	site	
10102	com.atlassian.jira.agile.darkfeature.sprint.goal.enabled	site	
10103	com.atlassian.jira.agile.darkfeature.edit.closed.sprint.enabled	site	
10104	com.atlassian.jira.agile.darkfeature.splitissue	site	
\.


--
-- Data for Name: fieldconfigscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldconfigscheme (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Issue Type Scheme	Default issue type scheme is the list of global issue types. All newly created issue types will automatically be added to this scheme.	issuetype	\N
10100	Default priority scheme	This is default priority scheme used by all projects without any other scheme assigned	priority	\N
10200	Default Configuration Scheme for Development	Default configuration scheme generated by Jira	customfield_10000	\N
10300	Default Configuration Scheme for Sprint	Default configuration scheme generated by Jira	customfield_10100	\N
10301	Default Configuration Scheme for Epic Link	Default configuration scheme generated by Jira	customfield_10101	\N
10302	Default Configuration Scheme for Rank	Default configuration scheme generated by Jira	customfield_10105	\N
10303	Default Configuration Scheme for Epic Name	Default configuration scheme generated by Jira	customfield_10103	\N
10304	Default Configuration Scheme for Epic Status	Default configuration scheme generated by Jira	customfield_10102	\N
10305	Default Configuration Scheme for Epic Color	Default configuration scheme generated by Jira	customfield_10104	\N
10306	Default Configuration Scheme for Story Points	Default configuration scheme generated by Jira	customfield_10106	\N
10307	SYC: Scrum Issue Type Scheme	\N	issuetype	\N
10308	TPRI: Project Management Issue Type Scheme	\N	issuetype	\N
10309	TRUES: Kanban Issue Type Scheme	\N	issuetype	\N
\.


--
-- Data for Name: fieldconfigschemeissuetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldconfigschemeissuetype (id, issuetype, fieldconfigscheme, fieldconfiguration) FROM stdin;
10100	\N	10000	10000
10200	\N	10100	10100
10300	\N	10200	10200
10400	\N	10300	10300
10401	\N	10301	10301
10402	\N	10302	10302
10403	10000	10303	10303
10404	10000	10304	10304
10405	10000	10305	10305
10406	10000	10306	10306
10407	10001	10306	10306
10410	\N	10307	10307
10412	\N	10308	10308
10415	\N	10309	10309
\.


--
-- Data for Name: fieldconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldconfiguration (id, configname, description, fieldid, customfield) FROM stdin;
10000	Default Configuration for Issue Type	Default configuration generated by Jira	issuetype	\N
10100	Default configuration for priority	Default configuration generated by Jira	priority	\N
10200	Default Configuration for Development	Default configuration generated by JIRA	customfield_10000	\N
10300	Default Configuration for Sprint	Default configuration generated by JIRA	customfield_10100	\N
10301	Default Configuration for Epic Link	Default configuration generated by JIRA	customfield_10101	\N
10302	Default Configuration for Rank	Default configuration generated by JIRA	customfield_10105	\N
10303	Default Configuration for Epic Name	Default configuration generated by JIRA	customfield_10103	\N
10304	Default Configuration for Epic Status	Default configuration generated by JIRA	customfield_10102	\N
10305	Default Configuration for Epic Color	Default configuration generated by JIRA	customfield_10104	\N
10306	Default Configuration for Story Points	Default configuration generated by JIRA	customfield_10106	\N
10307	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
10308	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
10309	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
\.


--
-- Data for Name: fieldlayout; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayout (id, name, description, layout_type, layoutscheme) FROM stdin;
10000	Default Field Configuration	The default field configuration	default	\N
\.


--
-- Data for Name: fieldlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayoutitem (id, fieldlayout, fieldidentifier, description, verticalposition, ishidden, isrequired, renderertype) FROM stdin;
10120	10000	summary	\N	\N	false	true	jira-text-renderer
10121	10000	issuetype	\N	\N	false	true	jira-text-renderer
10122	10000	security	\N	\N	false	false	jira-text-renderer
10123	10000	priority	\N	\N	false	false	jira-text-renderer
10124	10000	duedate	\N	\N	false	false	jira-text-renderer
10125	10000	components	\N	\N	false	false	frother-control-renderer
10126	10000	versions	\N	\N	false	false	frother-control-renderer
10127	10000	fixVersions	\N	\N	false	false	frother-control-renderer
10128	10000	assignee	\N	\N	false	false	jira-text-renderer
10129	10000	reporter	\N	\N	false	true	jira-text-renderer
10130	10000	environment	For example operating system, software platform and/or hardware specifications (include as appropriate for the issue).	\N	false	false	atlassian-wiki-renderer
10131	10000	description	\N	\N	false	false	atlassian-wiki-renderer
10132	10000	timetracking	An estimate of how much work remains until this issue will be resolved.<br>The format of this is ' *w *d *h *m ' (representing weeks, days, hours and minutes - where * can be any number)<br>Examples: 4d, 5h 30m, 60m and 3w.<br>	\N	false	false	jira-text-renderer
10133	10000	resolution	\N	\N	false	false	jira-text-renderer
10134	10000	attachment	\N	\N	false	false	jira-text-renderer
10135	10000	comment	\N	\N	false	false	atlassian-wiki-renderer
10136	10000	labels	\N	\N	false	false	jira-text-renderer
10137	10000	worklog	Allows work to be logged whilst creating, editing or transitioning issues.	\N	false	false	atlassian-wiki-renderer
10138	10000	issuelinks	\N	\N	false	false	jira-text-renderer
10139	10000	customfield_10000	Development Summary Field for Jira Software use only.	\N	false	false	jira-text-renderer
10140	10000	customfield_10100	Jira Software sprint field	\N	false	false	jira-text-renderer
10141	10000	customfield_10101	Choose an epic to assign this issue to.	\N	false	false	jira-text-renderer
10142	10000	customfield_10102	Epic Status field for Jira Software use only.	\N	false	false	jira-text-renderer
10143	10000	customfield_10103	Provide a short name to identify this epic.	\N	false	true	jira-text-renderer
\.


--
-- Data for Name: fieldlayoutscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayoutscheme (id, name, description) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayoutschemeassociation (id, issuetype, project, fieldlayoutscheme) FROM stdin;
\.


--
-- Data for Name: fieldlayoutschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldlayoutschemeentity (id, scheme, issuetype, fieldlayout) FROM stdin;
\.


--
-- Data for Name: fieldscreen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreen (id, name, description) FROM stdin;
1	Default Screen	Allows to update all system fields.
2	Workflow Screen	This screen is used in the workflow and enables you to assign issues
3	Resolve Issue Screen	Allows to set resolution, change fix versions and assign an issue.
10000	SYC: Scrum Default Issue Screen	
10001	SYC: Scrum Bug Screen	
10002	TPRI: Project Management Create Issue Screen	
10003	TPRI: Project Management Edit/View Issue Screen	
10004	TPRI: Project Management Resolve Issue Screen	
10005	TRUES: Kanban Default Issue Screen	
10006	TRUES: Kanban Bug Screen	
\.


--
-- Data for Name: fieldscreenlayoutitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreenlayoutitem (id, fieldidentifier, sequence, fieldscreentab) FROM stdin;
10000	summary	0	10000
10001	issuetype	1	10000
10002	security	2	10000
10003	priority	3	10000
10004	duedate	4	10000
10005	components	5	10000
10006	versions	6	10000
10007	fixVersions	7	10000
10008	assignee	8	10000
10009	reporter	9	10000
10010	environment	10	10000
10011	description	11	10000
10012	timetracking	12	10000
10013	attachment	13	10000
10014	assignee	0	10001
10015	resolution	0	10002
10016	fixVersions	1	10002
10017	assignee	2	10002
10018	worklog	3	10002
10100	labels	14	10000
10212	summary	0	10101
10213	issuetype	1	10101
10214	reporter	2	10101
10215	components	3	10101
10216	description	4	10101
10217	fixVersions	5	10101
10218	priority	6	10101
10219	labels	7	10101
10220	security	8	10101
10221	environment	9	10101
10222	attachment	10	10101
10223	versions	11	10101
10224	issuelinks	12	10101
10225	assignee	13	10101
10226	customfield_10103	0	10100
10200	summary	1	10100
10201	issuetype	2	10100
10202	reporter	3	10100
10203	components	4	10100
10204	description	5	10100
10205	fixVersions	6	10100
10206	priority	7	10100
10207	labels	8	10100
10208	security	9	10100
10209	attachment	10	10100
10210	issuelinks	11	10100
10211	assignee	12	10100
10227	customfield_10101	13	10100
10228	customfield_10101	14	10101
10229	customfield_10100	14	10100
10230	customfield_10100	15	10101
10231	summary	0	10102
10232	issuetype	1	10102
10233	reporter	2	10102
10234	security	3	10102
10235	attachment	4	10102
10236	duedate	5	10102
10237	description	6	10102
10238	assignee	7	10102
10239	priority	8	10102
10240	labels	9	10102
10241	timetracking	10	10102
10242	summary	0	10103
10243	issuetype	1	10103
10244	reporter	2	10103
10245	components	3	10103
10246	attachment	4	10103
10247	duedate	5	10103
10248	description	6	10103
10249	assignee	7	10103
10250	priority	8	10103
10251	labels	9	10103
10252	timetracking	10	10103
10253	summary	0	10104
10254	issuetype	1	10104
10255	reporter	2	10104
10256	issuelinks	3	10104
10257	resolution	4	10104
10270	summary	0	10106
10271	issuetype	1	10106
10272	reporter	2	10106
10273	components	3	10106
10274	description	4	10106
10275	fixVersions	5	10106
10276	priority	6	10106
10277	labels	7	10106
10278	security	8	10106
10279	environment	9	10106
10280	attachment	10	10106
10281	versions	11	10106
10282	issuelinks	12	10106
10283	assignee	13	10106
10284	customfield_10103	0	10105
10258	summary	1	10105
10259	issuetype	2	10105
10260	reporter	3	10105
10261	components	4	10105
10262	description	5	10105
10263	fixVersions	6	10105
10264	priority	7	10105
10265	labels	8	10105
10266	security	9	10105
10267	attachment	10	10105
10268	issuelinks	11	10105
10269	assignee	12	10105
10285	customfield_10101	13	10105
10286	customfield_10101	14	10106
\.


--
-- Data for Name: fieldscreenscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreenscheme (id, name, description) FROM stdin;
1	Default Screen Scheme	Default Screen Scheme
10000	SYC: Scrum Default Screen Scheme	
10001	SYC: Scrum Bug Screen Scheme	
10002	TPRI: Project Management Screen Scheme	
10003	TRUES: Kanban Default Screen Scheme	
10004	TRUES: Kanban Bug Screen Scheme	
\.


--
-- Data for Name: fieldscreenschemeitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreenschemeitem (id, operation, fieldscreen, fieldscreenscheme) FROM stdin;
10000	\N	1	1
10100	\N	10000	10000
10101	\N	10001	10001
10102	\N	10003	10002
10103	0	10002	10002
10104	\N	10005	10003
10105	\N	10006	10004
\.


--
-- Data for Name: fieldscreentab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fieldscreentab (id, name, description, sequence, fieldscreen) FROM stdin;
10000	Field Tab	\N	0	1
10001	Field Tab	\N	0	2
10002	Field Tab	\N	0	3
10100	Field Tab	\N	0	10000
10101	Field Tab	\N	0	10001
10102	Field Tab	\N	0	10002
10103	Field Tab	\N	0	10003
10104	Field Tab	\N	0	10004
10105	Field Tab	\N	0	10005
10106	Field Tab	\N	0	10006
\.


--
-- Data for Name: fileattachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fileattachment (id, issueid, mimetype, filename, created, filesize, author, zip, thumbnailable) FROM stdin;
\.


--
-- Data for Name: filtersubscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filtersubscription (id, filter_i_d, username, groupname, last_run, email_on_empty) FROM stdin;
\.


--
-- Data for Name: gadgetuserpreference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gadgetuserpreference (id, portletconfiguration, userprefkey, userprefvalue) FROM stdin;
10000	10002	isConfigured	true
10001	10003	keys	__all_projects__
10002	10003	isConfigured	true
10003	10003	title	Your Company Jira
10004	10003	numofentries	5
\.


--
-- Data for Name: genericconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genericconfiguration (id, datatype, datakey, xmlvalue) FROM stdin;
10000	DefaultValue	10000	<string>1</string>
10100	DefaultValue	10307	<string>10001</string>
10101	DefaultValue	10304	<long>10000</long>
10102	DefaultValue	10308	<string>10002</string>
10103	DefaultValue	10309	<string>10001</string>
\.


--
-- Data for Name: globalpermissionentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.globalpermissionentry (id, permission, group_id) FROM stdin;
10000	ADMINISTER	jira-administrators
10006	SYSTEM_ADMIN	jira-administrators
10100	USER_PICKER	jira-software-users
10101	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-software-users
10102	BULK_CHANGE	jira-software-users
10103	CREATE_SHARED_OBJECTS	jira-software-users
10104	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-administrators
10105	BULK_CHANGE	jira-administrators
10106	USER_PICKER	jira-administrators
10107	CREATE_SHARED_OBJECTS	jira-administrators
\.


--
-- Data for Name: groupbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.groupbase (id, groupname) FROM stdin;
\.


--
-- Data for Name: issue_field_option; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issue_field_option (id, option_id, field_key, option_value, properties) FROM stdin;
\.


--
-- Data for Name: issue_field_option_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issue_field_option_scope (id, option_id, entity_id, scope_type) FROM stdin;
\.


--
-- Data for Name: issuelink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuelink (id, linktype, source, destination, sequence) FROM stdin;
10000	10100	10005	10006	0
10001	10100	10009	10010	0
10002	10100	10009	10011	1
\.


--
-- Data for Name: issuelinktype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuelinktype (id, linkname, inward, outward, pstyle) FROM stdin;
10100	jira_subtask_link	jira_subtask_inward	jira_subtask_outward	jira_subtask
10000	Blocks	is blocked by	blocks	\N
10001	Cloners	is cloned by	clones	\N
10002	Duplicate	is duplicated by	duplicates	\N
10003	Relates	relates to	relates to	\N
10200	Epic-Story Link	has Epic	is Epic of	jira_gh_epic_story
\.


--
-- Data for Name: issuesecurityscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuesecurityscheme (id, name, description, defaultlevel) FROM stdin;
\.


--
-- Data for Name: issuestatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuestatus (id, sequence, pname, description, iconurl, statuscategory) FROM stdin;
1	1	Open	The issue is open and ready for the assignee to start work on it.	/images/icons/statuses/open.png	2
3	3	In Progress	This issue is being actively worked on at the moment by the assignee.	/images/icons/statuses/inprogress.png	4
4	4	Reopened	This issue was once resolved, but the resolution was deemed incorrect. From here issues are either marked assigned or resolved.	/images/icons/statuses/reopened.png	2
5	5	Resolved	A resolution has been taken, and it is awaiting verification by reporter. From here issues are either reopened, or are closed.	/images/icons/statuses/resolved.png	3
6	6	Closed	The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.	/images/icons/statuses/closed.png	3
10000	7	To Do		/	2
10001	8	Done		/	3
10002	9	Backlog		/	2
10003	10	Selected for Development		/	2
\.


--
-- Data for Name: issuetype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuetype (id, sequence, pname, pstyle, description, iconurl, avatar) FROM stdin;
10000	\N	Epic	\N	Created by Jira Software - do not edit or delete. Issue type for a big user story that needs to be broken down.	/images/icons/issuetypes/epic.svg	\N
10001	\N	Story	\N	Created by Jira Software - do not edit or delete. Issue type for a user story.	/images/icons/issuetypes/story.svg	\N
10002	\N	Task		A task that needs to be done.	\N	10318
10003	\N	Sub-task	jira_subtask	The sub-task of the issue	\N	10316
10004	\N	Bug		A problem which impairs or prevents the functions of the product.	\N	10303
\.


--
-- Data for Name: issuetypescreenscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuetypescreenscheme (id, name, description) FROM stdin;
1	Default Issue Type Screen Scheme	The default issue type screen scheme
10000	SYC: Scrum Issue Type Screen Scheme	
10001	TPRI: Project Management Issue Type Screen Scheme	
10002	TRUES: Kanban Issue Type Screen Scheme	
\.


--
-- Data for Name: issuetypescreenschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.issuetypescreenschemeentity (id, issuetype, scheme, fieldscreenscheme) FROM stdin;
10000	\N	1	1
10100	\N	10000	10000
10101	10004	10000	10001
10102	\N	10001	10002
10103	\N	10002	10003
10104	10004	10002	10004
\.


--
-- Data for Name: jiraaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraaction (id, issueid, author, actiontype, actionlevel, rolelevel, actionbody, created, updateauthor, updated, actionnum) FROM stdin;
10000	10006	syedawase	comment	\N	\N	Hello	2020-03-27 05:26:17.81+05:30	syedawase	2020-03-27 05:26:17.81+05:30	\N
10001	10009	syedawase	comment	\N	\N	Joined Sample Sprint 2 7 days 9 hours 10 minutes ago	2020-03-19 20:16:14.55+05:30	syedawase	2020-03-19 20:16:14.55+05:30	\N
10002	10010	syedawase	comment	\N	\N	To Do to In Progress 3 days 21 hours 8 minutes ago	2020-03-23 08:18:14.553+05:30	syedawase	2020-03-23 08:18:14.553+05:30	\N
10003	10011	syedawase	comment	\N	\N	To Do to In Progress 2 days 23 hours 43 minutes ago	2020-03-24 05:43:14.555+05:30	syedawase	2020-03-24 05:43:14.555+05:30	\N
10004	10012	syedawase	comment	\N	\N	Joined Sample Sprint 2 7 days 9 hours 10 minutes ago	2020-03-19 20:16:14.556+05:30	syedawase	2020-03-19 20:16:14.556+05:30	\N
10005	10013	syedawase	comment	\N	\N	Joined Sample Sprint 2 1 days 4 hours 10 minutes ago	2020-03-26 01:16:14.558+05:30	syedawase	2020-03-26 01:16:14.558+05:30	\N
10006	10014	syedawase	comment	\N	\N	Joined Sample Sprint 2 7 days 9 hours 10 minutes ago	2020-03-24 10:52:14.558+05:30	syedawase	2020-03-24 10:52:14.558+05:30	\N
10007	10014	syedawase	comment	\N	\N	To Do to In Progress 5 days 4 hours 26 minutes ago\r\nIn Progress to Done 2 days 18 hours 34 minutes ago	2020-03-24 10:52:14.558+05:30	syedawase	2020-03-24 10:52:14.558+05:30	\N
10008	10015	syedawase	comment	\N	\N	Created 28 days 5 hours 14 minutes ago\r\nJoined Sample Sprint 1 21 days 10 hours 20 minutes ago	2020-03-21 02:48:14.559+05:30	syedawase	2020-03-21 02:48:14.559+05:30	\N
10009	10015	syedawase	comment	\N	\N	Joined Sample Sprint 2 7 days 9 hours 10 minutes ago	2020-03-21 02:48:14.559+05:30	syedawase	2020-03-21 02:48:14.559+05:30	\N
10010	10015	syedawase	comment	\N	\N	To Do to In Progress 7 days 4 hours 26 minutes ago\r\nIn Progress to Done 6 days 2 hours 38 minutes ago	2020-03-21 02:48:14.559+05:30	syedawase	2020-03-21 02:48:14.559+05:30	\N
10011	10016	syedawase	comment	\N	\N	Joined Sample Sprint 2 7 days 9 hours 10 minutes ago	2020-03-23 12:52:14.559+05:30	syedawase	2020-03-23 12:52:14.559+05:30	\N
10012	10016	syedawase	comment	\N	\N	To Do to In Progress 6 days 22 hours 26 minutes ago\r\nIn Progress to Done 3 days 16 hours 34 minutes ago	2020-03-23 12:52:14.559+05:30	syedawase	2020-03-23 12:52:14.559+05:30	\N
10013	10017	syedawase	comment	\N	\N	Joined Sample Sprint 1 21 days 10 hours 20 minutes ago\r\nTo Do to Done 20 days 13 hours 50 minutes ago	2020-03-06 16:36:14.56+05:30	syedawase	2020-03-06 16:36:14.56+05:30	\N
10014	10018	syedawase	comment	\N	\N	Joined Sample Sprint 1 21 days 10 hours 20 minutes ago\r\nTo Do to Done 17 days 13 hours 56 minutes ago	2020-03-09 15:30:14.56+05:30	syedawase	2020-03-09 15:30:14.56+05:30	\N
10015	10019	syedawase	comment	\N	\N	Joined Sample Sprint 1 21 days 10 hours 20 minutes ago\r\nTo Do to Done 16 days 1 hours 21 minutes ago	2020-03-11 04:05:14.561+05:30	syedawase	2020-03-11 04:05:14.561+05:30	\N
10016	10020	syedawase	comment	\N	\N	Joined Sample Sprint 1 21 days 10 hours 20 minutes ago\r\nTo Do to Done 13 days 18 hours 43 minutes ago	2020-03-13 10:43:14.563+05:30	syedawase	2020-03-13 10:43:14.563+05:30	\N
10017	10021	syedawase	comment	\N	\N	Joined Sample Sprint 1 21 days 10 hours 20 minutes ago\r\nTo Do to Done 11 days 3 hours 23 minutes ago	2020-03-16 02:03:14.563+05:30	syedawase	2020-03-16 02:03:14.563+05:30	\N
10018	10022	syedawase	comment	\N	\N	Joined Sample Sprint 1 21 days 10 hours 20 minutes ago\r\nTo Do to Done 9 days 1 hours 45 minutes ago	2020-03-18 03:41:14.564+05:30	syedawase	2020-03-18 03:41:14.564+05:30	\N
\.


--
-- Data for Name: jiradraftworkflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiradraftworkflows (id, parentname, descriptor) FROM stdin;
\.


--
-- Data for Name: jiraeventtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraeventtype (id, template_id, name, description, event_type) FROM stdin;
1	\N	Issue Created	This is the 'issue created' event.	jira.system.event.type
2	\N	Issue Updated	This is the 'issue updated' event.	jira.system.event.type
3	\N	Issue Assigned	This is the 'issue assigned' event.	jira.system.event.type
4	\N	Issue Resolved	This is the 'issue resolved' event.	jira.system.event.type
5	\N	Issue Closed	This is the 'issue closed' event.	jira.system.event.type
6	\N	Issue Commented	This is the 'issue commented' event.	jira.system.event.type
7	\N	Issue Reopened	This is the 'issue reopened' event.	jira.system.event.type
8	\N	Issue Deleted	This is the 'issue deleted' event.	jira.system.event.type
9	\N	Issue Moved	This is the 'issue moved' event.	jira.system.event.type
10	\N	Work Logged On Issue	This is the 'work logged on issue' event.	jira.system.event.type
11	\N	Work Started On Issue	This is the 'work started on issue' event.	jira.system.event.type
12	\N	Work Stopped On Issue	This is the 'work stopped on issue' event.	jira.system.event.type
13	\N	Generic Event	This is the 'generic event' event.	jira.system.event.type
14	\N	Issue Comment Edited	This is the 'issue comment edited' event.	jira.system.event.type
15	\N	Issue Worklog Updated	This is the 'issue worklog updated' event.	jira.system.event.type
16	\N	Issue Worklog Deleted	This is the 'issue worklog deleted' event.	jira.system.event.type
17	\N	Issue Comment Deleted	This is the 'issue comment deleted' event.	jira.system.event.type
\.


--
-- Data for Name: jiraissue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraissue (id, pkey, issuenum, project, reporter, assignee, creator, issuetype, summary, description, environment, priority, resolution, issuestatus, created, updated, duedate, resolutiondate, votes, watches, timeoriginalestimate, timeestimate, timespent, workflow_id, security, fixfor, component) FROM stdin;
10000	\N	1	10000	syedawase	\N	syedawase	10001	As an Agile team, I'd like to learn about Scrum >> Click the "SYC-1" link at the left of this row to see detail in the Description tab on the right	*About Scrum*\n\nScrum is an iterative approach to Agile software development. The methodology has been around since the 1980s but was popularised by Jeff Sutherland and Ken Schwaber. \n\nScrum breaks the development of a product down in to discrete iterations (termed Sprints) that each deliver functionality that could potentially be shipped to users.\n\nThe Scrum Alliance offers an excellent [introduction to Scrum|http://www.scrumalliance.org/resources/47] that provides an overview of key Scrum concepts, stakeholders, processes and artefacts.	\N	3	\N	10000	2020-03-27 05:26:15.169+05:30	2020-03-27 05:26:15.169+05:30	\N	\N	0	0	\N	\N	\N	10000	\N	\N	\N
10001	\N	2	10000	syedawase	\N	syedawase	10001	As a product owner, I'd like to express work in terms of actual user problems, aka User Stories, and place them in the backlog >> Try creating a new story with the "+ Create Issue" button (top right of screen)	When you click "+ Create Issue" you will be asked for the correct project (select "sycliqscrum") and Issue Type (select "Story").\n\n*About User Stories*\n\nThe Scrum methodology drops traditional software requirement statements in favour of real world problems expressed as User Stories. Stories describe the task a particular user is trying to achieve and its value. They are typically of the form "As a (role) I want (something) so that (benefit)". This approach focuses the team on the core user need rather than on implementation details. \n\nStories are "placeholders for a conversation" -- they do not need to be especially detailed since it is expected that the team will work together to resolve ambiguity as the story is developed. \n\nStories to be implemented in the future are stored in the Product Backlog. The backlog is ranked by the Product Owner so that the next items to be completed are at the top.	\N	3	\N	10000	2020-03-27 05:26:16.746+05:30	2020-03-27 05:26:16.746+05:30	\N	\N	0	0	\N	\N	\N	10001	\N	\N	\N
10002	\N	3	10000	syedawase	\N	syedawase	10001	As a product owner, I'd like to rank stories in the backlog so I can communicate the proposed implementation order >> Try dragging this story up above the previous story	*About the Product Backlog*\n\nThe backlog is the source of truth for the order of work to be completed. It is expected that the Product Owner will work with the team to make sure that the backlog represents the current approach to delivering the product. JIRA Software makes it easy to prioritise (rank) Stories by dragging them up and down the backlog.	\N	3	\N	10000	2020-03-27 05:26:16.855+05:30	2020-03-27 05:26:16.855+05:30	\N	\N	0	0	\N	\N	\N	10002	\N	\N	\N
10003	\N	4	10000	syedawase	\N	syedawase	10001	As a team, I'd like to estimate the effort of a story in Story Points so we can understand the work remaining >> Try setting the Story Points for this story in the "Estimate" field	This story is estimated at 5 Story Points (as shown in the "Estimate" field at the top right of the Detail View). \n\nTry updating the Story Point estimate to 4 by clicking on the "Estimate" then typing.\n\n*Estimating using Story Points*\n\nBecause the traditional process of estimating tasks in weeks or days is often wildly inaccurate, many Scrum teams estimate in Story Points instead. Story Points exist merely as a way to estimate a task's difficulty compared to some other task (for example, a 10-point story would probably take double the effort of a 5-point story). As teams mature with Scrum they tend to achieve a consistent number of Story Points from Sprint to Sprint -- this is termed the team's _velocity_. This allows the Product Owner to use the velocity to predict how many Sprints it will take to deliver parts of the backlog. \n\nMany teams use Planning Poker to achieve consensus on Story Point estimates.\n\n*Using Other Estimation Units*\n\nYou can configure JIRA Software to use time-based estimates if you wish. In the configuration for the board, on the "Estimation" tab, select "Original Time Estimate" as your Estimation Statistic. If you also wish to track the time used during the Sprint, select "Remaining Estimate and Time Spent" to enable Time Tracking in JIRA Software.	\N	3	\N	10000	2020-03-27 05:26:16.996+05:30	2020-03-27 05:26:16.996+05:30	\N	\N	0	0	\N	\N	\N	10003	\N	\N	\N
10004	\N	5	10000	syedawase	\N	syedawase	10001	As a team, I'd like to commit to a set of stories to be completed in a sprint (or iteration) >> Click "Create Sprint" then drag the footer down to select issues for a sprint (you can't start a sprint at the moment because one is already active)	*Starting a Sprint*\n\nDuring the Planning Meeting the team will examine the stories at the top of the backlog and determine which they can commit to completing during the coming sprint. Based on this information the Product Owner might break down stories into smaller stories, adjust story priorities or otherwise work with the team to define the ideal sprint outcome. When the sprint is started the stories are moved into the sprint backlog.	\N	3	\N	10000	2020-03-27 05:26:17.092+05:30	2020-03-27 05:26:17.092+05:30	\N	\N	0	0	\N	\N	\N	10004	\N	\N	\N
10005	\N	6	10000	syedawase	\N	syedawase	10001	As a scrum master, I'd like to break stories down into tasks we can track during the sprint >> Try creating a task by clicking the Sub-Tasks tab in the Detail View on the right	*Task Breakdown*\n\nMany teams choose to break down user stories into a set of tasks needed to implement the story. They then update the status of these tasks during a sprint to track progress. The completion of the last task signals the end of the story. \n\nYou can add sub-tasks to a story on the sub-task tab (folder icon) above.	\N	3	\N	10000	2020-03-27 05:26:17.484+05:30	2020-03-27 05:26:17.484+05:30	\N	\N	0	0	\N	\N	\N	10005	\N	\N	\N
10006	\N	7	10000	syedawase	syedawase	syedawase	10003	This is a sample task. Tasks are used to break down the steps to implement a user story	\N	\N	3	\N	10000	2020-03-27 05:26:17.716+05:30	2020-03-27 05:26:17.716+05:30	\N	\N	0	0	\N	\N	\N	10006	\N	\N	\N
10007	\N	8	10000	syedawase	\N	syedawase	10004	As a product owner, I'd like to include bugs, tasks and other issue types in my backlog >> Bugs like this one will also appear in your backlog but they are not normally estimated	*Estimation of Bugs*\n\nScrum teams do not normally apply story point estimates to bugs because bugs are considered to be part of the ongoing work that the team must deal with (i.e the overhead). If you view the story points completed in a sprint as a measure of progress, then bugs also have no value because they do not deliver anything additional to the customer. \n\nHowever, you can apply estimates to bugs if you wish by configuring the "Story Points" field to apply to other Issue Types (by default it only applies to Stories and Epics). Some more information on this is in the [documentation|https://confluence.atlassian.com/display/GH/Story+Point].	\N	3	\N	10000	2020-03-27 05:26:17.971+05:30	2020-03-27 05:26:17.971+05:30	\N	\N	0	0	\N	\N	\N	10007	\N	\N	\N
10008	\N	9	10000	syedawase	\N	syedawase	10001	As a developer, I'd like to update story status during the sprint >> Click the Active sprints link at the top right of the screen to go to the Active sprints where the current Sprint's items can be updated	\N	\N	3	\N	10000	2020-03-27 05:26:18.044+05:30	2020-03-27 05:26:18.044+05:30	\N	\N	0	0	\N	\N	\N	10008	\N	\N	\N
10009	\N	10	10000	syedawase	syedawase	syedawase	10001	As a developer, I can update story and task status with drag and drop (click the triangle at far left of this story to show sub-tasks)	\N	\N	3	\N	3	2020-03-19 20:16:14.55+05:30	2020-03-19 20:16:14.55+05:30	\N	\N	0	0	\N	\N	\N	10009	\N	\N	\N
10010	\N	11	10000	syedawase	syedawase	syedawase	10003	Update task status by dragging and dropping from column to column >> Try dragging this task to "Done"	\N	\N	3	\N	3	2020-03-23 08:18:14.554+05:30	2020-03-23 08:18:14.553+05:30	\N	\N	0	0	\N	\N	\N	10010	\N	\N	\N
10011	\N	12	10000	syedawase	\N	syedawase	10003	When the last task is done, the story can be automatically closed >> Drag this task to "Done" too	\N	\N	3	\N	3	2020-03-24 05:43:14.555+05:30	2020-03-24 05:43:14.555+05:30	\N	\N	0	0	\N	\N	\N	10011	\N	\N	\N
10012	\N	13	10000	syedawase	syedawase	syedawase	10004	As a developer, I can update details on an item using the Detail View >> Click the "SYC-13" link at the top of this card to open the detail view	*Editing using the Detail View*\n\nMany of the fields in the detail view can be inline edited by simply clicking on them. \n\nFor other fields you can open Quick Edit, select "Edit" from the cog drop-down.	\N	3	\N	10000	2020-03-19 20:16:14.556+05:30	2020-03-19 20:16:14.556+05:30	\N	\N	0	0	\N	\N	\N	10012	\N	\N	\N
10013	\N	14	10000	syedawase	syedawase	syedawase	10001	As a user, I can find important items on the board by using the customisable "Quick Filters" above >> Try clicking the "Only My Issues" Quick Filter above	*Creating Quick Filters*\n\nYou can add your own Quick Filters in the board configuration (select *Board > Configure*)	\N	3	\N	10000	2020-03-26 01:16:14.558+05:30	2020-03-26 01:16:14.558+05:30	\N	\N	0	0	\N	\N	\N	10013	\N	\N	\N
10014	\N	15	10000	syedawase	\N	syedawase	10001	As a scrum master, I can see the progress of a sprint via the Burndown Chart >> Click "Reports" to view the Burndown Chart	\N	\N	3	10000	10001	2020-03-19 20:16:14.558+05:30	2020-03-24 10:52:14.558+05:30	\N	2020-03-24 10:52:14.558+05:30	0	0	\N	\N	\N	10014	\N	\N	\N
10015	\N	16	10000	syedawase	\N	syedawase	10001	As a team, we can finish the sprint by clicking the cog icon next to the sprint name above the "To Do" column then selecting "Complete Sprint" >> Try closing this sprint now	\N	\N	3	10000	10001	2020-02-28 01:12:14.558+05:30	2020-03-21 02:48:14.559+05:30	\N	2020-03-21 02:48:14.559+05:30	0	0	\N	\N	\N	10015	\N	\N	\N
10016	\N	17	10000	syedawase	syedawase	syedawase	10004	Instructions for deleting this sample board and project are in the description for this issue >> Click the "SYC-17" link and read the description tab of the detail view for more	*To delete this Sample Project _(must be performed by a user with Administration rights)_* \n- Open the administration interface to the projects page by using the keyboard shortcut 'g' then 'g' and typing 'Projects' in to the search dialog\n- Select the "Delete" link for the "sycliqscrum" project\n\n*To delete the Sample Project workflow and workflow scheme _(must be performed by a user with Administration rights)_* \n- Open the administration interface to the workflow schemes page by using the keyboard shortcut 'g' then 'g' and typing 'Workflow Schemes' in to the search dialog\n- Select the "Delete" link for the "SYC: Software Simplified Workflow Scheme" workflow scheme\n- Go to the workflows page by using the keyboard shortcut 'g' then 'g' and typing 'Workflows' in to the search dialog(_OnDemand users should select the second match for Workflows_)\n- Expand the "Inactive" section\n- Select the "Delete" link for the "Software Simplified Workflow  for Project SYC" workflow\n\n*To delete this Board _(must be performed by the owner of this Board or an Administrator)_*\n- Click the "Tools" cog at the top right of this board\n- Select "Delete"	\N	3	10000	10001	2020-03-19 20:16:14.559+05:30	2020-03-23 12:52:14.559+05:30	\N	2020-03-23 12:52:14.559+05:30	0	0	\N	\N	\N	10016	\N	\N	\N
10017	\N	18	10000	syedawase	syedawase	syedawase	10001	As a user, I'd like a historical story to show in reports	\N	\N	3	10000	10001	2020-03-05 20:06:14.56+05:30	2020-03-06 16:36:14.56+05:30	\N	2020-03-06 16:36:14.56+05:30	0	0	\N	\N	\N	10017	\N	\N	\N
10018	\N	19	10000	syedawase	syedawase	syedawase	10001	As a user, I'd like a historical story to show in reports	\N	\N	3	10000	10001	2020-03-05 20:06:14.56+05:30	2020-03-09 15:30:14.56+05:30	\N	2020-03-09 15:30:14.56+05:30	0	0	\N	\N	\N	10018	\N	\N	\N
10019	\N	20	10000	syedawase	syedawase	syedawase	10001	As a user, I'd like a historical story to show in reports	\N	\N	3	10000	10001	2020-03-05 20:06:14.561+05:30	2020-03-11 04:05:14.561+05:30	\N	2020-03-11 04:05:14.561+05:30	0	0	\N	\N	\N	10019	\N	\N	\N
10020	\N	21	10000	syedawase	syedawase	syedawase	10001	As a user, I'd like a historical story to show in reports	\N	\N	3	10000	10001	2020-03-05 20:06:14.563+05:30	2020-03-13 10:43:14.563+05:30	\N	2020-03-13 10:43:14.563+05:30	0	0	\N	\N	\N	10020	\N	\N	\N
10021	\N	22	10000	syedawase	syedawase	syedawase	10001	As a user, I'd like a historical story to show in reports	\N	\N	3	10000	10001	2020-03-05 20:06:14.563+05:30	2020-03-16 02:03:14.563+05:30	\N	2020-03-16 02:03:14.563+05:30	0	0	\N	\N	\N	10021	\N	\N	\N
10022	\N	23	10000	syedawase	syedawase	syedawase	10001	As a user, I'd like a historical story to show in reports	\N	\N	3	10000	10001	2020-03-05 20:06:14.564+05:30	2020-03-18 03:41:14.564+05:30	\N	2020-03-18 03:41:14.564+05:30	0	0	\N	\N	\N	10022	\N	\N	\N
\.


--
-- Data for Name: jiraperms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraperms (id, permtype, projectid, groupname) FROM stdin;
\.


--
-- Data for Name: jiraworkflows; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraworkflows (id, workflowname, creatorname, descriptor, islocked) FROM stdin;
10000	classic default workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">The classic Jira default workflow</meta>\n  <initial-actions>\n    <action id="1" name="Create Issue">\n      <meta name="opsbar-sequence">0</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n          <arg name="permission">Create Issue</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="Finished" status="Open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">1</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <common-actions>\n    <action id="2" name="Close Issue" view="resolveissue">\n      <meta name="opsbar-sequence">60</meta>\n      <meta name="jira.i18n.submit">closeissue.close</meta>\n      <meta name="jira.i18n.description">closeissue.desc</meta>\n      <meta name="jira.i18n.title">closeissue.title</meta>\n      <restrict-to>\n        <conditions type="AND">\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Close Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Closed" step="6">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">5</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="3" name="Reopen Issue" view="commentassign">\n      <meta name="opsbar-sequence">80</meta>\n      <meta name="jira.i18n.submit">issue.operations.reopen.issue</meta>\n      <meta name="jira.i18n.description">issue.operations.reopen.description</meta>\n      <meta name="jira.i18n.title">issue.operations.reopen.issue</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Reopened" step="5">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">7</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="4" name="Start Progress">\n      <meta name="opsbar-sequence">20</meta>\n      <meta name="jira.i18n.title">startprogress.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Underway" step="3">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">11</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="5" name="Resolve Issue" view="resolveissue">\n      <meta name="opsbar-sequence">40</meta>\n      <meta name="jira.i18n.submit">resolveissue.resolve</meta>\n      <meta name="jira.i18n.description">resolveissue.desc.line1</meta>\n      <meta name="jira.i18n.title">resolveissue.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Resolved" step="4">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">4</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </common-actions>\n  <steps>\n    <step id="1" name="Open">\n      <meta name="jira.status.id">1</meta>\n      <actions>\n<common-action id="4" />\n<common-action id="5" />\n<common-action id="2" />\n      </actions>\n    </step>\n    <step id="3" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n        <action id="301" name="Stop Progress">\n          <meta name="opsbar-sequence">20</meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Assigned" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="field.name">resolution</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">12</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="4" name="Resolved">\n      <meta name="jira.status.id">5</meta>\n      <actions>\n<common-action id="3" />\n        <action id="701" name="Close Issue" view="commentassign">\n          <meta name="opsbar-sequence">60</meta>\n          <meta name="jira.i18n.submit">closeissue.close</meta>\n          <meta name="jira.i18n.description">closeissue.desc</meta>\n          <meta name="jira.i18n.title">closeissue.title</meta>\n          <meta name="jira.description">Closing an issue indicates there is no more work to be done on it, and it has been verified as complete.</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n                <arg name="permission">Close Issue</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Closed" step="6">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">5</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="5" name="Reopened">\n      <meta name="jira.status.id">4</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n<common-action id="4" />\n      </actions>\n    </step>\n    <step id="6" name="Closed">\n      <meta name="jira.status.id">6</meta>\n      <meta name="jira.issue.editable">false</meta>\n      <actions>\n<common-action id="3" />\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
10100	Software Simplified Workflow for Project SYC	\N	<?xml version="1.0" encoding="UTF-8"?>\r\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\r\n<workflow>\r\n  <meta name="jira.description">Generated by JIRA Software version 7.13.0-DAILY20180924115437. This workflow is managed internally by Jira Software. Do not manually modify this workflow.</meta>\r\n  <meta name="jira.update.author.key">syedawase</meta>\r\n  <meta name="jira.updated.date">1585266972185</meta>\r\n  <meta name="jira.update.author.name">admin</meta>\r\n  <meta name="gh.version">7.13.0-DAILY20180924115437</meta>\r\n  <initial-actions>\r\n    <action id="1" name="Create">\r\n      <meta name="jira.i18n.title">common.forms.create</meta>\r\n      <validators>\r\n        <validator name="" type="class">\r\n          <arg name="permission">Create Issue</arg>\r\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\r\n        </validator>\r\n      </validators>\r\n      <results>\r\n        <unconditional-result old-status="null" status="To Do" step="1">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">1</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n  </initial-actions>\r\n  <global-actions>\r\n    <action id="11" name="To Do">\r\n      <meta name="jira.description"></meta>\r\n      <meta name="jira.i18n.title">gh.workflow.preset.todo</meta>\r\n      <results>\r\n        <unconditional-result old-status="Not Done" status="Done" step="1">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="field.name">resolution</arg>\r\n              <arg name="field.value"></arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">13</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n    <action id="21" name="In Progress">\r\n      <meta name="jira.description"></meta>\r\n      <meta name="jira.i18n.title">gh.workflow.preset.inprogress</meta>\r\n      <results>\r\n        <unconditional-result old-status="Not Done" status="Done" step="6">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="field.name">resolution</arg>\r\n              <arg name="field.value"></arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">13</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n    <action id="31" name="Done">\r\n      <meta name="jira.description"></meta>\r\n      <meta name="jira.i18n.title">gh.workflow.preset.done</meta>\r\n      <results>\r\n        <unconditional-result old-status="Not Done" status="Done" step="11">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="field.name">resolution</arg>\r\n              <arg name="field.value">10000</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">13</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n  </global-actions>\r\n  <steps>\r\n    <step id="1" name="To Do">\r\n      <meta name="jira.status.id">10000</meta>\r\n    </step>\r\n    <step id="6" name="In Progress">\r\n      <meta name="jira.status.id">3</meta>\r\n    </step>\r\n    <step id="11" name="Done">\r\n      <meta name="jira.status.id">10001</meta>\r\n    </step>\r\n  </steps>\r\n</workflow>\r\n	\N
10101	TPRI: Project Management Workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\r\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\r\n<workflow>\r\n  <meta name="jira.description"></meta>\r\n  <meta name="jira.update.author.key">syedawase</meta>\r\n  <meta name="jira.updated.date">1585267214957</meta>\r\n  <initial-actions>\r\n    <action id="1" name="Create">\r\n      <meta name="jira.i18n.submit">common.forms.create</meta>\r\n      <meta name="jira.i18n.title">common.forms.create</meta>\r\n      <validators>\r\n        <validator name="" type="class">\r\n          <arg name="permission">Create Issue</arg>\r\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\r\n        </validator>\r\n      </validators>\r\n      <results>\r\n        <unconditional-result old-status="null" status="open" step="1">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">1</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n  </initial-actions>\r\n  <steps>\r\n    <step id="1" name="To Do">\r\n      <meta name="jira.status.id">10000</meta>\r\n      <actions>\r\n        <action id="11" name="Start Progress">\r\n          <meta name="jira.i18n.submit">startprogress.title</meta>\r\n          <meta name="jira.description"></meta>\r\n          <meta name="jira.i18n.title">startprogress.title</meta>\r\n          <results>\r\n            <unconditional-result old-status="Not Done" status="Done" step="2">\r\n              <post-functions>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowassigntocurrentuser-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.AssignToCurrentUserFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="eventTypeId">13</arg>\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\r\n                </function>\r\n              </post-functions>\r\n            </unconditional-result>\r\n          </results>\r\n        </action>\r\n        <action id="21" name="Done">\r\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.done.name</meta>\r\n          <meta name="jira.description"></meta>\r\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.done.name</meta>\r\n          <restrict-to>\r\n            <conditions>\r\n              <condition type="class">\r\n                <arg name="permission">RESOLVE_ISSUES</arg>\r\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\r\n              </condition>\r\n            </conditions>\r\n          </restrict-to>\r\n          <results>\r\n            <unconditional-result old-status="Not Done" status="Done" step="3">\r\n              <post-functions>\r\n                <function type="class">\r\n                  <arg name="field.name">resolution</arg>\r\n                  <arg name="field.value">10000</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="eventTypeId">13</arg>\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\r\n                </function>\r\n              </post-functions>\r\n            </unconditional-result>\r\n          </results>\r\n        </action>\r\n      </actions>\r\n    </step>\r\n    <step id="2" name="In Progress">\r\n      <meta name="jira.status.id">3</meta>\r\n      <actions>\r\n        <action id="31" name="Stop Progress">\r\n          <meta name="jira.i18n.submit">stopprogress.title</meta>\r\n          <meta name="jira.description"></meta>\r\n          <meta name="jira.i18n.title">stopprogress.title</meta>\r\n          <results>\r\n            <unconditional-result old-status="Not Done" status="Done" step="1">\r\n              <post-functions>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="eventTypeId">13</arg>\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\r\n                </function>\r\n              </post-functions>\r\n            </unconditional-result>\r\n          </results>\r\n        </action>\r\n        <action id="41" name="Done">\r\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.done.name</meta>\r\n          <meta name="jira.description"></meta>\r\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.done.name</meta>\r\n          <restrict-to>\r\n            <conditions>\r\n              <condition type="class">\r\n                <arg name="permission">RESOLVE_ISSUES</arg>\r\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\r\n              </condition>\r\n            </conditions>\r\n          </restrict-to>\r\n          <results>\r\n            <unconditional-result old-status="Not Done" status="Done" step="3">\r\n              <post-functions>\r\n                <function type="class">\r\n                  <arg name="field.name">resolution</arg>\r\n                  <arg name="field.value">10000</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="eventTypeId">13</arg>\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\r\n                </function>\r\n              </post-functions>\r\n            </unconditional-result>\r\n          </results>\r\n        </action>\r\n      </actions>\r\n    </step>\r\n    <step id="3" name="Done">\r\n      <meta name="jira.status.id">10001</meta>\r\n      <actions>\r\n        <action id="51" name="Reopen">\r\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.reopen.name</meta>\r\n          <meta name="jira.description"></meta>\r\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.reopen.name</meta>\r\n          <restrict-to>\r\n            <conditions>\r\n              <condition type="class">\r\n                <arg name="permission">RESOLVE_ISSUES</arg>\r\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\r\n              </condition>\r\n            </conditions>\r\n          </restrict-to>\r\n          <results>\r\n            <unconditional-result old-status="Not Done" status="Done" step="1">\r\n              <post-functions>\r\n                <function type="class">\r\n                  <arg name="field.name">resolution</arg>\r\n                  <arg name="field.value"></arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="eventTypeId">13</arg>\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\r\n                </function>\r\n              </post-functions>\r\n            </unconditional-result>\r\n          </results>\r\n        </action>\r\n        <action id="61" name="Reopen and start progress">\r\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.reopenandstartprogress.name</meta>\r\n          <meta name="jira.description"></meta>\r\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.reopenandstartprogress.name</meta>\r\n          <results>\r\n            <unconditional-result old-status="Not Done" status="Done" step="2">\r\n              <post-functions>\r\n                <function type="class">\r\n                  <arg name="field.name">resolution</arg>\r\n                  <arg name="field.value"></arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowassigntocurrentuser-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.AssignToCurrentUserFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n                </function>\r\n                <function type="class">\r\n                  <arg name="eventTypeId">13</arg>\r\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\r\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\r\n                </function>\r\n              </post-functions>\r\n            </unconditional-result>\r\n          </results>\r\n        </action>\r\n      </actions>\r\n    </step>\r\n  </steps>\r\n</workflow>\r\n	\N
10102	Software Simplified Workflow for Project TRUES	\N	<?xml version="1.0" encoding="UTF-8"?>\r\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\r\n<workflow>\r\n  <meta name="jira.description">Generated by JIRA Software version 7.13.0-DAILY20180924115437. This workflow is managed internally by Jira Software. Do not manually modify this workflow.</meta>\r\n  <meta name="jira.update.author.key">syedawase</meta>\r\n  <meta name="jira.updated.date">1585331884703</meta>\r\n  <meta name="jira.update.author.name">admin</meta>\r\n  <meta name="gh.version">7.13.0-DAILY20180924115437</meta>\r\n  <initial-actions>\r\n    <action id="1" name="Create">\r\n      <meta name="jira.i18n.title">common.forms.create</meta>\r\n      <validators>\r\n        <validator name="" type="class">\r\n          <arg name="permission">Create Issue</arg>\r\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\r\n        </validator>\r\n      </validators>\r\n      <results>\r\n        <unconditional-result old-status="null" status="Backlog" step="11">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">1</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n  </initial-actions>\r\n  <global-actions>\r\n    <action id="11" name="Backlog">\r\n      <meta name="jira.description"></meta>\r\n      <meta name="jira.i18n.title">gh.workflow.preset.backlog</meta>\r\n      <results>\r\n        <unconditional-result old-status="Not Done" status="Done" step="11">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="field.name">resolution</arg>\r\n              <arg name="field.value"></arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">13</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n    <action id="21" name="Selected for Development">\r\n      <meta name="jira.description"></meta>\r\n      <meta name="jira.i18n.title">gh.workflow.preset.selected</meta>\r\n      <results>\r\n        <unconditional-result old-status="Not Done" status="Done" step="22">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="field.name">resolution</arg>\r\n              <arg name="field.value"></arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">13</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n    <action id="31" name="In Progress">\r\n      <meta name="jira.description"></meta>\r\n      <meta name="jira.i18n.title">gh.workflow.preset.inprogress</meta>\r\n      <results>\r\n        <unconditional-result old-status="Not Done" status="Done" step="33">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="field.name">resolution</arg>\r\n              <arg name="field.value"></arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">13</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n    <action id="41" name="Done">\r\n      <meta name="jira.description"></meta>\r\n      <meta name="jira.i18n.title">gh.workflow.preset.done</meta>\r\n      <results>\r\n        <unconditional-result old-status="Not Done" status="Done" step="44">\r\n          <post-functions>\r\n            <function type="class">\r\n              <arg name="field.name">resolution</arg>\r\n              <arg name="field.value">10000</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">\n                                com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction\n                            </arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\r\n            </function>\r\n            <function type="class">\r\n              <arg name="eventTypeId">13</arg>\r\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction\n                            </arg>\r\n            </function>\r\n          </post-functions>\r\n        </unconditional-result>\r\n      </results>\r\n    </action>\r\n  </global-actions>\r\n  <steps>\r\n    <step id="11" name="Backlog">\r\n      <meta name="jira.status.id">10002</meta>\r\n    </step>\r\n    <step id="22" name="Selected for Development">\r\n      <meta name="jira.status.id">10003</meta>\r\n    </step>\r\n    <step id="33" name="In Progress">\r\n      <meta name="jira.status.id">3</meta>\r\n    </step>\r\n    <step id="44" name="Done">\r\n      <meta name="jira.status.id">10001</meta>\r\n    </step>\r\n  </steps>\r\n</workflow>\r\n	\N
\.


--
-- Data for Name: jiraworkflowstatuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jiraworkflowstatuses (id, status, parentname) FROM stdin;
\.


--
-- Data for Name: jquartz_blob_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
\.


--
-- Data for Name: jquartz_calendars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_calendars (sched_name, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: jquartz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
\.


--
-- Data for Name: jquartz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, is_volatile, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_stateful, is_nonconcurrent, is_update_data, requests_recovery) FROM stdin;
\.


--
-- Data for Name: jquartz_job_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_volatile, is_stateful, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: jquartz_job_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_job_listeners (job_name, job_group, job_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_locks (sched_name, lock_name) FROM stdin;
\N	TRIGGER_ACCESS
\N	JOB_ACCESS
\N	CALENDAR_ACCESS
\N	STATE_ACCESS
\N	MISFIRE_ACCESS
\.


--
-- Data for Name: jquartz_paused_trigger_grps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
\.


--
-- Data for Name: jquartz_scheduler_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
\.


--
-- Data for Name: jquartz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: jquartz_simprop_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
\.


--
-- Data for Name: jquartz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_trigger_listeners (trigger_name, trigger_group, trigger_listener) FROM stdin;
\.


--
-- Data for Name: jquartz_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jquartz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, is_volatile, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.label (id, fieldid, issue, label) FROM stdin;
\.


--
-- Data for Name: licenserolesdefault; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.licenserolesdefault (id, license_role_name) FROM stdin;
10000	jira-software
\.


--
-- Data for Name: licenserolesgroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.licenserolesgroup (id, license_role_name, group_id, primary_group) FROM stdin;
10000	jira-software	jira-software-users	Y
10001	jira-software	jira-administrators	N
\.


--
-- Data for Name: listenerconfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listenerconfig (id, clazz, listenername) FROM stdin;
10000	com.atlassian.jira.event.listeners.mail.MailListener	Mail Listener
10001	com.atlassian.jira.event.listeners.history.IssueAssignHistoryListener	Issue Assignment Listener
10400	com.atlassian.jira.event.listeners.search.IssueIndexListener	Issue Index Listener
\.


--
-- Data for Name: mailserver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mailserver (id, name, description, mailfrom, prefix, smtp_port, protocol, server_type, servername, jndilocation, mailusername, mailpassword, istlsrequired, timeout, socks_port, socks_host) FROM stdin;
\.


--
-- Data for Name: managedconfigurationitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.managedconfigurationitem (id, item_id, item_type, managed, access_level, source, description_key) FROM stdin;
10000	customfield_10000	CUSTOM_FIELD	true	LOCKED	com.atlassian.jira.plugins.jira-development-integration-plugin:reserved-field-locked	devstatus.customfield.locked.desc
10100	customfield_10100	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10101	customfield_10101	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10102	customfield_10102	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10103	customfield_10103	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10104	customfield_10104	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
10105	customfield_10105	CUSTOM_FIELD	true	LOCKED	com.pyxis.greenhopper.jira:reference-select-locked	gh.customfield.locked.desc
\.


--
-- Data for Name: membershipbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.membershipbase (id, user_name, group_name) FROM stdin;
\.


--
-- Data for Name: moved_issue_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moved_issue_key (id, old_issue_key, issue_id) FROM stdin;
\.


--
-- Data for Name: nodeassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nodeassociation (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type, sequence) FROM stdin;
10000	Project	10000	NotificationScheme	ProjectScheme	\N
10000	Project	10000	IssueTypeScreenScheme	ProjectScheme	\N
10000	Project	10100	WorkflowScheme	ProjectScheme	\N
10000	Project	10000	PermissionScheme	ProjectScheme	\N
10000	Issue	10001	Version	IssueFixVersion	\N
10001	Issue	10001	Version	IssueFixVersion	\N
10002	Issue	10002	Version	IssueFixVersion	\N
10003	Issue	10002	Version	IssueFixVersion	\N
10007	Issue	10001	Version	IssueFixVersion	\N
10009	Issue	10001	Version	IssueFixVersion	\N
10010	Issue	10001	Version	IssueFixVersion	\N
10011	Issue	10001	Version	IssueFixVersion	\N
10012	Issue	10001	Version	IssueFixVersion	\N
10017	Issue	10001	Version	IssueFixVersion	\N
10018	Issue	10001	Version	IssueFixVersion	\N
10019	Issue	10000	Version	IssueFixVersion	\N
10020	Issue	10000	Version	IssueFixVersion	\N
10021	Issue	10000	Version	IssueFixVersion	\N
10022	Issue	10000	Version	IssueFixVersion	\N
10001	Project	0	PermissionScheme	ProjectScheme	\N
10001	Project	10000	NotificationScheme	ProjectScheme	\N
10001	Project	10101	WorkflowScheme	ProjectScheme	\N
10001	Project	10001	IssueTypeScreenScheme	ProjectScheme	\N
10002	Project	10000	NotificationScheme	ProjectScheme	\N
10002	Project	10002	IssueTypeScreenScheme	ProjectScheme	\N
10002	Project	10102	WorkflowScheme	ProjectScheme	\N
10002	Project	10000	PermissionScheme	ProjectScheme	\N
\.


--
-- Data for Name: nodeindexcounter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nodeindexcounter (id, node_id, sending_node_id, index_operation_id) FROM stdin;
\.


--
-- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification (id, scheme, event, event_type_id, template_id, notif_type, notif_parameter) FROM stdin;
10000	10000	\N	1	\N	Current_Assignee	\N
10001	10000	\N	1	\N	Current_Reporter	\N
10002	10000	\N	1	\N	All_Watchers	\N
10003	10000	\N	2	\N	Current_Assignee	\N
10004	10000	\N	2	\N	Current_Reporter	\N
10005	10000	\N	2	\N	All_Watchers	\N
10006	10000	\N	3	\N	Current_Assignee	\N
10007	10000	\N	3	\N	Current_Reporter	\N
10008	10000	\N	3	\N	All_Watchers	\N
10009	10000	\N	4	\N	Current_Assignee	\N
10010	10000	\N	4	\N	Current_Reporter	\N
10011	10000	\N	4	\N	All_Watchers	\N
10012	10000	\N	5	\N	Current_Assignee	\N
10013	10000	\N	5	\N	Current_Reporter	\N
10014	10000	\N	5	\N	All_Watchers	\N
10015	10000	\N	6	\N	Current_Assignee	\N
10016	10000	\N	6	\N	Current_Reporter	\N
10017	10000	\N	6	\N	All_Watchers	\N
10018	10000	\N	7	\N	Current_Assignee	\N
10019	10000	\N	7	\N	Current_Reporter	\N
10020	10000	\N	7	\N	All_Watchers	\N
10021	10000	\N	8	\N	Current_Assignee	\N
10022	10000	\N	8	\N	Current_Reporter	\N
10023	10000	\N	8	\N	All_Watchers	\N
10024	10000	\N	9	\N	Current_Assignee	\N
10025	10000	\N	9	\N	Current_Reporter	\N
10026	10000	\N	9	\N	All_Watchers	\N
10027	10000	\N	10	\N	Current_Assignee	\N
10028	10000	\N	10	\N	Current_Reporter	\N
10029	10000	\N	10	\N	All_Watchers	\N
10030	10000	\N	11	\N	Current_Assignee	\N
10031	10000	\N	11	\N	Current_Reporter	\N
10032	10000	\N	11	\N	All_Watchers	\N
10033	10000	\N	12	\N	Current_Assignee	\N
10034	10000	\N	12	\N	Current_Reporter	\N
10035	10000	\N	12	\N	All_Watchers	\N
10036	10000	\N	13	\N	Current_Assignee	\N
10037	10000	\N	13	\N	Current_Reporter	\N
10038	10000	\N	13	\N	All_Watchers	\N
10100	10000	\N	14	\N	Current_Assignee	\N
10101	10000	\N	14	\N	Current_Reporter	\N
10102	10000	\N	14	\N	All_Watchers	\N
10103	10000	\N	15	\N	Current_Assignee	\N
10104	10000	\N	15	\N	Current_Reporter	\N
10105	10000	\N	15	\N	All_Watchers	\N
10106	10000	\N	16	\N	Current_Assignee	\N
10107	10000	\N	16	\N	Current_Reporter	\N
10108	10000	\N	16	\N	All_Watchers	\N
\.


--
-- Data for Name: notificationinstance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notificationinstance (id, notificationtype, source, emailaddress, messageid) FROM stdin;
\.


--
-- Data for Name: notificationscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notificationscheme (id, name, description) FROM stdin;
10000	Default Notification Scheme	\N
\.


--
-- Data for Name: oauthconsumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauthconsumer (id, created, consumername, consumer_key, consumerservice, public_key, private_key, description, callback, signature_method, shared_secret) FROM stdin;
\.


--
-- Data for Name: oauthconsumertoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauthconsumertoken (id, created, token_key, token, token_secret, token_type, consumer_key) FROM stdin;
\.


--
-- Data for Name: oauthspconsumer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauthspconsumer (id, created, consumer_key, consumername, public_key, description, callback, two_l_o_allowed, executing_two_l_o_user, two_l_o_impersonation_allowed, three_l_o_allowed) FROM stdin;
\.


--
-- Data for Name: oauthsptoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oauthsptoken (id, created, token, token_secret, token_type, consumer_key, username, ttl, spauth, callback, spverifier, spversion, session_handle, session_creation_time, session_last_renewal_time, session_time_to_live) FROM stdin;
\.


--
-- Data for Name: optionconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optionconfiguration (id, fieldid, optionid, fieldconfig, sequence) FROM stdin;
10200	priority	1	10100	1
10201	priority	2	10100	2
10202	priority	3	10100	3
10203	priority	4	10100	4
10204	priority	5	10100	5
10300	issuetype	10000	10000	0
10301	issuetype	10001	10000	1
10306	issuetype	10002	10307	0
10307	issuetype	10003	10307	1
10308	issuetype	10001	10307	2
10309	issuetype	10004	10307	3
10310	issuetype	10000	10307	4
10311	issuetype	10002	10308	0
10312	issuetype	10003	10308	1
10317	issuetype	10002	10309	0
10318	issuetype	10003	10309	1
10319	issuetype	10001	10309	2
10320	issuetype	10004	10309	3
10321	issuetype	10000	10309	4
\.


--
-- Data for Name: os_currentstep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_currentstep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
10000	10000	1	0		2020-03-27 05:26:15.283+05:30	\N	\N	To Do	\N
10001	10001	1	0		2020-03-27 05:26:16.749+05:30	\N	\N	To Do	\N
10002	10002	1	0		2020-03-27 05:26:16.858+05:30	\N	\N	To Do	\N
10003	10003	1	0		2020-03-27 05:26:17.001+05:30	\N	\N	To Do	\N
10004	10004	1	0		2020-03-27 05:26:17.095+05:30	\N	\N	To Do	\N
10005	10005	1	0		2020-03-27 05:26:17.55+05:30	\N	\N	To Do	\N
10006	10006	1	0		2020-03-27 05:26:17.719+05:30	\N	\N	To Do	\N
10007	10007	1	0		2020-03-27 05:26:17.975+05:30	\N	\N	To Do	\N
10008	10008	1	0		2020-03-27 05:26:18.047+05:30	\N	\N	To Do	\N
10009	10009	6	0		2020-03-27 05:26:18.313+05:30	\N	\N	To Do	\N
10010	10010	6	0		2020-03-27 05:26:18.414+05:30	\N	\N	To Do	\N
10011	10011	6	0		2020-03-27 05:26:18.921+05:30	\N	\N	To Do	\N
10012	10012	1	0		2020-03-27 05:26:19.429+05:30	\N	\N	To Do	\N
10013	10013	1	0		2020-03-27 05:26:19.568+05:30	\N	\N	To Do	\N
10014	10014	11	0		2020-03-27 05:26:19.842+05:30	\N	\N	To Do	\N
10015	10015	11	0		2020-03-27 05:26:20.045+05:30	\N	\N	To Do	\N
10016	10016	11	0		2020-03-27 05:26:20.217+05:30	\N	\N	To Do	\N
10017	10017	11	0		2020-03-27 05:26:20.357+05:30	\N	\N	To Do	\N
10018	10018	11	0		2020-03-27 05:26:20.493+05:30	\N	\N	To Do	\N
10019	10019	11	0		2020-03-27 05:26:20.739+05:30	\N	\N	To Do	\N
10020	10020	11	0		2020-03-27 05:26:20.905+05:30	\N	\N	To Do	\N
10021	10021	11	0		2020-03-27 05:26:21.028+05:30	\N	\N	To Do	\N
10022	10022	11	0		2020-03-27 05:26:21.122+05:30	\N	\N	To Do	\N
\.


--
-- Data for Name: os_currentstep_prev; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_currentstep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_historystep; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_historystep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
\.


--
-- Data for Name: os_historystep_prev; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_historystep_prev (id, previous_id) FROM stdin;
\.


--
-- Data for Name: os_wfentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_wfentry (id, name, initialized, state) FROM stdin;
10000	Software Simplified Workflow for Project SYC	\N	1
10001	Software Simplified Workflow for Project SYC	\N	1
10002	Software Simplified Workflow for Project SYC	\N	1
10003	Software Simplified Workflow for Project SYC	\N	1
10004	Software Simplified Workflow for Project SYC	\N	1
10005	Software Simplified Workflow for Project SYC	\N	1
10006	Software Simplified Workflow for Project SYC	\N	1
10007	Software Simplified Workflow for Project SYC	\N	1
10008	Software Simplified Workflow for Project SYC	\N	1
10009	Software Simplified Workflow for Project SYC	\N	1
10010	Software Simplified Workflow for Project SYC	\N	1
10011	Software Simplified Workflow for Project SYC	\N	1
10012	Software Simplified Workflow for Project SYC	\N	1
10013	Software Simplified Workflow for Project SYC	\N	1
10014	Software Simplified Workflow for Project SYC	\N	1
10015	Software Simplified Workflow for Project SYC	\N	1
10016	Software Simplified Workflow for Project SYC	\N	1
10017	Software Simplified Workflow for Project SYC	\N	1
10018	Software Simplified Workflow for Project SYC	\N	1
10019	Software Simplified Workflow for Project SYC	\N	1
10020	Software Simplified Workflow for Project SYC	\N	1
10021	Software Simplified Workflow for Project SYC	\N	1
10022	Software Simplified Workflow for Project SYC	\N	1
\.


--
-- Data for Name: permissionscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissionscheme (id, name, description) FROM stdin;
0	Default Permission Scheme	This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.
10000	Default software scheme	Default scheme for Software projects.
\.


--
-- Data for Name: permissionschemeattribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permissionschemeattribute (id, scheme, attribute_key, attribute_value) FROM stdin;
\.


--
-- Data for Name: pluginstate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pluginstate (pluginkey, pluginenabled) FROM stdin;
\.


--
-- Data for Name: pluginversion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pluginversion (id, pluginname, pluginkey, pluginversion, created) FROM stdin;
10000	Jira Projects Plugin	com.atlassian.jira.jira-projects-plugin	4.5.33	2019-07-09 08:22:42.826+05:30
10001	Jira Software Application	com.atlassian.jira.jira-software-application	7.13.0	2019-07-09 08:22:43.962+05:30
10002	Atlassian OAuth Consumer Plugin	com.atlassian.oauth.consumer	2.1.1	2019-07-09 08:22:43.964+05:30
10003	Atlassian Jira - Plugins - My Jira Home	com.atlassian.jira.jira-my-home-plugin	7.13.0	2019-07-09 08:22:43.966+05:30
10004	JIRA Software English (United States) Language Pack	tac.jira software.languages.en_US	8.0.0.v20181107104339	2019-07-09 08:22:43.968+05:30
10005	Project Creation Plugin SPI for JIRA	com.atlassian.plugins.jira-project-creation	3.2.1	2019-07-09 08:22:43.971+05:30
10006	Atlassian Embedded Crowd - Administration Plugin	com.atlassian.crowd.embedded.admin	2.3.3	2019-07-09 08:22:43.973+05:30
10007	Analytics Client Plugin	com.atlassian.analytics.analytics-client	5.6.2	2019-07-09 08:22:43.974+05:30
10008	JIRA Software Chinese (China) Language Pack	tac.jira software.languages.zh_CN	8.0.0.v20181107104339	2019-07-09 08:22:43.975+05:30
10009	Jira Help Tips plugin	com.atlassian.plugins.helptips.jira-help-tips	7.13.0	2019-07-09 08:22:43.977+05:30
10010	Atlassian Navigation Links Plugin	com.atlassian.plugins.atlassian-nav-links-plugin	4.3.0	2019-07-09 08:22:43.979+05:30
10011	JIRA Core Romanian (Romania) Language Pack	tac.jira core.languages.ro_RO	8.0.0.v20181107105324	2019-07-09 08:22:43.983+05:30
10012	Atlassian Jira - Plugins - Issue Web Link	com.atlassian.jira.jira-issue-link-web-plugin	7.13.0	2019-07-09 08:22:43.984+05:30
10013	JIRA Core Slovak (Slovakia) Language Pack	tac.jira core.languages.sk_SK	8.0.0.v20181107105324	2019-07-09 08:22:43.988+05:30
10014	Atlassian Hipchat Integration Plugin Core	com.atlassian.plugins.base-hipchat-integration-plugin-api	7.10.3	2019-07-09 08:22:43.989+05:30
10015	Whisper Messages Plugin	whisper.messages	1.0	2019-07-09 08:22:43.992+05:30
10016	Project Role Actors Plugin	com.atlassian.jira.plugin.system.projectroleactors	1.0	2019-07-09 08:22:43.994+05:30
10017	Atlassian Jira - Plugins - OAuth Service Provider SPI	com.atlassian.jira.oauth.serviceprovider	7.13.0	2019-07-09 08:22:43.996+05:30
10018	Keyboard Shortcuts Plugin	jira.keyboard.shortcuts	1.0	2019-07-09 08:22:43.998+05:30
10019	Bitbucket Importer Plugin for JIM	com.atlassian.jira.plugins.jira-importers-bitbucket-plugin	1.0.19	2019-07-09 08:22:44+05:30
10020	Atlassian Remote Event Common Plugin	com.atlassian.plugins.atlassian-remote-event-common-plugin	1.0.13	2019-07-09 08:22:44.001+05:30
10021	Jira GitHub Issue Importer	com.atlassian.jira.plugins.jira-importers-github-plugin	3.0.3	2019-07-09 08:22:44.003+05:30
10022	JIRA Password Policy Plugin	com.atlassian.jira.plugins.jira-password-policy-plugin	2.0.2	2019-07-09 08:22:44.006+05:30
10023	ROME: RSS/Atom syndication and publishing tools	com.springsource.com.sun.syndication-0.9.0	0.9.0	2019-07-09 08:22:44.009+05:30
10024	JIRA iCalendar Plugin	com.atlassian.jira.extra.jira-ical-feed	1.4.7	2019-07-09 08:22:44.011+05:30
10025	Jira Drag and Drop Attachment Plugin	com.atlassian.jira.plugins.jira-dnd-attachment-plugin	4.4.20	2019-07-09 08:22:44.014+05:30
10026	Atlassian Jira - Plugins - Post setup announcements plugin	com.atlassian.jira.jira-postsetup-announcements-plugin	7.13.0	2019-07-09 08:22:44.016+05:30
10027	Streams Inline Actions Plugin	com.atlassian.streams.actions	6.4.3	2019-07-09 08:22:44.017+05:30
10028	JIRA Software Spanish (Spain) Language Pack	tac.jira software.languages.es_ES	8.0.0.v20181107104339	2019-07-09 08:22:44.019+05:30
10029	JIRA Core Swedish (Sweden) Language Pack	tac.jira core.languages.sv_SE	8.0.0.v20181107105324	2019-07-09 08:22:44.021+05:30
10030	Comment Panel Plugin	com.atlassian.jira.plugin.system.comment-panel	1.0	2019-07-09 08:22:44.022+05:30
10031	Atlassian Jira - Plugins - Development Integration Plugin	com.atlassian.jira.plugins.jira-development-integration-plugin	4.7.2	2019-07-09 08:22:44.037+05:30
10032	Atlassian Remote Event Consumer Plugin	com.atlassian.plugins.atlassian-remote-event-consumer-plugin	1.0.13	2019-07-09 08:22:44.092+05:30
10033	scala-2.11-provider-plugin	com.atlassian.scala.plugins.scala-2.11-provider-plugin	0.13	2019-07-09 08:22:44.238+05:30
10034	JIRA Workflow Transition Tabs	com.atlassian.jira.plugin.system.workfloweditor.transition.tabs	1.0	2019-07-09 08:22:44.296+05:30
10035	JIRA Core Czech (Czech Republic) Language Pack	tac.jira core.languages.cs_CZ	8.0.0.v20181107105324	2019-07-09 08:22:44.34+05:30
10036	Renderer Plugin	com.atlassian.jira.plugin.system.jirarenderers	1.0	2019-07-09 08:22:44.402+05:30
10037	Atlassian Gadgets OAuth Service Provider Plugin	com.atlassian.gadgets.oauth.serviceprovider	4.2.32	2019-07-09 08:22:44.467+05:30
10038	JIRA Software Finnish (Finland) Language Pack	tac.jira software.languages.fi_FI	8.0.0.v20181107104339	2019-07-09 08:22:44.697+05:30
10039	Functional Optics Library	io.atlassian.fugue.optics-4.5.0	4.5.0	2019-07-09 08:22:44.748+05:30
10040	JIRA Core Japanese (Japan) Language Pack	tac.jira core.languages.ja_JP	8.0.0.v20181107105324	2019-07-09 08:22:44.804+05:30
10041	JIRA Core Italian (Italy) Language Pack	tac.jira core.languages.it_IT	8.0.0.v20181107105324	2019-07-09 08:22:45.156+05:30
10042	Jira for Software Plugin	com.atlassian.jira.plugins.jira-software-plugin	2.2.5	2019-07-09 08:22:45.427+05:30
10043	JIRA Core Polish (Poland) Language Pack	tac.jira core.languages.pl_PL	8.0.0.v20181107105324	2019-07-09 08:22:45.516+05:30
10044	Functional Extensions Retry Inter-Ops	io.atlassian.fugue.retry-4.5.0	4.5.0	2019-07-09 08:22:46.439+05:30
10045	Atlassian Jira - Plugins - Admin Navigation Component	com.atlassian.jira.jira-admin-navigation-plugin	7.13.0	2019-07-09 08:22:46.508+05:30
10046	JIRA Software Danish (Denmark) Language Pack	tac.jira software.languages.da_DK	8.0.0.v20181107104339	2019-07-09 08:22:46.62+05:30
10047	JIRA Core German (Germany) Language Pack	tac.jira core.languages.de_DE	8.0.0.v20181107105324	2019-07-09 08:22:46.682+05:30
10048	Atlassian Plugins - Web Resources - Implementation Plugin	com.atlassian.plugins.atlassian-plugins-webresource-plugin	3.5.41	2019-07-09 08:22:46.729+05:30
10049	Preset Filters Sections	jira.webfragments.preset.filters	1.0	2019-07-09 08:22:46.73+05:30
10050	Atlassian Jira - Plugins - Project Config Plugin	com.atlassian.jira.jira-project-config-plugin	7.13.0	2019-07-09 08:22:46.731+05:30
10051	Crowd System Password Encoders	crowd.system.passwordencoders	1.0	2019-07-09 08:22:46.732+05:30
10052	Atlassian UI Plugin	com.atlassian.auiplugin	7.9.9	2019-07-09 08:22:46.734+05:30
10053	Atlassian Jira - Plugins - Share Content Component	com.atlassian.jira.jira-share-plugin	7.13.0	2019-07-09 08:22:46.736+05:30
10054	Atlassian Jira - Plugins - Statistics plugin	com.atlassian.jira.jira-statistics-plugin	7.13.0	2019-07-09 08:22:46.737+05:30
10055	Atlassian Jira - Plugins - Remote Jira Link	com.atlassian.jira.jira-issue-link-remote-jira-plugin	7.13.0	2019-07-09 08:22:46.749+05:30
10056	Remote Link Aggregator Plugin	com.atlassian.plugins.remote-link-aggregator-plugin	2.0.14	2019-07-09 08:22:46.75+05:30
10057	Atlassian HealthCheck Common Module	com.atlassian.healthcheck.atlassian-healthcheck	3.0.1	2019-07-09 08:22:46.751+05:30
10058	Workbox - Common Plugin	com.atlassian.mywork.mywork-common-plugin	5.0.3	2019-07-09 08:22:46.753+05:30
10059	Jira Workflow Sharing Plugin	com.atlassian.jira.plugins.workflow.sharing.jira-workflow-sharing-plugin	2.1.6	2019-07-09 08:22:46.754+05:30
10060	Entity property conditions	system.entity.property.conditions	1.0	2019-07-09 08:22:46.757+05:30
10061	org.osgi:org.osgi.service.cm	org.osgi.service.cm-1.5.0.201505202024	1.5.0.201505202024	2019-07-09 08:22:46.76+05:30
10062	JIRA Software Korean (South Korea) Language Pack	tac.jira software.languages.ko_KR	8.0.0.v20181107104339	2019-07-09 08:22:46.761+05:30
10063	Atlassian Jira - Plugins - APDEX	com.atlassian.jira.jira-apdex-plugin	7.13.0	2019-07-09 08:22:46.762+05:30
10064	JQL Functions	jira.jql.function	1.0	2019-07-09 08:22:46.764+05:30
10065	Atlassian Soy - Plugin	com.atlassian.soy.soy-template-plugin	4.3.0	2019-07-09 08:22:46.765+05:30
10066	JIRA Software Icelandic (Iceland) Language Pack	tac.jira software.languages.is_IS	8.0.0.v20181107104339	2019-07-09 08:22:46.767+05:30
10067	atlassian-failure-cache-plugin	com.atlassian.atlassian-failure-cache-plugin	0.15	2019-07-09 08:22:46.769+05:30
10068	Atlassian Jira - Plugins - View Issue Panels	com.atlassian.jira.jira-view-issue-plugin	7.13.0	2019-07-09 08:22:46.77+05:30
10069	Functional Extensions Scala Inter-Ops	io.atlassian.fugue.scala-4.5.0	4.5.0	2019-07-09 08:22:46.771+05:30
10070	JIRA Footer	jira.footer	1.0	2019-07-09 08:22:46.775+05:30
10071	Applinks - Plugin - Core	com.atlassian.applinks.applinks-plugin	5.4.5	2019-07-09 08:22:46.776+05:30
10072	jira-optimizer-plugin	com.atlassian.jira.plugins.jira-optimizer-plugin	1.0.14	2019-07-09 08:22:46.78+05:30
10073	Analytics Whitelist Plugin	com.atlassian.analytics.analytics-whitelist	3.68	2019-07-09 08:22:46.781+05:30
10074	Atlassian Whitelist API Plugin	com.atlassian.plugins.atlassian-whitelist-api-plugin-4.0.5	4.0.5	2019-07-09 08:22:46.782+05:30
10075	Atlassian Jira - Plugins - Invite User	com.atlassian.jira.jira-invite-user-plugin	2.2.5	2019-07-09 08:22:46.783+05:30
10076	JIRA Software Norwegian (Norway) Language Pack	tac.jira software.languages.no_NO	8.0.0.v20181107104339	2019-07-09 08:22:46.784+05:30
10077	Applinks - Plugin - Basic Authentication	com.atlassian.applinks.applinks-basicauth-plugin	5.4.5	2019-07-09 08:22:46.785+05:30
10078	Atlassian Jira - Plugins - Quick Search	com.atlassian.jira.plugins.jira-quicksearch-plugin	7.13.0	2019-07-09 08:22:46.787+05:30
10079	User Profile Links	jira.webfragments.user.profile.links	1.0	2019-07-09 08:22:46.788+05:30
10080	JIRA Software Italian (Italy) Language Pack	tac.jira software.languages.it_IT	8.0.0.v20181107104339	2019-07-09 08:22:46.79+05:30
10081	Admin Menu Sections	jira.webfragments.admin	1.0	2019-07-09 08:22:46.791+05:30
10082	wiki-editor	com.atlassian.jira.plugins.jira-wiki-editor	2.3.0	2019-07-09 08:22:46.793+05:30
10083	Atlassian OAuth Service Provider SPI	com.atlassian.oauth.atlassian-oauth-service-provider-spi	2.1.1	2019-07-09 08:22:46.795+05:30
10084	Top Navigation Bar	jira.top.navigation.bar	1.0	2019-07-09 08:22:46.797+05:30
10085	Apache Apache HttpClient OSGi bundle	org.apache.httpcomponents.httpclient-4.5.5	4.5.5	2019-07-09 08:22:46.798+05:30
10086	Applinks - Plugin - Trusted Apps	com.atlassian.applinks.applinks-trustedapps-plugin	5.4.5	2019-07-09 08:22:46.799+05:30
10087	Wiki Renderer Macros Plugin	com.atlassian.jira.plugin.system.renderers.wiki.macros	1.0	2019-07-09 08:22:46.8+05:30
10088	Issue Views Plugin	jira.issueviews	1.0	2019-07-09 08:22:46.802+05:30
10089	JIRA Core Icelandic (Iceland) Language Pack	tac.jira core.languages.is_IS	8.0.0.v20181107105324	2019-07-09 08:22:46.803+05:30
10090	Streams SPI	com.atlassian.streams.streams-spi	6.4.3	2019-07-09 08:22:46.805+05:30
10091	Applinks - Plugin - CORS	com.atlassian.applinks.applinks-cors-plugin	5.4.5	2019-07-09 08:22:46.807+05:30
10092	Streams Third Party Provider Plugin	com.atlassian.streams.streams-thirdparty-plugin	6.4.3	2019-07-09 08:22:46.808+05:30
10093	Atlassian OAuth Service Provider Plugin	com.atlassian.oauth.serviceprovider	2.1.1	2019-07-09 08:22:46.81+05:30
10094	Atlassian Jira - Plugins - Common AppLinks Based Issue Link Plugin	com.atlassian.jira.jira-issue-link-applinks-common-plugin	7.13.0	2019-07-09 08:22:46.811+05:30
10095	Web Resources Plugin	jira.webresources	1.0	2019-07-09 08:22:46.814+05:30
10096	Embedded Gadgets Plugin	com.atlassian.gadgets.embedded	4.2.32	2019-07-09 08:22:46.871+05:30
10097	Atlassian Jira - Plugins - Core Reports	com.atlassian.jira.jira-core-reports-plugin	7.13.0	2019-07-09 08:22:47.524+05:30
10098	Streams Plugin	com.atlassian.streams	6.4.3	2019-07-09 08:22:47.713+05:30
10099	Browse Project Operations Sections	jira.webfragments.browse.project.links	1.0	2019-07-09 08:22:47.769+05:30
10100	JIRA Issue Collector Plugin	com.atlassian.jira.collector.plugin.jira-issue-collector-plugin	2.0.31	2019-07-09 08:22:47.825+05:30
10101	Atlassian Whitelist Core Plugin	com.atlassian.plugins.atlassian-whitelist-core-plugin	4.0.5	2019-07-09 08:22:47.958+05:30
10102	JIRA Core Russian (Russia) Language Pack	tac.jira core.languages.ru_RU	8.0.0.v20181107105324	2019-07-09 08:22:48.013+05:30
10103	ICU4J	com.atlassian.bundles.icu4j-3.8.0.1	3.8.0.1	2019-07-09 08:22:48.068+05:30
10104	Streams Core Plugin	com.atlassian.streams.core	6.4.3	2019-07-09 08:22:48.125+05:30
10105	Atlassian Jira - Plugins - WebHooks Plugin	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin	7.13.0	2019-07-09 08:22:48.18+05:30
10106	Issue Operations Plugin	com.atlassian.jira.plugin.system.issueoperations	1.0	2019-07-09 08:22:48.339+05:30
10107	Gadget Directory Plugin	com.atlassian.gadgets.directory	4.2.32	2019-07-09 08:22:48.427+05:30
10108	Attach Image for JIRA	com.atlassian.plugins.jira-html5-attach-images	4.0.0	2019-07-09 08:22:48.482+05:30
10109	Jira Monitoring Plugin	com.atlassian.jira.jira-monitoring-plugin	05.7.2	2019-07-09 08:22:48.559+05:30
10110	Atlassian Hipchat Integration Plugin	com.atlassian.plugins.base-hipchat-integration-plugin	7.10.3	2019-07-09 08:22:48.635+05:30
10111	Atlassian Jira - Plugins - Project Centric Issue Navigator	com.atlassian.jira.jira-projects-issue-navigator	8.9.2	2019-07-09 08:22:48.636+05:30
10112	jira-importers-plugin	com.atlassian.jira.plugins.jira-importers-plugin	8.0.15	2019-07-09 08:22:48.637+05:30
10113	Atlassian Plugins - JavaScript libraries	com.atlassian.plugin.jslibs	1.1.1	2019-07-09 08:22:48.638+05:30
10114	JIRA Software Portuguese (Brazil) Language Pack	tac.jira software.languages.pt_BR	8.0.0.v20181107104339	2019-07-09 08:22:48.639+05:30
10115	Jira Time Zone Detection plugin	com.atlassian.jira.jira-tzdetect-plugin	3.0.3	2019-07-09 08:22:48.64+05:30
10116	HipChat for JIRA	com.atlassian.labs.hipchat.hipchat-for-jira-plugin	7.10.3	2019-07-09 08:22:48.642+05:30
10117	Atlassian Jira - Plugins - Diagnostics Plugin	com.atlassian.jira.diagnostics	7.13.0	2019-07-09 08:22:48.643+05:30
10118	JIRA Core Dutch (Netherlands) Language Pack	tac.jira core.languages.nl_NL	8.0.0.v20181107105324	2019-07-09 08:22:48.644+05:30
10119	JIRA Core Estonian (Estonia) Language Pack	tac.jira core.languages.et_EE	8.0.0.v20181107105324	2019-07-09 08:22:48.646+05:30
10120	JSON Library	com.atlassian.bundles.json-20070829.0.0.1	20070829.0.0.1	2019-07-09 08:22:48.649+05:30
10121	JDOM DOM Processor	com.springsource.org.jdom-1.0.0	1.0.0	2019-07-09 08:22:48.651+05:30
10122	JIRA Core Chinese (China) Language Pack	tac.jira core.languages.zh_CN	8.0.0.v20181107105324	2019-07-09 08:22:48.652+05:30
10123	Atlassian Jira - Plugins - Feedback Plugin	com.atlassian.feedback.jira-feedback-plugin	7.13.0	2019-07-09 08:22:48.656+05:30
10124	ActiveObjects Plugin - OSGi Bundle	com.atlassian.activeobjects.activeobjects-plugin	2.0.0	2019-07-09 08:22:48.663+05:30
10125	Atlassian Jira - Plugins - Header Plugin	com.atlassian.jira.jira-header-plugin	7.13.0	2019-07-09 08:22:48.665+05:30
10126	Issue Tab Panels Plugin	com.atlassian.jira.plugin.system.issuetabpanels	1.0	2019-07-09 08:22:48.667+05:30
10127	JIRA Feature Keys	jira.feature.keys	1.0	2019-07-09 08:22:48.668+05:30
10128	JIRA Streams Inline Actions Plugin	com.atlassian.streams.jira.inlineactions	6.4.3	2019-07-09 08:22:48.68+05:30
10129	Atlassian Jira - Plugins - Application Properties	com.atlassian.jira.jira-application-properties-plugin	7.13.0	2019-07-09 08:22:48.686+05:30
10130	Atlassian Jira - Plugins - Gadgets Plugin	com.atlassian.jira.gadgets	7.13.0	2019-07-09 08:22:48.688+05:30
10131	Atlassian Jira - Plugins - Analytics whitelist	com.atlassian.jira.jira-analytics-whitelist-plugin	7.13.0	2019-07-09 08:22:48.689+05:30
10132	jira-inline-issue-create-plugin	com.atlassian.jira.plugins.inline-create.jira-inline-issue-create-plugin	1.7.4	2019-07-09 08:22:48.691+05:30
10133	Workbox - JIRA Provider Plugin	com.atlassian.mywork.mywork-jira-provider-plugin	5.0.3	2019-07-09 08:22:48.693+05:30
10134	JIRA Core Korean (South Korea) Language Pack	tac.jira core.languages.ko_KR	8.0.0.v20181107105324	2019-07-09 08:22:48.694+05:30
10135	Content Link Resolvers Plugin	com.atlassian.jira.plugin.wiki.contentlinkresolvers	1.0	2019-07-09 08:22:48.698+05:30
10136	Atlassian Application Manager plugin	com.atlassian.upm.upm-application-plugin	2.22.9	2019-07-09 08:22:48.699+05:30
10137	JIRA Core Spanish (Spain) Language Pack	tac.jira core.languages.es_ES	8.0.0.v20181107105324	2019-07-09 08:22:48.701+05:30
10138	JIRA Software Russian (Russia) Language Pack	tac.jira software.languages.ru_RU	8.0.0.v20181107104339	2019-07-09 08:22:48.704+05:30
10139	JIRA Software Swedish (Sweden) Language Pack	tac.jira software.languages.sv_SE	8.0.0.v20181107104339	2019-07-09 08:22:48.707+05:30
10140	Jira Mobile	com.atlassian.jira.mobile	3.2.0	2019-07-09 08:22:48.708+05:30
10141	Atlassian Jira - Plugins - Onboarding	com.atlassian.jira.jira-onboarding-assets-plugin	7.13.0	2019-07-09 08:22:48.71+05:30
10142	FishEye Plugin	com.atlassian.jirafisheyeplugin	7.1.12	2019-07-09 08:22:48.714+05:30
10143	JIRA Software French (France) Language Pack	tac.jira software.languages.fr_FR	8.0.0.v20181107104339	2019-07-09 08:22:48.715+05:30
10144	Atlassian JIRA - Admin Helper Plugin	com.atlassian.jira.plugins.jira-admin-helper-plugin	4.1.8	2019-07-09 08:22:48.717+05:30
10145	Atlassian browser metrics plugin	com.atlassian.plugins.browser.metrics.browser-metrics-plugin	7.0.1	2019-07-09 08:22:48.718+05:30
10146	JIRA Software German (Germany) Language Pack	tac.jira software.languages.de_DE	8.0.0.v20181107104339	2019-07-09 08:22:48.72+05:30
10147	Atlassian Jira - Plugins - Global Issue Navigator	com.atlassian.jira.jira-issue-nav-plugin	8.9.2	2019-07-09 08:22:48.722+05:30
10148	User Navigation Bar Sections	jira.webfragments.user.navigation.bar	1.0	2019-07-09 08:22:48.723+05:30
10149	Atlassian Troubleshooting and Support Tools	com.atlassian.troubleshooting.plugin-jira	1.14.0	2019-07-09 08:22:48.725+05:30
10150	Neko HTML	com.atlassian.bundles.nekohtml-1.9.12.1	1.9.12.1	2019-07-09 08:22:48.732+05:30
10151	JIRA Global Permissions	jira.system.global.permissions	1.0	2019-07-09 08:22:48.733+05:30
10152	JIRA Software Slovak (Slovakia) Language Pack	tac.jira software.languages.sk_SK	8.0.0.v20181107104339	2019-07-09 08:22:48.735+05:30
10153	Atlassian Template Renderer API	com.atlassian.templaterenderer.api	2.0.0	2019-07-09 08:22:48.737+05:30
10154	JIRA Core Danish (Denmark) Language Pack	tac.jira core.languages.da_DK	8.0.0.v20181107105324	2019-07-09 08:22:48.738+05:30
10155	Atlassian JIRA - Plugins - File viewer plugin	com.atlassian.jira.jira-fileviewer-plugin	7.3.3	2019-07-09 08:22:48.74+05:30
10156	Atlassian Pretty URLs Plugin	com.atlassian.prettyurls.atlassian-pretty-urls-plugin	2.1.2	2019-07-09 08:22:48.745+05:30
10157	JIRA Attachment Archive File Processors	jira.system.attachment.processors	1.0	2019-07-09 08:22:48.817+05:30
10158	Atlassian Jira - Plugins - Admin Upgrades	com.atlassian.jira.jira-admin-updates-plugin	7.13.0	2019-07-09 08:22:48.871+05:30
10159	Functional Extensions	io.atlassian.fugue-4.5.0	4.5.0	2019-07-09 08:22:49.207+05:30
10160	jira-ui	com.atlassian.jira.plugins.jira-ui	0.1.1	2019-07-09 08:22:49.368+05:30
10161	Atlassian Universal Plugin Manager Plugin	com.atlassian.upm.atlassian-universal-plugin-manager-plugin	2.22.9	2019-07-09 08:22:49.425+05:30
10162	SAML for Atlassian Data Center	com.atlassian.plugins.authentication.atlassian-authentication-plugin	2.0.8	2019-07-09 08:22:49.482+05:30
10163	Atlassian Whitelist UI Plugin	com.atlassian.plugins.atlassian-whitelist-ui-plugin	4.0.5	2019-07-09 08:22:49.686+05:30
10164	JIRA Core Portuguese (Brazil) Language Pack	tac.jira core.languages.pt_BR	8.0.0.v20181107105324	2019-07-09 08:22:49.735+05:30
10165	Redmine Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-redmine-plugin	2.1.9	2019-07-09 08:22:49.788+05:30
10166	Atlassian JIRA - Plugins - Quick Edit Plugin	com.atlassian.jira.jira-quick-edit-plugin	3.2.0	2019-07-09 08:22:49.834+05:30
10167	Soy Function Plugin	com.atlassian.jira.plugin.system.soyfunction	1.0	2019-07-09 08:22:49.889+05:30
10168	Universal Plugin Manager - Role-Based Licensing Implementation Plugin	com.atlassian.upm.role-based-licensing-plugin	2.22.9	2019-07-09 08:22:49.936+05:30
10169	Jira Core Project Templates Plugin	com.atlassian.jira-core-project-templates	6.2.4	2019-07-09 08:22:50.237+05:30
10170	Atlassian OAuth Admin Plugin	com.atlassian.oauth.admin	2.1.1	2019-07-09 08:22:50.288+05:30
10171	Atlassian REST - Module Types	com.atlassian.plugins.rest.atlassian-rest-module	3.2.18	2019-07-09 08:22:50.505+05:30
10172	Crowd REST API	crowd-rest-application-management	1.0	2019-07-09 08:22:50.578+05:30
10173	jira-issue-nav-components	com.atlassian.jira.jira-issue-nav-components	8.9.2	2019-07-09 08:22:50.58+05:30
10174	jquery	com.atlassian.plugins.jquery	1.7.2.1	2019-07-09 08:22:50.581+05:30
10175	Atlassian Jira - Plugins - Auditing Plugin [Audit Log]	com.atlassian.jira.plugins.jira-auditing-plugin	7.13.0	2019-07-09 08:22:50.582+05:30
10176	JIRA Remote Link Aggregator Plugin	com.atlassian.plugins.jira-remote-link-aggregator-plugin	2.0.14	2019-07-09 08:22:50.583+05:30
10177	Streams API	com.atlassian.streams.streams-api	6.4.3	2019-07-09 08:22:50.585+05:30
10178	Atlassian Jira - Plugins - Atlassian Notifications Plugin	com.atlassian.jira.jira-whisper-plugin	7.13.0	2019-07-09 08:22:50.586+05:30
10179	Atlassian HTTP Client, Apache HTTP components impl	com.atlassian.httpclient.atlassian-httpclient-plugin	1.0.1	2019-07-09 08:22:50.587+05:30
10180	JIRA DVCS Connector Plugin	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin	4.3.1	2019-07-09 08:22:50.589+05:30
10181	JIRA Software Hungarian (Hungary) Language Pack	tac.jira software.languages.hu_HU	8.0.0.v20181107104339	2019-07-09 08:22:50.592+05:30
10182	Asana Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-asana-plugin	2.0.2	2019-07-09 08:22:50.593+05:30
10183	Atlassian Awareness Capability	com.atlassian.plugins.atlassian-awareness-capability	0.0.6	2019-07-09 08:22:50.594+05:30
10184	Atlassian Plugins - Web Resources REST	com.atlassian.plugins.atlassian-plugins-webresource-rest	3.5.41	2019-07-09 08:22:50.596+05:30
10185	Custom Field Types & Searchers	com.atlassian.jira.plugin.system.customfieldtypes	1.0	2019-07-09 08:22:50.598+05:30
10186	Project Creation Capability Product REST Plugin	com.atlassian.plugins.atlassian-project-creation-plugin	3.2.1	2019-07-09 08:22:50.599+05:30
10187	Atlassian Jira - Plugins - REST Plugin	com.atlassian.jira.rest	7.13.0	2019-07-09 08:22:50.601+05:30
10188	Atlassian Spring Scanner Runtime	com.atlassian.plugin.atlassian-spring-scanner-runtime	2.0.0	2019-07-09 08:22:50.603+05:30
10189	JIRA Software Czech (Czech Republic) Language Pack	tac.jira software.languages.cs_CZ	8.0.0.v20181107104339	2019-07-09 08:22:50.604+05:30
10190	Opensocial Plugin	com.atlassian.gadgets.opensocial	4.2.32	2019-07-09 08:22:50.605+05:30
10191	Atlassian Jira - Plugins - Confluence Link	com.atlassian.jira.jira-issue-link-confluence-plugin	7.13.0	2019-07-09 08:22:50.606+05:30
10192	Atlassian Net Promoter Score	com.atlassian.plugins.atlassian-nps-plugin	3.1.25	2019-07-09 08:22:50.608+05:30
10193	ROME, RSS and atOM utilitiEs for Java	rome.rome-1.0	1.0	2019-07-09 08:22:50.61+05:30
10194	User Format	jira.user.format	1.0	2019-07-09 08:22:50.612+05:30
10195	JIRA Core Finnish (Finland) Language Pack	tac.jira core.languages.fi_FI	8.0.0.v20181107105324	2019-07-09 08:22:50.614+05:30
10196	JIRA Software Japanese (Japan) Language Pack	tac.jira software.languages.ja_JP	8.0.0.v20181107104339	2019-07-09 08:22:50.615+05:30
10197	View Project Operations Sections	jira.webfragments.view.project.operations	1.0	2019-07-09 08:22:50.616+05:30
10198	atlassian-servlet-plugin	com.atlassian.web.atlassian-servlet-plugin	5.2.0	2019-07-09 08:22:50.618+05:30
10199	Apache Apache HttpCore OSGi bundle	org.apache.httpcomponents.httpcore-4.4.1	4.4.1	2019-07-09 08:22:50.619+05:30
10200	Crowd REST API	crowd-rest-plugin	1.0	2019-07-09 08:22:50.621+05:30
10201	JIRA Software Polish (Poland) Language Pack	tac.jira software.languages.pl_PL	8.0.0.v20181107104339	2019-07-09 08:22:50.625+05:30
10202	Atlassian OAuth Consumer SPI	com.atlassian.oauth.atlassian-oauth-consumer-spi	2.1.1	2019-07-09 08:22:50.626+05:30
10203	Atlassian Jira - Plugins - Post-Upgrade Landing Page	com.atlassian.jira.plugins.jira-post-upgrade-landing-page-plugin	7.13.0	2019-07-09 08:22:50.627+05:30
10204	JIRA Core Hungarian (Hungary) Language Pack	tac.jira core.languages.hu_HU	8.0.0.v20181107105324	2019-07-09 08:22:50.629+05:30
10205	Atlassian Spring Scanner Annotations	com.atlassian.plugin.atlassian-spring-scanner-annotation	2.0.0	2019-07-09 08:22:50.631+05:30
10206	jackson-module-scala-2.10-provider	com.atlassian.scala.plugins.jackson-module-scala-2.10-provider-plugin	0.5	2019-07-09 08:22:50.633+05:30
10207	Rich Text Editor for JIRA	com.atlassian.jira.plugins.jira-editor-plugin	2.3.0	2019-07-09 08:22:50.634+05:30
10208	Workflow Plugin	com.atlassian.jira.plugin.system.workflow	1.0	2019-07-09 08:22:50.636+05:30
10209	jira-importers-trello-plugin	com.atlassian.jira.plugins.jira-importers-trello-plugin	2.0.8	2019-07-09 08:22:50.637+05:30
10210	JIRA Software Dutch (Netherlands) Language Pack	tac.jira software.languages.nl_NL	8.0.0.v20181107104339	2019-07-09 08:22:50.638+05:30
10211	Icon Types Plugin	jira.icontypes	1.0	2019-07-09 08:22:50.639+05:30
10212	JIRA Core Norwegian (Norway) Language Pack	tac.jira core.languages.no_NO	8.0.0.v20181107105324	2019-07-09 08:22:50.64+05:30
10213	Atlassian WebHooks Plugin	com.atlassian.webhooks.atlassian-webhooks-plugin	3.2.3	2019-07-09 08:22:50.641+05:30
10214	Help Paths Plugin	jira.help.paths	1.0	2019-07-09 08:22:50.642+05:30
10215	Jira Base URL Plugin	com.atlassian.jira.jira-baseurl-plugin	3.2.0	2019-07-09 08:22:50.646+05:30
10216	Atlassian Jira - Plugins - Look And Feel Logo Upload Plugin	com.atlassian.jira.lookandfeel	7.13.0	2019-07-09 08:22:50.648+05:30
10217	Issue Status Plugin	com.atlassian.plugins.issue-status-plugin	1.1.7	2019-07-09 08:22:50.65+05:30
10218	Gadget Spec Publisher Plugin	com.atlassian.gadgets.publisher	4.2.32	2019-07-09 08:22:50.699+05:30
10219	Atlassian Jira - Plugins - OAuth Consumer SPI	com.atlassian.jira.oauth.consumer	7.13.0	2019-07-09 08:22:50.758+05:30
10220	JIRA Agile	com.pyxis.greenhopper.jira	7.13.0-DAILY20180924115437	2019-07-09 08:22:50.816+05:30
10221	JIRA Software Estonian (Estonia) Language Pack	tac.jira software.languages.et_EE	8.0.0.v20181107104339	2019-07-09 08:22:50.872+05:30
10222	JIRA Core French (France) Language Pack	tac.jira core.languages.fr_FR	8.0.0.v20181107105324	2019-07-09 08:22:50.924+05:30
10223	Renderer Component Factories Plugin	com.atlassian.jira.plugin.wiki.renderercomponentfactories	1.0	2019-07-09 08:22:50.98+05:30
10224	Atlassian LESS Transformer Plugin	com.atlassian.plugins.less-transformer-plugin	3.3.2	2019-07-09 08:22:51.046+05:30
10225	Pocketknife Feature Flags Plugin	com.atlassian.pocketknife.featureflags-plugin	0.5.4	2019-07-09 08:22:51.098+05:30
10226	Jira Bamboo Plugin	com.atlassian.jira.plugin.ext.bamboo	7.4.11	2019-07-09 08:22:51.146+05:30
10227	Atlassian JIRA - Plugins - Transition Trigger Plugin	com.atlassian.jira.plugins.jira-transition-triggers-plugin	6.0.0	2019-07-09 08:22:51.204+05:30
10228	Atlassian Bot Session Killer	com.atlassian.labs.atlassian-bot-killer	1.7.9	2019-07-09 08:22:51.314+05:30
10229	User Profile Panels	jira.user.profile.panels	1.0	2019-07-09 08:22:51.384+05:30
10230	scala-2.10-provider-plugin	com.atlassian.scala.plugins.scala-2.10-provider-plugin	0.14	2019-07-09 08:22:51.444+05:30
10231	JIRA Software Romanian (Romania) Language Pack	tac.jira software.languages.ro_RO	8.0.0.v20181107104339	2019-07-09 08:22:51.497+05:30
10232	Atlassian Jira - Plugins - ActiveObjects SPI	com.atlassian.jira.jira-activeobjects-spi-plugin	7.13.0	2019-07-09 08:22:51.555+05:30
10233	JIRA Project Permissions	jira.system.project.permissions	1.0	2019-07-09 08:22:51.621+05:30
10234	Wallboard Plugin	com.atlassian.jirawallboard.atlassian-wallboard-plugin	2.2.7	2019-07-09 08:22:51.622+05:30
10235	Atlassian Jira - Plugins - User Profile Plugin	com.atlassian.jira.jira-user-profile-plugin	3.0.8	2019-07-09 08:22:51.623+05:30
10236	Project Templates Plugin	com.atlassian.jira.project-templates-plugin	6.2.4	2019-07-09 08:22:51.624+05:30
10237	Atlassian Notifications	com.atlassian.whisper.atlassian-whisper-plugin	1.1.12	2019-07-09 08:22:51.625+05:30
10238	Filter Deletion Warning Plugin	jira.filter.deletion.warning	1.0	2019-07-09 08:22:51.626+05:30
10239	JIRA Software Monitor Plugin	com.atlassian.jira.plugins.jira-software-monitor-plugin	0.1.0-D20150923T085539	2019-07-09 08:22:51.629+05:30
10240	English (United States) Language Pack	com.atlassian.jira.jira-languages.en_US	7.13.0	2019-07-09 08:22:51.631+05:30
10241	Functional Extensions Guava Inter-Ops	io.atlassian.fugue.guava-4.5.0	4.5.0	2019-07-09 08:22:51.632+05:30
10242	Atlassian Jira - Plugins - LESS integration	com.atlassian.jira.jira-less-integration	7.13.0	2019-07-09 08:22:51.634+05:30
10243	Atlassian Jira - Plugins - SAL Plugin	com.atlassian.sal.jira	7.13.0	2019-07-09 08:22:51.636+05:30
10244	Atlassian Template Renderer Velocity 1.6 Plugin	com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	2.0.0	2019-07-09 08:22:51.637+05:30
10245	Atlassian Jira - Plugins - Mail Plugin	com.atlassian.jira.jira-mail-plugin	10.0.13	2019-07-09 08:22:51.638+05:30
10246	Atlassian Jira - Plugins - Closure Template Renderer	com.atlassian.jira.jira-soy-plugin	7.13.0	2019-07-09 08:22:51.639+05:30
10247	Jira Workflow Designer Plugin	com.atlassian.jira.plugins.jira-workflow-designer	7.4.13	2019-07-09 08:22:51.64+05:30
10248	Gadget Dashboard Plugin	com.atlassian.gadgets.dashboard	4.2.32	2019-07-09 08:22:51.642+05:30
10249	Atlassian - Administration - Quick Search - JIRA	com.atlassian.administration.atlassian-admin-quicksearch-jira	2.3.3	2019-07-09 08:22:51.643+05:30
10250	Web Panel Plugin	jira.webpanels	1.0	2019-07-09 08:22:51.646+05:30
10251	Applinks - Plugin - OAuth	com.atlassian.applinks.applinks-oauth-plugin	5.4.5	2019-07-09 08:22:51.647+05:30
10252	JIRA browser metrics integration plugin	com.atlassian.jira.plugins.jira-browser-metrics	2.0.13	2019-07-09 08:22:51.65+05:30
10253	JIRA Activity Stream Plugin	com.atlassian.streams.streams-jira-plugin	6.4.3	2019-07-09 08:22:51.651+05:30
10254	English (United Kingdom) Language Pack	com.atlassian.jira.jira-languages.en_UK	7.13.0	2019-07-09 08:22:51.652+05:30
10255	JIRA Usage Hints	jira.usage.hints	1.0	2019-07-09 08:22:51.654+05:30
\.


--
-- Data for Name: portalpage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.portalpage (id, username, pagename, description, sequence, fav_count, layout, ppversion) FROM stdin;
10000	\N	System Dashboard	\N	0	0	AA	0
10100	syedawase	aicydashboard	\N	\N	1	AA	3
\.


--
-- Data for Name: portletconfiguration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.portletconfiguration (id, portalpage, portlet_id, column_number, positionseq, gadget_xml, color, dashboard_module_complete_key) FROM stdin;
10000	10000	\N	0	0	\N	\N	com.atlassian.jira.gadgets:introduction-dashboard-item
10002	10000	\N	1	0	rest/gadgets/1.0/g/com.atlassian.jira.gadgets:assigned-to-me-gadget/gadgets/assigned-to-me-gadget.xml	\N	\N
10003	10000	\N	1	1	rest/gadgets/1.0/g/com.atlassian.streams.streams-jira-plugin:activitystream-gadget/gadgets/activitystream-gadget.xml	\N	\N
10101	10100	\N	0	0	\N	color1	com.atlassian.jira.gadgets:bubble-chart-dashboard-item
10100	10100	\N	1	0	\N	color1	com.atlassian.jira.gadgets:bubble-chart-dashboard-item
\.


--
-- Data for Name: priority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.priority (id, sequence, pname, description, iconurl, status_color) FROM stdin;
1	1	Highest	This problem will block progress.	/images/icons/priorities/highest.png	#d04437
2	2	High	Serious problem that could block progress.	/images/icons/priorities/high.png	#f15C75
3	3	Medium	Has the potential to affect progress.	/images/icons/priorities/medium.png	#f79232
4	4	Low	Minor problem or easily worked around.	/images/icons/priorities/low.png	#707070
5	5	Lowest	Trivial problem with little or no impact on progress.	/images/icons/priorities/lowest.png	#999999
\.


--
-- Data for Name: productlicense; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productlicense (id, license) FROM stdin;
10000	AAABfA0ODAoPeNp9kctuwjAQRff5ikjdtAtHITyLFKmQGJU2PJOy6sYNA7gKTjR2oPx9TQIqlMdy7Jm55955iFa5OWBoOg2z0mrX7Xa9anp+ZDq2YxtLBBCrNMsArYDHICTQOVc8FS4dRnQ6nvZDagzz9RfgaPEhAaVLKoaXCsViNWRrcNmWSbDt1styzXhixena+ObIrIuhcY7xSvf6TIG7Vyd2lThN46Ab7TIoFnqjwYBOvX4nOH7Rn4zj7mSuRpzGEYIOtOw1ihBwA9j33W59VCOTzqxHur33iHSCyWuJmGE6z2Nl7Qsi04XaMgRL7+QbcBXmULbdDuZKfNdsaEKhQDAR37Byh+YixoOO9hX0/ZAOSVCpO3az0no2dOWev9xZHCqGCtBdsESCMcIlE1yywiEXc77h85wlhodQvP0/WlJSzDTUfsI5iwK0W8yQy0OKPsgYeVbsftMQZniAMB/LIz19tk26YUleaJXUt85wLeBT8dO5v51l/QtEAQqYMC0CFFaL9K2ioegPohGrJwNdAyqEm/ANAhUAlFQJipQ3b2wsWfrJorEYVWD/Z7k=X02ii
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (id, pname, url, lead, description, pkey, pcounter, assigneetype, avatar, originalkey, projecttype) FROM stdin;
10000	sycliqscrum	\N	syedawase	\N	SYC	23	3	10324	SYC	software
10001	tpri		syedawase		TPRI	0	3	10324	TPRI	business
10002	truestate		syedawase		TRUES	0	3	10324	TRUES	software
\.


--
-- Data for Name: project_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_key (id, project_id, project_key) FROM stdin;
10000	10000	SYC
10001	10001	TPRI
10002	10002	TRUES
\.


--
-- Data for Name: projectcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectcategory (id, cname, description) FROM stdin;
\.


--
-- Data for Name: projectchangedtime; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectchangedtime (project_id, issue_changed_time) FROM stdin;
\.


--
-- Data for Name: projectrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectrole (id, name, description) FROM stdin;
10002	Administrators	A project role that represents administrators in a project
10100	Developers	\N
\.


--
-- Data for Name: projectroleactor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectroleactor (id, pid, projectroleid, roletype, roletypeparameter) FROM stdin;
10002	\N	10002	atlassian-group-role-actor	jira-administrators
10100	10000	10002	atlassian-group-role-actor	jira-administrators
10101	10000	10100	atlassian-user-role-actor	syedawase
10102	10001	10002	atlassian-group-role-actor	jira-administrators
10103	10002	10002	atlassian-group-role-actor	jira-administrators
\.


--
-- Data for Name: projectversion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projectversion (id, project, vname, description, sequence, released, archived, url, startdate, releasedate) FROM stdin;
10000	10000	Version 1.0	\N	1	true	\N	\N	\N	2020-03-19 17:46:14.547+05:30
10001	10000	Version 2.0	\N	2	\N	\N	\N	\N	2020-04-02 17:46:14.547+05:30
10002	10000	Version 3.0	\N	3	\N	\N	\N	\N	\N
\.


--
-- Data for Name: propertydata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertydata (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertydate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertydate (id, propertyvalue) FROM stdin;
10507	2020-03-27 05:23:57.556+05:30
\.


--
-- Data for Name: propertydecimal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertydecimal (id, propertyvalue) FROM stdin;
\.


--
-- Data for Name: propertyentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertyentry (id, entity_name, entity_id, property_key, propertytype) FROM stdin;
1	jira.properties	1	jira.version.patched	5
2	jira.properties	1	jira.avatar.issuetype.subtask.default.id	5
3	jira.properties	1	jira.avatar.default.id	5
4	jira.properties	1	jira.avatar.issuetype.default.id	5
5	jira.properties	1	jira.avatar.user.default.id	5
6	jira.properties	1	jira.avatar.user.anonymous.id	5
7	jira.properties	1	jira.scheme.default.issue.type	5
9	jira.properties	1	jira.whitelist.disabled	1
10	jira.properties	1	jira.whitelist.rules	6
11	jira.properties	1	jira.option.timetracking	1
12	jira.properties	1	jira.timetracking.estimates.legacy.behaviour	1
13	jira.properties	1	jira.version	5
14	jira.properties	1	jira.downgrade.minimum.version	5
15	jira.properties	1	jira.option.allowunassigned	1
16	jira.properties	1	jira.path.index.use.default.directory	1
21	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:8a6044147cf2c19c02d099279cfbfd47	6
22	jira.properties	1	jira.onboarding.app_user.id.threshold	5
23	jira.properties	1	post.migration.page.displayed	1
10100	jira.properties	1	AO_60DB71_#	5
10101	jira.properties	1	jira.webresource.superbatch.flushcounter	5
10102	jira.properties	1	jira.i18n.language.index	5
10103	jira.properties	1	jira.sid.key	5
10104	jira.properties	1	jira.scheme.default.priority	5
10200	jira.properties	1	jira.webresource.flushcounter	5
10201	jira.properties	1	jira.mail.send.disabled	1
10202	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedBy	5
10203	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedDate	5
10204	jira.properties	1	jira.i18n.default.locale	5
10205	jira.properties	1	webwork.i18n.encoding	5
10206	jira.properties	1	jira.title	5
10207	jira.properties	1	AO_E8B6CC_#	5
10208	jira.properties	1	dvcs.connector.bitbucket.url	5
10209	jira.properties	1	dvcs.connector.github.url	5
10210	jira.properties	1	AO_587B34_#	5
10211	jira.properties	1	AO_4AEACD_#	5
10212	jira.properties	1	AO_550953_#	5
10213	jira.properties	1	jira.baseurl	5
10214	jira.properties	1	jira.mode	5
10215	jira.properties	1	jira.path.attachments	5
10216	jira.properties	1	jira.path.attachments.use.default.directory	1
10217	jira.properties	1	jira.option.allowattachments	1
10218	ServiceConfig	10001	USE_DEFAULT_DIRECTORY	5
10219	jira.properties	1	jira.path.backup	5
10300	BambooServerProperties	1	bamboo.config.version	2
10301	GreenHopper.Run.History	1	lastRunVersion	6
10302	GreenHopper.Run.History	2	2019-07-09T08:21:58.886+05:30	6
10303	jira.plugin.devstatus.datastorage	1	upgrade.state	5
10304	jira.properties	1	com.atlassian.jira.util.index.IndexingCounterManagerImpl.counterValue	3
10305	jira.properties	1	jira.monitoring.jmx.enabled	1
10400	jira.properties	1	jira.setup	5
10401	jira.properties	1	jira.initial.build.number	5
10402	jira.properties	1	jira.option.user.externalmanagement	1
10403	jira.properties	1	jira.option.voting	1
10404	jira.properties	1	jira.option.watching	1
10405	jira.properties	1	jira.option.issuelinking	1
10406	jira.properties	1	jira.option.emailvisible	5
10500	jira.properties	1	jira.option.allowsubtasks	1
10501	jira.properties	1	com.atlassian.analytics.client.configuration..analytics_enabled	5
10503	jira.properties	1	jira-header-plugin.studio-tab-migration-complete	5
10504	jira.properties	1	com.atlassian.streams.InlineActivityStream:loaded.from.jira.projects	5
10505	GreenHopper.properties	1	GreenHopper.Sprint.Default.customfield.id	3
10506	admin.message.manager	1	user	5
10507	admin.message.manager	1	time	7
10508	com.atlassian.jira.user.flag.FlagDismissalServiceImpl	1	com.atlassian.jira.flag.resets	6
10509	admin.message.manager	1	task	5
10510	GreenHopper.properties	1	GreenHopper.Sprint.Index.Check.Necessary	5
10511	GreenHopper.properties	1	GreenHopper.EpicLink.Default.customfield.id	3
10512	GreenHopper.properties	1	GreenHopper.EpicStatus.Default.customfield.id	3
10513	GreenHopper.properties	1	GreenHopper.EpicLabel.Default.customfield.id	3
10514	GreenHopper.properties	1	GreenHopper.EpicColor.Default.customfield.id	3
10515	GreenHopper.properties	1	GreenHopper.LexoRank.Default.customfield.id	3
10516	GreenHopper.properties	1	GreenHopper.JIRA60.Version.Migration	1
10517	GreenHopper.properties	1	JIRA.Software.Simplified.Workflow.Upgraded	1
10518	GreenHopper.properties	1	GreenHopper.Epic.Default.issuetype.id	5
10519	GreenHopper.properties	1	GreenHopper.Story.Default.issuetype.id	5
10520	GreenHopper.properties	1	GreenHopper.StoryPoints.Default.customfield.id	3
10521	GreenHopper.properties	1	GreenHopper.Epic.Default.linktype.id	3
10522	jira.properties	1	com.atlassian.sal.jira:build	5
10523	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-api-plugin:whitelist.enabled	5
10524	jira.properties	1	com.atlassian.jira.gadgets:build	5
10525	jira.properties	1	com.atlassian.jira.plugins.jira-bitbucket-connector-plugin:build	5
10526	GreenHopper.UpgradeHistory	1	2020-03-26T19:53:58.048-04:00	6
10527	GreenHopper.UpgradeHistory	2	2020-03-26T19:53:58.071-04:00	6
10528	GreenHopper.properties	1	GreenHopper.Upgrade.Latest.Upgraded.Version	3
10529	jira.properties	1	com.pyxis.greenhopper.jira:build	5
10530	GreenHopper.UpgradeHistory	1	2020-03-26T19:53:58.084-04:00	6
10531	GreenHopper.UpgradeHistory	2	2020-03-26T19:53:58.152-04:00	6
10532	GreenHopper.UpgradeHistory	1	2020-03-26T19:53:58.164-04:00	6
10533	GreenHopper.UpgradeHistory	2	2020-03-26T19:53:58.172-04:00	6
10534	GreenHopper.UpgradeHistory	1	2020-03-26T19:53:58.182-04:00	6
10535	GreenHopper.UpgradeHistory	2	2020-03-26T19:53:58.313-04:00	6
10536	GreenHopper.UpgradeHistory	1	2020-03-26T19:53:58.323-04:00	6
10537	GreenHopper.UpgradeHistory	2	2020-03-26T19:53:58.363-04:00	6
10538	GreenHopper.UpgradeHistory	1	2020-03-26T19:53:58.373-04:00	6
10539	GreenHopper.UpgradeHistory	2	2020-03-26T19:53:58.378-04:00	6
10540	jira.properties	1	com.atlassian.crowd.embedded.admin:build	5
10541	jira.properties	1	com.atlassian.labs.hipchat.hipchat-for-jira-plugin:build	5
10542	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-core-plugin:build	5
10543	jira.properties	1	com.atlassian.jira.plugin.ext.bamboo:build	5
10544	jira.properties	1	com.atlassian.jira.jira-mail-plugin:build	5
10545	jira.properties	1	com.atlassian.jira.plugins.jira-workflow-designer:build	5
10546	jira.properties	1	com.atlassian.plugins.custom_apps.hasCustomOrder	5
10547	jira.properties	1	com.atlassian.plugins.atlassian-nav-links-plugin:build	5
10548	jira.properties	1	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin:build	5
10549	jira.properties	1	com.atlassian.jira.lookandfeel:isDefaultFavicon	5
10550	jira.properties	1	com.atlassian.jira.lookandfeel:usingCustomFavicon	5
10551	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconURL	5
10552	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconHiresURL	5
10553	jira.properties	1	com.atlassian.jira.lookandfeel:faviconWidth	5
10554	jira.properties	1	com.atlassian.jira.lookandfeel:faviconHeight	5
10555	jira.properties	1	com.atlassian.jira.lookandfeel:build	5
10556	jira.properties	1	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	5
10558	jira.properties	1	com.atlassian.upm:notifications:dismissal-plugin.request	5
10560	jira.properties	1	com.atlassian.upm:notifications:dismissal-evaluation.expired	5
10562	jira.properties	1	com.atlassian.upm:notifications:dismissal-edition.mismatch	5
10563	jira.properties	1	com.atlassian.upm:notifications:dismissal-maintenance.expired	5
10565	jira.properties	1	com.atlassian.upm:notifications:dismissal-auto.updated.plugin	5
10566	jira.properties	1	com.atlassian.upm:notifications:dismissal-auto.updated.upm	5
10567	jira.properties	1	com.atlassian.upm.request.PluginSettingsPluginRequestStore:requests:requests_v2	5
10568	jira.properties	1	com.atlassian.jirawallboard.atlassian-wallboard-plugin:build	5
10569	jira.properties	1	com.atlassian.jira.project-templates-plugin:build	5
10570	jira.properties	1	com.atlassian.analytics.client.configuration..policy_acknowledged	5
10571	jira.properties	1	com.atlassian.upm:notifications:notification-edition.mismatch	5
10572	jira.properties	1	com.atlassian.analytics.client.configuration.uuid	5
10573	jira.properties	1	com.atlassian.analytics.client.configuration.serverid	5
10574	jira.properties	1	com.atlassian.upm:notifications:notification-plugin.request	5
10575	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.expired	5
10576	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	5
10577	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.expired	5
10578	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	5
10579	fisheye-jira-plugin.properties	1	Upgrade Conditions Applied	5
10580	fisheye-jira-plugin.properties	1	FISH-375-fixed	5
10581	fisheye-jira-plugin.properties	1	fisheye.ual.migration.complete	5
10582	fisheye-jira-plugin.properties	1	fisheye.ual.crucible.enabled.property.fix.complete	5
10583	fisheye-jira-plugin.properties	1	Perforce Update Applied	5
10584	ApplicationUser	10000	jira.onboarding.first.use.flow.started	5
10585	jira.properties	1	com.atlassian.jira.onboarding.postsetup.AppPropertiesPostSetupAnnouncementStore.all	6
10586	ApplicationUser	10000	newsletter.signup.first.view	3
10587	ApplicationUser	10000	jira.onboarding.first.use.flow.current.sequence	5
10588	ApplicationUser	10000	jira.onboarding.first.use.flow.completed	1
10589	jira.properties	1	com.atlassian.upm:notifications:notification-update	5
10590	jira.properties	1	com.pyxis.greenhopper.jira:default.permission.scheme.id	5
10591	ApplicationUser	10000	GH.RapidViewSelected	1
10592	ApplicationUser	10000	com.atlassian.jira.jira-projects-plugin:release-page.badge	2
10593	user.format.mapping	1	profileLink	5
10594	ApplicationUser	10000	last-visited-item.10000	5
10595	jira.properties	1	com.atlassian.nps.plugin.status.nps_enabled	5
10596	jira.properties	1	com.atlassian.nps.plugin.status.nps_acknowledged	5
10597	ApplicationUser	10000	sprint.goal.onboarding.close	1
10598	ApplicationUser	10000	jira.user.suppressedTips.qs-onboarding-tip	1
10599	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:60fe30c8ab0453cacc9b5e2cfa0476e6	6
10600	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.draft.layout.v5:60fe30c8ab0453cacc9b5e2cfa0476e6	6
10601	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout.v5:60fe30c8ab0453cacc9b5e2cfa0476e6	6
10602	ApplicationUser	10000	user.search.filter.id	6
10603	ApplicationUser	10000	user.search.jql	6
10604	ApplicationUser	10000	last-visited-item.10001	5
10605	jira.properties	1	com.atlassian.whisper.plugin:ETag:messages	5
10606	jira.properties	1	com.atlassian.whisper.plugin:ETag:usermessages	5
10607	jira.properties	1	com.atlassian.whisper.plugin:last-successful-fetch-time	5
10608	jira.properties	1	com.atlassian.analytics.client.upload.last_date	5
10609	ApplicationUser	10000	com.atlassian.jira.flag.dismissals	6
10610	ApplicationUser	10000	jira.onboarding.first.use.flow.resolved	1
10611	jira.properties	1	org.apache.shindig.common.crypto.BlobCrypter:key	5
10612	ApplicationUser	10000	sal_com.atlassian.nps.plugin.configuration.nextSurveyDate.syedawase	5
10613	ApplicationUser	10000	last-visited-item.10002	5
10614	ApplicationUser	10000	user.last.issue.type.id	5
10615	ApplicationUser	10000	jira.editor.user.mode	5
10616	ApplicationUser	10000	jira.quick.edit.show.welcome.screen	1
10617	ApplicationUser	10000	jira.quick.create.use	1
10618	ApplicationUser	10000	jira.quick.create.fields	6
10619	ApplicationUser	10000	jira.issues.preferred.layout.key	5
10620	user.format.mapping	1	profileLinkActionHeader	5
10621	user.format.mapping	1	avatarFullNameHover	5
10622	ApplicationUser	10000	jira.quick.edit.use	1
10623	ApplicationUser	10000	jira.quick.edit.fields	6
10624	user.format.mapping	1	fullName	5
10625	user.format.mapping	1	userName	5
10700	jira.properties	1	com.atlassian.analytics.client.configuration..logged_base_analytics_data	5
10502	jira.properties	1	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	6
\.


--
-- Data for Name: propertynumber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertynumber (id, propertyvalue) FROM stdin;
10622	1
9	0
11	1
12	0
15	1
23	1
10201	0
10592	3
10300	22
10304	0
10616	1
10617	0
10591	1
10305	0
16	1
10216	1
10217	1
10402	0
10403	1
10404	1
10405	1
10500	1
10505	10100
10511	10101
10512	10102
10513	10103
10514	10104
10515	10105
10516	1
10517	1
10520	10106
10521	10200
10528	51
10586	1585266876499
10588	1
10597	1
10598	1
10610	1
\.


--
-- Data for Name: propertystring; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertystring (id, propertyvalue) FROM stdin;
10579	1
10580	1
10581	1
10582	1
10583	1
10584	cyoaFirstUseFlow
10587	cyoa:return
10590	10000
10593	jira.user.format:profile-link-user-format
10595	true
10596	true
10604	com.atlassian.jira.jira-projects-issue-navigator:sidebar-issue-navigator
10615	"wysiwyg"
10620	jira.user.format:profile-link-action-header-user-format
10206	Jira
10213	http://localhost:9090
10214	private
10215	C:\\Program Files\\Atlassian\\Application Data\\JIRA\\data\\attachments
10621	jira.user.format:avatar-and-full-name-with-hover-format
2	10316
3	10011
4	10300
5	10122
6	10123
7	10000
22	0
10100	1
10103	B5O4-QAVF-BFKT-ALQH
10104	10100
10605	W/"da39a3ee5e6b4b0d3255bfef95601890afd80709"
10202	
10203	1562600941394
10204	en_US
10102	english-moderate-stemming
10205	UTF-8
10219	C:\\Program Files\\Atlassian\\Application Data\\JIRA\\export
10218	true
10101	26
10400	true
10401	713000
10406	show
10208	https://bitbucket.org
10209	https://github.com
10608	4/15/20 12:35 AM
10501	true
10503	migrated
10207	16
10210	4
10211	1
10212	1
10303	UPGRADED
10510	true
10606	W/"da39a3ee5e6b4b0d3255bfef95601890afd80709"
10614	10000
10607	1586983167863
10619	split-view
10624	jira.user.format:full-name-user-format
10625	jira.user.format:user-name-user-format
10504	true
10570	true
10594	com.pyxis.greenhopper.jira:project-sidebar-plan-scrum
10700	true
10518	10000
10519	10001
10506	
10509	Story Points Field Creation
10522	2
10524	1
10525	2
10574	#java.util.List\n
10529	51
10540	3
10541	1
10523	true
10542	4
10543	1
10544	2
10545	1
10546	false
10547	1
10571	#java.util.List\n
10548	3
10549	false
10550	false
10551	/favicon.ico
10552	/images/64jira.png
10553	64
10554	64
10575	#java.util.List\n
10200	6411e0087192541a09d88223fb51a6a0
10555	1
10576	#java.util.List\n
10558	#java.util.List\n
10560	#java.util.List\n
10562	#java.util.List\n
10563	#java.util.List\n
10565	#java.util.List\n
10566	#java.util.List\n
10567	#java.util.List\n
10577	#java.util.List\n
10611	WGj22REWcE+iSIca5+chELAti3RyLE4WqTQYrKvYOPM=
10556	5
10568	6086
10569	2001
10572	c5befbb7-da3c-4710-b7b5-83fc74020db1
10573	B5O4-QAVF-BFKT-ALQH
10612	1586368529638
10613	com.pyxis.greenhopper.jira:project-sidebar-work-kanban
10578	#java.util.List\n
10589	#java.util.List\ncom.atlassian.troubleshooting.plugin-jira
1	713000
13	7.13.0
14	7.1.2
\.


--
-- Data for Name: propertytext; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propertytext (id, propertyvalue) FROM stdin;
10	http://www.atlassian.com/*\n
21	{\n    "edgeMap": {\n        "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1801.0,\n                    "y": 115.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1801.0,\n                "y": 115.0\n            },\n            "endStepId": 4,\n            "id": "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1776.85,\n                "y": 355.25\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.25,\n                "y": 154.25\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "483797F1-1BF4-5E0F-86C6-4D19CE6023A2": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1551.0,\n                "y": 104.0\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "517D7F32-20FB-309E-8639-4D19CE2ACB54": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                }\n            ],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1631.25,\n                "y": 479.5\n            },\n            "lineType": "poly",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "startStepId": 3\n        },\n        "58BD4605-5FB9-84EA-6952-4D19CE7B454B": {\n            "actionId": 1,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1470.0,\n                    "y": 16.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "58BD4605-5FB9-84EA-6952-4D19CE7B454B",\n            "label": "Create Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1475.5,\n                "y": 48.5\n            },\n            "lineType": "straight",\n            "startNodeId": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1470.0,\n                "y": 16.0\n            },\n            "startStepId": 1\n        },\n        "92D3DEFD-13AC-06A7-E5D8-4D19CE537791": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1439.5,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1390.0,\n                    "y": 434.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                }\n            ],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1390.0,\n                "y": 434.0\n            },\n            "endStepId": 3,\n            "id": "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1323.65,\n                "y": 193.75\n            },\n            "lineType": "poly",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1439.5,\n                "y": 116.0\n            },\n            "startStepId": 1\n        },\n        "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1677.0,\n                    "y": 227.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                },\n                {\n                    "positiveController": null,\n                    "x": 1773.5,\n                    "y": 425.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                }\n            ],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1773.5,\n                "y": 425.0\n            },\n            "endStepId": 5,\n            "id": "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1703.85,\n                "y": 218.5\n            },\n            "lineType": "poly",\n            "startNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1677.0,\n                "y": 227.0\n            },\n            "startStepId": 6\n        },\n        "C9EA1792-2332-8B56-A04D-4D19CD725367": {\n            "actionId": 301,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1465.0,\n                    "y": 436.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "C9EA1792-2332-8B56-A04D-4D19CD725367",\n            "label": "Stop Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1407.8,\n                "y": 308.5\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1465.0,\n                "y": 436.0\n            },\n            "startStepId": 3\n        },\n        "CAF37138-6321-E03A-8E41-4D19CDD7DC78": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1764.5,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1677.65,\n                "y": 365.0\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1764.5,\n                "y": 430.0\n            },\n            "startStepId": 5\n        },\n        "E1F8462A-8B0A-87EA-4F70-4D19CE423C83": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1488.0,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.0,\n                "y": 345.0\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1488.0,\n                "y": 430.0\n            },\n            "startStepId": 3\n        },\n        "E27D8EB8-8E49-430B-8FCB-4D19CE127171": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1840.0,\n                    "y": 130.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1846.5,\n                    "y": 428.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1846.5,\n                "y": 428.0\n            },\n            "endStepId": 5,\n            "id": "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1814.05,\n                "y": 169.5\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1840.0,\n                "y": 130.0\n            },\n            "startStepId": 4\n        },\n        "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "endStepId": 3,\n            "id": "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1607.25,\n                "y": 423.5\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1": {\n            "actionId": 701,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1635.75,\n                "y": 152.25\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "startStepId": 4\n        }\n    },\n    "nodeMap": {\n        "0740FFFA-2AA1-C90A-38ED-4D19CD61899B": {\n            "id": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "inLinkIds": [\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791"\n            ],\n            "isInitialAction": false,\n            "label": "In Progress",\n            "outLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 146.0,\n                "x": 1373.0,\n                "y": 419.0\n            },\n            "stepId": 3\n        },\n        "15174530-AE75-04E0-1D9D-4D19CD200835": {\n            "id": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "inLinkIds": [],\n            "isInitialAction": true,\n            "label": "Create Issue",\n            "outLinkIds": [\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 157.0,\n                "x": 1405.0,\n                "y": 0.0\n            },\n            "stepId": 1\n        },\n        "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34": {\n            "id": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "inLinkIds": [\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "isInitialAction": false,\n            "label": "Closed",\n            "outLinkIds": [\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 120.0,\n                "x": 1569.0,\n                "y": 210.0\n            },\n            "stepId": 6\n        },\n        "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D": {\n            "id": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "inLinkIds": [\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2"\n            ],\n            "isInitialAction": false,\n            "label": "Resolved",\n            "outLinkIds": [\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171"\n            ],\n            "rect": {\n                "height": 44.0,\n                "positiveController": null,\n                "width": 137.0,\n                "x": 1709.0,\n                "y": 97.0\n            },\n            "stepId": 4\n        },\n        "778534F4-7595-88B6-45E1-4D19CD518712": {\n            "id": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "inLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "isInitialAction": false,\n            "label": "Open",\n            "outLinkIds": [\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 106.0,\n                "x": 1429.5,\n                "y": 97.0\n            },\n            "stepId": 1\n        },\n        "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB": {\n            "id": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "inLinkIds": [\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "isInitialAction": false,\n            "label": "Reopened",\n            "outLinkIds": [\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 142.0,\n                "x": 1749.5,\n                "y": 418.0\n            },\n            "stepId": 5\n        }\n    },\n    "rootIds": [\n        "15174530-AE75-04E0-1D9D-4D19CD200835"\n    ],\n    "width": 1136\n}\n
10302	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2019-07-09T08:21:58.690+05:30</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2018-09-24T17:30:50.235+05:30</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10301	<map>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-04-15T09:39:01.704-04:00</string>\n  </entry>\n  <entry>\n    <string>buildDate</string>\n    <string>2018-09-24T08:00:50.235-04:00</string>\n  </entry>\n  <entry>\n    <string>latestUpgradeTaskRun</string>\n    <string>0</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10508	{"com.atlassian.jira.reindex.required":1585266837561}
10526	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.047-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10527	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>6</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.071-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>46</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10530	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.084-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10531	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>66</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.152-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>47</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10532	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.164-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10533	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>5</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.172-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>48</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10534	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.182-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10535	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>128</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.312-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>49</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10536	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.323-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10537	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>37</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.363-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>50</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10538	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>-1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.373-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>51</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10539	<map>\n  <entry>\n    <string>timeTaken</string>\n    <string>1</string>\n  </entry>\n  <entry>\n    <string>pluginVersion</string>\n    <string>7.13.0-DAILY20180924115437</string>\n  </entry>\n  <entry>\n    <string>ranOn</string>\n    <string>2020-03-26T19:53:58.378-04:00</string>\n  </entry>\n  <entry>\n    <string>buildNumber</string>\n    <string>51</string>\n  </entry>\n  <entry>\n    <string>changeSet</string>\n    <string>d41bd3fbb1a7bce4</string>\n  </entry>\n</map>
10585	database.setup=AWAITS;app.properties.setup=FULLFILLED;create.user.mail.properties.setup=ANNOUNCE;mail.properties.setup=ANNOUNCE
10599	{\n  "annotations": [],\n  "width": 1375,\n  "rootIds": ["0D45CF1F-C6AE-B393-21B3-5A05591D1737"],\n  "nodeMap": {\n    "4E4B73B1-3C40-5FAC-264E-5A05595F62A5": {\n      "stepId": 2,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 151.0,\n        "x": 1927.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "5841480E-F84E-DBF7-3509-5A0559D9CADA",\n        "407198C8-F439-AEEC-73FE-5A0559F98EB5"\n      ],\n      "outLinkIds": [\n        "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n        "40B3F1B0-322B-BC82-F68C-5A0559E9885E"\n      ],\n      "id": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "label": "In Progress"\n    },\n    "0D45CF1F-C6AE-B393-21B3-5A05591D1737": {\n      "stepId": 1,\n      "isInitialAction": true,\n      "rect": {\n        "height": 42.0,\n        "width": 117.0,\n        "x": 1512.0,\n        "y": 0.0,\n        "positiveController": null\n      },\n      "inLinkIds": [],\n      "outLinkIds": ["A56BC718-F21C-4688-A750-5A055A19265A"],\n      "id": "0D45CF1F-C6AE-B393-21B3-5A05591D1737",\n      "label": "Create"\n    },\n    "3A048B99-FC9B-EADD-9590-5A0559B773A9": {\n      "stepId": 3,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 109.0,\n        "x": 1518.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "40B3F1B0-322B-BC82-F68C-5A0559E9885E",\n        "1B7EC8D6-8966-9F61-6207-5A055A09D24C"\n      ],\n      "outLinkIds": [\n        "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n        "5841480E-F84E-DBF7-3509-5A0559D9CADA"\n      ],\n      "id": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "label": "Done"\n    },\n    "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257": {\n      "stepId": 1,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 114.0,\n        "x": 1512.0,\n        "y": 80.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n        "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n        "A56BC718-F21C-4688-A750-5A055A19265A"\n      ],\n      "outLinkIds": [\n        "407198C8-F439-AEEC-73FE-5A0559F98EB5",\n        "1B7EC8D6-8966-9F61-6207-5A055A09D24C"\n      ],\n      "id": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "label": "To Do"\n    }\n  },\n  "edgeMap": {\n    "1B7EC8D6-8966-9F61-6207-5A055A09D24C": {\n      "actionId": 21,\n      "startStepId": 1,\n      "endStepId": 3,\n      "startPoint": {\n        "x": 1572.0,\n        "y": 122.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1573.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1572.0,\n          "y": 122.0,\n          "positiveController": null\n        },\n        {\n          "x": 1573.0,\n          "y": 354.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1567.0,\n        "y": 219.6,\n        "positiveController": null\n      },\n      "startNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "endNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "id": "1B7EC8D6-8966-9F61-6207-5A055A09D24C",\n      "label": "Done"\n    },\n    "5841480E-F84E-DBF7-3509-5A0559D9CADA": {\n      "actionId": 61,\n      "startStepId": 3,\n      "endStepId": 2,\n      "startPoint": {\n        "x": 1627.0,\n        "y": 361.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1953.0,\n        "y": 257.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1627.0,\n          "y": 361.0,\n          "positiveController": null\n        },\n        {\n          "x": 1953.0,\n          "y": 257.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1658.0,\n        "y": 287.0,\n        "positiveController": null\n      },\n      "startNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "endNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "id": "5841480E-F84E-DBF7-3509-5A0559D9CADA",\n      "label": "Reopen and start progress"\n    },\n    "321335A8-A6FA-C691-F3DF-5A0559C94B79": {\n      "actionId": 51,\n      "startStepId": 3,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1528.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1527.0,\n        "y": 120.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1528.0,\n          "y": 354.0,\n          "positiveController": null\n        },\n        {\n          "x": 1527.0,\n          "y": 120.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1437.0,\n        "y": 219.1,\n        "positiveController": null\n      },\n      "startNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n      "label": "Reopen"\n    },\n    "40B3F1B0-322B-BC82-F68C-5A0559E9885E": {\n      "actionId": 41,\n      "startStepId": 2,\n      "endStepId": 3,\n      "startPoint": {\n        "x": 2056.0,\n        "y": 257.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1608.0,\n        "y": 394.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 2056.0,\n          "y": 257.0,\n          "positiveController": null\n        },\n        {\n          "x": 1608.0,\n          "y": 394.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1788.5,\n        "y": 325.25,\n        "positiveController": null\n      },\n      "startNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "endNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "id": "40B3F1B0-322B-BC82-F68C-5A0559E9885E",\n      "label": "Done"\n    },\n    "A56BC718-F21C-4688-A750-5A055A19265A": {\n      "actionId": 1,\n      "startStepId": 1,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1557.0,\n        "y": 40.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1557.0,\n        "y": 80.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1557.0,\n          "y": 40.0,\n          "positiveController": null\n        },\n        {\n          "x": 1557.0,\n          "y": 80.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1537.0,\n        "y": 50.6,\n        "positiveController": null\n      },\n      "startNodeId": "0D45CF1F-C6AE-B393-21B3-5A05591D1737",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "A56BC718-F21C-4688-A750-5A055A19265A",\n      "label": "Create"\n    },\n    "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7": {\n      "actionId": 31,\n      "startStepId": 2,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1951.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1623.0,\n        "y": 114.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1951.0,\n          "y": 215.0,\n          "positiveController": null\n        },\n        {\n          "x": 1623.0,\n          "y": 114.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1709.5,\n        "y": 168.75,\n        "positiveController": null\n      },\n      "startNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n      "label": "Stop Progress"\n    },\n    "407198C8-F439-AEEC-73FE-5A0559F98EB5": {\n      "actionId": 11,\n      "startStepId": 1,\n      "endStepId": 2,\n      "startPoint": {\n        "x": 1626.0,\n        "y": 89.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 2053.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1626.0,\n          "y": 89.0,\n          "positiveController": null\n        },\n        {\n          "x": 2053.0,\n          "y": 215.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1809.5,\n        "y": 131.5,\n        "positiveController": null\n      },\n      "startNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "endNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "id": "407198C8-F439-AEEC-73FE-5A0559F98EB5",\n      "label": "Start Progress"\n    }\n  }\n}
10600	{"statuses":[{"id":"S<1>","x":1512.0,"y":80.0},{"id":"S<2>","x":1927.0,"y":215.0},{"id":"I<1>","x":1512.0,"y":0.0},{"id":"S<3>","x":1518.0,"y":354.0}],"transitions":[],"updateAuthor":null,"updatedDate":null,"loopedTransitionContainer":null}
10601	{"statuses":[{"id":"S<1>","x":1512.0,"y":80.0},{"id":"S<2>","x":1927.0,"y":215.0},{"id":"I<1>","x":1512.0,"y":0.0},{"id":"S<3>","x":1518.0,"y":354.0}],"transitions":[],"updateAuthor":null,"updatedDate":null,"loopedTransitionContainer":null}
10623	fixVersions,assignee,labels,components,priority,comment
10618	summary,description,priority,versions,components
10602	\N
10603	issuetype = Story
10609	{"com.atlassian.jira.reindex.required":1585339817506}
10502	#java.util.List\n{"userKey":"JIRA","date":1586957963060,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1586903425310,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1586212906220,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}\n{"userKey":"JIRA","date":1586090522835,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}
\.


--
-- Data for Name: qrtz_calendars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_calendars (id, calendar_name, calendar) FROM stdin;
\.


--
-- Data for Name: qrtz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_cron_triggers (id, trigger_id, cronexperssion) FROM stdin;
\.


--
-- Data for Name: qrtz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_fired_triggers (id, entry_id, trigger_id, trigger_listener, fired_time, trigger_state) FROM stdin;
\.


--
-- Data for Name: qrtz_job_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_job_details (id, job_name, job_group, class_name, is_durable, is_stateful, requests_recovery, job_data) FROM stdin;
\.


--
-- Data for Name: qrtz_job_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_job_listeners (id, job, job_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_simple_triggers (id, trigger_id, repeat_count, repeat_interval, times_triggered) FROM stdin;
\.


--
-- Data for Name: qrtz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_trigger_listeners (id, trigger_id, trigger_listener) FROM stdin;
\.


--
-- Data for Name: qrtz_triggers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.qrtz_triggers (id, trigger_name, trigger_group, job, next_fire, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr) FROM stdin;
\.


--
-- Data for Name: reindex_component; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reindex_component (id, request_id, affected_index, entity_type) FROM stdin;
\.


--
-- Data for Name: reindex_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reindex_request (id, type, request_time, start_time, completion_time, status, execution_node_id, query) FROM stdin;
\.


--
-- Data for Name: remembermetoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.remembermetoken (id, created, token, username) FROM stdin;
\.


--
-- Data for Name: remotelink; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.remotelink (id, issueid, globalid, title, summary, url, iconurl, icontitle, relationship, resolved, statusname, statusdescription, statusiconurl, statusicontitle, statusiconlink, statuscategorykey, statuscategorycolorname, applicationtype, applicationname) FROM stdin;
\.


--
-- Data for Name: replicatedindexoperation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.replicatedindexoperation (id, index_time, node_id, affected_index, entity_type, affected_ids, operation, filename) FROM stdin;
\.


--
-- Data for Name: resolution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resolution (id, sequence, pname, description, iconurl) FROM stdin;
10000	1	Done	Work has been completed on this issue.	\N
10001	2	Won't Do	This issue won't be actioned.	\N
10002	3	Duplicate	The problem is a duplicate of an existing issue.	\N
10003	4	Cannot Reproduce	All attempts at reproducing this issue failed, or not enough information was available to reproduce the issue. Reading the code produces no clues as to why this behavior would occur. If more information appears later, please reopen the issue.	\N
\.


--
-- Data for Name: rundetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rundetails (id, job_id, start_time, run_duration, run_outcome, info_message) FROM stdin;
187648	assertionId-cleanup	2020-04-16 07:08:47.068+05:30	41	S	
187650	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	2020-04-16 07:09:12.736+05:30	46	S	Removed 0 temporary attachments
187651	JiraPluginScheduler:com.atlassian.jira.plugins.workflow.sharing.file.FileCleaningJob	2020-04-16 07:09:23.357+05:30	9	S	
187657	PluginRequestCheckJob-job	2020-04-16 07:09:31.439+05:30	9	S	
93017	08f931bb-a6b5-443e-9f34-58f37b30f1a9	2020-04-07 04:12:04.786+05:30	15975	S	
187659	data-provider-cleanup	2020-04-16 07:09:31.525+05:30	1	S	
187830	CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob	2020-04-16 07:27:52.884+05:30	22	S	
187664	CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob	2020-04-16 07:09:52.912+05:30	181	S	
187667	JiraPluginScheduler:com.atlassian.troubleshooting.healthcheck.scheduler.HealthCheckSchedulerImpl:job	2020-04-16 07:10:23.365+05:30	4374	S	
10200	53db6917-ff34-4609-af74-cf28e6660f18	2020-03-27 05:22:58.121+05:30	26	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10201	d4550014-faa2-47d5-af08-2d2d180f44b9	2020-03-27 05:22:58.123+05:30	24	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10202	1a60207b-c900-43e5-bf1d-496d41738025	2020-03-27 05:22:58.1+05:30	47	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10204	b667e10e-b764-459c-b35e-d46ae477244b	2020-03-27 05:22:58.262+05:30	7	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10205	dd199cf6-ca9b-4821-96c8-4e8fa40b08ea	2020-03-27 05:22:58.261+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10206	c9bf18b3-77de-4ec2-8ea7-418c672dfed4	2020-03-27 05:22:58.263+05:30	7	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10207	83f76431-443a-47f2-8a8a-9613eeccbfdd	2020-03-27 05:22:58.28+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10208	2face9a1-a116-4c88-8018-2ba87a8a6fc2	2020-03-27 05:22:58.281+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10209	f5f8f6d0-095b-42dd-a233-78cf199796f7	2020-03-27 05:22:58.281+05:30	7	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10210	d220d520-c131-422e-bcca-02908162b2e0	2020-03-27 05:22:58.292+05:30	3	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10211	eef430c0-270e-4eda-877a-005d65b8287b	2020-03-27 05:22:58.294+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10212	c277ab38-b2f6-4bba-a46c-48651f6eff9a	2020-03-27 05:22:58.297+05:30	7	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10214	873480e3-a349-4720-93da-ba8b390d2169	2020-03-27 05:22:58.31+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10218	ac534de9-6ab3-4c13-babe-b85c0335f651	2020-03-27 05:22:58.325+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10221	020f0d52-0867-41a3-95c4-36180c234140	2020-03-27 05:22:58.333+05:30	5	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
182530	com.atlassian.jira.cache.monitor.CacheStatisticsMonitor	2020-04-15 22:03:34.858+05:30	156	S	
180948	d795efb8-100e-403f-ba61-b6a07082f3ca	2020-04-15 19:12:31.336+05:30	165745	S	
187831	e54dc63c-938a-400c-9d9f-0fd8792215c0	2020-04-16 07:27:52.885+05:30	23	S	
187832	com.atlassian.jira.service.JiraService:10000	2020-04-16 07:28:00+05:30	0	S	
187833	27040277-d3c7-479f-bd69-30ca6b7328b1	2020-04-16 07:28:31.283+05:30	2	S	
187834	706f6248-e73e-4ec1-91d3-abbacb54f832	2020-04-16 07:28:31.327+05:30	2	S	
187835	86443f8d-3cde-4c0c-865f-eb5f506054c4	2020-04-16 07:28:31.359+05:30	2	S	
187836	8291672e-c4b4-4088-bc93-1a0f0f74f1fa	2020-04-16 07:28:31.408+05:30	1	S	
187837	CompatibilityPluginScheduler.JobId.LEXO_RANK_SCHEDULER_JOB	2020-04-16 07:28:31.746+05:30	3	S	
178326	5233f278-4992-461c-b8ed-a818199745c6	2020-04-15 04:03:34.24+05:30	34230	S	
10213	8efb9a51-a9d3-4fc9-ab0c-d629fd6981fe	2020-03-27 05:22:58.302+05:30	7	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10216	03f63c9b-cae0-4822-ad2f-d77d9a6bbc61	2020-03-27 05:22:58.318+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10219	2230f8d5-e4ea-4ac9-91c4-fbdec0d4ed66	2020-03-27 05:22:58.328+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10222	2e2e8200-3904-428f-a83b-7e22f52f3c4e	2020-03-27 05:22:58.342+05:30	8	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
187297	com.atlassian.jira.apdex.impl.SendAnalyticsJobRunner	2020-04-16 06:31:00.001+05:30	5	S	
187656	com.atlassian.jira.plugins.dvcs.scheduler.DvcsScheduler:job	2020-04-16 07:09:31.439+05:30	4	S	
187663	CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob	2020-04-16 07:09:52.91+05:30	182	S	
185403	CompatibilityPluginScheduler.JobId.Service Provider Session Remover	2020-04-16 03:09:23.328+05:30	87	S	
184838	com.atlassian.whisper.plugin.fetch.FetchJob	2020-04-16 02:09:23.347+05:30	4572	S	
178777	analytics-collection	2020-04-15 08:53:04.511+05:30	115	S	Skipped collection
180808	com.atlassian.jira.service.JiraService:10002	2020-04-15 19:09:31.446+05:30	51	S	
180813	com.atlassian.jira.user.UserHistoryDatabaseCompactor	2020-04-15 19:09:31.507+05:30	172	S	
180815	applink-status-analytics-job	2020-04-15 19:09:31.672+05:30	83	S	
180816	InstanceTopologyJob-job	2020-04-15 19:09:31.464+05:30	322	S	
180817	PluginUpdateCheckJob-job	2020-04-15 19:09:31.451+05:30	1855	S	
180818	415a95ef-b8f7-4faf-b0a5-4425be5edd70	2020-04-15 19:09:31.688+05:30	7058	S	
180819	JiraPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job	2020-04-15 19:09:33.339+05:30	10386	S	
180823	fd374834-8573-45fd-b6c2-6d86dce599d3	2020-04-15 19:09:31.758+05:30	21178	S	
180825	com.atlassian.jira.plugins.software.monitor.ApplicationPluginsEnablerJobRunner	2020-04-15 19:10:08.638+05:30	37	S	
180900	com.atlassian.jira.upgrade.UpgradeService	2020-04-15 19:10:22.472+05:30	343	S	
10215	e7e99675-2d92-47c3-bc2b-4770306c9d40	2020-03-27 05:22:58.316+05:30	4	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10217	d0d12d83-9f87-4407-af78-8a6a28339e11	2020-03-27 05:22:58.324+05:30	3	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
10220	f5efedd9-b368-4106-a672-9cea8b38347c	2020-03-27 05:22:58.332+05:30	3	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
93019	a75abd4b-9a50-45b7-8999-d68565f7a27d	2020-04-07 04:12:04.806+05:30	34560	S	
187464	com.atlassian.diagnostics.internal.analytics.DailyAlertAnalyticsJob	2020-04-16 06:49:00+05:30	32	S	
187800	data-provider-poll	2020-04-16 07:24:31.495+05:30	64	S	
80016	47e53d9d-2659-491e-b6d4-474d4cdd870b	2020-04-05 18:12:08.082+05:30	22642	S	
103773	com.atlassian.jira.analytics.scheduler.AnalyticsScheduler	2020-04-08 04:12:02.488+05:30	4596	S	
80018	ecf09ed2-891d-49c8-9074-60160c6b4a94	2020-04-05 18:12:08.087+05:30	35743	S	
80125	0817ca5d-28b3-42cb-ab6b-31da2d6e7ee3	2020-04-05 18:15:05.689+05:30	78609	S	
10225	5e1a5ad9-cb56-4d28-b4df-791a485175dd	2020-03-27 05:22:58.259+05:30	3	U	Job runner key 'com.atlassian.jira.DefaultJiraLauncher.IndexRecovery' is not registered
182411	com.atlassian.jira.service.JiraService:10001	2020-04-15 21:50:00.002+05:30	50086	S	
179378	JiraPluginScheduler:com.atlassian.analytics.client.upload.S3EventUploader:job	2020-04-15 10:05:00.001+05:30	874	S	
178211	4ebf19ec-80dc-455b-b335-4537479daf3c	2020-04-15 04:00:34.714+05:30	10256	S	
180810	LocalPluginLicenseNotificationJob-job	2020-04-15 19:09:31.447+05:30	209	S	
180811	BundledUpdateCheckJob-job	2020-04-15 19:09:31.66+05:30	4	S	
178216	2d3040f0-b7c7-437a-ba65-c09a6fe45125	2020-04-15 04:00:34.718+05:30	22807	S	
187829	JiraPluginScheduler:LEXO_RANK_STATS_COLLECTOR_JOB	2020-04-16 07:27:52.885+05:30	0	S	
93138	4ec0e893-a531-429f-a704-e6305eef599b	2020-04-07 04:15:04.4+05:30	157031	S	
\.


--
-- Data for Name: schemeissuesecurities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schemeissuesecurities (id, scheme, security, sec_type, sec_parameter) FROM stdin;
\.


--
-- Data for Name: schemeissuesecuritylevels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schemeissuesecuritylevels (id, name, description, scheme) FROM stdin;
\.


--
-- Data for Name: schemepermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schemepermissions (id, scheme, permission, perm_type, perm_parameter, permission_key) FROM stdin;
10025	0	32	projectrole	10002	MANAGE_WATCHERS
10026	0	34	projectrole	10002	EDIT_ALL_COMMENTS
10027	0	35	applicationRole		EDIT_OWN_COMMENTS
10028	0	36	projectrole	10002	DELETE_ALL_COMMENTS
10029	0	37	applicationRole		DELETE_OWN_COMMENTS
10030	0	38	projectrole	10002	DELETE_ALL_ATTACHMENTS
10031	0	39	applicationRole		DELETE_OWN_ATTACHMENTS
10033	0	29	applicationRole		VIEW_DEV_TOOLS
10101	\N	44	group	jira-administrators	\N
10200	0	45	applicationRole		VIEW_READONLY_WORKFLOW
10300	0	46	applicationRole		TRANSITION_ISSUES
10000	\N	0	group	jira-administrators	\N
10004	0	23	projectrole	10002	ADMINISTER_PROJECTS
10005	0	10	applicationRole		BROWSE_PROJECTS
10006	0	11	applicationRole		CREATE_ISSUES
10007	0	15	applicationRole		ADD_COMMENTS
10008	0	19	applicationRole		CREATE_ATTACHMENTS
10009	0	13	applicationRole		ASSIGN_ISSUES
10010	0	17	applicationRole		ASSIGNABLE_USER
10011	0	14	applicationRole		RESOLVE_ISSUES
10012	0	21	applicationRole		LINK_ISSUES
10013	0	12	applicationRole		EDIT_ISSUES
10014	0	16	projectrole	10002	DELETE_ISSUES
10015	0	18	applicationRole		CLOSE_ISSUES
10016	0	25	applicationRole		MOVE_ISSUES
10017	0	28	applicationRole		SCHEDULE_ISSUES
10018	0	30	projectrole	10002	MODIFY_REPORTER
10019	0	20	applicationRole		WORK_ON_ISSUES
10020	0	43	projectrole	10002	DELETE_ALL_WORKLOGS
10021	0	42	applicationRole		DELETE_OWN_WORKLOGS
10022	0	41	projectrole	10002	EDIT_ALL_WORKLOGS
10023	0	40	applicationRole		EDIT_OWN_WORKLOGS
10024	0	31	applicationRole		VIEW_VOTERS_AND_WATCHERS
10401	0	\N	projectrole	10002	MANAGE_SPRINTS_PERMISSION
10402	10000	\N	applicationRole	\N	BROWSE_PROJECTS
10403	10000	\N	applicationRole	\N	CREATE_ISSUES
10404	10000	\N	applicationRole	\N	EDIT_ISSUES
10405	10000	\N	applicationRole	\N	ASSIGN_ISSUES
10406	10000	\N	applicationRole	\N	RESOLVE_ISSUES
10407	10000	\N	applicationRole	\N	ADD_COMMENTS
10408	10000	\N	projectrole	10002	DELETE_ISSUES
10409	10000	\N	applicationRole	\N	ASSIGNABLE_USER
10410	10000	\N	applicationRole	\N	CLOSE_ISSUES
10411	10000	\N	applicationRole	\N	CREATE_ATTACHMENTS
10412	10000	\N	applicationRole	\N	WORK_ON_ISSUES
10413	10000	\N	applicationRole	\N	LINK_ISSUES
10414	10000	\N	projectrole	10002	ADMINISTER_PROJECTS
10415	10000	\N	applicationRole	\N	MOVE_ISSUES
10416	10000	\N	applicationRole	\N	SCHEDULE_ISSUES
10417	10000	\N	projectrole	10002	MODIFY_REPORTER
10418	10000	\N	applicationRole	\N	VIEW_VOTERS_AND_WATCHERS
10419	10000	\N	projectrole	10002	MANAGE_WATCHERS
10420	10000	\N	projectrole	10002	EDIT_ALL_COMMENTS
10421	10000	\N	applicationRole	\N	EDIT_OWN_COMMENTS
10422	10000	\N	projectrole	10002	DELETE_ALL_COMMENTS
10423	10000	\N	applicationRole	\N	DELETE_OWN_COMMENTS
10424	10000	\N	projectrole	10002	DELETE_ALL_ATTACHMENTS
10425	10000	\N	applicationRole	\N	DELETE_OWN_ATTACHMENTS
10426	10000	\N	applicationRole	\N	EDIT_OWN_WORKLOGS
10427	10000	\N	projectrole	10002	EDIT_ALL_WORKLOGS
10428	10000	\N	applicationRole	\N	DELETE_OWN_WORKLOGS
10429	10000	\N	projectrole	10002	DELETE_ALL_WORKLOGS
10430	10000	\N	applicationRole	\N	VIEW_READONLY_WORKFLOW
10431	10000	\N	applicationRole	\N	TRANSITION_ISSUES
10432	10000	\N	applicationRole	\N	VIEW_DEV_TOOLS
10433	10000	\N	applicationRole	\N	MANAGE_SPRINTS_PERMISSION
\.


--
-- Data for Name: searchrequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.searchrequest (id, filtername, authorname, description, username, groupname, projectid, reqcontent, fav_count, filtername_lower) FROM stdin;
10000	Filter for SYC board	syedawase	\N	syedawase	\N	\N	project = SYC ORDER BY Rank ASC	0	filter for syc board
10001	Open and unassigned (TPRI)	syedawase	\N	syedawase	\N	\N	project = 10001 and statusCategory != Done and assignee = EMPTY ORDER BY priority desc	0	open and unassigned (tpri)
10002	Due this week (TPRI)	syedawase	\N	syedawase	\N	\N	project = 10001 and duedate >= startOfWeek() and duedate <= endOfWeek() ORDER BY priority desc	0	due this week (tpri)
10003	Overdue (TPRI)	syedawase	\N	syedawase	\N	\N	project = 10001 and statusCategory != Done and duedate < now() ORDER BY duedate desc	0	overdue (tpri)
10004	Filter for TRUES board	syedawase	\N	syedawase	\N	\N	project = TRUES ORDER BY Rank ASC	0	filter for trues board
10005	Filter for myboard	syedawase	\N	syedawase	\N	\N	project = SYC ORDER BY Rank ASC	0	filter for myboard
\.


--
-- Data for Name: sequence_value_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sequence_value_item (seq_name, seq_id) FROM stdin;
IssueTypeScreenSchemeEntity	10200
ColumnLayout	10100
ColumnLayoutItem	10100
UpgradeTaskHistoryAuditLog	10200
Resolution	10100
PluginVersion	10300
CustomFieldOption	10100
Status	10100
Workflow	10200
WorkflowScheme	10200
WorkflowSchemeEntity	10200
AuditItem	10200
SearchRequest	10100
SharePermissions	10200
PermissionScheme	10100
AuditChangedValue	10300
EntityProperty	10100
ProjectRole	10200
Version	10100
OSWorkflowEntry	10100
OSCurrentStep	10100
Issue	10100
Avatar	10500
EventType	10000
FieldLayout	10100
GadgetUserPreference	10100
Notification	10200
NotificationScheme	10100
OAuthConsumer	10100
Priority	10000
ServiceConfig	10200
ListenerConfig	10500
ProductLicense	10100
UpgradeHistory	10200
Feature	10200
Group	10110
CustomFieldValue	10100
UpgradeVersionHistory	10100
LicenseRoleGroup	10100
EntityPropertyIndexDocument	10100
GlobalPermissionEntry	10200
Action	10100
IssueLink	10100
UpgradeTaskHistory	10200
ChangeGroup	10100
ChangeItem	10100
UserHistoryItem	10100
DraftWorkflow	10100
ApplicationUser	10100
User	10100
Membership	10100
LicenseRoleDefault	10100
RunDetails	187900
FieldLayoutItem	10200
CustomField	10200
FieldConfiguration	10400
FieldConfigScheme	10400
FieldConfigSchemeIssueType	10500
ConfigurationContext	10400
AuditLog	10200
ManagedConfigurationItem	10200
IssueType	10100
OptionConfiguration	10400
IssueLinkType	10300
SchemePermissions	10500
UserAttribute	10200
Project	10100
ProjectKey	10100
ProjectRoleActor	10200
GenericConfiguration	10200
FieldScreen	10100
FieldScreenTab	10200
FieldScreenLayoutItem	10300
FieldScreenScheme	10100
FieldScreenSchemeItem	10200
IssueTypeScreenScheme	10100
OSPropertyEntry	10800
PortalPage	10200
FavouriteAssociations	10100
PortletConfiguration	10200
ClusteredJob	13000
\.


--
-- Data for Name: serviceconfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.serviceconfig (id, delaytime, clazz, servicename, cron_expression) FROM stdin;
10000	60000	com.atlassian.jira.service.services.mail.MailQueueService	Mail Queue Service	0 * * * * ?
10002	86400000	com.atlassian.jira.service.services.auditing.AuditLogCleaningService	Audit log cleaning service	0 30 5 * * ?
10001	43200000	com.atlassian.jira.service.services.export.ExportService	Backup Service	0 20 0/12 * * ?
\.


--
-- Data for Name: sharepermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sharepermissions (id, entityid, entitytype, sharetype, param1, param2, rights) FROM stdin;
10000	10000	PortalPage	global	\N	\N	1
10100	10000	SearchRequest	project	10000	\N	1
10101	10001	SearchRequest	project	10001	\N	1
10102	10002	SearchRequest	project	10001	\N	1
10103	10003	SearchRequest	project	10001	\N	1
10104	10004	SearchRequest	project	10002	\N	1
10105	10005	SearchRequest	project	10000	\N	1
\.


--
-- Data for Name: tempattachmentsmonitor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tempattachmentsmonitor (temporary_attachment_id, form_token, file_name, content_type, file_size, created_time) FROM stdin;
\.


--
-- Data for Name: trackback_ping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trackback_ping (id, issue, url, title, blogname, excerpt, created) FROM stdin;
\.


--
-- Data for Name: trustedapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trustedapp (id, application_id, name, public_key, ip_match, url_match, timeout, created, created_by, updated, updated_by) FROM stdin;
\.


--
-- Data for Name: upgradehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upgradehistory (id, upgradeclass, targetbuild, status, downgradetaskrequired) FROM stdin;
10000	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70100	70100	complete	Y
10100	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70101	70101	complete	N
10101	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70102	70102	complete	N
10102	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build71001	71001	complete	N
10103	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72001	72001	complete	N
10104	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72002	72002	complete	N
10105	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build73002	73002	complete	N
\.


--
-- Data for Name: upgradetaskhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upgradetaskhistory (id, upgrade_task_factory_key, build_number, status, upgrade_type) FROM stdin;
10006	host	73010	COMPLETED	SERVER
10007	host	73011	COMPLETED	SERVER
10008	host	74002	COMPLETED	SERVER
10009	host	75002	COMPLETED	SERVER
10010	host	75003	COMPLETED	SERVER
10011	host	75004	COMPLETED	SERVER
10012	host	75005	COMPLETED	SERVER
10013	host	76001	COMPLETED	SERVER
10014	host	77001	COMPLETED	SERVER
10015	host	710001	COMPLETED	SERVER
10016	host	711001	COMPLETED	SERVER
10017	host	712001	COMPLETED	SERVER
10100	com.atlassian.jira.plugins.jira-development-integration-plugin	1	COMPLETED	SERVER
10101	com.atlassian.jira.plugins.jira-development-integration-plugin	2	COMPLETED	SERVER
10102	com.atlassian.jira.plugins.jira-development-integration-plugin	3	COMPLETED	SERVER
\.


--
-- Data for Name: upgradetaskhistoryauditlog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upgradetaskhistoryauditlog (id, upgrade_task_factory_key, build_number, status, upgrade_type, timeperformed, action) FROM stdin;
10000	host	70101	COMPLETED	SERVER	2019-07-08 21:18:58.892+05:30	upgrade
10001	host	70102	COMPLETED	SERVER	2019-07-08 21:18:59.019+05:30	upgrade
10002	host	71001	COMPLETED	SERVER	2019-07-08 21:18:59.095+05:30	upgrade
10003	host	72001	COMPLETED	SERVER	2019-07-08 21:18:59.157+05:30	upgrade
10004	host	72002	COMPLETED	SERVER	2019-07-08 21:18:59.28+05:30	upgrade
10005	host	73002	COMPLETED	SERVER	2019-07-08 21:18:59.354+05:30	upgrade
10006	host	73010	COMPLETED	SERVER	2019-07-08 21:18:59.567+05:30	upgrade
10007	host	73011	COMPLETED	SERVER	2019-07-08 21:18:59.572+05:30	upgrade
10008	host	74002	COMPLETED	SERVER	2019-07-08 21:18:59.736+05:30	upgrade
10009	host	75002	COMPLETED	SERVER	2019-07-08 21:18:59.752+05:30	upgrade
10010	host	75003	COMPLETED	SERVER	2019-07-08 21:18:59.892+05:30	upgrade
10011	host	75004	COMPLETED	SERVER	2019-07-08 21:18:59.899+05:30	upgrade
10012	host	75005	COMPLETED	SERVER	2019-07-08 21:18:59.977+05:30	upgrade
10013	host	76001	COMPLETED	SERVER	2019-07-08 21:19:00.524+05:30	upgrade
10014	host	77001	COMPLETED	SERVER	2019-07-08 21:19:00.759+05:30	upgrade
10015	host	710001	COMPLETED	SERVER	2019-07-08 21:19:00.879+05:30	upgrade
10016	host	711001	COMPLETED	SERVER	2019-07-08 21:19:00.988+05:30	upgrade
10017	host	712001	COMPLETED	SERVER	2019-07-08 21:19:01.144+05:30	upgrade
10100	com.atlassian.jira.plugins.jira-development-integration-plugin	1	COMPLETED	SERVER	2019-07-09 08:22:17.204+05:30	upgrade
10101	com.atlassian.jira.plugins.jira-development-integration-plugin	2	COMPLETED	SERVER	2019-07-09 08:22:17.633+05:30	upgrade
10102	com.atlassian.jira.plugins.jira-development-integration-plugin	3	COMPLETED	SERVER	2019-07-09 08:22:26.434+05:30	upgrade
\.


--
-- Data for Name: upgradeversionhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upgradeversionhistory (id, timeperformed, targetbuild, targetversion) FROM stdin;
10000	2019-07-08 21:19:01.172+05:30	712001	7.13.0
\.


--
-- Data for Name: userassociation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userassociation (source_name, sink_node_id, sink_node_entity, association_type, sequence, created) FROM stdin;
\.


--
-- Data for Name: userbase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userbase (id, username, password_hash) FROM stdin;
\.


--
-- Data for Name: userhistoryitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userhistoryitem (id, entitytype, entityid, username, lastviewed, data) FROM stdin;
10003	Project	10001	syedawase	1585267218430	\N
10007	Searcher	project	syedawase	1585339241821	\N
10008	Searcher	issuetype	syedawase	1585339242017	\N
10009	Searcher	status	syedawase	1585339242051	\N
10011	Searcher	assignee	syedawase	1585339242090	\N
10018	Issue	10022	syedawase	1585339243686	\N
10016	Sprint	2	syedawase	1585339243862	Sample Sprint 1
10005	RapidView	2	syedawase	1585331888504	TRUES board
10019	Dashboard	10100	syedawase	1585339772150	\N
10010	Searcher	resolution	syedawase	1585332153960	\N
10012	Issue	10006	syedawase	1585332166018	\N
10006	Project	10002	syedawase	1585332354036	\N
10004	Dashboard	10000	syedawase	1585332464318	\N
10002	Sprint	1	syedawase	1585345033396	Sample Sprint 2
10014	Searcher	fixfor	syedawase	1585332620312	\N
10015	Issue	10018	syedawase	1585332622148	\N
10001	Project	10000	syedawase	1585345033435	\N
10020	RapidView	3	syedawase	1585345273572	myboard
10013	Issue	10009	syedawase	1585332848137	\N
10000	RapidView	1	syedawase	1585337703061	SYC board
10017	Issue	10008	syedawase	1585337810453	\N
\.


--
-- Data for Name: userpickerfilter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userpickerfilter (id, customfield, customfieldconfig, enabled) FROM stdin;
\.


--
-- Data for Name: userpickerfiltergroup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userpickerfiltergroup (id, userpickerfilter, groupname) FROM stdin;
\.


--
-- Data for Name: userpickerfilterrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userpickerfilterrole (id, userpickerfilter, projectroleid) FROM stdin;
\.


--
-- Data for Name: versioncontrol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versioncontrol (id, vcsname, vcsdescription, vcstype) FROM stdin;
\.


--
-- Data for Name: votehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.votehistory (id, issueid, votes, "timestamp") FROM stdin;
\.


--
-- Data for Name: workflowscheme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflowscheme (id, name, description) FROM stdin;
10000	classic	classic
10100	SYC: Software Simplified Workflow Scheme	Generated by JIRA Software version 7.13.0-DAILY20180924115437. This workflow scheme is managed internally by Jira Software. Do not manually modify this workflow scheme.
10101	TPRI: Project Management Workflow Scheme	
10102	TRUES: Software Simplified Workflow Scheme	Generated by JIRA Software version 7.13.0-DAILY20180924115437. This workflow scheme is managed internally by Jira Software. Do not manually modify this workflow scheme.
\.


--
-- Data for Name: workflowschemeentity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
10000	10000	classic default workflow	0
10100	10100	Software Simplified Workflow for Project SYC	0
10101	10101	TPRI: Project Management Workflow	0
10102	10102	Software Simplified Workflow for Project TRUES	0
\.


--
-- Data for Name: worklog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.worklog (id, issueid, author, grouplevel, rolelevel, worklogbody, created, updateauthor, updated, startdate, timeworked) FROM stdin;
\.


--
-- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_21D670_WHITELIST_RULES_ID_seq"', 2, true);


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"', 1, false);


--
-- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_21F425_USER_PROPERTY_AO_ID_seq"', 1, false);


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"', 1, false);


--
-- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_3B1893_LOOP_DETECTION_ID_seq"', 1, false);


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"', 25, true);


--
-- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_PROPERTIES_ID_seq"', 1, true);


--
-- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"', 1, false);


--
-- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_TASK_MONITOR_ID_seq"', 1, false);


--
-- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4AEACD_WEBHOOK_DAO_ID_seq"', 1, false);


--
-- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_550953_SHORTCUT_ID_seq"', 2, true);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_563AEE_TARGET_ENTITY_ID_seq"', 1, false);


--
-- Name: AO_575BF5_DEV_SUMMARY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_575BF5_DEV_SUMMARY_ID_seq"', 1, false);


--
-- Name: AO_575BF5_PROCESSED_COMMITS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_575BF5_PROCESSED_COMMITS_ID_seq"', 1, false);


--
-- Name: AO_575BF5_PROVIDER_ISSUE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_575BF5_PROVIDER_ISSUE_ID_seq"', 1, false);


--
-- Name: AO_575BF5_PROVIDER_SEQ_NO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_575BF5_PROVIDER_SEQ_NO_ID_seq"', 1, false);


--
-- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_587B34_PROJECT_CONFIG_ID_seq"', 1, false);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"', 1, false);


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"', 1, false);


--
-- Name: AO_60DB71_AUDITENTRY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_AUDITENTRY_ID_seq"', 1, false);


--
-- Name: AO_60DB71_BOARDADMINS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_BOARDADMINS_ID_seq"', 3, true);


--
-- Name: AO_60DB71_CARDCOLOR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_CARDCOLOR_ID_seq"', 10, true);


--
-- Name: AO_60DB71_CARDLAYOUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_CARDLAYOUT_ID_seq"', 1, false);


--
-- Name: AO_60DB71_COLUMNSTATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_COLUMNSTATUS_ID_seq"', 17, true);


--
-- Name: AO_60DB71_COLUMN_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_COLUMN_ID_seq"', 18, true);


--
-- Name: AO_60DB71_DETAILVIEWFIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_DETAILVIEWFIELD_ID_seq"', 36, true);


--
-- Name: AO_60DB71_ESTIMATESTATISTIC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_ESTIMATESTATISTIC_ID_seq"', 3, true);


--
-- Name: AO_60DB71_ISSUERANKINGLOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_ISSUERANKINGLOG_ID_seq"', 1, false);


--
-- Name: AO_60DB71_ISSUERANKING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_ISSUERANKING_ID_seq"', 1, false);


--
-- Name: AO_60DB71_LEXORANKBALANCER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_LEXORANKBALANCER_ID_seq"', 1, false);


--
-- Name: AO_60DB71_LEXORANK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_LEXORANK_ID_seq"', 55, true);


--
-- Name: AO_60DB71_NONWORKINGDAY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_NONWORKINGDAY_ID_seq"', 1, false);


--
-- Name: AO_60DB71_QUICKFILTER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_QUICKFILTER_ID_seq"', 6, true);


--
-- Name: AO_60DB71_RANKABLEOBJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_RANKABLEOBJECT_ID_seq"', 1, false);


--
-- Name: AO_60DB71_RAPIDVIEW_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_RAPIDVIEW_ID_seq"', 3, true);


--
-- Name: AO_60DB71_SPRINT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_SPRINT_ID_seq"', 2, true);


--
-- Name: AO_60DB71_STATSFIELD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_STATSFIELD_ID_seq"', 3, true);


--
-- Name: AO_60DB71_SUBQUERY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_SUBQUERY_ID_seq"', 1, true);


--
-- Name: AO_60DB71_SWIMLANE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_SWIMLANE_ID_seq"', 4, true);


--
-- Name: AO_60DB71_TRACKINGSTATISTIC_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_TRACKINGSTATISTIC_ID_seq"', 3, true);


--
-- Name: AO_60DB71_VERSION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_VERSION_ID_seq"', 1, false);


--
-- Name: AO_60DB71_WORKINGDAYS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_60DB71_WORKINGDAYS_ID_seq"', 3, true);


--
-- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_97EDAB_USERINVITATION_ID_seq"', 1, false);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"', 3, true);


--
-- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_C16815_ALERT_AO_ID_seq"', 8, true);


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_CFF990_AOTRANSITION_FAILURE_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_BRANCH_HEAD_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_BRANCH_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_BRANCH_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_CHANGESET_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_COMMIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_COMMIT_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_GIT_HUB_EVENT_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ISSUE_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ISSUE_MAPPING_V2_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ISSUE_TO_BRANCH_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ISSUE_TO_CHANGESET_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_MESSAGE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_MESSAGE_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_MESSAGE_QUEUE_ITEM_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_MESSAGE_TAG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_MESSAGE_TAG_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ORGANIZATION_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_ORG_TO_PROJECT_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PROJECT_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PROJECT_MAPPING_V2_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PR_ISSUE_KEY_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_PR_PARTICIPANT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PR_PARTICIPANT_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_PR_TO_COMMIT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PR_TO_COMMIT_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_PULL_REQUEST_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_PULL_REQUEST_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_REPOSITORY_MAPPING_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_REPO_TO_CHANGESET_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_REPO_TO_PROJECT_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_SYNC_AUDIT_LOG_ID_seq"', 1, false);


--
-- Name: AO_E8B6CC_SYNC_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_E8B6CC_SYNC_EVENT_ID_seq"', 1, false);


--
-- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"', 1, false);


--
-- Name: AO_0AC321_RECOMMENDATION_AO AO_0AC321_RECOMMENDATION_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_0AC321_RECOMMENDATION_AO"
    ADD CONSTRAINT "AO_0AC321_RECOMMENDATION_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21D670_WHITELIST_RULES AO_21D670_WHITELIST_RULES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES"
    ADD CONSTRAINT "AO_21D670_WHITELIST_RULES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_MESSAGE_AO AO_21F425_MESSAGE_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_AO"
    ADD CONSTRAINT "AO_21F425_MESSAGE_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_MESSAGE_MAPPING_AO AO_21F425_MESSAGE_MAPPING_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_MESSAGE_MAPPING_AO"
    ADD CONSTRAINT "AO_21F425_MESSAGE_MAPPING_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_21F425_USER_PROPERTY_AO AO_21F425_USER_PROPERTY_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_21F425_USER_PROPERTY_AO"
    ADD CONSTRAINT "AO_21F425_USER_PROPERTY_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_38321B_CUSTOM_CONTENT_LINK AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK"
    ADD CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_3B1893_LOOP_DETECTION AO_3B1893_LOOP_DETECTION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_3B1893_LOOP_DETECTION"
    ADD CONSTRAINT "AO_3B1893_LOOP_DETECTION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS AO_4789DD_HEALTH_CHECK_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_STATUS"
    ADD CONSTRAINT "AO_4789DD_HEALTH_CHECK_STATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_PROPERTIES AO_4789DD_PROPERTIES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_PROPERTIES"
    ADD CONSTRAINT "AO_4789DD_PROPERTIES_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_READ_NOTIFICATIONS AO_4789DD_READ_NOTIFICATIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_READ_NOTIFICATIONS"
    ADD CONSTRAINT "AO_4789DD_READ_NOTIFICATIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4789DD_TASK_MONITOR AO_4789DD_TASK_MONITOR_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
    ADD CONSTRAINT "AO_4789DD_TASK_MONITOR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_4AEACD_WEBHOOK_DAO AO_4AEACD_WEBHOOK_DAO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4AEACD_WEBHOOK_DAO"
    ADD CONSTRAINT "AO_4AEACD_WEBHOOK_DAO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_550953_SHORTCUT AO_550953_SHORTCUT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_550953_SHORTCUT"
    ADD CONSTRAINT "AO_550953_SHORTCUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY AO_563AEE_ACTIVITY_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTIVITY_ENTITY_pkey" PRIMARY KEY ("ACTIVITY_ID");


--
-- Name: AO_563AEE_ACTOR_ENTITY AO_563AEE_ACTOR_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY"
    ADD CONSTRAINT "AO_563AEE_ACTOR_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_MEDIA_LINK_ENTITY AO_563AEE_MEDIA_LINK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY"
    ADD CONSTRAINT "AO_563AEE_MEDIA_LINK_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY AO_563AEE_OBJECT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT "AO_563AEE_OBJECT_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY AO_563AEE_TARGET_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT "AO_563AEE_TARGET_ENTITY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_DEV_SUMMARY AO_575BF5_DEV_SUMMARY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_575BF5_DEV_SUMMARY"
    ADD CONSTRAINT "AO_575BF5_DEV_SUMMARY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROCESSED_COMMITS AO_575BF5_PROCESSED_COMMITS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_575BF5_PROCESSED_COMMITS"
    ADD CONSTRAINT "AO_575BF5_PROCESSED_COMMITS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROVIDER_ISSUE AO_575BF5_PROVIDER_ISSUE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_575BF5_PROVIDER_ISSUE"
    ADD CONSTRAINT "AO_575BF5_PROVIDER_ISSUE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_575BF5_PROVIDER_SEQ_NO AO_575BF5_PROVIDER_SEQ_NO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_575BF5_PROVIDER_SEQ_NO"
    ADD CONSTRAINT "AO_575BF5_PROVIDER_SEQ_NO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_587B34_GLANCE_CONFIG AO_587B34_GLANCE_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_587B34_GLANCE_CONFIG"
    ADD CONSTRAINT "AO_587B34_GLANCE_CONFIG_pkey" PRIMARY KEY ("ROOM_ID");


--
-- Name: AO_587B34_PROJECT_CONFIG AO_587B34_PROJECT_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG"
    ADD CONSTRAINT "AO_587B34_PROJECT_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_LINK AO_5FB9D7_AOHIP_CHAT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_LINK"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_LINK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER AO_5FB9D7_AOHIP_CHAT_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_USER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_AUDITENTRY AO_60DB71_AUDITENTRY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_AUDITENTRY"
    ADD CONSTRAINT "AO_60DB71_AUDITENTRY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_BOARDADMINS AO_60DB71_BOARDADMINS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_BOARDADMINS"
    ADD CONSTRAINT "AO_60DB71_BOARDADMINS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_CARDCOLOR AO_60DB71_CARDCOLOR_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_CARDCOLOR"
    ADD CONSTRAINT "AO_60DB71_CARDCOLOR_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_CARDLAYOUT AO_60DB71_CARDLAYOUT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_CARDLAYOUT"
    ADD CONSTRAINT "AO_60DB71_CARDLAYOUT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_COLUMNSTATUS AO_60DB71_COLUMNSTATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_COLUMNSTATUS"
    ADD CONSTRAINT "AO_60DB71_COLUMNSTATUS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_COLUMN AO_60DB71_COLUMN_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_COLUMN"
    ADD CONSTRAINT "AO_60DB71_COLUMN_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_DETAILVIEWFIELD AO_60DB71_DETAILVIEWFIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_DETAILVIEWFIELD"
    ADD CONSTRAINT "AO_60DB71_DETAILVIEWFIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ESTIMATESTATISTIC AO_60DB71_ESTIMATESTATISTIC_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_ESTIMATESTATISTIC"
    ADD CONSTRAINT "AO_60DB71_ESTIMATESTATISTIC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ISSUERANKINGLOG AO_60DB71_ISSUERANKINGLOG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_ISSUERANKINGLOG"
    ADD CONSTRAINT "AO_60DB71_ISSUERANKINGLOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_ISSUERANKING AO_60DB71_ISSUERANKING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_ISSUERANKING"
    ADD CONSTRAINT "AO_60DB71_ISSUERANKING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_LEXORANKBALANCER AO_60DB71_LEXORANKBALANCER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_LEXORANKBALANCER"
    ADD CONSTRAINT "AO_60DB71_LEXORANKBALANCER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_LEXORANK AO_60DB71_LEXORANK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_LEXORANK"
    ADD CONSTRAINT "AO_60DB71_LEXORANK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_NONWORKINGDAY AO_60DB71_NONWORKINGDAY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_NONWORKINGDAY"
    ADD CONSTRAINT "AO_60DB71_NONWORKINGDAY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_QUICKFILTER AO_60DB71_QUICKFILTER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_QUICKFILTER"
    ADD CONSTRAINT "AO_60DB71_QUICKFILTER_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_RANKABLEOBJECT AO_60DB71_RANKABLEOBJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_RANKABLEOBJECT"
    ADD CONSTRAINT "AO_60DB71_RANKABLEOBJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_RAPIDVIEW AO_60DB71_RAPIDVIEW_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_RAPIDVIEW"
    ADD CONSTRAINT "AO_60DB71_RAPIDVIEW_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SPRINT AO_60DB71_SPRINT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_SPRINT"
    ADD CONSTRAINT "AO_60DB71_SPRINT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_STATSFIELD AO_60DB71_STATSFIELD_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_STATSFIELD"
    ADD CONSTRAINT "AO_60DB71_STATSFIELD_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SUBQUERY AO_60DB71_SUBQUERY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_SUBQUERY"
    ADD CONSTRAINT "AO_60DB71_SUBQUERY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_SWIMLANE AO_60DB71_SWIMLANE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_SWIMLANE"
    ADD CONSTRAINT "AO_60DB71_SWIMLANE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_TRACKINGSTATISTIC AO_60DB71_TRACKINGSTATISTIC_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_TRACKINGSTATISTIC"
    ADD CONSTRAINT "AO_60DB71_TRACKINGSTATISTIC_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_VERSION AO_60DB71_VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_VERSION"
    ADD CONSTRAINT "AO_60DB71_VERSION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_60DB71_WORKINGDAYS AO_60DB71_WORKINGDAYS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_WORKINGDAYS"
    ADD CONSTRAINT "AO_60DB71_WORKINGDAYS_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_97EDAB_USERINVITATION AO_97EDAB_USERINVITATION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_97EDAB_USERINVITATION"
    ADD CONSTRAINT "AO_97EDAB_USERINVITATION_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_B9A0F0_APPLIED_TEMPLATE AO_B9A0F0_APPLIED_TEMPLATE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_B9A0F0_APPLIED_TEMPLATE"
    ADD CONSTRAINT "AO_B9A0F0_APPLIED_TEMPLATE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_C16815_ALERT_AO AO_C16815_ALERT_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_C16815_ALERT_AO"
    ADD CONSTRAINT "AO_C16815_ALERT_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_CFF990_AOTRANSITION_FAILURE AO_CFF990_AOTRANSITION_FAILURE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_CFF990_AOTRANSITION_FAILURE"
    ADD CONSTRAINT "AO_CFF990_AOTRANSITION_FAILURE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_BRANCH_HEAD_MAPPING AO_E8B6CC_BRANCH_HEAD_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH_HEAD_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_BRANCH_HEAD_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_BRANCH AO_E8B6CC_BRANCH_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH"
    ADD CONSTRAINT "AO_E8B6CC_BRANCH_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_CHANGESET_MAPPING AO_E8B6CC_CHANGESET_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_CHANGESET_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_CHANGESET_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_COMMIT AO_E8B6CC_COMMIT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_COMMIT"
    ADD CONSTRAINT "AO_E8B6CC_COMMIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT AO_E8B6CC_GIT_HUB_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_GIT_HUB_EVENT"
    ADD CONSTRAINT "AO_E8B6CC_GIT_HUB_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_MAPPING_V2 AO_E8B6CC_ISSUE_MAPPING_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_MAPPING_V2"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_MAPPING_V2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_MAPPING AO_E8B6CC_ISSUE_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH AO_E8B6CC_ISSUE_TO_BRANCH_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_BRANCH"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_TO_BRANCH_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_CHANGESET AO_E8B6CC_ISSUE_TO_CHANGESET_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_CHANGESET"
    ADD CONSTRAINT "AO_E8B6CC_ISSUE_TO_CHANGESET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM AO_E8B6CC_MESSAGE_QUEUE_ITEM_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_QUEUE_ITEM_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE_TAG AO_E8B6CC_MESSAGE_TAG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_TAG"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_TAG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_MESSAGE AO_E8B6CC_MESSAGE_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE"
    ADD CONSTRAINT "AO_E8B6CC_MESSAGE_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ORGANIZATION_MAPPING AO_E8B6CC_ORGANIZATION_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ORGANIZATION_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_ORGANIZATION_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT AO_E8B6CC_ORG_TO_PROJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ORG_TO_PROJECT"
    ADD CONSTRAINT "AO_E8B6CC_ORG_TO_PROJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PROJECT_MAPPING_V2 AO_E8B6CC_PROJECT_MAPPING_V2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PROJECT_MAPPING_V2"
    ADD CONSTRAINT "AO_E8B6CC_PROJECT_MAPPING_V2_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PROJECT_MAPPING AO_E8B6CC_PROJECT_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PROJECT_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_PROJECT_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_ISSUE_KEY AO_E8B6CC_PR_ISSUE_KEY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_ISSUE_KEY"
    ADD CONSTRAINT "AO_E8B6CC_PR_ISSUE_KEY_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_PARTICIPANT AO_E8B6CC_PR_PARTICIPANT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_PARTICIPANT"
    ADD CONSTRAINT "AO_E8B6CC_PR_PARTICIPANT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PR_TO_COMMIT AO_E8B6CC_PR_TO_COMMIT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT "AO_E8B6CC_PR_TO_COMMIT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_PULL_REQUEST AO_E8B6CC_PULL_REQUEST_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PULL_REQUEST"
    ADD CONSTRAINT "AO_E8B6CC_PULL_REQUEST_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPOSITORY_MAPPING AO_E8B6CC_REPOSITORY_MAPPING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_REPOSITORY_MAPPING"
    ADD CONSTRAINT "AO_E8B6CC_REPOSITORY_MAPPING_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPO_TO_CHANGESET AO_E8B6CC_REPO_TO_CHANGESET_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_CHANGESET"
    ADD CONSTRAINT "AO_E8B6CC_REPO_TO_CHANGESET_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT AO_E8B6CC_REPO_TO_PROJECT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_PROJECT"
    ADD CONSTRAINT "AO_E8B6CC_REPO_TO_PROJECT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_SYNC_AUDIT_LOG AO_E8B6CC_SYNC_AUDIT_LOG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_SYNC_AUDIT_LOG"
    ADD CONSTRAINT "AO_E8B6CC_SYNC_AUDIT_LOG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_E8B6CC_SYNC_EVENT AO_E8B6CC_SYNC_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_SYNC_EVENT"
    ADD CONSTRAINT "AO_E8B6CC_SYNC_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_ED669C_SEEN_ASSERTIONS AO_ED669C_SEEN_ASSERTIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT "AO_ED669C_SEEN_ASSERTIONS_pkey" PRIMARY KEY ("ID");


--
-- Name: app_user pk_app_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT pk_app_user PRIMARY KEY (id);


--
-- Name: audit_changed_value pk_audit_changed_value; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_changed_value
    ADD CONSTRAINT pk_audit_changed_value PRIMARY KEY (id);


--
-- Name: audit_item pk_audit_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_item
    ADD CONSTRAINT pk_audit_item PRIMARY KEY (id);


--
-- Name: audit_log pk_audit_log; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT pk_audit_log PRIMARY KEY (id);


--
-- Name: avatar pk_avatar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avatar
    ADD CONSTRAINT pk_avatar PRIMARY KEY (id);


--
-- Name: board pk_board; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.board
    ADD CONSTRAINT pk_board PRIMARY KEY (id);


--
-- Name: boardproject pk_boardproject; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boardproject
    ADD CONSTRAINT pk_boardproject PRIMARY KEY (board_id, project_id);


--
-- Name: changegroup pk_changegroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changegroup
    ADD CONSTRAINT pk_changegroup PRIMARY KEY (id);


--
-- Name: changeitem pk_changeitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.changeitem
    ADD CONSTRAINT pk_changeitem PRIMARY KEY (id);


--
-- Name: clusteredjob pk_clusteredjob; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusteredjob
    ADD CONSTRAINT pk_clusteredjob PRIMARY KEY (id);


--
-- Name: clusterlockstatus pk_clusterlockstatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusterlockstatus
    ADD CONSTRAINT pk_clusterlockstatus PRIMARY KEY (id);


--
-- Name: clustermessage pk_clustermessage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clustermessage
    ADD CONSTRAINT pk_clustermessage PRIMARY KEY (id);


--
-- Name: clusternode pk_clusternode; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusternode
    ADD CONSTRAINT pk_clusternode PRIMARY KEY (node_id);


--
-- Name: clusternodeheartbeat pk_clusternodeheartbeat; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusternodeheartbeat
    ADD CONSTRAINT pk_clusternodeheartbeat PRIMARY KEY (node_id);


--
-- Name: clusterupgradestate pk_clusterupgradestate; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clusterupgradestate
    ADD CONSTRAINT pk_clusterupgradestate PRIMARY KEY (id);


--
-- Name: columnlayout pk_columnlayout; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.columnlayout
    ADD CONSTRAINT pk_columnlayout PRIMARY KEY (id);


--
-- Name: columnlayoutitem pk_columnlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.columnlayoutitem
    ADD CONSTRAINT pk_columnlayoutitem PRIMARY KEY (id);


--
-- Name: component pk_component; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT pk_component PRIMARY KEY (id);


--
-- Name: configurationcontext pk_configurationcontext; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.configurationcontext
    ADD CONSTRAINT pk_configurationcontext PRIMARY KEY (id);


--
-- Name: customfield pk_customfield; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customfield
    ADD CONSTRAINT pk_customfield PRIMARY KEY (id);


--
-- Name: customfieldoption pk_customfieldoption; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customfieldoption
    ADD CONSTRAINT pk_customfieldoption PRIMARY KEY (id);


--
-- Name: customfieldvalue pk_customfieldvalue; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customfieldvalue
    ADD CONSTRAINT pk_customfieldvalue PRIMARY KEY (id);


--
-- Name: cwd_application pk_cwd_application; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application
    ADD CONSTRAINT pk_cwd_application PRIMARY KEY (id);


--
-- Name: cwd_application_address pk_cwd_application_address; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_address
    ADD CONSTRAINT pk_cwd_application_address PRIMARY KEY (application_id, remote_address);


--
-- Name: cwd_directory pk_cwd_directory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory
    ADD CONSTRAINT pk_cwd_directory PRIMARY KEY (id);


--
-- Name: cwd_directory_attribute pk_cwd_directory_attribute; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory_attribute
    ADD CONSTRAINT pk_cwd_directory_attribute PRIMARY KEY (directory_id, attribute_name);


--
-- Name: cwd_directory_operation pk_cwd_directory_operation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory_operation
    ADD CONSTRAINT pk_cwd_directory_operation PRIMARY KEY (directory_id, operation_type);


--
-- Name: cwd_group pk_cwd_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT pk_cwd_group PRIMARY KEY (id);


--
-- Name: cwd_group_attributes pk_cwd_group_attributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_attributes
    ADD CONSTRAINT pk_cwd_group_attributes PRIMARY KEY (id);


--
-- Name: cwd_membership pk_cwd_membership; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT pk_cwd_membership PRIMARY KEY (id);


--
-- Name: cwd_user pk_cwd_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT pk_cwd_user PRIMARY KEY (id);


--
-- Name: cwd_user_attributes pk_cwd_user_attributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user_attributes
    ADD CONSTRAINT pk_cwd_user_attributes PRIMARY KEY (id);


--
-- Name: deadletter pk_deadletter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deadletter
    ADD CONSTRAINT pk_deadletter PRIMARY KEY (id);


--
-- Name: draftworkflowscheme pk_draftworkflowscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.draftworkflowscheme
    ADD CONSTRAINT pk_draftworkflowscheme PRIMARY KEY (id);


--
-- Name: draftworkflowschemeentity pk_draftworkflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.draftworkflowschemeentity
    ADD CONSTRAINT pk_draftworkflowschemeentity PRIMARY KEY (id);


--
-- Name: entity_property pk_entity_property; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_property
    ADD CONSTRAINT pk_entity_property PRIMARY KEY (id);


--
-- Name: entity_property_index_document pk_entity_property_index_docum; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_property_index_document
    ADD CONSTRAINT pk_entity_property_index_docum PRIMARY KEY (id);


--
-- Name: entity_translation pk_entity_translation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entity_translation
    ADD CONSTRAINT pk_entity_translation PRIMARY KEY (id);


--
-- Name: external_entities pk_external_entities; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.external_entities
    ADD CONSTRAINT pk_external_entities PRIMARY KEY (id);


--
-- Name: externalgadget pk_externalgadget; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.externalgadget
    ADD CONSTRAINT pk_externalgadget PRIMARY KEY (id);


--
-- Name: favouriteassociations pk_favouriteassociations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favouriteassociations
    ADD CONSTRAINT pk_favouriteassociations PRIMARY KEY (id);


--
-- Name: feature pk_feature; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feature
    ADD CONSTRAINT pk_feature PRIMARY KEY (id);


--
-- Name: fieldconfigscheme pk_fieldconfigscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldconfigscheme
    ADD CONSTRAINT pk_fieldconfigscheme PRIMARY KEY (id);


--
-- Name: fieldconfigschemeissuetype pk_fieldconfigschemeissuetype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldconfigschemeissuetype
    ADD CONSTRAINT pk_fieldconfigschemeissuetype PRIMARY KEY (id);


--
-- Name: fieldconfiguration pk_fieldconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldconfiguration
    ADD CONSTRAINT pk_fieldconfiguration PRIMARY KEY (id);


--
-- Name: fieldlayout pk_fieldlayout; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayout
    ADD CONSTRAINT pk_fieldlayout PRIMARY KEY (id);


--
-- Name: fieldlayoutitem pk_fieldlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayoutitem
    ADD CONSTRAINT pk_fieldlayoutitem PRIMARY KEY (id);


--
-- Name: fieldlayoutscheme pk_fieldlayoutscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayoutscheme
    ADD CONSTRAINT pk_fieldlayoutscheme PRIMARY KEY (id);


--
-- Name: fieldlayoutschemeassociation pk_fieldlayoutschemeassociatio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayoutschemeassociation
    ADD CONSTRAINT pk_fieldlayoutschemeassociatio PRIMARY KEY (id);


--
-- Name: fieldlayoutschemeentity pk_fieldlayoutschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldlayoutschemeentity
    ADD CONSTRAINT pk_fieldlayoutschemeentity PRIMARY KEY (id);


--
-- Name: fieldscreen pk_fieldscreen; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreen
    ADD CONSTRAINT pk_fieldscreen PRIMARY KEY (id);


--
-- Name: fieldscreenlayoutitem pk_fieldscreenlayoutitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreenlayoutitem
    ADD CONSTRAINT pk_fieldscreenlayoutitem PRIMARY KEY (id);


--
-- Name: fieldscreenscheme pk_fieldscreenscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreenscheme
    ADD CONSTRAINT pk_fieldscreenscheme PRIMARY KEY (id);


--
-- Name: fieldscreenschemeitem pk_fieldscreenschemeitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreenschemeitem
    ADD CONSTRAINT pk_fieldscreenschemeitem PRIMARY KEY (id);


--
-- Name: fieldscreentab pk_fieldscreentab; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fieldscreentab
    ADD CONSTRAINT pk_fieldscreentab PRIMARY KEY (id);


--
-- Name: fileattachment pk_fileattachment; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fileattachment
    ADD CONSTRAINT pk_fileattachment PRIMARY KEY (id);


--
-- Name: filtersubscription pk_filtersubscription; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filtersubscription
    ADD CONSTRAINT pk_filtersubscription PRIMARY KEY (id);


--
-- Name: gadgetuserpreference pk_gadgetuserpreference; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gadgetuserpreference
    ADD CONSTRAINT pk_gadgetuserpreference PRIMARY KEY (id);


--
-- Name: genericconfiguration pk_genericconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genericconfiguration
    ADD CONSTRAINT pk_genericconfiguration PRIMARY KEY (id);


--
-- Name: globalpermissionentry pk_globalpermissionentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globalpermissionentry
    ADD CONSTRAINT pk_globalpermissionentry PRIMARY KEY (id);


--
-- Name: groupbase pk_groupbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groupbase
    ADD CONSTRAINT pk_groupbase PRIMARY KEY (id);


--
-- Name: issue_field_option pk_issue_field_option; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_field_option
    ADD CONSTRAINT pk_issue_field_option PRIMARY KEY (id);


--
-- Name: issue_field_option_scope pk_issue_field_option_scope; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issue_field_option_scope
    ADD CONSTRAINT pk_issue_field_option_scope PRIMARY KEY (id);


--
-- Name: issuelink pk_issuelink; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuelink
    ADD CONSTRAINT pk_issuelink PRIMARY KEY (id);


--
-- Name: issuelinktype pk_issuelinktype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuelinktype
    ADD CONSTRAINT pk_issuelinktype PRIMARY KEY (id);


--
-- Name: issuesecurityscheme pk_issuesecurityscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuesecurityscheme
    ADD CONSTRAINT pk_issuesecurityscheme PRIMARY KEY (id);


--
-- Name: issuestatus pk_issuestatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuestatus
    ADD CONSTRAINT pk_issuestatus PRIMARY KEY (id);


--
-- Name: issuetype pk_issuetype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuetype
    ADD CONSTRAINT pk_issuetype PRIMARY KEY (id);


--
-- Name: issuetypescreenscheme pk_issuetypescreenscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuetypescreenscheme
    ADD CONSTRAINT pk_issuetypescreenscheme PRIMARY KEY (id);


--
-- Name: issuetypescreenschemeentity pk_issuetypescreenschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.issuetypescreenschemeentity
    ADD CONSTRAINT pk_issuetypescreenschemeentity PRIMARY KEY (id);


--
-- Name: jiraaction pk_jiraaction; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraaction
    ADD CONSTRAINT pk_jiraaction PRIMARY KEY (id);


--
-- Name: jiradraftworkflows pk_jiradraftworkflows; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiradraftworkflows
    ADD CONSTRAINT pk_jiradraftworkflows PRIMARY KEY (id);


--
-- Name: jiraeventtype pk_jiraeventtype; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraeventtype
    ADD CONSTRAINT pk_jiraeventtype PRIMARY KEY (id);


--
-- Name: jiraissue pk_jiraissue; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraissue
    ADD CONSTRAINT pk_jiraissue PRIMARY KEY (id);


--
-- Name: jiraperms pk_jiraperms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraperms
    ADD CONSTRAINT pk_jiraperms PRIMARY KEY (id);


--
-- Name: jiraworkflows pk_jiraworkflows; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraworkflows
    ADD CONSTRAINT pk_jiraworkflows PRIMARY KEY (id);


--
-- Name: jiraworkflowstatuses pk_jiraworkflowstatuses; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jiraworkflowstatuses
    ADD CONSTRAINT pk_jiraworkflowstatuses PRIMARY KEY (id);


--
-- Name: jquartz_blob_triggers pk_jquartz_blob_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_blob_triggers
    ADD CONSTRAINT pk_jquartz_blob_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: jquartz_calendars pk_jquartz_calendars; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_calendars
    ADD CONSTRAINT pk_jquartz_calendars PRIMARY KEY (calendar_name);


--
-- Name: jquartz_cron_triggers pk_jquartz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_cron_triggers
    ADD CONSTRAINT pk_jquartz_cron_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: jquartz_fired_triggers pk_jquartz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_fired_triggers
    ADD CONSTRAINT pk_jquartz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: jquartz_job_details pk_jquartz_job_details; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_job_details
    ADD CONSTRAINT pk_jquartz_job_details PRIMARY KEY (job_name, job_group);


--
-- Name: jquartz_job_listeners pk_jquartz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_job_listeners
    ADD CONSTRAINT pk_jquartz_job_listeners PRIMARY KEY (job_name, job_group, job_listener);


--
-- Name: jquartz_locks pk_jquartz_locks; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_locks
    ADD CONSTRAINT pk_jquartz_locks PRIMARY KEY (lock_name);


--
-- Name: jquartz_paused_trigger_grps pk_jquartz_paused_trigger_grps; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_paused_trigger_grps
    ADD CONSTRAINT pk_jquartz_paused_trigger_grps PRIMARY KEY (trigger_group);


--
-- Name: jquartz_scheduler_state pk_jquartz_scheduler_state; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_scheduler_state
    ADD CONSTRAINT pk_jquartz_scheduler_state PRIMARY KEY (instance_name);


--
-- Name: jquartz_simple_triggers pk_jquartz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_simple_triggers
    ADD CONSTRAINT pk_jquartz_simple_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: jquartz_simprop_triggers pk_jquartz_simprop_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_simprop_triggers
    ADD CONSTRAINT pk_jquartz_simprop_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: jquartz_trigger_listeners pk_jquartz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_trigger_listeners
    ADD CONSTRAINT pk_jquartz_trigger_listeners PRIMARY KEY (trigger_group, trigger_listener);


--
-- Name: jquartz_triggers pk_jquartz_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jquartz_triggers
    ADD CONSTRAINT pk_jquartz_triggers PRIMARY KEY (trigger_name, trigger_group);


--
-- Name: label pk_label; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT pk_label PRIMARY KEY (id);


--
-- Name: licenserolesdefault pk_licenserolesdefault; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenserolesdefault
    ADD CONSTRAINT pk_licenserolesdefault PRIMARY KEY (id);


--
-- Name: licenserolesgroup pk_licenserolesgroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenserolesgroup
    ADD CONSTRAINT pk_licenserolesgroup PRIMARY KEY (id);


--
-- Name: listenerconfig pk_listenerconfig; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listenerconfig
    ADD CONSTRAINT pk_listenerconfig PRIMARY KEY (id);


--
-- Name: mailserver pk_mailserver; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mailserver
    ADD CONSTRAINT pk_mailserver PRIMARY KEY (id);


--
-- Name: managedconfigurationitem pk_managedconfigurationitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managedconfigurationitem
    ADD CONSTRAINT pk_managedconfigurationitem PRIMARY KEY (id);


--
-- Name: membershipbase pk_membershipbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.membershipbase
    ADD CONSTRAINT pk_membershipbase PRIMARY KEY (id);


--
-- Name: moved_issue_key pk_moved_issue_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moved_issue_key
    ADD CONSTRAINT pk_moved_issue_key PRIMARY KEY (id);


--
-- Name: nodeassociation pk_nodeassociation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodeassociation
    ADD CONSTRAINT pk_nodeassociation PRIMARY KEY (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type);


--
-- Name: nodeindexcounter pk_nodeindexcounter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodeindexcounter
    ADD CONSTRAINT pk_nodeindexcounter PRIMARY KEY (id);


--
-- Name: notification pk_notification; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification
    ADD CONSTRAINT pk_notification PRIMARY KEY (id);


--
-- Name: notificationinstance pk_notificationinstance; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificationinstance
    ADD CONSTRAINT pk_notificationinstance PRIMARY KEY (id);


--
-- Name: notificationscheme pk_notificationscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notificationscheme
    ADD CONSTRAINT pk_notificationscheme PRIMARY KEY (id);


--
-- Name: oauthconsumer pk_oauthconsumer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauthconsumer
    ADD CONSTRAINT pk_oauthconsumer PRIMARY KEY (id);


--
-- Name: oauthconsumertoken pk_oauthconsumertoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauthconsumertoken
    ADD CONSTRAINT pk_oauthconsumertoken PRIMARY KEY (id);


--
-- Name: oauthspconsumer pk_oauthspconsumer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauthspconsumer
    ADD CONSTRAINT pk_oauthspconsumer PRIMARY KEY (id);


--
-- Name: oauthsptoken pk_oauthsptoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oauthsptoken
    ADD CONSTRAINT pk_oauthsptoken PRIMARY KEY (id);


--
-- Name: optionconfiguration pk_optionconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optionconfiguration
    ADD CONSTRAINT pk_optionconfiguration PRIMARY KEY (id);


--
-- Name: os_currentstep pk_os_currentstep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_currentstep
    ADD CONSTRAINT pk_os_currentstep PRIMARY KEY (id);


--
-- Name: os_currentstep_prev pk_os_currentstep_prev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_currentstep_prev
    ADD CONSTRAINT pk_os_currentstep_prev PRIMARY KEY (id, previous_id);


--
-- Name: os_historystep pk_os_historystep; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_historystep
    ADD CONSTRAINT pk_os_historystep PRIMARY KEY (id);


--
-- Name: os_historystep_prev pk_os_historystep_prev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_historystep_prev
    ADD CONSTRAINT pk_os_historystep_prev PRIMARY KEY (id, previous_id);


--
-- Name: os_wfentry pk_os_wfentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_wfentry
    ADD CONSTRAINT pk_os_wfentry PRIMARY KEY (id);


--
-- Name: permissionscheme pk_permissionscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissionscheme
    ADD CONSTRAINT pk_permissionscheme PRIMARY KEY (id);


--
-- Name: permissionschemeattribute pk_permissionschemeattribute; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permissionschemeattribute
    ADD CONSTRAINT pk_permissionschemeattribute PRIMARY KEY (id);


--
-- Name: pluginstate pk_pluginstate; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pluginstate
    ADD CONSTRAINT pk_pluginstate PRIMARY KEY (pluginkey);


--
-- Name: pluginversion pk_pluginversion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pluginversion
    ADD CONSTRAINT pk_pluginversion PRIMARY KEY (id);


--
-- Name: portalpage pk_portalpage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.portalpage
    ADD CONSTRAINT pk_portalpage PRIMARY KEY (id);


--
-- Name: portletconfiguration pk_portletconfiguration; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.portletconfiguration
    ADD CONSTRAINT pk_portletconfiguration PRIMARY KEY (id);


--
-- Name: priority pk_priority; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priority
    ADD CONSTRAINT pk_priority PRIMARY KEY (id);


--
-- Name: productlicense pk_productlicense; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productlicense
    ADD CONSTRAINT pk_productlicense PRIMARY KEY (id);


--
-- Name: project pk_project; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT pk_project PRIMARY KEY (id);


--
-- Name: project_key pk_project_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_key
    ADD CONSTRAINT pk_project_key PRIMARY KEY (id);


--
-- Name: projectcategory pk_projectcategory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectcategory
    ADD CONSTRAINT pk_projectcategory PRIMARY KEY (id);


--
-- Name: projectchangedtime pk_projectchangedtime; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectchangedtime
    ADD CONSTRAINT pk_projectchangedtime PRIMARY KEY (project_id);


--
-- Name: projectrole pk_projectrole; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectrole
    ADD CONSTRAINT pk_projectrole PRIMARY KEY (id);


--
-- Name: projectroleactor pk_projectroleactor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectroleactor
    ADD CONSTRAINT pk_projectroleactor PRIMARY KEY (id);


--
-- Name: projectversion pk_projectversion; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projectversion
    ADD CONSTRAINT pk_projectversion PRIMARY KEY (id);


--
-- Name: propertydata pk_propertydata; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertydata
    ADD CONSTRAINT pk_propertydata PRIMARY KEY (id);


--
-- Name: propertydate pk_propertydate; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertydate
    ADD CONSTRAINT pk_propertydate PRIMARY KEY (id);


--
-- Name: propertydecimal pk_propertydecimal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertydecimal
    ADD CONSTRAINT pk_propertydecimal PRIMARY KEY (id);


--
-- Name: propertyentry pk_propertyentry; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertyentry
    ADD CONSTRAINT pk_propertyentry PRIMARY KEY (id);


--
-- Name: propertynumber pk_propertynumber; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertynumber
    ADD CONSTRAINT pk_propertynumber PRIMARY KEY (id);


--
-- Name: propertystring pk_propertystring; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertystring
    ADD CONSTRAINT pk_propertystring PRIMARY KEY (id);


--
-- Name: propertytext pk_propertytext; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propertytext
    ADD CONSTRAINT pk_propertytext PRIMARY KEY (id);


--
-- Name: qrtz_calendars pk_qrtz_calendars; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_calendars
    ADD CONSTRAINT pk_qrtz_calendars PRIMARY KEY (calendar_name);


--
-- Name: qrtz_cron_triggers pk_qrtz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_cron_triggers
    ADD CONSTRAINT pk_qrtz_cron_triggers PRIMARY KEY (id);


--
-- Name: qrtz_fired_triggers pk_qrtz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_fired_triggers
    ADD CONSTRAINT pk_qrtz_fired_triggers PRIMARY KEY (entry_id);


--
-- Name: qrtz_job_details pk_qrtz_job_details; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_job_details
    ADD CONSTRAINT pk_qrtz_job_details PRIMARY KEY (id);


--
-- Name: qrtz_job_listeners pk_qrtz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_job_listeners
    ADD CONSTRAINT pk_qrtz_job_listeners PRIMARY KEY (id);


--
-- Name: qrtz_simple_triggers pk_qrtz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_simple_triggers
    ADD CONSTRAINT pk_qrtz_simple_triggers PRIMARY KEY (id);


--
-- Name: qrtz_trigger_listeners pk_qrtz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_trigger_listeners
    ADD CONSTRAINT pk_qrtz_trigger_listeners PRIMARY KEY (id);


--
-- Name: qrtz_triggers pk_qrtz_triggers; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.qrtz_triggers
    ADD CONSTRAINT pk_qrtz_triggers PRIMARY KEY (id);


--
-- Name: reindex_component pk_reindex_component; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reindex_component
    ADD CONSTRAINT pk_reindex_component PRIMARY KEY (id);


--
-- Name: reindex_request pk_reindex_request; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reindex_request
    ADD CONSTRAINT pk_reindex_request PRIMARY KEY (id);


--
-- Name: remembermetoken pk_remembermetoken; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remembermetoken
    ADD CONSTRAINT pk_remembermetoken PRIMARY KEY (id);


--
-- Name: remotelink pk_remotelink; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remotelink
    ADD CONSTRAINT pk_remotelink PRIMARY KEY (id);


--
-- Name: replicatedindexoperation pk_replicatedindexoperation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.replicatedindexoperation
    ADD CONSTRAINT pk_replicatedindexoperation PRIMARY KEY (id);


--
-- Name: resolution pk_resolution; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resolution
    ADD CONSTRAINT pk_resolution PRIMARY KEY (id);


--
-- Name: rundetails pk_rundetails; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rundetails
    ADD CONSTRAINT pk_rundetails PRIMARY KEY (id);


--
-- Name: schemeissuesecurities pk_schemeissuesecurities; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schemeissuesecurities
    ADD CONSTRAINT pk_schemeissuesecurities PRIMARY KEY (id);


--
-- Name: schemeissuesecuritylevels pk_schemeissuesecuritylevels; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schemeissuesecuritylevels
    ADD CONSTRAINT pk_schemeissuesecuritylevels PRIMARY KEY (id);


--
-- Name: schemepermissions pk_schemepermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schemepermissions
    ADD CONSTRAINT pk_schemepermissions PRIMARY KEY (id);


--
-- Name: searchrequest pk_searchrequest; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.searchrequest
    ADD CONSTRAINT pk_searchrequest PRIMARY KEY (id);


--
-- Name: sequence_value_item pk_sequence_value_item; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sequence_value_item
    ADD CONSTRAINT pk_sequence_value_item PRIMARY KEY (seq_name);


--
-- Name: serviceconfig pk_serviceconfig; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.serviceconfig
    ADD CONSTRAINT pk_serviceconfig PRIMARY KEY (id);


--
-- Name: sharepermissions pk_sharepermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sharepermissions
    ADD CONSTRAINT pk_sharepermissions PRIMARY KEY (id);


--
-- Name: tempattachmentsmonitor pk_tempattachmentsmonitor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tempattachmentsmonitor
    ADD CONSTRAINT pk_tempattachmentsmonitor PRIMARY KEY (temporary_attachment_id);


--
-- Name: trackback_ping pk_trackback_ping; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trackback_ping
    ADD CONSTRAINT pk_trackback_ping PRIMARY KEY (id);


--
-- Name: trustedapp pk_trustedapp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trustedapp
    ADD CONSTRAINT pk_trustedapp PRIMARY KEY (id);


--
-- Name: upgradehistory pk_upgradehistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upgradehistory
    ADD CONSTRAINT pk_upgradehistory PRIMARY KEY (upgradeclass);


--
-- Name: upgradetaskhistory pk_upgradetaskhistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upgradetaskhistory
    ADD CONSTRAINT pk_upgradetaskhistory PRIMARY KEY (id);


--
-- Name: upgradetaskhistoryauditlog pk_upgradetaskhistoryauditlog; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upgradetaskhistoryauditlog
    ADD CONSTRAINT pk_upgradetaskhistoryauditlog PRIMARY KEY (id);


--
-- Name: upgradeversionhistory pk_upgradeversionhistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upgradeversionhistory
    ADD CONSTRAINT pk_upgradeversionhistory PRIMARY KEY (targetbuild);


--
-- Name: userassociation pk_userassociation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userassociation
    ADD CONSTRAINT pk_userassociation PRIMARY KEY (source_name, sink_node_id, sink_node_entity, association_type);


--
-- Name: userbase pk_userbase; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userbase
    ADD CONSTRAINT pk_userbase PRIMARY KEY (id);


--
-- Name: userhistoryitem pk_userhistoryitem; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userhistoryitem
    ADD CONSTRAINT pk_userhistoryitem PRIMARY KEY (id);


--
-- Name: userpickerfilter pk_userpickerfilter; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userpickerfilter
    ADD CONSTRAINT pk_userpickerfilter PRIMARY KEY (id);


--
-- Name: userpickerfiltergroup pk_userpickerfiltergroup; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userpickerfiltergroup
    ADD CONSTRAINT pk_userpickerfiltergroup PRIMARY KEY (id);


--
-- Name: userpickerfilterrole pk_userpickerfilterrole; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userpickerfilterrole
    ADD CONSTRAINT pk_userpickerfilterrole PRIMARY KEY (id);


--
-- Name: versioncontrol pk_versioncontrol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versioncontrol
    ADD CONSTRAINT pk_versioncontrol PRIMARY KEY (id);


--
-- Name: votehistory pk_votehistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votehistory
    ADD CONSTRAINT pk_votehistory PRIMARY KEY (id);


--
-- Name: workflowscheme pk_workflowscheme; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflowscheme
    ADD CONSTRAINT pk_workflowscheme PRIMARY KEY (id);


--
-- Name: workflowschemeentity pk_workflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workflowschemeentity
    ADD CONSTRAINT pk_workflowschemeentity PRIMARY KEY (id);


--
-- Name: worklog pk_worklog; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worklog
    ADD CONSTRAINT pk_worklog PRIMARY KEY (id);


--
-- Name: AO_4789DD_TASK_MONITOR u_ao_4789dd_task_mo1827547914; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
    ADD CONSTRAINT u_ao_4789dd_task_mo1827547914 UNIQUE ("TASK_ID");


--
-- Name: AO_587B34_PROJECT_CONFIG u_ao_587b34_project2070954277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG"
    ADD CONSTRAINT u_ao_587b34_project2070954277 UNIQUE ("NAME_UNIQUE_CONSTRAINT");


--
-- Name: AO_ED669C_SEEN_ASSERTIONS u_ao_ed669c_seen_as1055534769; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
    ADD CONSTRAINT u_ao_ed669c_seen_as1055534769 UNIQUE ("ASSERTION_ID");


--
-- Name: action_author_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_author_created ON public.jiraaction USING btree (author, created);


--
-- Name: action_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX action_issue ON public.jiraaction USING btree (issueid);


--
-- Name: attach_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX attach_issue ON public.fileattachment USING btree (issueid);


--
-- Name: avatar_filename_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX avatar_filename_index ON public.avatar USING btree (filename, avatartype, systemavatar);


--
-- Name: avatar_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX avatar_index ON public.avatar USING btree (avatartype, owner);


--
-- Name: cf_cfoption; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_cfoption ON public.customfieldoption USING btree (customfield);


--
-- Name: cf_userpickerfiltergroup; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_userpickerfiltergroup ON public.userpickerfiltergroup USING btree (userpickerfilter);


--
-- Name: cf_userpickerfilterrole; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cf_userpickerfilterrole ON public.userpickerfilterrole USING btree (userpickerfilter);


--
-- Name: cfvalue_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cfvalue_issue ON public.customfieldvalue USING btree (issue, customfield);


--
-- Name: chggroup_author_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chggroup_author_created ON public.changegroup USING btree (author, created);


--
-- Name: chggroup_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chggroup_issue ON public.changegroup USING btree (issueid);


--
-- Name: chgitem_chggrp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chgitem_chggrp ON public.changeitem USING btree (groupid);


--
-- Name: chgitem_field; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX chgitem_field ON public.changeitem USING btree (field);


--
-- Name: cl_searchrequest; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cl_searchrequest ON public.columnlayout USING btree (searchrequest);


--
-- Name: cl_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cl_username ON public.columnlayout USING btree (username);


--
-- Name: cluster_lock_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX cluster_lock_name_idx ON public.clusterlockstatus USING btree (lock_name);


--
-- Name: clusteredjob_jobid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX clusteredjob_jobid_idx ON public.clusteredjob USING btree (job_id);


--
-- Name: clusteredjob_jrk_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clusteredjob_jrk_idx ON public.clusteredjob USING btree (job_runner_key);


--
-- Name: clusteredjob_nextrun_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clusteredjob_nextrun_idx ON public.clusteredjob USING btree (next_run);


--
-- Name: confcontext; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontext ON public.configurationcontext USING btree (projectcategory, project, customfield);


--
-- Name: confcontextfieldconfigscheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontextfieldconfigscheme ON public.configurationcontext USING btree (fieldconfigscheme);


--
-- Name: confcontextprojectkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX confcontextprojectkey ON public.configurationcontext USING btree (project, customfield);


--
-- Name: deadletter_lastseen; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deadletter_lastseen ON public.deadletter USING btree (last_seen);


--
-- Name: deadletter_msg_server_folder; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deadletter_msg_server_folder ON public.deadletter USING btree (message_id, mail_server_id, folder_name);


--
-- Name: draft_workflow_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX draft_workflow_scheme ON public.draftworkflowschemeentity USING btree (scheme);


--
-- Name: draft_workflow_scheme_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX draft_workflow_scheme_parent ON public.draftworkflowscheme USING btree (workflow_scheme_id);


--
-- Name: entityproperty_entity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entityproperty_entity ON public.entity_property USING btree (entity_name, entity_id);


--
-- Name: entityproperty_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entityproperty_key ON public.entity_property USING btree (property_key);


--
-- Name: entitytranslation_locale; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entitytranslation_locale ON public.entity_translation USING btree (locale);


--
-- Name: entpropindexdoc_module; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX entpropindexdoc_module ON public.entity_property_index_document USING btree (plugin_key, module_key);


--
-- Name: ext_entity_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ext_entity_name ON public.external_entities USING btree (name);


--
-- Name: favourite_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX favourite_index ON public.favouriteassociations USING btree (username, entitytype, entityid);


--
-- Name: fc_fieldid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fc_fieldid ON public.fieldconfiguration USING btree (fieldid);


--
-- Name: fcs_fieldid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_fieldid ON public.fieldconfigscheme USING btree (fieldid);


--
-- Name: fcs_issuetype; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_issuetype ON public.fieldconfigschemeissuetype USING btree (issuetype);


--
-- Name: fcs_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fcs_scheme ON public.fieldconfigschemeissuetype USING btree (fieldconfigscheme);


--
-- Name: feature_id_userkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX feature_id_userkey ON public.feature USING btree (id, user_key);


--
-- Name: fieldid_fieldconf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldid_fieldconf ON public.optionconfiguration USING btree (fieldid, fieldconfig);


--
-- Name: fieldid_optionid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldid_optionid ON public.optionconfiguration USING btree (fieldid, optionid);


--
-- Name: fieldlayout_layout; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldlayout_layout ON public.fieldlayoutschemeentity USING btree (fieldlayout);


--
-- Name: fieldlayout_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldlayout_scheme ON public.fieldlayoutschemeentity USING btree (scheme);


--
-- Name: fieldscitem_tab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscitem_tab ON public.fieldscreenlayoutitem USING btree (fieldscreentab);


--
-- Name: fieldscreen_field; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_field ON public.fieldscreenlayoutitem USING btree (fieldidentifier);


--
-- Name: fieldscreen_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_scheme ON public.issuetypescreenschemeentity USING btree (fieldscreenscheme);


--
-- Name: fieldscreen_tab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fieldscreen_tab ON public.fieldscreentab USING btree (fieldscreen);


--
-- Name: fl_scheme_assoc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fl_scheme_assoc ON public.fieldlayoutschemeassociation USING btree (project, issuetype);


--
-- Name: historystep_entryid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX historystep_entryid ON public.os_historystep USING btree (entry_id);


--
-- Name: idx_all_project_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_all_project_ids ON public.project_key USING btree (project_id);


--
-- Name: idx_all_project_keys; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_all_project_keys ON public.project_key USING btree (project_key);


--
-- Name: idx_audit_item_log_id2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_audit_item_log_id2 ON public.audit_item USING btree (log_id);


--
-- Name: idx_audit_log_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_audit_log_created ON public.audit_log USING btree (created);


--
-- Name: idx_board_board_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_board_board_ids ON public.boardproject USING btree (board_id);


--
-- Name: idx_board_project_ids; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_board_project_ids ON public.boardproject USING btree (project_id);


--
-- Name: idx_changed_value_log_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_changed_value_log_id ON public.audit_changed_value USING btree (log_id);


--
-- Name: idx_cli_fieldidentifier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cli_fieldidentifier ON public.columnlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_component_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_component_name ON public.component USING btree (cname);


--
-- Name: idx_component_project; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_component_project ON public.component USING btree (project);


--
-- Name: idx_directory_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_active ON public.cwd_directory USING btree (active);


--
-- Name: idx_directory_impl; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_impl ON public.cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_directory_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_directory_type ON public.cwd_directory USING btree (directory_type);


--
-- Name: idx_display_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_display_name ON public.cwd_user USING btree (lower_display_name);


--
-- Name: idx_email_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_email_address ON public.cwd_user USING btree (lower_email_address);


--
-- Name: idx_first_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_first_name ON public.cwd_user USING btree (lower_first_name);


--
-- Name: idx_fli_fieldidentifier; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fli_fieldidentifier ON public.fieldlayoutitem USING btree (fieldidentifier);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_active ON public.cwd_group USING btree (lower_group_name, active);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_attr_dir_name_lval ON public.cwd_group_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_dir_id ON public.cwd_group USING btree (directory_id);


--
-- Name: idx_last_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_last_name ON public.cwd_user USING btree (lower_last_name);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_child ON public.cwd_membership USING btree (lower_child_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent ON public.cwd_membership USING btree (lower_parent_name, membership_type, directory_id);


--
-- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent_child ON public.cwd_membership USING btree (lower_parent_name, lower_child_name, membership_type, directory_id);


--
-- Name: idx_old_issue_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_old_issue_key ON public.moved_issue_key USING btree (old_issue_key);


--
-- Name: idx_parent_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_parent_name ON public.jiraworkflowstatuses USING btree (parentname);


--
-- Name: idx_project_category_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_project_category_name ON public.projectcategory USING btree (cname);


--
-- Name: idx_project_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_project_key ON public.project USING btree (pkey);


--
-- Name: idx_qrtz_ft_inst_job_req_rcvry; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_inst_job_req_rcvry ON public.jquartz_fired_triggers USING btree (sched_name, instance_name, requests_recovery);


--
-- Name: idx_qrtz_ft_j_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_j_g ON public.jquartz_fired_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_ft_jg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_jg ON public.jquartz_fired_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_ft_t_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_t_g ON public.jquartz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);


--
-- Name: idx_qrtz_ft_tg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_tg ON public.jquartz_fired_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_ft_trig_inst_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_ft_trig_inst_name ON public.jquartz_fired_triggers USING btree (sched_name, instance_name);


--
-- Name: idx_qrtz_j_g; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_g ON public.jquartz_triggers USING btree (sched_name, trigger_group);


--
-- Name: idx_qrtz_j_grp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_grp ON public.jquartz_job_details USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_j_req_recovery; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_req_recovery ON public.jquartz_job_details USING btree (sched_name, requests_recovery);


--
-- Name: idx_qrtz_j_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_j_state ON public.jquartz_triggers USING btree (sched_name, trigger_state);


--
-- Name: idx_qrtz_t_c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_c ON public.jquartz_triggers USING btree (sched_name, calendar_name);


--
-- Name: idx_qrtz_t_j; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_j ON public.jquartz_triggers USING btree (sched_name, job_name, job_group);


--
-- Name: idx_qrtz_t_jg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_jg ON public.jquartz_triggers USING btree (sched_name, job_group);


--
-- Name: idx_qrtz_t_n_g_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_n_g_state ON public.jquartz_triggers USING btree (sched_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_n_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_n_state ON public.jquartz_triggers USING btree (sched_name, trigger_name, trigger_group, trigger_state);


--
-- Name: idx_qrtz_t_next_fire_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_next_fire_time ON public.jquartz_triggers USING btree (sched_name, next_fire_time);


--
-- Name: idx_qrtz_t_nft_misfire; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_misfire ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st ON public.jquartz_triggers USING btree (sched_name, trigger_state, next_fire_time);


--
-- Name: idx_qrtz_t_nft_st_misfire; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st_misfire ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_state);


--
-- Name: idx_qrtz_t_nft_st_misfire_grp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_qrtz_t_nft_st_misfire_grp ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time, trigger_group, trigger_state);


--
-- Name: idx_reindex_component_req_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_reindex_component_req_id ON public.reindex_component USING btree (request_id);


--
-- Name: idx_tam_by_created_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tam_by_created_time ON public.tempattachmentsmonitor USING btree (created_time);


--
-- Name: idx_tam_by_form_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tam_by_form_token ON public.tempattachmentsmonitor USING btree (form_token);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_attr_dir_name_lval ON public.cwd_user_attributes USING btree (directory_id, attribute_name, lower_attribute_value);


--
-- Name: idx_version_project; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_version_project ON public.projectversion USING btree (project);


--
-- Name: idx_version_sequence; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_version_sequence ON public.projectversion USING btree (sequence);


--
-- Name: index_ao_21f425_mes1965715920; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_21f425_mes1965715920 ON public."AO_21F425_MESSAGE_MAPPING_AO" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_21f425_mes223897723; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_21f425_mes223897723 ON public."AO_21F425_MESSAGE_MAPPING_AO" USING btree ("USER_HASH");


--
-- Name: index_ao_21f425_use1458667739; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_21f425_use1458667739 ON public."AO_21F425_USER_PROPERTY_AO" USING btree ("USER");


--
-- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_38321b_cus1828044926 ON public."AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");


--
-- Name: index_ao_4789dd_tas42846517; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_4789dd_tas42846517 ON public."AO_4789DD_TASK_MONITOR" USING btree ("TASK_MONITOR_KIND");


--
-- Name: index_ao_550953_sho1778115994; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_550953_sho1778115994 ON public."AO_550953_SHORTCUT" USING btree ("PROJECT_ID");


--
-- Name: index_ao_563aee_act1642652291; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act1642652291 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("OBJECT_ID");


--
-- Name: index_ao_563aee_act1978295567; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act1978295567 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("TARGET_ID");


--
-- Name: index_ao_563aee_act972488439; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act972488439 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ICON_ID");


--
-- Name: index_ao_563aee_act995325379; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_act995325379 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ACTOR_ID");


--
-- Name: index_ao_563aee_obj696886343; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_obj696886343 ON public."AO_563AEE_OBJECT_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_563aee_tar521440921; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_563aee_tar521440921 ON public."AO_563AEE_TARGET_ENTITY" USING btree ("IMAGE_ID");


--
-- Name: index_ao_575bf5_dev567785983; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_dev567785983 ON public."AO_575BF5_DEV_SUMMARY" USING btree ("ISSUE_ID");


--
-- Name: index_ao_575bf5_dev996442447; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_dev996442447 ON public."AO_575BF5_DEV_SUMMARY" USING btree ("PROVIDER_SOURCE_ID");


--
-- Name: index_ao_575bf5_pro1117502689; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro1117502689 ON public."AO_575BF5_PROVIDER_ISSUE" USING btree ("STALE_AFTER");


--
-- Name: index_ao_575bf5_pro1348521624; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro1348521624 ON public."AO_575BF5_PROVIDER_ISSUE" USING btree ("PROVIDER_SOURCE_ID");


--
-- Name: index_ao_575bf5_pro1681808571; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro1681808571 ON public."AO_575BF5_PROCESSED_COMMITS" USING btree ("COMMIT_HASH");


--
-- Name: index_ao_575bf5_pro741170824; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro741170824 ON public."AO_575BF5_PROVIDER_ISSUE" USING btree ("ISSUE_ID");


--
-- Name: index_ao_575bf5_pro78019725; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro78019725 ON public."AO_575BF5_PROCESSED_COMMITS" USING btree ("METADATA_HASH");


--
-- Name: index_ao_575bf5_pro996609822; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_575bf5_pro996609822 ON public."AO_575BF5_PROVIDER_SEQ_NO" USING btree ("PROVIDER_SOURCE_ID");


--
-- Name: index_ao_587b34_pro1732672724; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro1732672724 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("ROOM_ID");


--
-- Name: index_ao_587b34_pro193829489; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro193829489 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("CONFIGURATION_GROUP_ID");


--
-- Name: index_ao_587b34_pro2093917684; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro2093917684 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("PROJECT_ID");


--
-- Name: index_ao_587b34_pro2115480362; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_587b34_pro2115480362 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("NAME");


--
-- Name: index_ao_5fb9d7_aoh1981563178; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_5fb9d7_aoh1981563178 ON public."AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("USER_KEY");


--
-- Name: index_ao_5fb9d7_aoh49772492; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_5fb9d7_aoh49772492 ON public."AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("HIP_CHAT_LINK_ID");


--
-- Name: index_ao_60db71_aud137736645; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_aud137736645 ON public."AO_60DB71_AUDITENTRY" USING btree ("ENTITY_CLASS");


--
-- Name: index_ao_60db71_aud1756477597; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_aud1756477597 ON public."AO_60DB71_AUDITENTRY" USING btree ("CATEGORY");


--
-- Name: index_ao_60db71_aud604788536; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_aud604788536 ON public."AO_60DB71_AUDITENTRY" USING btree ("ENTITY_ID");


--
-- Name: index_ao_60db71_boa2110227660; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_boa2110227660 ON public."AO_60DB71_BOARDADMINS" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_car149237770; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_car149237770 ON public."AO_60DB71_CARDLAYOUT" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_car2031978979; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_car2031978979 ON public."AO_60DB71_CARDCOLOR" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_col1856623434; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_col1856623434 ON public."AO_60DB71_COLUMNSTATUS" USING btree ("COLUMN_ID");


--
-- Name: index_ao_60db71_col2098611346; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_col2098611346 ON public."AO_60DB71_COLUMN" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_det878495474; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_det878495474 ON public."AO_60DB71_DETAILVIEWFIELD" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_est1680565966; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_est1680565966 ON public."AO_60DB71_ESTIMATESTATISTIC" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_iss1616896230; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_iss1616896230 ON public."AO_60DB71_ISSUERANKING" USING btree ("ISSUE_ID");


--
-- Name: index_ao_60db71_iss1786461035; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_iss1786461035 ON public."AO_60DB71_ISSUERANKING" USING btree ("CUSTOM_FIELD_ID");


--
-- Name: index_ao_60db71_lex1569533973; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_lex1569533973 ON public."AO_60DB71_LEXORANK" USING btree ("FIELD_ID", "RANK");


--
-- Name: index_ao_60db71_lex1632828616; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_lex1632828616 ON public."AO_60DB71_LEXORANK" USING btree ("LOCK_HASH");


--
-- Name: index_ao_60db71_lex1694305086; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_lex1694305086 ON public."AO_60DB71_LEXORANK" USING btree ("FIELD_ID", "BUCKET", "RANK");


--
-- Name: index_ao_60db71_lex604083109; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_lex604083109 ON public."AO_60DB71_LEXORANK" USING btree ("ISSUE_ID");


--
-- Name: index_ao_60db71_non1145824037; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_non1145824037 ON public."AO_60DB71_NONWORKINGDAY" USING btree ("WORKING_DAYS_ID");


--
-- Name: index_ao_60db71_qui432573905; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_qui432573905 ON public."AO_60DB71_QUICKFILTER" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_spr1457658269; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_spr1457658269 ON public."AO_60DB71_SPRINT" USING btree ("SEQUENCE");


--
-- Name: index_ao_60db71_sta1907922871; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_sta1907922871 ON public."AO_60DB71_STATSFIELD" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_sub730851836; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_sub730851836 ON public."AO_60DB71_SUBQUERY" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_swi1429284592; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_swi1429284592 ON public."AO_60DB71_SWIMLANE" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_tra1711190333; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_tra1711190333 ON public."AO_60DB71_TRACKINGSTATISTIC" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_60db71_wor1205491794; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_60db71_wor1205491794 ON public."AO_60DB71_WORKINGDAYS" USING btree ("RAPID_VIEW_ID");


--
-- Name: index_ao_e8b6cc_bra1368852151; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_bra1368852151 ON public."AO_E8B6CC_BRANCH_HEAD_MAPPING" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_bra405461593; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_bra405461593 ON public."AO_E8B6CC_BRANCH" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_cha1086340152; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_cha1086340152 ON public."AO_E8B6CC_CHANGESET_MAPPING" USING btree ("SMARTCOMMIT_AVAILABLE");


--
-- Name: index_ao_e8b6cc_cha1483243924; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_cha1483243924 ON public."AO_E8B6CC_CHANGESET_MAPPING" USING btree ("NODE");


--
-- Name: index_ao_e8b6cc_cha509722037; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_cha509722037 ON public."AO_E8B6CC_CHANGESET_MAPPING" USING btree ("RAW_NODE");


--
-- Name: index_ao_e8b6cc_cha897886051; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_cha897886051 ON public."AO_E8B6CC_CHANGESET_MAPPING" USING btree ("AUTHOR");


--
-- Name: index_ao_e8b6cc_com1308336834; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_com1308336834 ON public."AO_E8B6CC_COMMIT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_commit_node; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_commit_node ON public."AO_E8B6CC_COMMIT" USING btree ("NODE");


--
-- Name: index_ao_e8b6cc_git1120895454; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_git1120895454 ON public."AO_E8B6CC_GIT_HUB_EVENT" USING btree ("GIT_HUB_ID");


--
-- Name: index_ao_e8b6cc_git1804640320; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_git1804640320 ON public."AO_E8B6CC_GIT_HUB_EVENT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_iss1229805759; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss1229805759 ON public."AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("CHANGESET_ID");


--
-- Name: index_ao_e8b6cc_iss1325927291; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss1325927291 ON public."AO_E8B6CC_ISSUE_TO_BRANCH" USING btree ("BRANCH_ID");


--
-- Name: index_ao_e8b6cc_iss353204826; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss353204826 ON public."AO_E8B6CC_ISSUE_TO_BRANCH" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_iss417950110; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss417950110 ON public."AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_iss648895902; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_iss648895902 ON public."AO_E8B6CC_ISSUE_TO_CHANGESET" USING btree ("PROJECT_KEY");


--
-- Name: index_ao_e8b6cc_mes1247039512; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes1247039512 ON public."AO_E8B6CC_MESSAGE" USING btree ("ADDRESS");


--
-- Name: index_ao_e8b6cc_mes1391090780; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes1391090780 ON public."AO_E8B6CC_MESSAGE_TAG" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_e8b6cc_mes1648007831; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes1648007831 ON public."AO_E8B6CC_MESSAGE_TAG" USING btree ("TAG");


--
-- Name: index_ao_e8b6cc_mes344532677; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes344532677 ON public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("MESSAGE_ID");


--
-- Name: index_ao_e8b6cc_mes59146529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes59146529 ON public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("STATE");


--
-- Name: index_ao_e8b6cc_mes60959905; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_mes60959905 ON public."AO_E8B6CC_MESSAGE_QUEUE_ITEM" USING btree ("QUEUE");


--
-- Name: index_ao_e8b6cc_org1513110290; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_org1513110290 ON public."AO_E8B6CC_ORGANIZATION_MAPPING" USING btree ("DVCS_TYPE");


--
-- Name: index_ao_e8b6cc_org1899590324; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_org1899590324 ON public."AO_E8B6CC_ORG_TO_PROJECT" USING btree ("ORGANIZATION_ID");


--
-- Name: index_ao_e8b6cc_pr_1045528152; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_1045528152 ON public."AO_E8B6CC_PR_TO_COMMIT" USING btree ("REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_1105917040; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_1105917040 ON public."AO_E8B6CC_PR_PARTICIPANT" USING btree ("PULL_REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_1458633226; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_1458633226 ON public."AO_E8B6CC_PR_TO_COMMIT" USING btree ("COMMIT_ID");


--
-- Name: index_ao_e8b6cc_pr_1639282617; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_1639282617 ON public."AO_E8B6CC_PR_ISSUE_KEY" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pr_2106805302; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_2106805302 ON public."AO_E8B6CC_PR_ISSUE_KEY" USING btree ("ISSUE_KEY");


--
-- Name: index_ao_e8b6cc_pr_281193494; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_281193494 ON public."AO_E8B6CC_PR_ISSUE_KEY" USING btree ("PULL_REQUEST_ID");


--
-- Name: index_ao_e8b6cc_pr_685151049; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_685151049 ON public."AO_E8B6CC_PR_TO_COMMIT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pr_758084799; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pr_758084799 ON public."AO_E8B6CC_PR_PARTICIPANT" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pul1230717024; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pul1230717024 ON public."AO_E8B6CC_PULL_REQUEST" USING btree ("DOMAIN_ID");


--
-- Name: index_ao_e8b6cc_pul1448445182; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pul1448445182 ON public."AO_E8B6CC_PULL_REQUEST" USING btree ("TO_REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_pul602811170; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_pul602811170 ON public."AO_E8B6CC_PULL_REQUEST" USING btree ("REMOTE_ID");


--
-- Name: index_ao_e8b6cc_rep1082901832; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep1082901832 ON public."AO_E8B6CC_REPO_TO_CHANGESET" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_rep1928770529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep1928770529 ON public."AO_E8B6CC_REPO_TO_PROJECT" USING btree ("REPOSITORY_ID");


--
-- Name: index_ao_e8b6cc_rep702725269; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep702725269 ON public."AO_E8B6CC_REPOSITORY_MAPPING" USING btree ("ORGANIZATION_ID");


--
-- Name: index_ao_e8b6cc_rep922992576; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep922992576 ON public."AO_E8B6CC_REPO_TO_CHANGESET" USING btree ("CHANGESET_ID");


--
-- Name: index_ao_e8b6cc_rep93578901; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_rep93578901 ON public."AO_E8B6CC_REPOSITORY_MAPPING" USING btree ("LINKED");


--
-- Name: index_ao_e8b6cc_syn203792807; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_syn203792807 ON public."AO_E8B6CC_SYNC_AUDIT_LOG" USING btree ("REPO_ID");


--
-- Name: index_ao_e8b6cc_syn493078035; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_e8b6cc_syn493078035 ON public."AO_E8B6CC_SYNC_EVENT" USING btree ("REPO_ID");


--
-- Name: index_ao_ed669c_see20117222; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_ed669c_see20117222 ON public."AO_ED669C_SEEN_ASSERTIONS" USING btree ("EXPIRY_TIMESTAMP");


--
-- Name: issue_assignee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_assignee ON public.jiraissue USING btree (assignee);


--
-- Name: issue_created; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_created ON public.jiraissue USING btree (created);


--
-- Name: issue_duedate; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_duedate ON public.jiraissue USING btree (duedate);


--
-- Name: issue_proj_num; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_proj_num ON public.jiraissue USING btree (issuenum, project);


--
-- Name: issue_proj_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_proj_status ON public.jiraissue USING btree (project, issuestatus);


--
-- Name: issue_reporter; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_reporter ON public.jiraissue USING btree (reporter);


--
-- Name: issue_resolutiondate; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_resolutiondate ON public.jiraissue USING btree (resolutiondate);


--
-- Name: issue_updated; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_updated ON public.jiraissue USING btree (updated);


--
-- Name: issue_votes; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_votes ON public.jiraissue USING btree (votes);


--
-- Name: issue_watches; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_watches ON public.jiraissue USING btree (watches);


--
-- Name: issue_workflow; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issue_workflow ON public.jiraissue USING btree (workflow_id);


--
-- Name: issuelink_dest; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_dest ON public.issuelink USING btree (destination);


--
-- Name: issuelink_src; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_src ON public.issuelink USING btree (source);


--
-- Name: issuelink_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX issuelink_type ON public.issuelink USING btree (linktype);


--
-- Name: label_fieldissue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_fieldissue ON public.label USING btree (issue, fieldid);


--
-- Name: label_fieldissuelabel; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_fieldissuelabel ON public.label USING btree (issue, fieldid, label);


--
-- Name: label_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_issue ON public.label USING btree (issue);


--
-- Name: label_label; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_label ON public.label USING btree (label);


--
-- Name: licenseroledefault_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX licenseroledefault_index ON public.licenserolesdefault USING btree (license_role_name);


--
-- Name: licenserolegroup_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX licenserolegroup_index ON public.licenserolesgroup USING btree (license_role_name, group_id);


--
-- Name: linktypename; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX linktypename ON public.issuelinktype USING btree (linkname);


--
-- Name: linktypestyle; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX linktypestyle ON public.issuelinktype USING btree (pstyle);


--
-- Name: managedconfigitem_id_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX managedconfigitem_id_type_idx ON public.managedconfigurationitem USING btree (item_id, item_type);


--
-- Name: mshipbase_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mshipbase_group ON public.membershipbase USING btree (group_name);


--
-- Name: mshipbase_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX mshipbase_user ON public.membershipbase USING btree (user_name);


--
-- Name: node_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX node_id_idx ON public.nodeindexcounter USING btree (node_id, sending_node_id);


--
-- Name: node_operation_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_operation_idx ON public.replicatedindexoperation USING btree (node_id, affected_index, operation, index_time);


--
-- Name: node_sink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_sink ON public.nodeassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: node_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX node_source ON public.nodeassociation USING btree (source_node_id, source_node_entity);


--
-- Name: notif_messageid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notif_messageid ON public.notificationinstance USING btree (messageid);


--
-- Name: notif_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notif_source ON public.notificationinstance USING btree (source);


--
-- Name: ntfctn_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ntfctn_scheme ON public.notification USING btree (scheme);


--
-- Name: oauth_consumer_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_index ON public.oauthconsumer USING btree (consumer_key);


--
-- Name: oauth_consumer_service_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_service_index ON public.oauthconsumer USING btree (consumerservice);


--
-- Name: oauth_consumer_token_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_consumer_token_index ON public.oauthconsumertoken USING btree (token);


--
-- Name: oauth_consumer_token_key_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_consumer_token_key_index ON public.oauthconsumertoken USING btree (token_key);


--
-- Name: oauth_sp_consumer_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_sp_consumer_index ON public.oauthspconsumer USING btree (consumer_key);


--
-- Name: oauth_sp_consumer_key_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX oauth_sp_consumer_key_index ON public.oauthsptoken USING btree (consumer_key);


--
-- Name: oauth_sp_token_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX oauth_sp_token_index ON public.oauthsptoken USING btree (token);


--
-- Name: ordernumber_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ordernumber_idx ON public.clusterupgradestate USING btree (order_number);


--
-- Name: osgroup_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osgroup_name ON public.groupbase USING btree (groupname);


--
-- Name: osproperty_all; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osproperty_all ON public.propertyentry USING btree (entity_id);


--
-- Name: osproperty_entityname; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osproperty_entityname ON public.propertyentry USING btree (entity_name);


--
-- Name: osproperty_propertykey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osproperty_propertykey ON public.propertyentry USING btree (property_key);


--
-- Name: osuser_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX osuser_name ON public.userbase USING btree (username);


--
-- Name: permission_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX permission_key_idx ON public.schemepermissions USING btree (permission_key);


--
-- Name: ppage_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ppage_username ON public.portalpage USING btree (username);


--
-- Name: prmssn_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prmssn_scheme ON public.schemepermissions USING btree (scheme);


--
-- Name: prmssn_scheme_attr_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prmssn_scheme_attr_idx ON public.permissionschemeattribute USING btree (scheme);


--
-- Name: prmssn_scheme_attr_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prmssn_scheme_attr_key_idx ON public.permissionschemeattribute USING btree (scheme, attribute_key);


--
-- Name: remembermetoken_username_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remembermetoken_username_index ON public.remembermetoken USING btree (username);


--
-- Name: remotelink_globalid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remotelink_globalid ON public.remotelink USING btree (globalid);


--
-- Name: remotelink_issueid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX remotelink_issueid ON public.remotelink USING btree (issueid, globalid);


--
-- Name: role_pid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_pid_idx ON public.projectroleactor USING btree (pid);


--
-- Name: role_player_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX role_player_idx ON public.projectroleactor USING btree (projectroleid, pid);


--
-- Name: rundetails_jobid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rundetails_jobid_idx ON public.rundetails USING btree (job_id);


--
-- Name: rundetails_starttime_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rundetails_starttime_idx ON public.rundetails USING btree (start_time);


--
-- Name: screenitem_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX screenitem_scheme ON public.fieldscreenschemeitem USING btree (fieldscreenscheme);


--
-- Name: searchrequest_filternamelower; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX searchrequest_filternamelower ON public.searchrequest USING btree (filtername_lower);


--
-- Name: sec_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sec_scheme ON public.schemeissuesecurities USING btree (scheme);


--
-- Name: sec_security; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sec_security ON public.schemeissuesecurities USING btree (security);


--
-- Name: share_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX share_index ON public.sharepermissions USING btree (entityid, entitytype);


--
-- Name: source_destination_node_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX source_destination_node_idx ON public.clustermessage USING btree (source_node, destination_node);


--
-- Name: sr_author; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sr_author ON public.searchrequest USING btree (authorname);


--
-- Name: subscrpt_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscrpt_user ON public.filtersubscription USING btree (filter_i_d, username);


--
-- Name: subscrptn_group; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscrptn_group ON public.filtersubscription USING btree (filter_i_d, groupname);


--
-- Name: trustedapp_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX trustedapp_id ON public.trustedapp USING btree (application_id);


--
-- Name: type_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX type_key ON public.genericconfiguration USING btree (datatype, datakey);


--
-- Name: uh_type_user_entity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uh_type_user_entity ON public.userhistoryitem USING btree (entitytype, username, entityid);


--
-- Name: uk_application_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_application_name ON public.cwd_application USING btree (lower_application_name);


--
-- Name: uk_directory_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_directory_name ON public.cwd_directory USING btree (lower_directory_name);


--
-- Name: uk_entitytranslation; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_entitytranslation ON public.entity_translation USING btree (entity_name, entity_id, locale);


--
-- Name: uk_group_attr_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_group_attr_name_lval ON public.cwd_group_attributes USING btree (group_id, attribute_name, lower_attribute_value);


--
-- Name: uk_group_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_group_name_dir_id ON public.cwd_group USING btree (lower_group_name, directory_id);


--
-- Name: uk_lower_user_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_lower_user_name ON public.app_user USING btree (lower_user_name);


--
-- Name: uk_mem_parent_child_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_mem_parent_child_type ON public.cwd_membership USING btree (parent_id, child_id, membership_type);


--
-- Name: uk_user_attr_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_user_attr_name_lval ON public.cwd_user_attributes USING btree (user_id, attribute_name);


--
-- Name: uk_user_externalid_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX uk_user_externalid_dir_id ON public.cwd_user USING btree (external_id, directory_id);


--
-- Name: uk_user_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_user_key ON public.app_user USING btree (user_key);


--
-- Name: uk_user_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uk_user_name_dir_id ON public.cwd_user USING btree (lower_user_name, directory_id);


--
-- Name: upf_customfield; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upf_customfield ON public.userpickerfilter USING btree (customfield);


--
-- Name: upf_fieldconfigid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upf_fieldconfigid ON public.userpickerfilter USING btree (customfieldconfig);


--
-- Name: user_sink; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_sink ON public.userassociation USING btree (sink_node_id, sink_node_entity);


--
-- Name: user_source; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_source ON public.userassociation USING btree (source_name);


--
-- Name: userpref_portletconfiguration; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX userpref_portletconfiguration ON public.gadgetuserpreference USING btree (portletconfiguration);


--
-- Name: votehistory_issue_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX votehistory_issue_index ON public.votehistory USING btree (issueid);


--
-- Name: wf_entryid; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wf_entryid ON public.os_currentstep USING btree (entry_id);


--
-- Name: workflow_scheme; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX workflow_scheme ON public.workflowschemeentity USING btree (scheme);


--
-- Name: worklog_author; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX worklog_author ON public.worklog USING btree (author);


--
-- Name: worklog_issue; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX worklog_issue ON public.worklog USING btree (issueid);


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_actor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_actor_id FOREIGN KEY ("ACTOR_ID") REFERENCES public."AO_563AEE_ACTOR_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_icon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_icon_id FOREIGN KEY ("ICON_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_object_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_object_id FOREIGN KEY ("OBJECT_ID") REFERENCES public."AO_563AEE_OBJECT_ENTITY"("ID");


--
-- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_target_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_activity_entity_target_id FOREIGN KEY ("TARGET_ID") REFERENCES public."AO_563AEE_TARGET_ENTITY"("ID");


--
-- Name: AO_563AEE_OBJECT_ENTITY fk_ao_563aee_object_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_object_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_563AEE_TARGET_ENTITY fk_ao_563aee_target_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
    ADD CONSTRAINT fk_ao_563aee_target_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");


--
-- Name: AO_5FB9D7_AOHIP_CHAT_USER fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
    ADD CONSTRAINT fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id FOREIGN KEY ("HIP_CHAT_LINK_ID") REFERENCES public."AO_5FB9D7_AOHIP_CHAT_LINK"("ID");


--
-- Name: AO_60DB71_BOARDADMINS fk_ao_60db71_boardadmins_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_BOARDADMINS"
    ADD CONSTRAINT fk_ao_60db71_boardadmins_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_CARDCOLOR fk_ao_60db71_cardcolor_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_CARDCOLOR"
    ADD CONSTRAINT fk_ao_60db71_cardcolor_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_CARDLAYOUT fk_ao_60db71_cardlayout_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_CARDLAYOUT"
    ADD CONSTRAINT fk_ao_60db71_cardlayout_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_COLUMN fk_ao_60db71_column_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_COLUMN"
    ADD CONSTRAINT fk_ao_60db71_column_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_COLUMNSTATUS fk_ao_60db71_columnstatus_column_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_COLUMNSTATUS"
    ADD CONSTRAINT fk_ao_60db71_columnstatus_column_id FOREIGN KEY ("COLUMN_ID") REFERENCES public."AO_60DB71_COLUMN"("ID");


--
-- Name: AO_60DB71_DETAILVIEWFIELD fk_ao_60db71_detailviewfield_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_DETAILVIEWFIELD"
    ADD CONSTRAINT fk_ao_60db71_detailviewfield_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_ESTIMATESTATISTIC fk_ao_60db71_estimatestatistic_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_ESTIMATESTATISTIC"
    ADD CONSTRAINT fk_ao_60db71_estimatestatistic_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_NONWORKINGDAY fk_ao_60db71_nonworkingday_working_days_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_NONWORKINGDAY"
    ADD CONSTRAINT fk_ao_60db71_nonworkingday_working_days_id FOREIGN KEY ("WORKING_DAYS_ID") REFERENCES public."AO_60DB71_WORKINGDAYS"("ID");


--
-- Name: AO_60DB71_QUICKFILTER fk_ao_60db71_quickfilter_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_QUICKFILTER"
    ADD CONSTRAINT fk_ao_60db71_quickfilter_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_STATSFIELD fk_ao_60db71_statsfield_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_STATSFIELD"
    ADD CONSTRAINT fk_ao_60db71_statsfield_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_SUBQUERY fk_ao_60db71_subquery_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_SUBQUERY"
    ADD CONSTRAINT fk_ao_60db71_subquery_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_SWIMLANE fk_ao_60db71_swimlane_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_SWIMLANE"
    ADD CONSTRAINT fk_ao_60db71_swimlane_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_TRACKINGSTATISTIC fk_ao_60db71_trackingstatistic_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_TRACKINGSTATISTIC"
    ADD CONSTRAINT fk_ao_60db71_trackingstatistic_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_60DB71_WORKINGDAYS fk_ao_60db71_workingdays_rapid_view_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_60DB71_WORKINGDAYS"
    ADD CONSTRAINT fk_ao_60db71_workingdays_rapid_view_id FOREIGN KEY ("RAPID_VIEW_ID") REFERENCES public."AO_60DB71_RAPIDVIEW"("ID");


--
-- Name: AO_E8B6CC_BRANCH fk_ao_e8b6cc_branch_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_BRANCH"
    ADD CONSTRAINT fk_ao_e8b6cc_branch_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES public."AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: AO_E8B6CC_GIT_HUB_EVENT fk_ao_e8b6cc_git_hub_event_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_GIT_HUB_EVENT"
    ADD CONSTRAINT fk_ao_e8b6cc_git_hub_event_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES public."AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- Name: AO_E8B6CC_ISSUE_TO_BRANCH fk_ao_e8b6cc_issue_to_branch_branch_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ISSUE_TO_BRANCH"
    ADD CONSTRAINT fk_ao_e8b6cc_issue_to_branch_branch_id FOREIGN KEY ("BRANCH_ID") REFERENCES public."AO_E8B6CC_BRANCH"("ID");


--
-- Name: AO_E8B6CC_MESSAGE_QUEUE_ITEM fk_ao_e8b6cc_message_queue_item_message_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_QUEUE_ITEM"
    ADD CONSTRAINT fk_ao_e8b6cc_message_queue_item_message_id FOREIGN KEY ("MESSAGE_ID") REFERENCES public."AO_E8B6CC_MESSAGE"("ID");


--
-- Name: AO_E8B6CC_MESSAGE_TAG fk_ao_e8b6cc_message_tag_message_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_MESSAGE_TAG"
    ADD CONSTRAINT fk_ao_e8b6cc_message_tag_message_id FOREIGN KEY ("MESSAGE_ID") REFERENCES public."AO_E8B6CC_MESSAGE"("ID");


--
-- Name: AO_E8B6CC_ORG_TO_PROJECT fk_ao_e8b6cc_org_to_project_organization_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_ORG_TO_PROJECT"
    ADD CONSTRAINT fk_ao_e8b6cc_org_to_project_organization_id FOREIGN KEY ("ORGANIZATION_ID") REFERENCES public."AO_E8B6CC_ORGANIZATION_MAPPING"("ID");


--
-- Name: AO_E8B6CC_PR_PARTICIPANT fk_ao_e8b6cc_pr_participant_pull_request_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_PARTICIPANT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_participant_pull_request_id FOREIGN KEY ("PULL_REQUEST_ID") REFERENCES public."AO_E8B6CC_PULL_REQUEST"("ID");


--
-- Name: AO_E8B6CC_PR_TO_COMMIT fk_ao_e8b6cc_pr_to_commit_commit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_to_commit_commit_id FOREIGN KEY ("COMMIT_ID") REFERENCES public."AO_E8B6CC_COMMIT"("ID");


--
-- Name: AO_E8B6CC_PR_TO_COMMIT fk_ao_e8b6cc_pr_to_commit_request_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_PR_TO_COMMIT"
    ADD CONSTRAINT fk_ao_e8b6cc_pr_to_commit_request_id FOREIGN KEY ("REQUEST_ID") REFERENCES public."AO_E8B6CC_PULL_REQUEST"("ID");


--
-- Name: AO_E8B6CC_REPO_TO_PROJECT fk_ao_e8b6cc_repo_to_project_repository_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_E8B6CC_REPO_TO_PROJECT"
    ADD CONSTRAINT fk_ao_e8b6cc_repo_to_project_repository_id FOREIGN KEY ("REPOSITORY_ID") REFERENCES public."AO_E8B6CC_REPOSITORY_MAPPING"("ID");


--
-- PostgreSQL database dump complete
--

