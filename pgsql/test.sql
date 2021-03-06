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

--
-- Name: datetime; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.datetime AS timestamp without time zone;


ALTER DOMAIN public.datetime OWNER TO postgres;

--
-- Name: longtext; Type: DOMAIN; Schema: public; Owner: postgres
--

CREATE DOMAIN public.longtext AS text;


ALTER DOMAIN public.longtext OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account_email_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_email_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    account_id character varying(36) NOT NULL,
    email character varying(128) NOT NULL,
    is_active boolean DEFAULT true,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.account_email_history OWNER TO postgres;

--
-- Name: account_email_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_email_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_email_history_record_id_seq OWNER TO postgres;

--
-- Name: account_email_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_email_history_record_id_seq OWNED BY public.account_email_history.record_id;


--
-- Name: account_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emails (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    account_id character varying(36) NOT NULL,
    email character varying(128) NOT NULL,
    is_active boolean DEFAULT true,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.account_emails OWNER TO postgres;

--
-- Name: account_emails_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emails_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emails_record_id_seq OWNER TO postgres;

--
-- Name: account_emails_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emails_record_id_seq OWNED BY public.account_emails.record_id;


--
-- Name: account_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    external_key character varying(255) NOT NULL,
    email character varying(128) DEFAULT NULL::character varying,
    name character varying(100) DEFAULT NULL::character varying,
    first_name_length integer,
    currency character varying(3) DEFAULT NULL::character varying,
    billing_cycle_day_local integer,
    parent_account_id character varying(36) DEFAULT NULL::character varying,
    is_payment_delegated_to_parent boolean DEFAULT false,
    payment_method_id character varying(36) DEFAULT NULL::character varying,
    reference_time public.datetime NOT NULL,
    time_zone character varying(50) NOT NULL,
    locale character varying(5) DEFAULT NULL::character varying,
    address1 character varying(100) DEFAULT NULL::character varying,
    address2 character varying(100) DEFAULT NULL::character varying,
    company_name character varying(50) DEFAULT NULL::character varying,
    city character varying(50) DEFAULT NULL::character varying,
    state_or_province character varying(50) DEFAULT NULL::character varying,
    country character varying(50) DEFAULT NULL::character varying,
    postal_code character varying(16) DEFAULT NULL::character varying,
    phone character varying(25) DEFAULT NULL::character varying,
    notes character varying(4096) DEFAULT NULL::character varying,
    migrated boolean DEFAULT false,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.account_history OWNER TO postgres;

--
-- Name: account_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_history_record_id_seq OWNER TO postgres;

--
-- Name: account_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_history_record_id_seq OWNED BY public.account_history.record_id;


--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    external_key character varying(255) NOT NULL,
    email character varying(128) DEFAULT NULL::character varying,
    name character varying(100) DEFAULT NULL::character varying,
    first_name_length integer,
    currency character varying(3) DEFAULT NULL::character varying,
    billing_cycle_day_local integer,
    parent_account_id character varying(36) DEFAULT NULL::character varying,
    is_payment_delegated_to_parent boolean DEFAULT false,
    payment_method_id character varying(36) DEFAULT NULL::character varying,
    reference_time public.datetime NOT NULL,
    time_zone character varying(50) NOT NULL,
    locale character varying(5) DEFAULT NULL::character varying,
    address1 character varying(100) DEFAULT NULL::character varying,
    address2 character varying(100) DEFAULT NULL::character varying,
    company_name character varying(50) DEFAULT NULL::character varying,
    city character varying(50) DEFAULT NULL::character varying,
    state_or_province character varying(50) DEFAULT NULL::character varying,
    country character varying(50) DEFAULT NULL::character varying,
    postal_code character varying(16) DEFAULT NULL::character varying,
    phone character varying(25) DEFAULT NULL::character varying,
    notes character varying(4096) DEFAULT NULL::character varying,
    migrated boolean DEFAULT false,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: accounts_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_record_id_seq OWNER TO postgres;

--
-- Name: accounts_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_record_id_seq OWNED BY public.accounts.record_id;


--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_log (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    table_name character varying(50) NOT NULL,
    change_type character varying(6) NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    reason_code character varying(255) DEFAULT NULL::character varying,
    comments character varying(255) DEFAULT NULL::character varying,
    user_token character varying(36),
    account_record_id bigint,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.audit_log OWNER TO postgres;

--
-- Name: audit_log_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audit_log_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audit_log_record_id_seq OWNER TO postgres;

--
-- Name: audit_log_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audit_log_record_id_seq OWNED BY public.audit_log.record_id;


--
-- Name: blocking_state_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blocking_state_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    blockable_id character varying(36) NOT NULL,
    type character varying(20) NOT NULL,
    state character varying(50) NOT NULL,
    service character varying(20) NOT NULL,
    block_change boolean NOT NULL,
    block_entitlement boolean NOT NULL,
    block_billing boolean NOT NULL,
    effective_date public.datetime NOT NULL,
    is_active boolean DEFAULT true,
    change_type character varying(6) NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.blocking_state_history OWNER TO postgres;

--
-- Name: blocking_state_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blocking_state_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blocking_state_history_record_id_seq OWNER TO postgres;

--
-- Name: blocking_state_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blocking_state_history_record_id_seq OWNED BY public.blocking_state_history.record_id;


--
-- Name: blocking_states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blocking_states (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    blockable_id character varying(36) NOT NULL,
    type character varying(20) NOT NULL,
    state character varying(50) NOT NULL,
    service character varying(20) NOT NULL,
    block_change boolean NOT NULL,
    block_entitlement boolean NOT NULL,
    block_billing boolean NOT NULL,
    effective_date public.datetime NOT NULL,
    is_active boolean DEFAULT true,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.blocking_states OWNER TO postgres;

--
-- Name: blocking_states_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blocking_states_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blocking_states_record_id_seq OWNER TO postgres;

--
-- Name: blocking_states_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blocking_states_record_id_seq OWNED BY public.blocking_states.record_id;


--
-- Name: bundle_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bundle_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    external_key character varying(255) NOT NULL,
    account_id character varying(36) NOT NULL,
    last_sys_update_date public.datetime,
    original_created_date public.datetime NOT NULL,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.bundle_history OWNER TO postgres;

--
-- Name: bundle_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bundle_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bundle_history_record_id_seq OWNER TO postgres;

--
-- Name: bundle_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bundle_history_record_id_seq OWNED BY public.bundle_history.record_id;


--
-- Name: bundles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bundles (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    external_key character varying(255) NOT NULL,
    account_id character varying(36) NOT NULL,
    last_sys_update_date public.datetime,
    original_created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.bundles OWNER TO postgres;

--
-- Name: bundles_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bundles_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bundles_record_id_seq OWNER TO postgres;

--
-- Name: bundles_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bundles_record_id_seq OWNED BY public.bundles.record_id;


--
-- Name: bus_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bus_events (
    record_id integer NOT NULL,
    class_name character varying(128) NOT NULL,
    event_json text NOT NULL,
    user_token character varying(36),
    created_date public.datetime NOT NULL,
    creating_owner character varying(50) NOT NULL,
    processing_owner character varying(50) DEFAULT NULL::character varying,
    processing_available_date public.datetime DEFAULT NULL::timestamp without time zone,
    processing_state character varying(14) DEFAULT 'AVAILABLE'::character varying,
    error_count integer DEFAULT 0,
    search_key1 bigint,
    search_key2 bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.bus_events OWNER TO postgres;

--
-- Name: bus_events_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bus_events_history (
    record_id integer NOT NULL,
    class_name character varying(128) NOT NULL,
    event_json text NOT NULL,
    user_token character varying(36),
    created_date public.datetime NOT NULL,
    creating_owner character varying(50) NOT NULL,
    processing_owner character varying(50) DEFAULT NULL::character varying,
    processing_available_date public.datetime DEFAULT NULL::timestamp without time zone,
    processing_state character varying(14) DEFAULT 'AVAILABLE'::character varying,
    error_count integer DEFAULT 0,
    search_key1 bigint,
    search_key2 bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.bus_events_history OWNER TO postgres;

--
-- Name: bus_events_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bus_events_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bus_events_history_record_id_seq OWNER TO postgres;

--
-- Name: bus_events_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bus_events_history_record_id_seq OWNED BY public.bus_events_history.record_id;


--
-- Name: bus_events_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bus_events_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bus_events_record_id_seq OWNER TO postgres;

--
-- Name: bus_events_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bus_events_record_id_seq OWNED BY public.bus_events.record_id;


--
-- Name: bus_ext_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bus_ext_events (
    record_id integer NOT NULL,
    class_name character varying(128) NOT NULL,
    event_json text NOT NULL,
    user_token character varying(36),
    created_date public.datetime NOT NULL,
    creating_owner character varying(50) NOT NULL,
    processing_owner character varying(50) DEFAULT NULL::character varying,
    processing_available_date public.datetime DEFAULT NULL::timestamp without time zone,
    processing_state character varying(14) DEFAULT 'AVAILABLE'::character varying,
    error_count integer DEFAULT 0,
    search_key1 bigint,
    search_key2 bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.bus_ext_events OWNER TO postgres;

--
-- Name: bus_ext_events_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bus_ext_events_history (
    record_id integer NOT NULL,
    class_name character varying(128) NOT NULL,
    event_json text NOT NULL,
    user_token character varying(36),
    created_date public.datetime NOT NULL,
    creating_owner character varying(50) NOT NULL,
    processing_owner character varying(50) DEFAULT NULL::character varying,
    processing_available_date public.datetime DEFAULT NULL::timestamp without time zone,
    processing_state character varying(14) DEFAULT 'AVAILABLE'::character varying,
    error_count integer DEFAULT 0,
    search_key1 bigint,
    search_key2 bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.bus_ext_events_history OWNER TO postgres;

--
-- Name: bus_ext_events_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bus_ext_events_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bus_ext_events_history_record_id_seq OWNER TO postgres;

--
-- Name: bus_ext_events_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bus_ext_events_history_record_id_seq OWNED BY public.bus_ext_events_history.record_id;


--
-- Name: bus_ext_events_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bus_ext_events_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bus_ext_events_record_id_seq OWNER TO postgres;

--
-- Name: bus_ext_events_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bus_ext_events_record_id_seq OWNED BY public.bus_ext_events.record_id;


--
-- Name: catalog_override_block_definition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_block_definition (
    record_id integer NOT NULL,
    parent_unit_name character varying(255) NOT NULL,
    bsize numeric(15,9) NOT NULL,
    max numeric(15,9),
    currency character varying(3) NOT NULL,
    price numeric(15,9) NOT NULL,
    effective_date public.datetime NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_block_definition OWNER TO postgres;

--
-- Name: catalog_override_block_definition_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_block_definition_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_block_definition_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_block_definition_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_block_definition_record_id_seq OWNED BY public.catalog_override_block_definition.record_id;


--
-- Name: catalog_override_phase_definition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_phase_definition (
    record_id integer NOT NULL,
    parent_phase_name character varying(255) NOT NULL,
    currency character varying(3) NOT NULL,
    fixed_price numeric(15,9),
    recurring_price numeric(15,9),
    effective_date public.datetime NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_phase_definition OWNER TO postgres;

--
-- Name: catalog_override_phase_definition_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_phase_definition_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_phase_definition_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_phase_definition_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_phase_definition_record_id_seq OWNED BY public.catalog_override_phase_definition.record_id;


--
-- Name: catalog_override_phase_usage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_phase_usage (
    record_id integer NOT NULL,
    usage_number integer,
    usage_def_record_id bigint NOT NULL,
    target_phase_def_record_id bigint NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_phase_usage OWNER TO postgres;

--
-- Name: catalog_override_phase_usage_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_phase_usage_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_phase_usage_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_phase_usage_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_phase_usage_record_id_seq OWNED BY public.catalog_override_phase_usage.record_id;


--
-- Name: catalog_override_plan_definition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_plan_definition (
    record_id integer NOT NULL,
    parent_plan_name character varying(255) NOT NULL,
    effective_date public.datetime NOT NULL,
    is_active boolean DEFAULT true,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_plan_definition OWNER TO postgres;

--
-- Name: catalog_override_plan_definition_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_plan_definition_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_plan_definition_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_plan_definition_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_plan_definition_record_id_seq OWNED BY public.catalog_override_plan_definition.record_id;


--
-- Name: catalog_override_plan_phase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_plan_phase (
    record_id integer NOT NULL,
    phase_number integer NOT NULL,
    phase_def_record_id bigint NOT NULL,
    target_plan_def_record_id bigint NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_plan_phase OWNER TO postgres;

--
-- Name: catalog_override_plan_phase_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_plan_phase_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_plan_phase_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_plan_phase_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_plan_phase_record_id_seq OWNED BY public.catalog_override_plan_phase.record_id;


--
-- Name: catalog_override_tier_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_tier_block (
    record_id integer NOT NULL,
    block_number integer,
    block_def_record_id bigint NOT NULL,
    target_tier_def_record_id bigint NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_tier_block OWNER TO postgres;

--
-- Name: catalog_override_tier_block_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_tier_block_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_tier_block_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_tier_block_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_tier_block_record_id_seq OWNED BY public.catalog_override_tier_block.record_id;


--
-- Name: catalog_override_tier_definition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_tier_definition (
    record_id integer NOT NULL,
    fixed_price numeric(15,9),
    recurring_price numeric(15,9),
    currency character varying(3) NOT NULL,
    effective_date public.datetime NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_tier_definition OWNER TO postgres;

--
-- Name: catalog_override_tier_definition_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_tier_definition_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_tier_definition_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_tier_definition_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_tier_definition_record_id_seq OWNED BY public.catalog_override_tier_definition.record_id;


--
-- Name: catalog_override_usage_definition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_usage_definition (
    record_id integer NOT NULL,
    parent_usage_name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    fixed_price numeric(15,9),
    recurring_price numeric(15,9),
    currency character varying(3) NOT NULL,
    effective_date public.datetime NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_usage_definition OWNER TO postgres;

--
-- Name: catalog_override_usage_definition_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_usage_definition_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_usage_definition_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_usage_definition_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_usage_definition_record_id_seq OWNED BY public.catalog_override_usage_definition.record_id;


--
-- Name: catalog_override_usage_tier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog_override_usage_tier (
    record_id integer NOT NULL,
    tier_number integer,
    tier_def_record_id bigint NOT NULL,
    target_usage_def_record_id bigint NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.catalog_override_usage_tier OWNER TO postgres;

--
-- Name: catalog_override_usage_tier_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.catalog_override_usage_tier_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_override_usage_tier_record_id_seq OWNER TO postgres;

--
-- Name: catalog_override_usage_tier_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.catalog_override_usage_tier_record_id_seq OWNED BY public.catalog_override_usage_tier.record_id;


--
-- Name: custom_field_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_field_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    object_id character varying(36) NOT NULL,
    object_type character varying(30) NOT NULL,
    is_active boolean DEFAULT true,
    field_name character varying(64),
    field_value character varying(255),
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.custom_field_history OWNER TO postgres;

--
-- Name: custom_field_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_field_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_field_history_record_id_seq OWNER TO postgres;

--
-- Name: custom_field_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_field_history_record_id_seq OWNED BY public.custom_field_history.record_id;


--
-- Name: custom_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.custom_fields (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    object_id character varying(36) NOT NULL,
    object_type character varying(30) NOT NULL,
    is_active boolean DEFAULT true,
    field_name character varying(64) NOT NULL,
    field_value character varying(255),
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) DEFAULT NULL::character varying,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.custom_fields OWNER TO postgres;

--
-- Name: custom_fields_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.custom_fields_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_fields_record_id_seq OWNER TO postgres;

--
-- Name: custom_fields_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.custom_fields_record_id_seq OWNED BY public.custom_fields.record_id;


--
-- Name: invoice_billing_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_billing_events (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    invoice_id character varying(36) NOT NULL,
    billing_events bytea NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_billing_events OWNER TO postgres;

--
-- Name: invoice_billing_events_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_billing_events_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_billing_events_record_id_seq OWNER TO postgres;

--
-- Name: invoice_billing_events_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_billing_events_record_id_seq OWNED BY public.invoice_billing_events.record_id;


--
-- Name: invoice_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    account_id character varying(36) NOT NULL,
    invoice_date date NOT NULL,
    target_date date,
    currency character varying(3) NOT NULL,
    status character varying(15) DEFAULT 'COMMITTED'::character varying NOT NULL,
    migrated boolean NOT NULL,
    parent_invoice boolean DEFAULT false NOT NULL,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_history OWNER TO postgres;

--
-- Name: invoice_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_history_record_id_seq OWNER TO postgres;

--
-- Name: invoice_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_history_record_id_seq OWNED BY public.invoice_history.record_id;


--
-- Name: invoice_item_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_item_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    type character varying(24) NOT NULL,
    invoice_id character varying(36) NOT NULL,
    account_id character varying(36) NOT NULL,
    child_account_id character varying(36),
    bundle_id character varying(36),
    subscription_id character varying(36),
    description character varying(255),
    product_name character varying(255),
    plan_name character varying(255),
    phase_name character varying(255),
    usage_name character varying(255),
    catalog_effective_date public.datetime,
    start_date date,
    end_date date,
    amount numeric(15,9) NOT NULL,
    rate numeric(15,9),
    currency character varying(3) NOT NULL,
    linked_item_id character varying(36),
    quantity integer,
    item_details text,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_item_history OWNER TO postgres;

--
-- Name: invoice_item_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_item_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_item_history_record_id_seq OWNER TO postgres;

--
-- Name: invoice_item_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_item_history_record_id_seq OWNED BY public.invoice_item_history.record_id;


--
-- Name: invoice_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_items (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    type character varying(24) NOT NULL,
    invoice_id character varying(36) NOT NULL,
    account_id character varying(36) NOT NULL,
    child_account_id character varying(36),
    bundle_id character varying(36),
    subscription_id character varying(36),
    description character varying(255),
    product_name character varying(255),
    plan_name character varying(255),
    phase_name character varying(255),
    usage_name character varying(255),
    catalog_effective_date public.datetime,
    start_date date,
    end_date date,
    amount numeric(15,9) NOT NULL,
    rate numeric(15,9),
    currency character varying(3) NOT NULL,
    linked_item_id character varying(36),
    quantity integer,
    item_details text,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_items OWNER TO postgres;

--
-- Name: invoice_items_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_items_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_items_record_id_seq OWNER TO postgres;

--
-- Name: invoice_items_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_items_record_id_seq OWNED BY public.invoice_items.record_id;


--
-- Name: invoice_parent_children; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_parent_children (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    parent_invoice_id character varying(36) NOT NULL,
    child_invoice_id character varying(36) NOT NULL,
    child_account_id character varying(36) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_parent_children OWNER TO postgres;

--
-- Name: invoice_parent_children_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_parent_children_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_parent_children_record_id_seq OWNER TO postgres;

--
-- Name: invoice_parent_children_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_parent_children_record_id_seq OWNED BY public.invoice_parent_children.record_id;


--
-- Name: invoice_payment_control_plugin_auto_pay_off; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_payment_control_plugin_auto_pay_off (
    record_id integer NOT NULL,
    attempt_id character varying(36) NOT NULL,
    payment_external_key character varying(255) NOT NULL,
    transaction_external_key character varying(255) NOT NULL,
    account_id character varying(36) NOT NULL,
    plugin_name character varying(50) NOT NULL,
    payment_id character varying(36),
    amount numeric(15,9),
    currency character varying(3),
    is_active boolean DEFAULT true,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL
);


ALTER TABLE public.invoice_payment_control_plugin_auto_pay_off OWNER TO postgres;

--
-- Name: invoice_payment_control_plugin_auto_pay_off_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_payment_control_plugin_auto_pay_off_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_payment_control_plugin_auto_pay_off_record_id_seq OWNER TO postgres;

--
-- Name: invoice_payment_control_plugin_auto_pay_off_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_payment_control_plugin_auto_pay_off_record_id_seq OWNED BY public.invoice_payment_control_plugin_auto_pay_off.record_id;


--
-- Name: invoice_payment_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_payment_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    type character varying(24) NOT NULL,
    invoice_id character varying(36) NOT NULL,
    payment_id character varying(36),
    payment_date public.datetime NOT NULL,
    amount numeric(15,9) NOT NULL,
    currency character varying(3) NOT NULL,
    processed_currency character varying(3) NOT NULL,
    payment_cookie_id character varying(255) DEFAULT NULL::character varying,
    linked_invoice_payment_id character varying(36) DEFAULT NULL::character varying,
    success boolean DEFAULT true,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_payment_history OWNER TO postgres;

--
-- Name: invoice_payment_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_payment_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_payment_history_record_id_seq OWNER TO postgres;

--
-- Name: invoice_payment_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_payment_history_record_id_seq OWNED BY public.invoice_payment_history.record_id;


--
-- Name: invoice_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_payments (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    type character varying(24) NOT NULL,
    invoice_id character varying(36) NOT NULL,
    payment_id character varying(36),
    payment_date public.datetime NOT NULL,
    amount numeric(15,9) NOT NULL,
    currency character varying(3) NOT NULL,
    processed_currency character varying(3) NOT NULL,
    payment_cookie_id character varying(255) DEFAULT NULL::character varying,
    linked_invoice_payment_id character varying(36) DEFAULT NULL::character varying,
    success boolean DEFAULT true,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_payments OWNER TO postgres;

--
-- Name: invoice_payments_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_payments_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_payments_record_id_seq OWNER TO postgres;

--
-- Name: invoice_payments_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_payments_record_id_seq OWNED BY public.invoice_payments.record_id;


--
-- Name: invoice_tracking_id_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_tracking_id_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    tracking_id character varying(128) NOT NULL,
    invoice_id character varying(36) NOT NULL,
    subscription_id character varying(36),
    unit_type character varying(255) NOT NULL,
    record_date date NOT NULL,
    is_active boolean DEFAULT true,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_tracking_id_history OWNER TO postgres;

--
-- Name: invoice_tracking_id_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_tracking_id_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_tracking_id_history_record_id_seq OWNER TO postgres;

--
-- Name: invoice_tracking_id_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_tracking_id_history_record_id_seq OWNED BY public.invoice_tracking_id_history.record_id;


--
-- Name: invoice_tracking_ids; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_tracking_ids (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    tracking_id character varying(128) NOT NULL,
    invoice_id character varying(36) NOT NULL,
    subscription_id character varying(36),
    unit_type character varying(255) NOT NULL,
    record_date date NOT NULL,
    is_active boolean DEFAULT true,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoice_tracking_ids OWNER TO postgres;

--
-- Name: invoice_tracking_ids_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoice_tracking_ids_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_tracking_ids_record_id_seq OWNER TO postgres;

--
-- Name: invoice_tracking_ids_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoice_tracking_ids_record_id_seq OWNED BY public.invoice_tracking_ids.record_id;


--
-- Name: invoices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    account_id character varying(36) NOT NULL,
    invoice_date date NOT NULL,
    target_date date,
    currency character varying(3) NOT NULL,
    status character varying(15) DEFAULT 'COMMITTED'::character varying NOT NULL,
    migrated boolean NOT NULL,
    parent_invoice boolean DEFAULT false NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.invoices OWNER TO postgres;

--
-- Name: invoices_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.invoices_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoices_record_id_seq OWNER TO postgres;

--
-- Name: invoices_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.invoices_record_id_seq OWNED BY public.invoices.record_id;


--
-- Name: node_infos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.node_infos (
    record_id integer NOT NULL,
    node_name character varying(50) NOT NULL,
    boot_date public.datetime NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    node_info text NOT NULL,
    is_active boolean DEFAULT true
);


ALTER TABLE public.node_infos OWNER TO postgres;

--
-- Name: node_infos_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.node_infos_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.node_infos_record_id_seq OWNER TO postgres;

--
-- Name: node_infos_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.node_infos_record_id_seq OWNED BY public.node_infos.record_id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    record_id integer NOT NULL,
    class_name character varying(256) NOT NULL,
    event_json text NOT NULL,
    user_token character varying(36),
    created_date public.datetime NOT NULL,
    creating_owner character varying(50) NOT NULL,
    processing_owner character varying(50) DEFAULT NULL::character varying,
    processing_available_date public.datetime DEFAULT NULL::timestamp without time zone,
    processing_state character varying(14) DEFAULT 'AVAILABLE'::character varying,
    error_count integer DEFAULT 0,
    search_key1 bigint NOT NULL,
    search_key2 bigint DEFAULT 0 NOT NULL,
    queue_name character varying(64) NOT NULL,
    effective_date public.datetime NOT NULL,
    future_user_token character varying(36)
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- Name: notifications_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications_history (
    record_id integer NOT NULL,
    class_name character varying(256) NOT NULL,
    event_json text NOT NULL,
    user_token character varying(36),
    created_date public.datetime NOT NULL,
    creating_owner character varying(50) NOT NULL,
    processing_owner character varying(50) DEFAULT NULL::character varying,
    processing_available_date public.datetime DEFAULT NULL::timestamp without time zone,
    processing_state character varying(14) DEFAULT 'AVAILABLE'::character varying,
    error_count integer DEFAULT 0,
    search_key1 bigint NOT NULL,
    search_key2 bigint DEFAULT 0 NOT NULL,
    queue_name character varying(64) NOT NULL,
    effective_date public.datetime NOT NULL,
    future_user_token character varying(36)
);


ALTER TABLE public.notifications_history OWNER TO postgres;

--
-- Name: notifications_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_history_record_id_seq OWNER TO postgres;

--
-- Name: notifications_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_history_record_id_seq OWNED BY public.notifications_history.record_id;


--
-- Name: notifications_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_record_id_seq OWNER TO postgres;

--
-- Name: notifications_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_record_id_seq OWNED BY public.notifications.record_id;


--
-- Name: payment_attempt_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_attempt_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    account_id character varying(36) NOT NULL,
    payment_method_id character varying(36) DEFAULT NULL::character varying,
    payment_external_key character varying(255) NOT NULL,
    transaction_id character varying(36),
    transaction_external_key character varying(255) NOT NULL,
    transaction_type character varying(32) NOT NULL,
    state_name character varying(32) NOT NULL,
    amount numeric(15,9),
    currency character varying(3),
    plugin_name character varying(1024) NOT NULL,
    plugin_properties bytea,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.payment_attempt_history OWNER TO postgres;

--
-- Name: payment_attempt_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_attempt_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_attempt_history_record_id_seq OWNER TO postgres;

--
-- Name: payment_attempt_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_attempt_history_record_id_seq OWNED BY public.payment_attempt_history.record_id;


--
-- Name: payment_attempts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_attempts (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    account_id character varying(36) NOT NULL,
    payment_method_id character varying(36) DEFAULT NULL::character varying,
    payment_external_key character varying(255) NOT NULL,
    transaction_id character varying(36),
    transaction_external_key character varying(255) NOT NULL,
    transaction_type character varying(32) NOT NULL,
    state_name character varying(32) NOT NULL,
    amount numeric(15,9),
    currency character varying(3),
    plugin_name character varying(1024) NOT NULL,
    plugin_properties bytea,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.payment_attempts OWNER TO postgres;

--
-- Name: payment_attempts_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_attempts_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_attempts_record_id_seq OWNER TO postgres;

--
-- Name: payment_attempts_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_attempts_record_id_seq OWNED BY public.payment_attempts.record_id;


--
-- Name: payment_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    account_id character varying(36) NOT NULL,
    payment_method_id character varying(36) NOT NULL,
    external_key character varying(255) NOT NULL,
    state_name character varying(64) DEFAULT NULL::character varying,
    last_success_state_name character varying(64) DEFAULT NULL::character varying,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.payment_history OWNER TO postgres;

--
-- Name: payment_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_history_record_id_seq OWNER TO postgres;

--
-- Name: payment_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_history_record_id_seq OWNED BY public.payment_history.record_id;


--
-- Name: payment_method_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_method_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    external_key character varying(255) NOT NULL,
    target_record_id bigint NOT NULL,
    account_id character varying(36) NOT NULL,
    plugin_name character varying(50) NOT NULL,
    is_active boolean DEFAULT true,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.payment_method_history OWNER TO postgres;

--
-- Name: payment_method_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_method_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_method_history_record_id_seq OWNER TO postgres;

--
-- Name: payment_method_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_method_history_record_id_seq OWNED BY public.payment_method_history.record_id;


--
-- Name: payment_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_methods (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    external_key character varying(255) NOT NULL,
    account_id character varying(36) NOT NULL,
    plugin_name character varying(50) NOT NULL,
    is_active boolean DEFAULT true,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.payment_methods OWNER TO postgres;

--
-- Name: payment_methods_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_methods_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_methods_record_id_seq OWNER TO postgres;

--
-- Name: payment_methods_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_methods_record_id_seq OWNED BY public.payment_methods.record_id;


--
-- Name: payment_transaction_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_transaction_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    attempt_id character varying(36) DEFAULT NULL::character varying,
    transaction_external_key character varying(255) NOT NULL,
    target_record_id bigint NOT NULL,
    transaction_type character varying(32) NOT NULL,
    effective_date public.datetime NOT NULL,
    transaction_status character varying(50) NOT NULL,
    amount numeric(15,9),
    currency character varying(3),
    processed_amount numeric(15,9),
    processed_currency character varying(3),
    payment_id character varying(36) NOT NULL,
    gateway_error_code character varying(32),
    gateway_error_msg text,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.payment_transaction_history OWNER TO postgres;

--
-- Name: payment_transaction_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_transaction_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_transaction_history_record_id_seq OWNER TO postgres;

--
-- Name: payment_transaction_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_transaction_history_record_id_seq OWNED BY public.payment_transaction_history.record_id;


--
-- Name: payment_transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_transactions (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    attempt_id character varying(36) DEFAULT NULL::character varying,
    transaction_external_key character varying(255) NOT NULL,
    transaction_type character varying(32) NOT NULL,
    effective_date public.datetime NOT NULL,
    transaction_status character varying(50) NOT NULL,
    amount numeric(15,9),
    currency character varying(3),
    processed_amount numeric(15,9),
    processed_currency character varying(3),
    payment_id character varying(36) NOT NULL,
    gateway_error_code character varying(32),
    gateway_error_msg text,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.payment_transactions OWNER TO postgres;

--
-- Name: payment_transactions_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_transactions_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_transactions_record_id_seq OWNER TO postgres;

--
-- Name: payment_transactions_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_transactions_record_id_seq OWNED BY public.payment_transactions.record_id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    account_id character varying(36) NOT NULL,
    payment_method_id character varying(36) NOT NULL,
    external_key character varying(255) NOT NULL,
    state_name character varying(64) DEFAULT NULL::character varying,
    last_success_state_name character varying(64) DEFAULT NULL::character varying,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- Name: payments_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_record_id_seq OWNER TO postgres;

--
-- Name: payments_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_record_id_seq OWNED BY public.payments.record_id;


--
-- Name: roles_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles_permissions (
    record_id integer NOT NULL,
    role_name character varying(128),
    permission character varying(128),
    is_active boolean DEFAULT true,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.roles_permissions OWNER TO postgres;

--
-- Name: roles_permissions_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_permissions_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_permissions_record_id_seq OWNER TO postgres;

--
-- Name: roles_permissions_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_permissions_record_id_seq OWNED BY public.roles_permissions.record_id;


--
-- Name: rolled_up_usage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rolled_up_usage (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    subscription_id character varying(36) NOT NULL,
    unit_type character varying(255) NOT NULL,
    record_date date NOT NULL,
    amount bigint NOT NULL,
    tracking_id character varying(128) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.rolled_up_usage OWNER TO postgres;

--
-- Name: rolled_up_usage_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rolled_up_usage_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rolled_up_usage_record_id_seq OWNER TO postgres;

--
-- Name: rolled_up_usage_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rolled_up_usage_record_id_seq OWNED BY public.rolled_up_usage.record_id;


--
-- Name: service_broadcasts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_broadcasts (
    record_id integer NOT NULL,
    service_name character varying(50) NOT NULL,
    type character varying(64) NOT NULL,
    event text NOT NULL,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL
);


ALTER TABLE public.service_broadcasts OWNER TO postgres;

--
-- Name: service_broadcasts_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.service_broadcasts_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_broadcasts_record_id_seq OWNER TO postgres;

--
-- Name: service_broadcasts_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.service_broadcasts_record_id_seq OWNED BY public.service_broadcasts.record_id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    start_timestamp public.datetime NOT NULL,
    last_access_time public.datetime DEFAULT NULL::timestamp without time zone,
    timeout integer,
    host character varying(100) DEFAULT NULL::character varying,
    session_data bytea
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- Name: sessions_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sessions_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_record_id_seq OWNER TO postgres;

--
-- Name: sessions_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sessions_record_id_seq OWNED BY public.sessions.record_id;


--
-- Name: subscription_event_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscription_event_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    event_type character varying(15) NOT NULL,
    user_type character varying(25) DEFAULT NULL::character varying,
    effective_date public.datetime NOT NULL,
    subscription_id character varying(36) NOT NULL,
    plan_name character varying(255) DEFAULT NULL::character varying,
    phase_name character varying(255) DEFAULT NULL::character varying,
    price_list_name character varying(64) DEFAULT NULL::character varying,
    billing_cycle_day_local integer,
    is_active boolean DEFAULT true,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.subscription_event_history OWNER TO postgres;

--
-- Name: subscription_event_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscription_event_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_event_history_record_id_seq OWNER TO postgres;

--
-- Name: subscription_event_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscription_event_history_record_id_seq OWNED BY public.subscription_event_history.record_id;


--
-- Name: subscription_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscription_events (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    event_type character varying(15) NOT NULL,
    user_type character varying(25) DEFAULT NULL::character varying,
    effective_date public.datetime NOT NULL,
    subscription_id character varying(36) NOT NULL,
    plan_name character varying(255) DEFAULT NULL::character varying,
    phase_name character varying(255) DEFAULT NULL::character varying,
    price_list_name character varying(64) DEFAULT NULL::character varying,
    billing_cycle_day_local integer,
    is_active boolean DEFAULT true,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.subscription_events OWNER TO postgres;

--
-- Name: subscription_events_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscription_events_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_events_record_id_seq OWNER TO postgres;

--
-- Name: subscription_events_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscription_events_record_id_seq OWNED BY public.subscription_events.record_id;


--
-- Name: subscription_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscription_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    bundle_id character varying(36) NOT NULL,
    external_key character varying(255) NOT NULL,
    category character varying(32) NOT NULL,
    start_date public.datetime NOT NULL,
    bundle_start_date public.datetime NOT NULL,
    charged_through_date public.datetime DEFAULT NULL::timestamp without time zone,
    migrated boolean DEFAULT false NOT NULL,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.subscription_history OWNER TO postgres;

--
-- Name: subscription_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscription_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_history_record_id_seq OWNER TO postgres;

--
-- Name: subscription_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscription_history_record_id_seq OWNED BY public.subscription_history.record_id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscriptions (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    bundle_id character varying(36) NOT NULL,
    external_key character varying(255) NOT NULL,
    category character varying(32) NOT NULL,
    start_date public.datetime NOT NULL,
    bundle_start_date public.datetime NOT NULL,
    charged_through_date public.datetime DEFAULT NULL::timestamp without time zone,
    migrated boolean DEFAULT false NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.subscriptions OWNER TO postgres;

--
-- Name: subscriptions_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscriptions_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriptions_record_id_seq OWNER TO postgres;

--
-- Name: subscriptions_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscriptions_record_id_seq OWNED BY public.subscriptions.record_id;


--
-- Name: tag_definition_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tag_definition_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    name character varying(30) NOT NULL,
    applicable_object_types character varying(500),
    description character varying(200),
    is_active boolean DEFAULT true,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.tag_definition_history OWNER TO postgres;

--
-- Name: tag_definition_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tag_definition_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_definition_history_record_id_seq OWNER TO postgres;

--
-- Name: tag_definition_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tag_definition_history_record_id_seq OWNED BY public.tag_definition_history.record_id;


--
-- Name: tag_definitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tag_definitions (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    name character varying(20) NOT NULL,
    applicable_object_types character varying(500),
    description character varying(200) NOT NULL,
    is_active boolean DEFAULT true,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.tag_definitions OWNER TO postgres;

--
-- Name: tag_definitions_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tag_definitions_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_definitions_record_id_seq OWNER TO postgres;

--
-- Name: tag_definitions_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tag_definitions_record_id_seq OWNED BY public.tag_definitions.record_id;


--
-- Name: tag_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tag_history (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint NOT NULL,
    object_id character varying(36) NOT NULL,
    object_type character varying(30) NOT NULL,
    tag_definition_id character varying(36) NOT NULL,
    is_active boolean DEFAULT true,
    change_type character varying(6) NOT NULL,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.tag_history OWNER TO postgres;

--
-- Name: tag_history_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tag_history_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_history_record_id_seq OWNER TO postgres;

--
-- Name: tag_history_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tag_history_record_id_seq OWNED BY public.tag_history.record_id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    tag_definition_id character varying(36) NOT NULL,
    object_id character varying(36) NOT NULL,
    object_type character varying(30) NOT NULL,
    is_active boolean DEFAULT true,
    created_by character varying(50) NOT NULL,
    created_date public.datetime NOT NULL,
    updated_by character varying(50) NOT NULL,
    updated_date public.datetime NOT NULL,
    account_record_id bigint NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_record_id_seq OWNER TO postgres;

--
-- Name: tags_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_record_id_seq OWNED BY public.tags.record_id;


--
-- Name: tenant_broadcasts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tenant_broadcasts (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    target_record_id bigint,
    target_table_name character varying(50) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL,
    type character varying(64) NOT NULL,
    user_token character varying(36),
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.tenant_broadcasts OWNER TO postgres;

--
-- Name: tenant_broadcasts_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tenant_broadcasts_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tenant_broadcasts_record_id_seq OWNER TO postgres;

--
-- Name: tenant_broadcasts_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tenant_broadcasts_record_id_seq OWNED BY public.tenant_broadcasts.record_id;


--
-- Name: tenant_kvs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tenant_kvs (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    tenant_record_id bigint DEFAULT 0 NOT NULL,
    tenant_key character varying(255) NOT NULL,
    tenant_value text NOT NULL,
    is_active boolean DEFAULT true,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.tenant_kvs OWNER TO postgres;

--
-- Name: tenant_kvs_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tenant_kvs_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tenant_kvs_record_id_seq OWNER TO postgres;

--
-- Name: tenant_kvs_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tenant_kvs_record_id_seq OWNED BY public.tenant_kvs.record_id;


--
-- Name: tenants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tenants (
    record_id integer NOT NULL,
    id character varying(36) NOT NULL,
    external_key character varying(255),
    api_key character varying(128),
    api_secret character varying(128),
    api_salt character varying(128),
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.tenants OWNER TO postgres;

--
-- Name: tenants_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tenants_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tenants_record_id_seq OWNER TO postgres;

--
-- Name: tenants_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tenants_record_id_seq OWNED BY public.tenants.record_id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_roles (
    record_id integer NOT NULL,
    username character varying(128),
    role_name character varying(128),
    is_active boolean DEFAULT true,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.user_roles OWNER TO postgres;

--
-- Name: user_roles_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_roles_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_record_id_seq OWNER TO postgres;

--
-- Name: user_roles_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_roles_record_id_seq OWNED BY public.user_roles.record_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    record_id integer NOT NULL,
    username character varying(128),
    password character varying(128),
    password_salt character varying(128),
    is_active boolean DEFAULT true,
    created_date public.datetime NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_date public.datetime DEFAULT NULL::timestamp without time zone,
    updated_by character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_record_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_record_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_record_id_seq OWNER TO postgres;

--
-- Name: users_record_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_record_id_seq OWNED BY public.users.record_id;


--
-- Name: account_email_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_email_history ALTER COLUMN record_id SET DEFAULT nextval('public.account_email_history_record_id_seq'::regclass);


--
-- Name: account_emails record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emails ALTER COLUMN record_id SET DEFAULT nextval('public.account_emails_record_id_seq'::regclass);


--
-- Name: account_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_history ALTER COLUMN record_id SET DEFAULT nextval('public.account_history_record_id_seq'::regclass);


--
-- Name: accounts record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts ALTER COLUMN record_id SET DEFAULT nextval('public.accounts_record_id_seq'::regclass);


--
-- Name: audit_log record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log ALTER COLUMN record_id SET DEFAULT nextval('public.audit_log_record_id_seq'::regclass);


--
-- Name: blocking_state_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blocking_state_history ALTER COLUMN record_id SET DEFAULT nextval('public.blocking_state_history_record_id_seq'::regclass);


--
-- Name: blocking_states record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blocking_states ALTER COLUMN record_id SET DEFAULT nextval('public.blocking_states_record_id_seq'::regclass);


--
-- Name: bundle_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bundle_history ALTER COLUMN record_id SET DEFAULT nextval('public.bundle_history_record_id_seq'::regclass);


--
-- Name: bundles record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bundles ALTER COLUMN record_id SET DEFAULT nextval('public.bundles_record_id_seq'::regclass);


--
-- Name: bus_events record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_events ALTER COLUMN record_id SET DEFAULT nextval('public.bus_events_record_id_seq'::regclass);


--
-- Name: bus_events_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_events_history ALTER COLUMN record_id SET DEFAULT nextval('public.bus_events_history_record_id_seq'::regclass);


--
-- Name: bus_ext_events record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_ext_events ALTER COLUMN record_id SET DEFAULT nextval('public.bus_ext_events_record_id_seq'::regclass);


--
-- Name: bus_ext_events_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_ext_events_history ALTER COLUMN record_id SET DEFAULT nextval('public.bus_ext_events_history_record_id_seq'::regclass);


--
-- Name: catalog_override_block_definition record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_block_definition ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_block_definition_record_id_seq'::regclass);


--
-- Name: catalog_override_phase_definition record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_phase_definition ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_phase_definition_record_id_seq'::regclass);


--
-- Name: catalog_override_phase_usage record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_phase_usage ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_phase_usage_record_id_seq'::regclass);


--
-- Name: catalog_override_plan_definition record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_plan_definition ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_plan_definition_record_id_seq'::regclass);


--
-- Name: catalog_override_plan_phase record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_plan_phase ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_plan_phase_record_id_seq'::regclass);


--
-- Name: catalog_override_tier_block record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_tier_block ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_tier_block_record_id_seq'::regclass);


--
-- Name: catalog_override_tier_definition record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_tier_definition ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_tier_definition_record_id_seq'::regclass);


--
-- Name: catalog_override_usage_definition record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_usage_definition ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_usage_definition_record_id_seq'::regclass);


--
-- Name: catalog_override_usage_tier record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_usage_tier ALTER COLUMN record_id SET DEFAULT nextval('public.catalog_override_usage_tier_record_id_seq'::regclass);


--
-- Name: custom_field_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_field_history ALTER COLUMN record_id SET DEFAULT nextval('public.custom_field_history_record_id_seq'::regclass);


--
-- Name: custom_fields record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_fields ALTER COLUMN record_id SET DEFAULT nextval('public.custom_fields_record_id_seq'::regclass);


--
-- Name: invoice_billing_events record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_billing_events ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_billing_events_record_id_seq'::regclass);


--
-- Name: invoice_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_history ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_history_record_id_seq'::regclass);


--
-- Name: invoice_item_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_item_history ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_item_history_record_id_seq'::regclass);


--
-- Name: invoice_items record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_items ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_items_record_id_seq'::regclass);


--
-- Name: invoice_parent_children record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_parent_children ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_parent_children_record_id_seq'::regclass);


--
-- Name: invoice_payment_control_plugin_auto_pay_off record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_payment_control_plugin_auto_pay_off ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_payment_control_plugin_auto_pay_off_record_id_seq'::regclass);


--
-- Name: invoice_payment_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_payment_history ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_payment_history_record_id_seq'::regclass);


--
-- Name: invoice_payments record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_payments ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_payments_record_id_seq'::regclass);


--
-- Name: invoice_tracking_id_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_tracking_id_history ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_tracking_id_history_record_id_seq'::regclass);


--
-- Name: invoice_tracking_ids record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_tracking_ids ALTER COLUMN record_id SET DEFAULT nextval('public.invoice_tracking_ids_record_id_seq'::regclass);


--
-- Name: invoices record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices ALTER COLUMN record_id SET DEFAULT nextval('public.invoices_record_id_seq'::regclass);


--
-- Name: node_infos record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.node_infos ALTER COLUMN record_id SET DEFAULT nextval('public.node_infos_record_id_seq'::regclass);


--
-- Name: notifications record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN record_id SET DEFAULT nextval('public.notifications_record_id_seq'::regclass);


--
-- Name: notifications_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications_history ALTER COLUMN record_id SET DEFAULT nextval('public.notifications_history_record_id_seq'::regclass);


--
-- Name: payment_attempt_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_attempt_history ALTER COLUMN record_id SET DEFAULT nextval('public.payment_attempt_history_record_id_seq'::regclass);


--
-- Name: payment_attempts record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_attempts ALTER COLUMN record_id SET DEFAULT nextval('public.payment_attempts_record_id_seq'::regclass);


--
-- Name: payment_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_history ALTER COLUMN record_id SET DEFAULT nextval('public.payment_history_record_id_seq'::regclass);


--
-- Name: payment_method_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method_history ALTER COLUMN record_id SET DEFAULT nextval('public.payment_method_history_record_id_seq'::regclass);


--
-- Name: payment_methods record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_methods ALTER COLUMN record_id SET DEFAULT nextval('public.payment_methods_record_id_seq'::regclass);


--
-- Name: payment_transaction_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_transaction_history ALTER COLUMN record_id SET DEFAULT nextval('public.payment_transaction_history_record_id_seq'::regclass);


--
-- Name: payment_transactions record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_transactions ALTER COLUMN record_id SET DEFAULT nextval('public.payment_transactions_record_id_seq'::regclass);


--
-- Name: payments record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN record_id SET DEFAULT nextval('public.payments_record_id_seq'::regclass);


--
-- Name: roles_permissions record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_permissions ALTER COLUMN record_id SET DEFAULT nextval('public.roles_permissions_record_id_seq'::regclass);


--
-- Name: rolled_up_usage record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rolled_up_usage ALTER COLUMN record_id SET DEFAULT nextval('public.rolled_up_usage_record_id_seq'::regclass);


--
-- Name: service_broadcasts record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_broadcasts ALTER COLUMN record_id SET DEFAULT nextval('public.service_broadcasts_record_id_seq'::regclass);


--
-- Name: sessions record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions ALTER COLUMN record_id SET DEFAULT nextval('public.sessions_record_id_seq'::regclass);


--
-- Name: subscription_event_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription_event_history ALTER COLUMN record_id SET DEFAULT nextval('public.subscription_event_history_record_id_seq'::regclass);


--
-- Name: subscription_events record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription_events ALTER COLUMN record_id SET DEFAULT nextval('public.subscription_events_record_id_seq'::regclass);


--
-- Name: subscription_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription_history ALTER COLUMN record_id SET DEFAULT nextval('public.subscription_history_record_id_seq'::regclass);


--
-- Name: subscriptions record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN record_id SET DEFAULT nextval('public.subscriptions_record_id_seq'::regclass);


--
-- Name: tag_definition_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_definition_history ALTER COLUMN record_id SET DEFAULT nextval('public.tag_definition_history_record_id_seq'::regclass);


--
-- Name: tag_definitions record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_definitions ALTER COLUMN record_id SET DEFAULT nextval('public.tag_definitions_record_id_seq'::regclass);


--
-- Name: tag_history record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_history ALTER COLUMN record_id SET DEFAULT nextval('public.tag_history_record_id_seq'::regclass);


--
-- Name: tags record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN record_id SET DEFAULT nextval('public.tags_record_id_seq'::regclass);


--
-- Name: tenant_broadcasts record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenant_broadcasts ALTER COLUMN record_id SET DEFAULT nextval('public.tenant_broadcasts_record_id_seq'::regclass);


--
-- Name: tenant_kvs record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenant_kvs ALTER COLUMN record_id SET DEFAULT nextval('public.tenant_kvs_record_id_seq'::regclass);


--
-- Name: tenants record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenants ALTER COLUMN record_id SET DEFAULT nextval('public.tenants_record_id_seq'::regclass);


--
-- Name: user_roles record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles ALTER COLUMN record_id SET DEFAULT nextval('public.user_roles_record_id_seq'::regclass);


--
-- Name: users record_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN record_id SET DEFAULT nextval('public.users_record_id_seq'::regclass);


--
-- Data for Name: account_email_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_email_history (record_id, id, target_record_id, account_id, email, is_active, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: account_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emails (record_id, id, account_id, email, is_active, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: account_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_history (record_id, id, target_record_id, external_key, email, name, first_name_length, currency, billing_cycle_day_local, parent_account_id, is_payment_delegated_to_parent, payment_method_id, reference_time, time_zone, locale, address1, address2, company_name, city, state_or_province, country, postal_code, phone, notes, migrated, change_type, created_by, created_date, updated_by, updated_date, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts (record_id, id, external_key, email, name, first_name_length, currency, billing_cycle_day_local, parent_account_id, is_payment_delegated_to_parent, payment_method_id, reference_time, time_zone, locale, address1, address2, company_name, city, state_or_province, country, postal_code, phone, notes, migrated, created_date, created_by, updated_date, updated_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_log (record_id, id, target_record_id, table_name, change_type, created_date, created_by, reason_code, comments, user_token, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: blocking_state_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blocking_state_history (record_id, id, target_record_id, blockable_id, type, state, service, block_change, block_entitlement, block_billing, effective_date, is_active, change_type, created_date, created_by, updated_date, updated_by, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: blocking_states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blocking_states (record_id, id, blockable_id, type, state, service, block_change, block_entitlement, block_billing, effective_date, is_active, created_date, created_by, updated_date, updated_by, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: bundle_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bundle_history (record_id, id, target_record_id, external_key, account_id, last_sys_update_date, original_created_date, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: bundles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bundles (record_id, id, external_key, account_id, last_sys_update_date, original_created_date, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: bus_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bus_events (record_id, class_name, event_json, user_token, created_date, creating_owner, processing_owner, processing_available_date, processing_state, error_count, search_key1, search_key2) FROM stdin;
\.


--
-- Data for Name: bus_events_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bus_events_history (record_id, class_name, event_json, user_token, created_date, creating_owner, processing_owner, processing_available_date, processing_state, error_count, search_key1, search_key2) FROM stdin;
\.


--
-- Data for Name: bus_ext_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bus_ext_events (record_id, class_name, event_json, user_token, created_date, creating_owner, processing_owner, processing_available_date, processing_state, error_count, search_key1, search_key2) FROM stdin;
\.


--
-- Data for Name: bus_ext_events_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bus_ext_events_history (record_id, class_name, event_json, user_token, created_date, creating_owner, processing_owner, processing_available_date, processing_state, error_count, search_key1, search_key2) FROM stdin;
\.


--
-- Data for Name: catalog_override_block_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_block_definition (record_id, parent_unit_name, bsize, max, currency, price, effective_date, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: catalog_override_phase_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_phase_definition (record_id, parent_phase_name, currency, fixed_price, recurring_price, effective_date, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: catalog_override_phase_usage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_phase_usage (record_id, usage_number, usage_def_record_id, target_phase_def_record_id, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: catalog_override_plan_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_plan_definition (record_id, parent_plan_name, effective_date, is_active, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: catalog_override_plan_phase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_plan_phase (record_id, phase_number, phase_def_record_id, target_plan_def_record_id, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: catalog_override_tier_block; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_tier_block (record_id, block_number, block_def_record_id, target_tier_def_record_id, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: catalog_override_tier_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_tier_definition (record_id, fixed_price, recurring_price, currency, effective_date, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: catalog_override_usage_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_usage_definition (record_id, parent_usage_name, type, fixed_price, recurring_price, currency, effective_date, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: catalog_override_usage_tier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.catalog_override_usage_tier (record_id, tier_number, tier_def_record_id, target_usage_def_record_id, created_date, created_by, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: custom_field_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_field_history (record_id, id, target_record_id, object_id, object_type, is_active, field_name, field_value, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: custom_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.custom_fields (record_id, id, object_id, object_type, is_active, field_name, field_value, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_billing_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_billing_events (record_id, id, invoice_id, billing_events, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_history (record_id, id, target_record_id, account_id, invoice_date, target_date, currency, status, migrated, parent_invoice, change_type, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_item_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_item_history (record_id, id, target_record_id, type, invoice_id, account_id, child_account_id, bundle_id, subscription_id, description, product_name, plan_name, phase_name, usage_name, catalog_effective_date, start_date, end_date, amount, rate, currency, linked_item_id, quantity, item_details, change_type, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_items (record_id, id, type, invoice_id, account_id, child_account_id, bundle_id, subscription_id, description, product_name, plan_name, phase_name, usage_name, catalog_effective_date, start_date, end_date, amount, rate, currency, linked_item_id, quantity, item_details, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_parent_children; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_parent_children (record_id, id, parent_invoice_id, child_invoice_id, child_account_id, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_payment_control_plugin_auto_pay_off; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_payment_control_plugin_auto_pay_off (record_id, attempt_id, payment_external_key, transaction_external_key, account_id, plugin_name, payment_id, amount, currency, is_active, created_by, created_date) FROM stdin;
\.


--
-- Data for Name: invoice_payment_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_payment_history (record_id, id, target_record_id, type, invoice_id, payment_id, payment_date, amount, currency, processed_currency, payment_cookie_id, linked_invoice_payment_id, success, change_type, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_payments (record_id, id, type, invoice_id, payment_id, payment_date, amount, currency, processed_currency, payment_cookie_id, linked_invoice_payment_id, success, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_tracking_id_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_tracking_id_history (record_id, id, target_record_id, tracking_id, invoice_id, subscription_id, unit_type, record_date, is_active, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoice_tracking_ids; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_tracking_ids (record_id, id, tracking_id, invoice_id, subscription_id, unit_type, record_date, is_active, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoices (record_id, id, account_id, invoice_date, target_date, currency, status, migrated, parent_invoice, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: node_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.node_infos (record_id, node_name, boot_date, updated_date, node_info, is_active) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (record_id, class_name, event_json, user_token, created_date, creating_owner, processing_owner, processing_available_date, processing_state, error_count, search_key1, search_key2, queue_name, effective_date, future_user_token) FROM stdin;
\.


--
-- Data for Name: notifications_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications_history (record_id, class_name, event_json, user_token, created_date, creating_owner, processing_owner, processing_available_date, processing_state, error_count, search_key1, search_key2, queue_name, effective_date, future_user_token) FROM stdin;
\.


--
-- Data for Name: payment_attempt_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_attempt_history (record_id, id, target_record_id, account_id, payment_method_id, payment_external_key, transaction_id, transaction_external_key, transaction_type, state_name, amount, currency, plugin_name, plugin_properties, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: payment_attempts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_attempts (record_id, id, account_id, payment_method_id, payment_external_key, transaction_id, transaction_external_key, transaction_type, state_name, amount, currency, plugin_name, plugin_properties, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: payment_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_history (record_id, id, target_record_id, account_id, payment_method_id, external_key, state_name, last_success_state_name, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: payment_method_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_method_history (record_id, id, external_key, target_record_id, account_id, plugin_name, is_active, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: payment_methods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_methods (record_id, id, external_key, account_id, plugin_name, is_active, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: payment_transaction_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_transaction_history (record_id, id, attempt_id, transaction_external_key, target_record_id, transaction_type, effective_date, transaction_status, amount, currency, processed_amount, processed_currency, payment_id, gateway_error_code, gateway_error_msg, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: payment_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_transactions (record_id, id, attempt_id, transaction_external_key, transaction_type, effective_date, transaction_status, amount, currency, processed_amount, processed_currency, payment_id, gateway_error_code, gateway_error_msg, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (record_id, id, account_id, payment_method_id, external_key, state_name, last_success_state_name, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: roles_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles_permissions (record_id, role_name, permission, is_active, created_date, created_by, updated_date, updated_by) FROM stdin;
\.


--
-- Data for Name: rolled_up_usage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rolled_up_usage (record_id, id, subscription_id, unit_type, record_date, amount, tracking_id, created_by, created_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: service_broadcasts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_broadcasts (record_id, service_name, type, event, created_date, created_by) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (record_id, id, start_timestamp, last_access_time, timeout, host, session_data) FROM stdin;
\.


--
-- Data for Name: subscription_event_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscription_event_history (record_id, id, target_record_id, event_type, user_type, effective_date, subscription_id, plan_name, phase_name, price_list_name, billing_cycle_day_local, is_active, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: subscription_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscription_events (record_id, id, event_type, user_type, effective_date, subscription_id, plan_name, phase_name, price_list_name, billing_cycle_day_local, is_active, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: subscription_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscription_history (record_id, id, target_record_id, bundle_id, external_key, category, start_date, bundle_start_date, charged_through_date, migrated, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscriptions (record_id, id, bundle_id, external_key, category, start_date, bundle_start_date, charged_through_date, migrated, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: tag_definition_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tag_definition_history (record_id, id, target_record_id, name, applicable_object_types, description, is_active, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: tag_definitions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tag_definitions (record_id, id, name, applicable_object_types, description, is_active, created_by, created_date, updated_by, updated_date, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: tag_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tag_history (record_id, id, target_record_id, object_id, object_type, tag_definition_id, is_active, change_type, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (record_id, id, tag_definition_id, object_id, object_type, is_active, created_by, created_date, updated_by, updated_date, account_record_id, tenant_record_id) FROM stdin;
\.


--
-- Data for Name: tenant_broadcasts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tenant_broadcasts (record_id, id, target_record_id, target_table_name, tenant_record_id, type, user_token, created_date, created_by, updated_date, updated_by) FROM stdin;
\.


--
-- Data for Name: tenant_kvs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tenant_kvs (record_id, id, tenant_record_id, tenant_key, tenant_value, is_active, created_date, created_by, updated_date, updated_by) FROM stdin;
\.


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tenants (record_id, id, external_key, api_key, api_secret, api_salt, created_date, created_by, updated_date, updated_by) FROM stdin;
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_roles (record_id, username, role_name, is_active, created_date, created_by, updated_date, updated_by) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (record_id, username, password, password_salt, is_active, created_date, created_by, updated_date, updated_by) FROM stdin;
\.


--
-- Name: account_email_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_email_history_record_id_seq', 1, false);


--
-- Name: account_emails_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emails_record_id_seq', 1, false);


--
-- Name: account_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_history_record_id_seq', 1, false);


--
-- Name: accounts_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_record_id_seq', 1, false);


--
-- Name: audit_log_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audit_log_record_id_seq', 1, false);


--
-- Name: blocking_state_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blocking_state_history_record_id_seq', 1, false);


--
-- Name: blocking_states_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blocking_states_record_id_seq', 1, false);


--
-- Name: bundle_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bundle_history_record_id_seq', 1, false);


--
-- Name: bundles_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bundles_record_id_seq', 1, false);


--
-- Name: bus_events_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bus_events_history_record_id_seq', 1, false);


--
-- Name: bus_events_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bus_events_record_id_seq', 1, false);


--
-- Name: bus_ext_events_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bus_ext_events_history_record_id_seq', 1, false);


--
-- Name: bus_ext_events_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bus_ext_events_record_id_seq', 1, false);


--
-- Name: catalog_override_block_definition_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_block_definition_record_id_seq', 1, false);


--
-- Name: catalog_override_phase_definition_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_phase_definition_record_id_seq', 1, false);


--
-- Name: catalog_override_phase_usage_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_phase_usage_record_id_seq', 1, false);


--
-- Name: catalog_override_plan_definition_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_plan_definition_record_id_seq', 1, false);


--
-- Name: catalog_override_plan_phase_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_plan_phase_record_id_seq', 1, false);


--
-- Name: catalog_override_tier_block_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_tier_block_record_id_seq', 1, false);


--
-- Name: catalog_override_tier_definition_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_tier_definition_record_id_seq', 1, false);


--
-- Name: catalog_override_usage_definition_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_usage_definition_record_id_seq', 1, false);


--
-- Name: catalog_override_usage_tier_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalog_override_usage_tier_record_id_seq', 1, false);


--
-- Name: custom_field_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_field_history_record_id_seq', 1, false);


--
-- Name: custom_fields_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.custom_fields_record_id_seq', 1, false);


--
-- Name: invoice_billing_events_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_billing_events_record_id_seq', 1, false);


--
-- Name: invoice_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_history_record_id_seq', 1, false);


--
-- Name: invoice_item_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_item_history_record_id_seq', 1, false);


--
-- Name: invoice_items_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_items_record_id_seq', 1, false);


--
-- Name: invoice_parent_children_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_parent_children_record_id_seq', 1, false);


--
-- Name: invoice_payment_control_plugin_auto_pay_off_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_payment_control_plugin_auto_pay_off_record_id_seq', 1, false);


--
-- Name: invoice_payment_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_payment_history_record_id_seq', 1, false);


--
-- Name: invoice_payments_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_payments_record_id_seq', 1, false);


--
-- Name: invoice_tracking_id_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_tracking_id_history_record_id_seq', 1, false);


--
-- Name: invoice_tracking_ids_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoice_tracking_ids_record_id_seq', 1, false);


--
-- Name: invoices_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoices_record_id_seq', 1, false);


--
-- Name: node_infos_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.node_infos_record_id_seq', 1, false);


--
-- Name: notifications_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_history_record_id_seq', 1, false);


--
-- Name: notifications_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_record_id_seq', 1, false);


--
-- Name: payment_attempt_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_attempt_history_record_id_seq', 1, false);


--
-- Name: payment_attempts_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_attempts_record_id_seq', 1, false);


--
-- Name: payment_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_history_record_id_seq', 1, false);


--
-- Name: payment_method_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_method_history_record_id_seq', 1, false);


--
-- Name: payment_methods_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_methods_record_id_seq', 1, false);


--
-- Name: payment_transaction_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_transaction_history_record_id_seq', 1, false);


--
-- Name: payment_transactions_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_transactions_record_id_seq', 1, false);


--
-- Name: payments_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_record_id_seq', 1, false);


--
-- Name: roles_permissions_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_permissions_record_id_seq', 1, false);


--
-- Name: rolled_up_usage_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rolled_up_usage_record_id_seq', 1, false);


--
-- Name: service_broadcasts_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.service_broadcasts_record_id_seq', 1, false);


--
-- Name: sessions_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sessions_record_id_seq', 1, false);


--
-- Name: subscription_event_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscription_event_history_record_id_seq', 1, false);


--
-- Name: subscription_events_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscription_events_record_id_seq', 1, false);


--
-- Name: subscription_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscription_history_record_id_seq', 1, false);


--
-- Name: subscriptions_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscriptions_record_id_seq', 1, false);


--
-- Name: tag_definition_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tag_definition_history_record_id_seq', 1, false);


--
-- Name: tag_definitions_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tag_definitions_record_id_seq', 1, false);


--
-- Name: tag_history_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tag_history_record_id_seq', 1, false);


--
-- Name: tags_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_record_id_seq', 1, false);


--
-- Name: tenant_broadcasts_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tenant_broadcasts_record_id_seq', 1, false);


--
-- Name: tenant_kvs_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tenant_kvs_record_id_seq', 1, false);


--
-- Name: tenants_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tenants_record_id_seq', 1, false);


--
-- Name: user_roles_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_roles_record_id_seq', 1, false);


--
-- Name: users_record_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_record_id_seq', 1, false);


--
-- Name: account_email_history account_email_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_email_history
    ADD CONSTRAINT account_email_history_pkey PRIMARY KEY (record_id);


--
-- Name: account_emails account_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emails
    ADD CONSTRAINT account_emails_pkey PRIMARY KEY (record_id);


--
-- Name: account_history account_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_history
    ADD CONSTRAINT account_history_pkey PRIMARY KEY (record_id);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (record_id);


--
-- Name: audit_log audit_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (record_id);


--
-- Name: blocking_state_history blocking_state_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blocking_state_history
    ADD CONSTRAINT blocking_state_history_pkey PRIMARY KEY (record_id);


--
-- Name: blocking_states blocking_states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blocking_states
    ADD CONSTRAINT blocking_states_pkey PRIMARY KEY (record_id);


--
-- Name: bundle_history bundle_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bundle_history
    ADD CONSTRAINT bundle_history_pkey PRIMARY KEY (record_id);


--
-- Name: bundles bundles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bundles
    ADD CONSTRAINT bundles_pkey PRIMARY KEY (record_id);


--
-- Name: bus_events_history bus_events_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_events_history
    ADD CONSTRAINT bus_events_history_pkey PRIMARY KEY (record_id);


--
-- Name: bus_events bus_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_events
    ADD CONSTRAINT bus_events_pkey PRIMARY KEY (record_id);


--
-- Name: bus_ext_events_history bus_ext_events_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_ext_events_history
    ADD CONSTRAINT bus_ext_events_history_pkey PRIMARY KEY (record_id);


--
-- Name: bus_ext_events bus_ext_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bus_ext_events
    ADD CONSTRAINT bus_ext_events_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_block_definition catalog_override_block_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_block_definition
    ADD CONSTRAINT catalog_override_block_definition_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_phase_definition catalog_override_phase_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_phase_definition
    ADD CONSTRAINT catalog_override_phase_definition_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_phase_usage catalog_override_phase_usage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_phase_usage
    ADD CONSTRAINT catalog_override_phase_usage_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_plan_definition catalog_override_plan_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_plan_definition
    ADD CONSTRAINT catalog_override_plan_definition_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_plan_phase catalog_override_plan_phase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_plan_phase
    ADD CONSTRAINT catalog_override_plan_phase_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_tier_block catalog_override_tier_block_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_tier_block
    ADD CONSTRAINT catalog_override_tier_block_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_tier_definition catalog_override_tier_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_tier_definition
    ADD CONSTRAINT catalog_override_tier_definition_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_usage_definition catalog_override_usage_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_usage_definition
    ADD CONSTRAINT catalog_override_usage_definition_pkey PRIMARY KEY (record_id);


--
-- Name: catalog_override_usage_tier catalog_override_usage_tier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalog_override_usage_tier
    ADD CONSTRAINT catalog_override_usage_tier_pkey PRIMARY KEY (record_id);


--
-- Name: custom_field_history custom_field_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_field_history
    ADD CONSTRAINT custom_field_history_pkey PRIMARY KEY (record_id);


--
-- Name: custom_fields custom_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.custom_fields
    ADD CONSTRAINT custom_fields_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_billing_events invoice_billing_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_billing_events
    ADD CONSTRAINT invoice_billing_events_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_history invoice_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_history
    ADD CONSTRAINT invoice_history_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_item_history invoice_item_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_item_history
    ADD CONSTRAINT invoice_item_history_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_items invoice_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_items
    ADD CONSTRAINT invoice_items_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_parent_children invoice_parent_children_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_parent_children
    ADD CONSTRAINT invoice_parent_children_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_payment_control_plugin_auto_pay_off invoice_payment_control_plugin_auto_pay_off_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_payment_control_plugin_auto_pay_off
    ADD CONSTRAINT invoice_payment_control_plugin_auto_pay_off_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_payment_history invoice_payment_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_payment_history
    ADD CONSTRAINT invoice_payment_history_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_payments invoice_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_payments
    ADD CONSTRAINT invoice_payments_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_tracking_id_history invoice_tracking_id_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_tracking_id_history
    ADD CONSTRAINT invoice_tracking_id_history_pkey PRIMARY KEY (record_id);


--
-- Name: invoice_tracking_ids invoice_tracking_ids_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_tracking_ids
    ADD CONSTRAINT invoice_tracking_ids_pkey PRIMARY KEY (record_id);


--
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (record_id);


--
-- Name: node_infos node_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.node_infos
    ADD CONSTRAINT node_infos_pkey PRIMARY KEY (record_id);


--
-- Name: notifications_history notifications_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications_history
    ADD CONSTRAINT notifications_history_pkey PRIMARY KEY (record_id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (record_id);


--
-- Name: payment_attempt_history payment_attempt_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_attempt_history
    ADD CONSTRAINT payment_attempt_history_pkey PRIMARY KEY (record_id);


--
-- Name: payment_attempts payment_attempts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_attempts
    ADD CONSTRAINT payment_attempts_pkey PRIMARY KEY (record_id);


--
-- Name: payment_history payment_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_history
    ADD CONSTRAINT payment_history_pkey PRIMARY KEY (record_id);


--
-- Name: payment_method_history payment_method_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method_history
    ADD CONSTRAINT payment_method_history_pkey PRIMARY KEY (record_id);


--
-- Name: payment_methods payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (record_id);


--
-- Name: payment_transaction_history payment_transaction_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_transaction_history
    ADD CONSTRAINT payment_transaction_history_pkey PRIMARY KEY (record_id);


--
-- Name: payment_transactions payment_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_transactions
    ADD CONSTRAINT payment_transactions_pkey PRIMARY KEY (record_id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (record_id);


--
-- Name: roles_permissions roles_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_permissions
    ADD CONSTRAINT roles_permissions_pkey PRIMARY KEY (record_id);


--
-- Name: rolled_up_usage rolled_up_usage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rolled_up_usage
    ADD CONSTRAINT rolled_up_usage_pkey PRIMARY KEY (record_id);


--
-- Name: service_broadcasts service_broadcasts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_broadcasts
    ADD CONSTRAINT service_broadcasts_pkey PRIMARY KEY (record_id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (record_id);


--
-- Name: subscription_event_history subscription_event_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription_event_history
    ADD CONSTRAINT subscription_event_history_pkey PRIMARY KEY (record_id);


--
-- Name: subscription_events subscription_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription_events
    ADD CONSTRAINT subscription_events_pkey PRIMARY KEY (record_id);


--
-- Name: subscription_history subscription_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscription_history
    ADD CONSTRAINT subscription_history_pkey PRIMARY KEY (record_id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (record_id);


--
-- Name: tag_definition_history tag_definition_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_definition_history
    ADD CONSTRAINT tag_definition_history_pkey PRIMARY KEY (record_id);


--
-- Name: tag_definitions tag_definitions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_definitions
    ADD CONSTRAINT tag_definitions_pkey PRIMARY KEY (record_id);


--
-- Name: tag_history tag_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_history
    ADD CONSTRAINT tag_history_pkey PRIMARY KEY (record_id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (record_id);


--
-- Name: tenant_broadcasts tenant_broadcasts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenant_broadcasts
    ADD CONSTRAINT tenant_broadcasts_pkey PRIMARY KEY (record_id);


--
-- Name: tenant_kvs tenant_kvs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenant_kvs
    ADD CONSTRAINT tenant_kvs_pkey PRIMARY KEY (record_id);


--
-- Name: tenants tenants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT tenants_pkey PRIMARY KEY (record_id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (record_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (record_id);


--
-- Name: account_email_account_id_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_email_account_id_email ON public.account_emails USING btree (account_id, email);


--
-- Name: account_email_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_email_history_tenant_account_record_id ON public.account_email_history USING btree (tenant_record_id, account_record_id);


--
-- Name: account_email_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX account_email_id ON public.account_emails USING btree (id);


--
-- Name: account_email_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_email_target_record_id ON public.account_email_history USING btree (target_record_id);


--
-- Name: account_emails_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emails_tenant_account_record_id ON public.account_emails USING btree (tenant_record_id, account_record_id);


--
-- Name: account_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_history_target_record_id ON public.account_history USING btree (target_record_id);


--
-- Name: account_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_history_tenant_record_id ON public.account_history USING btree (tenant_record_id);


--
-- Name: accounts_company_name_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_company_name_tenant_record_id ON public.accounts USING btree (company_name, tenant_record_id);


--
-- Name: accounts_email_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_email_tenant_record_id ON public.accounts USING btree (email, tenant_record_id);


--
-- Name: accounts_external_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX accounts_external_key ON public.accounts USING btree (external_key, tenant_record_id);


--
-- Name: accounts_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX accounts_id ON public.accounts USING btree (id);


--
-- Name: accounts_name_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_name_tenant_record_id ON public.accounts USING btree (name, tenant_record_id);


--
-- Name: accounts_parents; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_parents ON public.accounts USING btree (parent_account_id);


--
-- Name: accounts_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_tenant_record_id ON public.accounts USING btree (tenant_record_id);


--
-- Name: audit_log_fetch_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audit_log_fetch_target_record_id ON public.audit_log USING btree (table_name, target_record_id);


--
-- Name: audit_log_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audit_log_tenant_account_record_id ON public.audit_log USING btree (tenant_record_id, account_record_id);


--
-- Name: audit_log_user_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audit_log_user_name ON public.audit_log USING btree (created_by);


--
-- Name: audit_log_via_history; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX audit_log_via_history ON public.audit_log USING btree (target_record_id, table_name, tenant_record_id);


--
-- Name: blocking_state_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blocking_state_history_target_record_id ON public.blocking_state_history USING btree (target_record_id);


--
-- Name: blocking_state_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blocking_state_history_tenant_record_id ON public.blocking_state_history USING btree (tenant_record_id);


--
-- Name: blocking_states_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blocking_states_id ON public.blocking_states USING btree (blockable_id);


--
-- Name: blocking_states_id_real; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blocking_states_id_real ON public.blocking_states USING btree (id);


--
-- Name: blocking_states_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blocking_states_tenant_account_record_id ON public.blocking_states USING btree (tenant_record_id, account_record_id);


--
-- Name: bundle_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bundle_history_target_record_id ON public.bundle_history USING btree (target_record_id);


--
-- Name: bundle_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bundle_history_tenant_record_id ON public.bundle_history USING btree (tenant_record_id);


--
-- Name: bundles_account; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bundles_account ON public.bundles USING btree (account_id);


--
-- Name: bundles_external_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX bundles_external_key ON public.bundles USING btree (external_key, tenant_record_id);


--
-- Name: bundles_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX bundles_id ON public.bundles USING btree (id);


--
-- Name: bundles_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bundles_tenant_account_record_id ON public.bundles USING btree (tenant_record_id, account_record_id);


--
-- Name: bus_events_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bus_events_history_tenant_account_record_id ON public.bus_events_history USING btree (search_key2, search_key1);


--
-- Name: bus_events_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bus_events_tenant_account_record_id ON public.bus_events USING btree (search_key2, search_key1);


--
-- Name: bus_ext_events_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bus_ext_events_history_tenant_account_record_id ON public.bus_ext_events_history USING btree (search_key2, search_key1);


--
-- Name: bus_ext_events_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX bus_ext_events_tenant_account_record_id ON public.bus_ext_events USING btree (search_key2, search_key1);


--
-- Name: catalog_override_block_definition_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_block_definition_idx ON public.catalog_override_block_definition USING btree (tenant_record_id, parent_unit_name, currency);


--
-- Name: catalog_override_phase_definition_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_phase_definition_idx ON public.catalog_override_phase_definition USING btree (tenant_record_id, parent_phase_name, currency);


--
-- Name: catalog_override_phase_usage_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_phase_usage_idx ON public.catalog_override_phase_usage USING btree (tenant_record_id, usage_number, usage_def_record_id);


--
-- Name: catalog_override_plan_definition_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_plan_definition_tenant_record_id ON public.catalog_override_plan_definition USING btree (tenant_record_id);


--
-- Name: catalog_override_plan_phase_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_plan_phase_idx ON public.catalog_override_plan_phase USING btree (tenant_record_id, phase_number, phase_def_record_id);


--
-- Name: catalog_override_tier_block_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_tier_block_idx ON public.catalog_override_tier_block USING btree (tenant_record_id, block_number, block_def_record_id);


--
-- Name: catalog_override_tier_definition_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_tier_definition_idx ON public.catalog_override_tier_definition USING btree (tenant_record_id, currency);


--
-- Name: catalog_override_usage_definition_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_usage_definition_idx ON public.catalog_override_usage_definition USING btree (tenant_record_id, parent_usage_name, currency);


--
-- Name: catalog_override_usage_tier_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_override_usage_tier_idx ON public.catalog_override_usage_tier USING btree (tenant_record_id, tier_number, tier_def_record_id);


--
-- Name: custom_field_history_object_id_object_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_field_history_object_id_object_type ON public.custom_field_history USING btree (object_id, object_type);


--
-- Name: custom_field_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_field_history_target_record_id ON public.custom_field_history USING btree (target_record_id);


--
-- Name: custom_field_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_field_history_tenant_account_record_id ON public.custom_field_history USING btree (tenant_record_id, account_record_id);


--
-- Name: custom_fields_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX custom_fields_id ON public.custom_fields USING btree (id);


--
-- Name: custom_fields_name_value; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_fields_name_value ON public.custom_fields USING btree (field_name, field_value);


--
-- Name: custom_fields_object_id_object_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_fields_object_id_object_type ON public.custom_fields USING btree (object_id, object_type);


--
-- Name: custom_fields_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX custom_fields_tenant_account_record_id ON public.custom_fields USING btree (tenant_record_id, account_record_id);


--
-- Name: idx_bus_ext_where; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bus_ext_where ON public.bus_ext_events USING btree (processing_state, processing_owner, processing_available_date);


--
-- Name: idx_bus_where; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_bus_where ON public.bus_events USING btree (processing_state, processing_owner, processing_available_date);


--
-- Name: idx_comp_where; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_comp_where ON public.notifications USING btree (effective_date, processing_state, processing_owner, processing_available_date);


--
-- Name: idx_ent_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_ent_1 ON public.subscription_events USING btree (subscription_id, is_active, effective_date);


--
-- Name: idx_ent_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_ent_2 ON public.subscription_events USING btree (subscription_id, effective_date, created_date, id);


--
-- Name: idx_get_ready; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_get_ready ON public.notifications USING btree (effective_date, created_date);


--
-- Name: idx_update; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_update ON public.notifications USING btree (processing_state, processing_owner, processing_available_date);


--
-- Name: invoice_billing_events_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX invoice_billing_events_invoice_id ON public.invoice_billing_events USING btree (invoice_id);


--
-- Name: invoice_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_history_target_record_id ON public.invoice_history USING btree (target_record_id);


--
-- Name: invoice_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_history_tenant_record_id ON public.invoice_history USING btree (tenant_record_id);


--
-- Name: invoice_item_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_item_history_target_record_id ON public.invoice_item_history USING btree (target_record_id);


--
-- Name: invoice_item_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_item_history_tenant_record_id ON public.invoice_item_history USING btree (tenant_record_id);


--
-- Name: invoice_items_account_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_items_account_id ON public.invoice_items USING btree (account_id);


--
-- Name: invoice_items_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX invoice_items_id ON public.invoice_items USING btree (id);


--
-- Name: invoice_items_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_items_invoice_id ON public.invoice_items USING btree (invoice_id);


--
-- Name: invoice_items_linked_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_items_linked_item_id ON public.invoice_items USING btree (linked_item_id);


--
-- Name: invoice_items_subscription_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_items_subscription_id ON public.invoice_items USING btree (subscription_id);


--
-- Name: invoice_items_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_items_tenant_account_record_id ON public.invoice_items USING btree (tenant_record_id, account_record_id);


--
-- Name: invoice_parent_children_child_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_parent_children_child_invoice_id ON public.invoice_parent_children USING btree (child_invoice_id);


--
-- Name: invoice_parent_children_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX invoice_parent_children_id ON public.invoice_parent_children USING btree (id);


--
-- Name: invoice_parent_children_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_parent_children_invoice_id ON public.invoice_parent_children USING btree (parent_invoice_id);


--
-- Name: invoice_parent_children_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_parent_children_tenant_account_record_id ON public.invoice_parent_children USING btree (tenant_record_id, account_record_id);


--
-- Name: invoice_payment_control_plugin_auto_pay_off_account; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_payment_control_plugin_auto_pay_off_account ON public.invoice_payment_control_plugin_auto_pay_off USING btree (account_id);


--
-- Name: invoice_payment_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_payment_history_target_record_id ON public.invoice_payment_history USING btree (target_record_id);


--
-- Name: invoice_payment_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_payment_history_tenant_record_id ON public.invoice_payment_history USING btree (tenant_record_id);


--
-- Name: invoice_payments_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX invoice_payments_id ON public.invoice_payments USING btree (id);


--
-- Name: invoice_payments_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_payments_invoice_id ON public.invoice_payments USING btree (invoice_id);


--
-- Name: invoice_payments_payment_cookie_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_payments_payment_cookie_id ON public.invoice_payments USING btree (payment_cookie_id);


--
-- Name: invoice_payments_payment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_payments_payment_id ON public.invoice_payments USING btree (payment_id);


--
-- Name: invoice_payments_reversals; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_payments_reversals ON public.invoice_payments USING btree (linked_invoice_payment_id);


--
-- Name: invoice_payments_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_payments_tenant_account_record_id ON public.invoice_payments USING btree (tenant_record_id, account_record_id);


--
-- Name: invoice_tracking_id_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_tracking_id_history_target_record_id ON public.invoice_tracking_id_history USING btree (target_record_id);


--
-- Name: invoice_tracking_id_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_tracking_id_history_tenant_record_id ON public.invoice_tracking_id_history USING btree (tenant_record_id);


--
-- Name: invoice_tracking_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_tracking_id_idx ON public.invoice_tracking_ids USING btree (id);


--
-- Name: invoice_tracking_invoice_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_tracking_invoice_id_idx ON public.invoice_tracking_ids USING btree (invoice_id);


--
-- Name: invoice_tracking_tenant_account_date_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoice_tracking_tenant_account_date_idx ON public.invoice_tracking_ids USING btree (tenant_record_id, account_record_id, record_date);


--
-- Name: invoices_account; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoices_account ON public.invoices USING btree (account_id);


--
-- Name: invoices_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX invoices_id ON public.invoices USING btree (id);


--
-- Name: invoices_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX invoices_tenant_account_record_id ON public.invoices USING btree (tenant_record_id, account_record_id);


--
-- Name: node_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX node_name_idx ON public.node_infos USING btree (node_name);


--
-- Name: notifications_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notifications_history_tenant_account_record_id ON public.notifications_history USING btree (search_key2, search_key1);


--
-- Name: notifications_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notifications_tenant_account_record_id ON public.notifications USING btree (search_key2, search_key1);


--
-- Name: payment_attempt_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_attempt_history_target_record_id ON public.payment_attempt_history USING btree (target_record_id);


--
-- Name: payment_attempt_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_attempt_history_tenant_account_record_id ON public.payment_attempt_history USING btree (tenant_record_id, account_record_id);


--
-- Name: payment_attempts_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX payment_attempts_id ON public.payment_attempts USING btree (id);


--
-- Name: payment_attempts_payment; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_attempts_payment ON public.payment_attempts USING btree (transaction_id);


--
-- Name: payment_attempts_payment_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_attempts_payment_key ON public.payment_attempts USING btree (payment_external_key);


--
-- Name: payment_attempts_payment_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_attempts_payment_state ON public.payment_attempts USING btree (state_name);


--
-- Name: payment_attempts_payment_transaction_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_attempts_payment_transaction_key ON public.payment_attempts USING btree (transaction_external_key);


--
-- Name: payment_attempts_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_attempts_tenant_account_record_id ON public.payment_attempts USING btree (tenant_record_id, account_record_id);


--
-- Name: payment_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_history_target_record_id ON public.payment_history USING btree (target_record_id);


--
-- Name: payment_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_history_tenant_account_record_id ON public.payment_history USING btree (tenant_record_id, account_record_id);


--
-- Name: payment_method_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_method_history_target_record_id ON public.payment_method_history USING btree (target_record_id);


--
-- Name: payment_method_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_method_history_tenant_account_record_id ON public.payment_method_history USING btree (tenant_record_id, account_record_id);


--
-- Name: payment_methods_external_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX payment_methods_external_key ON public.payment_methods USING btree (external_key, tenant_record_id);


--
-- Name: payment_methods_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX payment_methods_id ON public.payment_methods USING btree (id);


--
-- Name: payment_methods_plugin_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_methods_plugin_name ON public.payment_methods USING btree (plugin_name);


--
-- Name: payment_methods_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payment_methods_tenant_account_record_id ON public.payment_methods USING btree (tenant_record_id, account_record_id);


--
-- Name: payments_accnt; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payments_accnt ON public.payments USING btree (account_id);


--
-- Name: payments_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX payments_id ON public.payments USING btree (id);


--
-- Name: payments_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX payments_key ON public.payments USING btree (external_key, tenant_record_id);


--
-- Name: payments_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payments_tenant_account_record_id ON public.payments USING btree (tenant_record_id, account_record_id);


--
-- Name: payments_tenant_record_id_state_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX payments_tenant_record_id_state_name ON public.payments USING btree (tenant_record_id, state_name);


--
-- Name: roles_permissions_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX roles_permissions_idx ON public.roles_permissions USING btree (role_name, permission);


--
-- Name: rolled_up_usage_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rolled_up_usage_account_record_id ON public.rolled_up_usage USING btree (account_record_id);


--
-- Name: rolled_up_usage_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX rolled_up_usage_id ON public.rolled_up_usage USING btree (id);


--
-- Name: rolled_up_usage_subscription_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rolled_up_usage_subscription_id ON public.rolled_up_usage USING btree (subscription_id);


--
-- Name: rolled_up_usage_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rolled_up_usage_tenant_account_record_id ON public.rolled_up_usage USING btree (tenant_record_id, account_record_id);


--
-- Name: rolled_up_usage_tracking_id_subscription_id_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rolled_up_usage_tracking_id_subscription_id_tenant_record_id ON public.rolled_up_usage USING btree (tracking_id, subscription_id, tenant_record_id);


--
-- Name: sessions_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX sessions_id ON public.sessions USING btree (id);


--
-- Name: subscription_event_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscription_event_history_target_record_id ON public.subscription_event_history USING btree (target_record_id);


--
-- Name: subscription_event_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscription_event_history_tenant_record_id ON public.subscription_event_history USING btree (tenant_record_id);


--
-- Name: subscription_events_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX subscription_events_id ON public.subscription_events USING btree (id);


--
-- Name: subscription_events_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscription_events_tenant_account_record_id ON public.subscription_events USING btree (tenant_record_id, account_record_id);


--
-- Name: subscription_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscription_history_target_record_id ON public.subscription_history USING btree (target_record_id);


--
-- Name: subscription_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscription_history_tenant_record_id ON public.subscription_history USING btree (tenant_record_id);


--
-- Name: subscriptions_bundle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscriptions_bundle_id ON public.subscriptions USING btree (bundle_id);


--
-- Name: subscriptions_external_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX subscriptions_external_key ON public.subscriptions USING btree (external_key, tenant_record_id);


--
-- Name: subscriptions_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX subscriptions_id ON public.subscriptions USING btree (id);


--
-- Name: subscriptions_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX subscriptions_tenant_account_record_id ON public.subscriptions USING btree (tenant_record_id, account_record_id);


--
-- Name: tag_definition_history_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tag_definition_history_id ON public.tag_definition_history USING btree (id);


--
-- Name: tag_definition_history_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tag_definition_history_name ON public.tag_definition_history USING btree (name);


--
-- Name: tag_definition_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tag_definition_history_target_record_id ON public.tag_definition_history USING btree (target_record_id);


--
-- Name: tag_definition_history_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tag_definition_history_tenant_record_id ON public.tag_definition_history USING btree (tenant_record_id);


--
-- Name: tag_definitions_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX tag_definitions_id ON public.tag_definitions USING btree (id);


--
-- Name: tag_definitions_tenant_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tag_definitions_tenant_record_id ON public.tag_definitions USING btree (tenant_record_id);


--
-- Name: tag_history_by_object; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tag_history_by_object ON public.tag_history USING btree (object_id);


--
-- Name: tag_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tag_history_target_record_id ON public.tag_history USING btree (target_record_id);


--
-- Name: tag_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tag_history_tenant_account_record_id ON public.tag_history USING btree (tenant_record_id, account_record_id);


--
-- Name: tags_by_object; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tags_by_object ON public.tags USING btree (object_id);


--
-- Name: tags_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX tags_id ON public.tags USING btree (id);


--
-- Name: tags_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tags_tenant_account_record_id ON public.tags USING btree (tenant_record_id, account_record_id);


--
-- Name: tenant_broadcasts_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tenant_broadcasts_key ON public.tenant_broadcasts USING btree (tenant_record_id);


--
-- Name: tenant_kvs_trid_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tenant_kvs_trid_key ON public.tenant_kvs USING btree (tenant_record_id, tenant_key);


--
-- Name: tenants_api_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX tenants_api_key ON public.tenants USING btree (api_key);


--
-- Name: tenants_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX tenants_id ON public.tenants USING btree (id);


--
-- Name: transaction_history_target_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transaction_history_target_record_id ON public.payment_transaction_history USING btree (target_record_id);


--
-- Name: transaction_history_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transaction_history_tenant_account_record_id ON public.payment_transaction_history USING btree (tenant_record_id, account_record_id);


--
-- Name: transactions_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX transactions_id ON public.payment_transactions USING btree (id);


--
-- Name: transactions_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_key ON public.payment_transactions USING btree (transaction_external_key);


--
-- Name: transactions_payment_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_payment_id ON public.payment_transactions USING btree (payment_id);


--
-- Name: transactions_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_status ON public.payment_transactions USING btree (transaction_status);


--
-- Name: transactions_tenant_account_record_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transactions_tenant_account_record_id ON public.payment_transactions USING btree (tenant_record_id, account_record_id);


--
-- Name: user_roles_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_roles_idx ON public.user_roles USING btree (username, role_name);


--
-- Name: users_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_username ON public.users USING btree (username);


--
-- PostgreSQL database dump complete
--

