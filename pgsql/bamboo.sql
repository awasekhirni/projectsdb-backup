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
-- Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_4789DD_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" text,
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" text,
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
-- Name: AO_7A45FB_AOTRACKING_ENTRY; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_7A45FB_AOTRACKING_ENTRY" (
    "ACTIVE" boolean,
    "PLAN_ID" bigint DEFAULT 0,
    "TRACKING_ID" integer NOT NULL
);


ALTER TABLE public."AO_7A45FB_AOTRACKING_ENTRY" OWNER TO postgres;

--
-- Name: AO_7A45FB_AOTRACKING_ENTRY_TRACKING_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_7A45FB_AOTRACKING_ENTRY_TRACKING_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7A45FB_AOTRACKING_ENTRY_TRACKING_ID_seq" OWNER TO postgres;

--
-- Name: AO_7A45FB_AOTRACKING_ENTRY_TRACKING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_7A45FB_AOTRACKING_ENTRY_TRACKING_ID_seq" OWNED BY public."AO_7A45FB_AOTRACKING_ENTRY"."TRACKING_ID";


--
-- Name: AO_7A45FB_AOTRACKING_RESULT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_7A45FB_AOTRACKING_RESULT" (
    "BUILD_NUMBER" integer DEFAULT 0,
    "LINKED_TRACKING_ENTRY_ID" integer,
    "RESULT_ID" integer NOT NULL,
    "RESULT_SUMMARY_ID" bigint DEFAULT 0
);


ALTER TABLE public."AO_7A45FB_AOTRACKING_RESULT" OWNER TO postgres;

--
-- Name: AO_7A45FB_AOTRACKING_RESULT_RESULT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_7A45FB_AOTRACKING_RESULT_RESULT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7A45FB_AOTRACKING_RESULT_RESULT_ID_seq" OWNER TO postgres;

--
-- Name: AO_7A45FB_AOTRACKING_RESULT_RESULT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_7A45FB_AOTRACKING_RESULT_RESULT_ID_seq" OWNED BY public."AO_7A45FB_AOTRACKING_RESULT"."RESULT_ID";


--
-- Name: AO_7A45FB_AOTRACKING_USER; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_7A45FB_AOTRACKING_USER" (
    "LINKED_TRACKING_ENTRY_ID" integer,
    "USERNAME" character varying(255),
    "USER_ID" integer NOT NULL,
    "USER_WHO_UPDATED" character varying(255)
);


ALTER TABLE public."AO_7A45FB_AOTRACKING_USER" OWNER TO postgres;

--
-- Name: AO_7A45FB_AOTRACKING_USER_USER_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_7A45FB_AOTRACKING_USER_USER_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_7A45FB_AOTRACKING_USER_USER_ID_seq" OWNER TO postgres;

--
-- Name: AO_7A45FB_AOTRACKING_USER_USER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_7A45FB_AOTRACKING_USER_USER_ID_seq" OWNED BY public."AO_7A45FB_AOTRACKING_USER"."USER_ID";


--
-- Name: AO_A0B856_WEBHOOK; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_A0B856_WEBHOOK" (
    "ACTIVE" boolean,
    "CREATED" timestamp without time zone NOT NULL,
    "ID" integer NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "SCOPE_ID" character varying(255),
    "SCOPE_TYPE" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone NOT NULL,
    "URL" text NOT NULL
);


ALTER TABLE public."AO_A0B856_WEBHOOK" OWNER TO postgres;

--
-- Name: AO_A0B856_WEBHOOK_CONFIG; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_A0B856_WEBHOOK_CONFIG" (
    "ID" integer NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL,
    "WEBHOOKID" integer NOT NULL
);


ALTER TABLE public."AO_A0B856_WEBHOOK_CONFIG" OWNER TO postgres;

--
-- Name: AO_A0B856_WEBHOOK_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_A0B856_WEBHOOK_CONFIG_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A0B856_WEBHOOK_CONFIG_ID_seq" OWNER TO postgres;

--
-- Name: AO_A0B856_WEBHOOK_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_A0B856_WEBHOOK_CONFIG_ID_seq" OWNED BY public."AO_A0B856_WEBHOOK_CONFIG"."ID";


--
-- Name: AO_A0B856_WEBHOOK_EVENT; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_A0B856_WEBHOOK_EVENT" (
    "EVENT_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "WEBHOOKID" integer NOT NULL
);


ALTER TABLE public."AO_A0B856_WEBHOOK_EVENT" OWNER TO postgres;

--
-- Name: AO_A0B856_WEBHOOK_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_A0B856_WEBHOOK_EVENT_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A0B856_WEBHOOK_EVENT_ID_seq" OWNER TO postgres;

--
-- Name: AO_A0B856_WEBHOOK_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_A0B856_WEBHOOK_EVENT_ID_seq" OWNED BY public."AO_A0B856_WEBHOOK_EVENT"."ID";


--
-- Name: AO_A0B856_WEBHOOK_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_A0B856_WEBHOOK_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_A0B856_WEBHOOK_ID_seq" OWNER TO postgres;

--
-- Name: AO_A0B856_WEBHOOK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_A0B856_WEBHOOK_ID_seq" OWNED BY public."AO_A0B856_WEBHOOK"."ID";


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
-- Name: AO_C7F71E_OAUTH_SVC_PROV_TKNS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_C7F71E_OAUTH_SVC_PROV_TKNS" (
    "CONSUMER_KEY" character varying(255) NOT NULL,
    "EXPIRY_TIME" bigint DEFAULT 0 NOT NULL,
    "TOKEN" character varying(255) NOT NULL,
    "USER_NAME" character varying(255),
    "VALUE" text NOT NULL
);


ALTER TABLE public."AO_C7F71E_OAUTH_SVC_PROV_TKNS" OWNER TO postgres;

--
-- Name: AO_F1B80E_BRANCH_SELECTION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AO_F1B80E_BRANCH_SELECTION" (
    "ID" integer NOT NULL,
    "LAST_SELECTED_BRANCHES" text,
    "SELECTED_BRANCH_NAME" character varying(255),
    "SELECTED_REPO_ID" bigint DEFAULT 0,
    "USER" character varying(255)
);


ALTER TABLE public."AO_F1B80E_BRANCH_SELECTION" OWNER TO postgres;

--
-- Name: AO_F1B80E_BRANCH_SELECTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AO_F1B80E_BRANCH_SELECTION_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AO_F1B80E_BRANCH_SELECTION_ID_seq" OWNER TO postgres;

--
-- Name: AO_F1B80E_BRANCH_SELECTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AO_F1B80E_BRANCH_SELECTION_ID_seq" OWNED BY public."AO_F1B80E_BRANCH_SELECTION"."ID";


--
-- Name: access_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.access_token (
    access_token_id bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    hashed_token character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    permissions_mask integer DEFAULT 0 NOT NULL,
    token_id character varying(255) NOT NULL,
    user_name character varying(255) NOT NULL
);


ALTER TABLE public.access_token OWNER TO postgres;

--
-- Name: acl_entry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acl_entry (
    id bigint NOT NULL,
    acl_object_identity bigint,
    type character varying(255),
    sid character varying(255),
    ace_order integer,
    mask integer,
    granting boolean,
    audit_success boolean,
    audit_failure boolean
);


ALTER TABLE public.acl_entry OWNER TO postgres;

--
-- Name: acl_object_identity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acl_object_identity (
    id bigint NOT NULL,
    object_id_class character varying(255),
    object_id_identity bigint,
    parent_object bigint,
    entries_inheriting boolean,
    owner_type character varying(255),
    owner_sid character varying(255)
);


ALTER TABLE public.acl_object_identity OWNER TO postgres;

--
-- Name: agent_assignment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agent_assignment (
    assignment_id bigint NOT NULL,
    executor_id bigint,
    executor_type character varying(255),
    executable_id bigint,
    executable_type character varying(255)
);


ALTER TABLE public.agent_assignment OWNER TO postgres;

--
-- Name: agent_authentication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agent_authentication (
    authentication_id bigint NOT NULL,
    ip_address character varying(255) NOT NULL,
    uuid character varying(255) NOT NULL,
    is_approved boolean
);


ALTER TABLE public.agent_authentication OWNER TO postgres;

--
-- Name: artifact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artifact (
    artifact_id bigint NOT NULL,
    archiver_type integer,
    globally_stored boolean NOT NULL,
    chain_artifact boolean NOT NULL,
    label character varying(255) NOT NULL,
    link_type character varying(255),
    artifact_size bigint,
    plan_key character varying(255) NOT NULL,
    build_number integer NOT NULL
);


ALTER TABLE public.artifact OWNER TO postgres;

--
-- Name: artifact_definition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artifact_definition (
    artifact_definition_id bigint NOT NULL,
    oid bigint,
    copy_pattern character varying(255) NOT NULL,
    src_directory character varying(255),
    label character varying(255) NOT NULL,
    required_artifact boolean DEFAULT false NOT NULL,
    chain_artifact boolean NOT NULL,
    producer_job_id bigint NOT NULL
);


ALTER TABLE public.artifact_definition OWNER TO postgres;

--
-- Name: artifact_subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artifact_subscription (
    artifact_subscription_id bigint NOT NULL,
    dst_directory character varying(255),
    artifact_definition_id bigint NOT NULL,
    consumer_job_id bigint NOT NULL
);


ALTER TABLE public.artifact_subscription OWNER TO postgres;

--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_log (
    audit_id bigint NOT NULL,
    child_id character varying(255),
    entity_id character varying(255),
    entity_type character varying(255),
    field_header character varying(255),
    field_type character varying(255),
    msg character varying(4000),
    msg_type character varying(255),
    new_value character varying(255),
    old_value character varying(255),
    msg_time_stamp bigint,
    user_name character varying(255)
);


ALTER TABLE public.audit_log OWNER TO postgres;

--
-- Name: auth_attempt_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_attempt_info (
    id bigint NOT NULL,
    auth_count integer,
    last_auth_timestamp timestamp without time zone NOT NULL,
    user_name character varying(255) NOT NULL
);


ALTER TABLE public.auth_attempt_info OWNER TO postgres;

--
-- Name: author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.author (
    author_id bigint NOT NULL,
    linked_user_name character varying(255),
    author_email character varying(255),
    author_name character varying(255)
);


ALTER TABLE public.author OWNER TO postgres;

--
-- Name: bandana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bandana (
    bandana_id bigint NOT NULL,
    build_id bigint,
    chain_id bigint DEFAULT 0 NOT NULL,
    bandana_key character varying(255),
    serialized_data text
);


ALTER TABLE public.bandana OWNER TO postgres;

--
-- Name: branch_commit_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branch_commit_info (
    branch_commit_info_id bigint NOT NULL,
    branch_id bigint NOT NULL,
    creating_author_id bigint,
    creating_commit_date timestamp without time zone,
    creating_change_set_id character varying(128),
    latest_commit_author_id bigint,
    latest_commit_date timestamp without time zone,
    latest_commit_change_set_id character varying(128)
);


ALTER TABLE public.branch_commit_info OWNER TO postgres;

--
-- Name: brs_artifact_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brs_artifact_link (
    artifact_link_id bigint NOT NULL,
    buildresultsummary_id bigint NOT NULL,
    producerjobresult_id bigint,
    artifact_id bigint
);


ALTER TABLE public.brs_artifact_link OWNER TO postgres;

--
-- Name: brs_consumed_subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brs_consumed_subscription (
    consumed_subscription_id bigint NOT NULL,
    dst_directory character varying(255),
    consumer_resultsummary_id bigint NOT NULL,
    artifact_link_id bigint NOT NULL
);


ALTER TABLE public.brs_consumed_subscription OWNER TO postgres;

--
-- Name: brs_linkedjiraissues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brs_linkedjiraissues (
    linkedjiraissue_id bigint NOT NULL,
    buildresultsummary_id bigint,
    jira_issue_key character varying(255),
    jira_issue_link_type integer
);


ALTER TABLE public.brs_linkedjiraissues OWNER TO postgres;

--
-- Name: build; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.build (
    build_id bigint NOT NULL,
    build_type character varying(255) NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    full_key character varying(255),
    buildkey character varying(255),
    title character varying(255),
    description character varying(255),
    suspended_from_building boolean,
    marked_for_deletion boolean,
    oid bigint,
    project_id bigint NOT NULL,
    master_id bigint,
    notification_set bigint,
    vcs_specs_source_id bigint,
    storage_tag character varying(255),
    linked_jira_issue character varying(255),
    rem_jira_link_required boolean,
    divergent_branch boolean DEFAULT false NOT NULL,
    requirement_set bigint,
    stage_id bigint
);


ALTER TABLE public.build OWNER TO postgres;

--
-- Name: build_definition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.build_definition (
    build_definition_id bigint NOT NULL,
    build_definition_type character varying(255) NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    xml_definition_data text,
    build_id bigint
);


ALTER TABLE public.build_definition OWNER TO postgres;

--
-- Name: build_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.build_numbers (
    build_numbers_id bigint NOT NULL,
    build_id bigint NOT NULL,
    next_build_number integer NOT NULL
);


ALTER TABLE public.build_numbers OWNER TO postgres;

--
-- Name: buildresult_warning_summary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buildresult_warning_summary (
    build_result_warning_id bigint NOT NULL,
    high_priority_count bigint,
    low_priority_count bigint,
    normal_priority_count bigint,
    repository_id bigint,
    buildresultsummary_id bigint NOT NULL
);


ALTER TABLE public.buildresult_warning_summary OWNER TO postgres;

--
-- Name: buildresultsummary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buildresultsummary (
    buildresultsummary_id bigint NOT NULL,
    build_type character varying(255) NOT NULL,
    created_date timestamp without time zone,
    build_key character varying(255),
    plan_name character varying(255),
    build_number integer,
    build_state character varying(255),
    life_cycle_state character varying(255),
    build_date timestamp without time zone,
    build_cancelled_date timestamp without time zone,
    build_completed_date timestamp without time zone,
    duration bigint,
    processing_duration bigint,
    time_to_fix bigint,
    trigger_reason character varying(255),
    delta_state character varying(255),
    build_agent_id bigint,
    stageresult_id bigint,
    restart_count integer,
    queue_time timestamp without time zone,
    marked_for_deletion boolean,
    once_off boolean,
    custom_build boolean,
    rebuild boolean,
    log_size bigint,
    variable_context_baseline_id bigint,
    format_version integer DEFAULT 1 NOT NULL,
    failure_test_count integer,
    success_test_count integer,
    total_test_count integer,
    broken_test_count integer,
    existing_test_count integer,
    fixed_test_count integer,
    total_test_duration bigint,
    quarantined_test_count integer,
    skipped_test_count integer,
    vcs_update_time timestamp without time zone,
    chain_result bigint,
    continuable boolean,
    fixed_in_result integer,
    mergeresult_id bigint
);


ALTER TABLE public.buildresultsummary OWNER TO postgres;

--
-- Name: buildresultsummary_customdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buildresultsummary_customdata (
    buildresultsummary_id bigint NOT NULL,
    custom_info_key character varying(255) NOT NULL,
    custom_info_value text
);


ALTER TABLE public.buildresultsummary_customdata OWNER TO postgres;

--
-- Name: buildresultsummary_label; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buildresultsummary_label (
    id bigint NOT NULL,
    label_id bigint NOT NULL,
    buildresultsummary_id bigint,
    build_id bigint,
    project_id bigint,
    user_name character varying(255),
    created_date timestamp without time zone,
    updated_date timestamp without time zone
);


ALTER TABLE public.buildresultsummary_label OWNER TO postgres;

--
-- Name: capability; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.capability (
    capability_id bigint NOT NULL,
    key_identifier character varying(255),
    value character varying(4000),
    capability_set bigint
);


ALTER TABLE public.capability OWNER TO postgres;

--
-- Name: capability_set; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.capability_set (
    capability_set_id bigint NOT NULL,
    capability_type character varying(255) NOT NULL,
    capability_scope character varying(255)
);


ALTER TABLE public.capability_set OWNER TO postgres;

--
-- Name: chain_stage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chain_stage (
    stage_id bigint NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    name character varying(255) NOT NULL,
    description character varying(255),
    optional_stage boolean,
    final_stage boolean DEFAULT false NOT NULL,
    marked_for_deletion boolean,
    build_id bigint NOT NULL,
    oid bigint,
    list_position integer
);


ALTER TABLE public.chain_stage OWNER TO postgres;

--
-- Name: chain_stage_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chain_stage_result (
    stageresult_id bigint NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    name character varying(255) NOT NULL,
    description character varying(255),
    optional_stage boolean,
    final_stage boolean DEFAULT false NOT NULL,
    processing_duration bigint,
    chainresult_id bigint NOT NULL,
    list_position integer
);


ALTER TABLE public.chain_stage_result OWNER TO postgres;

--
-- Name: commit_files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commit_files (
    commit_id bigint NOT NULL,
    commit_file_name character varying(1000),
    commit_file_reivision character varying(128)
);


ALTER TABLE public.commit_files OWNER TO postgres;

--
-- Name: credentials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.credentials (
    credentials_id bigint NOT NULL,
    plugin_key character varying(255),
    name character varying(255),
    xml text,
    oid bigint
);


ALTER TABLE public.credentials OWNER TO postgres;

--
-- Name: crowd_deleted_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.crowd_deleted_entity (
    crowd_deleted_entity_id bigint NOT NULL,
    deletion_date timestamp without time zone NOT NULL,
    entity_name character varying(255) NOT NULL,
    entity_type character varying(255) NOT NULL
);


ALTER TABLE public.crowd_deleted_entity OWNER TO postgres;

--
-- Name: cwd_app_dir_default_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_app_dir_default_groups (
    id bigint NOT NULL,
    application_mapping_id bigint NOT NULL,
    group_name character varying(255) NOT NULL
);


ALTER TABLE public.cwd_app_dir_default_groups OWNER TO postgres;

--
-- Name: cwd_app_dir_group_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_app_dir_group_mapping (
    id bigint NOT NULL,
    app_dir_mapping_id bigint NOT NULL,
    application_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    group_name character varying(255) NOT NULL
);


ALTER TABLE public.cwd_app_dir_group_mapping OWNER TO postgres;

--
-- Name: cwd_app_dir_mapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_app_dir_mapping (
    id bigint NOT NULL,
    application_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    allow_all character(1) NOT NULL,
    list_index integer
);


ALTER TABLE public.cwd_app_dir_mapping OWNER TO postgres;

--
-- Name: cwd_app_dir_operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_app_dir_operation (
    app_dir_mapping_id bigint NOT NULL,
    operation_type character varying(32) NOT NULL
);


ALTER TABLE public.cwd_app_dir_operation OWNER TO postgres;

--
-- Name: cwd_app_licensed_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_app_licensed_user (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    lower_username character varying(255) NOT NULL,
    last_active timestamp without time zone,
    full_name character varying(255),
    lower_full_name character varying(255),
    email character varying(255),
    lower_email character varying(255),
    directory_id bigint NOT NULL
);


ALTER TABLE public.cwd_app_licensed_user OWNER TO postgres;

--
-- Name: cwd_app_licensing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_app_licensing (
    id bigint NOT NULL,
    generated_on timestamp without time zone NOT NULL,
    version bigint NOT NULL,
    application_id bigint,
    application_subtype character varying(32) NOT NULL,
    total_users integer NOT NULL,
    max_user_limit integer NOT NULL,
    total_crowd_users integer NOT NULL,
    active character(1) NOT NULL
);


ALTER TABLE public.cwd_app_licensing OWNER TO postgres;

--
-- Name: cwd_app_licensing_dir_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_app_licensing_dir_info (
    id bigint NOT NULL,
    name character varying(255),
    directory_id bigint,
    licensing_summary_id bigint NOT NULL
);


ALTER TABLE public.cwd_app_licensing_dir_info OWNER TO postgres;

--
-- Name: cwd_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_application (
    id bigint NOT NULL,
    application_name character varying(255) NOT NULL,
    lower_application_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    active character(1) NOT NULL,
    description character varying(255),
    application_type character varying(32) NOT NULL,
    credential character varying(255) NOT NULL
);


ALTER TABLE public.cwd_application OWNER TO postgres;

--
-- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_application_address (
    application_id bigint NOT NULL,
    remote_address character varying(255) NOT NULL
);


ALTER TABLE public.cwd_application_address OWNER TO postgres;

--
-- Name: cwd_application_alias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_application_alias (
    id bigint NOT NULL,
    application_id bigint NOT NULL,
    user_name character varying(255) NOT NULL,
    lower_user_name character varying(255) NOT NULL,
    alias_name character varying(255) NOT NULL,
    lower_alias_name character varying(255) NOT NULL
);


ALTER TABLE public.cwd_application_alias OWNER TO postgres;

--
-- Name: cwd_application_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_application_attribute (
    application_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value text
);


ALTER TABLE public.cwd_application_attribute OWNER TO postgres;

--
-- Name: cwd_directory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory (
    id bigint NOT NULL,
    directory_name character varying(255) NOT NULL,
    lower_directory_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    active character(1) NOT NULL,
    description character varying(255),
    impl_class character varying(255) NOT NULL,
    lower_impl_class character varying(255) NOT NULL,
    directory_type character varying(32) NOT NULL
);


ALTER TABLE public.cwd_directory OWNER TO postgres;

--
-- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory_attribute (
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value text
);


ALTER TABLE public.cwd_directory_attribute OWNER TO postgres;

--
-- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_directory_operation (
    directory_id bigint NOT NULL,
    operation_type character varying(32) NOT NULL
);


ALTER TABLE public.cwd_directory_operation OWNER TO postgres;

--
-- Name: cwd_expirable_user_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_expirable_user_token (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    user_name character varying(255),
    email_address character varying(255),
    expiry_date bigint NOT NULL,
    directory_id bigint NOT NULL
);


ALTER TABLE public.cwd_expirable_user_token OWNER TO postgres;

--
-- Name: cwd_granted_perm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_granted_perm (
    id bigint NOT NULL,
    created_date timestamp without time zone NOT NULL,
    permission_id integer NOT NULL,
    app_dir_mapping_id bigint NOT NULL,
    group_name character varying(255) NOT NULL
);


ALTER TABLE public.cwd_granted_perm OWNER TO postgres;

--
-- Name: cwd_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_group (
    id bigint NOT NULL,
    group_name character varying(255) NOT NULL,
    lower_group_name character varying(255) NOT NULL,
    active character(1) NOT NULL,
    is_local character(1) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    description character varying(255),
    group_type character varying(32) NOT NULL,
    directory_id bigint NOT NULL,
    external_id character varying(255)
);


ALTER TABLE public.cwd_group OWNER TO postgres;

--
-- Name: cwd_group_admin_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_group_admin_group (
    id bigint NOT NULL,
    group_id bigint NOT NULL,
    target_group_id bigint NOT NULL
);


ALTER TABLE public.cwd_group_admin_group OWNER TO postgres;

--
-- Name: cwd_group_admin_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_group_admin_user (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    target_group_id bigint NOT NULL
);


ALTER TABLE public.cwd_group_admin_user OWNER TO postgres;

--
-- Name: cwd_group_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_group_attribute (
    id bigint NOT NULL,
    group_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255),
    attribute_lower_value character varying(255)
);


ALTER TABLE public.cwd_group_attribute OWNER TO postgres;

--
-- Name: cwd_membership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_membership (
    id bigint NOT NULL,
    parent_id bigint,
    child_id bigint,
    membership_type character varying(32),
    group_type character varying(32) NOT NULL,
    parent_name character varying(255) NOT NULL,
    lower_parent_name character varying(255) NOT NULL,
    child_name character varying(255) NOT NULL,
    lower_child_name character varying(255) NOT NULL,
    created_date timestamp without time zone,
    directory_id bigint NOT NULL
);


ALTER TABLE public.cwd_membership OWNER TO postgres;

--
-- Name: cwd_property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_property (
    property_key character varying(255) NOT NULL,
    property_name character varying(255) NOT NULL,
    property_value text
);


ALTER TABLE public.cwd_property OWNER TO postgres;

--
-- Name: cwd_synchronisation_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_synchronisation_status (
    id integer NOT NULL,
    directory_id bigint NOT NULL,
    node_id character varying(36),
    sync_start bigint NOT NULL,
    sync_end bigint,
    sync_status character varying(255),
    status_parameters text
);


ALTER TABLE public.cwd_synchronisation_status OWNER TO postgres;

--
-- Name: cwd_synchronisation_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_synchronisation_token (
    directory_id bigint NOT NULL,
    sync_status_token text
);


ALTER TABLE public.cwd_synchronisation_token OWNER TO postgres;

--
-- Name: cwd_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_token (
    id bigint NOT NULL,
    directory_id bigint NOT NULL,
    entity_name character varying(255) NOT NULL,
    random_number bigint NOT NULL,
    identifier_hash character varying(255) NOT NULL,
    random_hash character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    last_accessed_date timestamp without time zone NOT NULL,
    last_accessed_time bigint DEFAULT 0 NOT NULL,
    duration bigint
);


ALTER TABLE public.cwd_token OWNER TO postgres;

--
-- Name: cwd_tombstone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_tombstone (
    id bigint NOT NULL,
    tombstone_type character varying(255) NOT NULL,
    tombstone_timestamp bigint NOT NULL,
    entity_name character varying(255),
    directory_id bigint,
    parent character varying(255),
    application_id bigint
);


ALTER TABLE public.cwd_tombstone OWNER TO postgres;

--
-- Name: cwd_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_user (
    id bigint NOT NULL,
    user_name character varying(255) NOT NULL,
    lower_user_name character varying(255) NOT NULL,
    active character(1) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    external_id character varying(255),
    directory_id bigint NOT NULL,
    credential character varying(255)
);


ALTER TABLE public.cwd_user OWNER TO postgres;

--
-- Name: cwd_user_attribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_user_attribute (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    directory_id bigint NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255),
    attribute_lower_value character varying(255),
    attribute_numeric_value bigint
);


ALTER TABLE public.cwd_user_attribute OWNER TO postgres;

--
-- Name: cwd_user_credential_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_user_credential_record (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    password_hash character varying(255) NOT NULL,
    list_index integer
);


ALTER TABLE public.cwd_user_credential_record OWNER TO postgres;

--
-- Name: cwd_webhook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cwd_webhook (
    id bigint NOT NULL,
    endpoint_url character varying(255) NOT NULL,
    application_id bigint NOT NULL,
    token character varying(255),
    oldest_failure_date timestamp without time zone,
    failures_since_last_success bigint NOT NULL
);


ALTER TABLE public.cwd_webhook OWNER TO postgres;

--
-- Name: dep_version_planresultkeys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dep_version_planresultkeys (
    dep_version_planresultkeys_id bigint NOT NULL,
    deployment_version_id bigint,
    plan_key character varying(255) NOT NULL,
    build_number integer NOT NULL
);


ALTER TABLE public.dep_version_planresultkeys OWNER TO postgres;

--
-- Name: deployment_env_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_env_config (
    environment_id bigint NOT NULL,
    docker_pipeline_config text,
    plugin_config text
);


ALTER TABLE public.deployment_env_config OWNER TO postgres;

--
-- Name: deployment_env_vcs_location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_env_vcs_location (
    env_vcs_location_id bigint NOT NULL,
    environment_id bigint,
    vcs_location_id bigint,
    list_position integer NOT NULL
);


ALTER TABLE public.deployment_env_vcs_location OWNER TO postgres;

--
-- Name: deployment_environment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_environment (
    environment_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    xml_definition_data text,
    triggers_xml_data text,
    configuration_state character varying(255),
    package_definition_id bigint,
    requirement_set bigint,
    notification_set bigint,
    list_position integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.deployment_environment OWNER TO postgres;

--
-- Name: deployment_project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_project (
    deployment_project_id bigint NOT NULL,
    oid bigint,
    description character varying(255),
    name character varying(255) NOT NULL,
    plan_key character varying(255),
    vcs_specs_source_id bigint
);


ALTER TABLE public.deployment_project OWNER TO postgres;

--
-- Name: deployment_project_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_project_item (
    deployment_project_item_id bigint NOT NULL,
    name character varying(255),
    deployment_project_id bigint
);


ALTER TABLE public.deployment_project_item OWNER TO postgres;

--
-- Name: deployment_project_item_ba; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_project_item_ba (
    bam_artifact_item_id bigint NOT NULL,
    artifact_definition_id bigint NOT NULL
);


ALTER TABLE public.deployment_project_item_ba OWNER TO postgres;

--
-- Name: deployment_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_result (
    deployment_result_id bigint NOT NULL,
    version_id bigint,
    version_name character varying(255) NOT NULL,
    environment_id bigint,
    deployment_state character varying(255),
    life_cycle_state character varying(255),
    started_date timestamp without time zone,
    queued_date timestamp without time zone,
    executed_date timestamp without time zone,
    finished_date timestamp without time zone,
    agent_id bigint,
    variable_context_baseline_id bigint,
    trigger_reason character varying(255)
);


ALTER TABLE public.deployment_result OWNER TO postgres;

--
-- Name: deployment_result_customdata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_result_customdata (
    deployment_result_id bigint NOT NULL,
    custom_info_key character varying(255) NOT NULL,
    custom_info_value text
);


ALTER TABLE public.deployment_result_customdata OWNER TO postgres;

--
-- Name: deployment_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_version (
    deployment_version_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_date timestamp without time zone,
    age_zero_point timestamp without time zone,
    creator_username character varying(255),
    plan_branch_name character varying(255) DEFAULT 'master'::character varying NOT NULL,
    project_id bigint,
    variable_context_baseline_id bigint
);


ALTER TABLE public.deployment_version OWNER TO postgres;

--
-- Name: deployment_version_changeset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_version_changeset (
    dep_version_changeset_id bigint NOT NULL,
    deployment_version_id bigint NOT NULL,
    vcs_location_id bigint NOT NULL,
    changeset_id character varying(128),
    skipped_commits_count bigint NOT NULL
);


ALTER TABLE public.deployment_version_changeset OWNER TO postgres;

--
-- Name: deployment_version_commit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_version_commit (
    deployment_version_commit_id bigint NOT NULL,
    dep_version_changeset_id bigint,
    author_id bigint,
    commit_date timestamp without time zone,
    commit_revision character varying(128),
    commit_comment_clob text
);


ALTER TABLE public.deployment_version_commit OWNER TO postgres;

--
-- Name: deployment_version_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_version_item (
    deployment_version_item_id bigint NOT NULL,
    deployment_version_id bigint,
    name character varying(255)
);


ALTER TABLE public.deployment_version_item OWNER TO postgres;

--
-- Name: deployment_version_item_ba; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_version_item_ba (
    version_bam_artifact_item_id bigint NOT NULL,
    plan_key character varying(255) NOT NULL,
    build_number integer NOT NULL,
    label character varying(255) NOT NULL,
    location character varying(255),
    copy_pattern character varying(255) NOT NULL,
    artifact_size bigint,
    artifact_id bigint NOT NULL
);


ALTER TABLE public.deployment_version_item_ba OWNER TO postgres;

--
-- Name: deployment_version_jira_issue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_version_jira_issue (
    dep_ver_jira_issue_id bigint NOT NULL,
    deployment_version_id bigint,
    jira_issue_key character varying(255),
    jira_issue_link_type integer
);


ALTER TABLE public.deployment_version_jira_issue OWNER TO postgres;

--
-- Name: deployment_version_naming; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_version_naming (
    version_naming_scheme_id bigint NOT NULL,
    deployment_project_id bigint NOT NULL,
    next_version_name character varying(255),
    auto_increment boolean,
    applicable_to_branches boolean DEFAULT false NOT NULL
);


ALTER TABLE public.deployment_version_naming OWNER TO postgres;

--
-- Name: deployment_version_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deployment_version_status (
    deployment_version_status_id bigint NOT NULL,
    version_state character varying(255),
    user_name character varying(255),
    deployment_version_id bigint,
    created_date timestamp without time zone
);


ALTER TABLE public.deployment_version_status OWNER TO postgres;

--
-- Name: ec2_image_script; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec2_image_script (
    elastic_image_id bigint NOT NULL,
    script_index integer NOT NULL,
    script_id bigint NOT NULL
);


ALTER TABLE public.ec2_image_script OWNER TO postgres;

--
-- Name: elastic_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.elastic_image (
    elastic_image_id bigint NOT NULL,
    name character varying(255),
    description character varying(255),
    ami_image_id character varying(255),
    ebs_snapshot_id character varying(255),
    instance_type character varying(255),
    per_second_billing boolean DEFAULT true NOT NULL,
    availability_zone character varying(256),
    shipped_with_bamboo boolean,
    image_disabled boolean,
    legacy_ebs_handling boolean,
    product character varying(32),
    region character varying(255),
    root_device_type character varying(255),
    architecture character varying(255),
    platform character varying(255),
    subnet_id character varying(256),
    image_files_version character varying(16),
    os_name character varying(64),
    virtualisation_type character varying(255),
    root_fs_size_override integer,
    capability_set bigint
);


ALTER TABLE public.elastic_image OWNER TO postgres;

--
-- Name: elastic_schedule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.elastic_schedule (
    schedule_id bigint NOT NULL,
    cron_exp character varying(255),
    number_active integer,
    enabled boolean,
    elastic_image bigint,
    comparison bigint
);


ALTER TABLE public.elastic_schedule OWNER TO postgres;

--
-- Name: hibernate_unique_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hibernate_unique_key (
    next_hi bigint
);


ALTER TABLE public.hibernate_unique_key OWNER TO postgres;

--
-- Name: id_generator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.id_generator (
    name character varying(255) NOT NULL,
    next_id bigint
);


ALTER TABLE public.id_generator OWNER TO postgres;

--
-- Name: imserver; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imserver (
    imserver_id bigint NOT NULL,
    title character varying(255) NOT NULL,
    host character varying(255) NOT NULL,
    port integer,
    username character varying(255),
    resource_name character varying(255),
    password character varying(255),
    ssl_required boolean NOT NULL,
    tls_required boolean
);


ALTER TABLE public.imserver OWNER TO postgres;

--
-- Name: label; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.label (
    label_id bigint NOT NULL,
    name character varying(255),
    namespace character varying(255),
    created_date timestamp without time zone,
    updated_date timestamp without time zone
);


ALTER TABLE public.label OWNER TO postgres;

--
-- Name: merge_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.merge_result (
    mergeresult_id bigint NOT NULL,
    failure_reason character varying(4000),
    integration_branch_vcs_key character varying(255) NOT NULL,
    integration_vcs_location_id bigint NOT NULL,
    integration_branch_name character varying(255),
    merge_result_vcs_key character varying(255),
    branch_target_vcs_key character varying(255),
    branch_name character varying(255),
    merge_state character varying(255),
    push_state character varying(255),
    integration_strategy character varying(255)
);


ALTER TABLE public.merge_result OWNER TO postgres;

--
-- Name: notification_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification_sets (
    notification_set_id bigint NOT NULL,
    set_type character varying(255)
);


ALTER TABLE public.notification_sets OWNER TO postgres;

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    notification_rule_id bigint NOT NULL,
    recipient_type character varying(255),
    recipient character varying(255),
    notification_set bigint,
    condition_key character varying(255),
    condition_data character varying(255)
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- Name: orphaned_tests_cleanup_job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orphaned_tests_cleanup_job (
    build_id bigint NOT NULL,
    min_build_number bigint
);


ALTER TABLE public.orphaned_tests_cleanup_job OWNER TO postgres;

--
-- Name: os_propertyentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os_propertyentry (
    entity_name character varying(125) NOT NULL,
    entity_id bigint NOT NULL,
    entity_key character varying(200) NOT NULL,
    key_type integer,
    boolean_val boolean,
    double_val double precision,
    string_val character varying(255),
    text_val text,
    long_val bigint,
    int_val integer,
    date_val timestamp without time zone
);


ALTER TABLE public.os_propertyentry OWNER TO postgres;

--
-- Name: password_reset_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_token (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    token_created timestamp without time zone NOT NULL
);


ALTER TABLE public.password_reset_token OWNER TO postgres;

--
-- Name: plan_branch_pull_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plan_branch_pull_request (
    plan_branch_pull_request_id bigint NOT NULL,
    chain_branch_id bigint NOT NULL,
    vcs_pull_request_id bigint NOT NULL
);


ALTER TABLE public.plan_branch_pull_request OWNER TO postgres;

--
-- Name: plan_dependencies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plan_dependencies (
    dependency_id bigint NOT NULL,
    dependency_type character varying(255),
    child_plan_id bigint,
    parent_plan_id bigint
);


ALTER TABLE public.plan_dependencies OWNER TO postgres;

--
-- Name: plan_vcs_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plan_vcs_history (
    plan_vcs_history_id bigint NOT NULL,
    plan_key character varying(255) NOT NULL,
    build_number integer NOT NULL,
    revision_key character varying(255),
    vcs_location_id bigint NOT NULL,
    xml_custom_data text
);


ALTER TABLE public.plan_vcs_history OWNER TO postgres;

--
-- Name: plan_vcs_location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plan_vcs_location (
    plan_vcs_location_id bigint NOT NULL,
    plan_id bigint,
    vcs_location_id bigint,
    list_position integer NOT NULL,
    build_trigger boolean NOT NULL
);


ALTER TABLE public.plan_vcs_location OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project (
    project_id bigint NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    project_key character varying(255) NOT NULL,
    title character varying(255),
    description character varying(255),
    marked_for_deletion boolean,
    oid bigint
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Name: queue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.queue (
    queue_id bigint NOT NULL,
    agent_type character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    agent_description text,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    enabled boolean,
    capability_set bigint,
    last_start_time timestamp without time zone,
    last_stop_time timestamp without time zone,
    uuid character varying(255),
    elastic_instance_id character varying(255),
    elastic_image bigint
);


ALTER TABLE public.queue OWNER TO postgres;

--
-- Name: quick_filter_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quick_filter_rules (
    quick_filter_rule_id bigint NOT NULL,
    plugin_key character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    configuration text,
    quick_filter_id bigint NOT NULL
);


ALTER TABLE public.quick_filter_rules OWNER TO postgres;

--
-- Name: quick_filters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quick_filters (
    quick_filter_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    list_position integer NOT NULL
);


ALTER TABLE public.quick_filters OWNER TO postgres;

--
-- Name: relevant_changesets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relevant_changesets (
    buildresultsummary_id bigint,
    repository_changeset_id bigint NOT NULL
);


ALTER TABLE public.relevant_changesets OWNER TO postgres;

--
-- Name: rememberme_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rememberme_token (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    created bigint NOT NULL,
    token character varying(255) NOT NULL
);


ALTER TABLE public.rememberme_token OWNER TO postgres;

--
-- Name: repository_changeset; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.repository_changeset (
    repository_changeset_id bigint NOT NULL,
    buildresultsummary_id bigint NOT NULL,
    vcs_location_id bigint NOT NULL,
    changeset_id character varying(128),
    skipped_commits_count bigint,
    list_position integer NOT NULL,
    build_trigger boolean NOT NULL
);


ALTER TABLE public.repository_changeset OWNER TO postgres;

--
-- Name: requirement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.requirement (
    requirement_id bigint NOT NULL,
    key_identifier character varying(255),
    regex_match boolean,
    readonly_req boolean,
    match_value character varying(4000),
    plugin_module_key character varying(4000),
    unique_identifier bigint,
    requirement_set bigint
);


ALTER TABLE public.requirement OWNER TO postgres;

--
-- Name: requirement_set; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.requirement_set (
    requirement_set_id bigint NOT NULL
);


ALTER TABLE public.requirement_set OWNER TO postgres;

--
-- Name: rss_permission_deployment_proj; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rss_permission_deployment_proj (
    permission_id bigint NOT NULL,
    deployment_project_id bigint NOT NULL,
    repository_id bigint NOT NULL
);


ALTER TABLE public.rss_permission_deployment_proj OWNER TO postgres;

--
-- Name: rss_permission_project; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rss_permission_project (
    permission_id bigint NOT NULL,
    project_id bigint NOT NULL,
    repository_id bigint NOT NULL
);


ALTER TABLE public.rss_permission_project OWNER TO postgres;

--
-- Name: rss_permission_repository; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rss_permission_repository (
    permission_id bigint NOT NULL,
    repository_id bigint NOT NULL,
    target_repository_id bigint NOT NULL
);


ALTER TABLE public.rss_permission_repository OWNER TO postgres;

--
-- Name: script; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.script (
    script_id bigint NOT NULL,
    body text
);


ALTER TABLE public.script OWNER TO postgres;

--
-- Name: stage_variable_context; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stage_variable_context (
    variable_context_id bigint NOT NULL,
    variable_key character varying(255) NOT NULL,
    variable_value character varying(4000),
    variable_type character varying(255),
    stageresult_id bigint NOT NULL
);


ALTER TABLE public.stage_variable_context OWNER TO postgres;

--
-- Name: test_case; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_case (
    test_case_id bigint NOT NULL,
    test_class_id bigint,
    test_case_name character varying(4000),
    successful_runs integer,
    failed_runs integer,
    avg_duration bigint,
    first_build_num integer,
    last_build_num integer,
    quarantining_username character varying(1000),
    quarantine_date timestamp without time zone,
    linked_jira_issue character varying(256)
);


ALTER TABLE public.test_case OWNER TO postgres;

--
-- Name: test_case_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_case_result (
    test_case_result_id bigint NOT NULL,
    delta_state character varying(255),
    duration bigint,
    failing_since integer,
    quarantined boolean,
    test_state character varying(255),
    test_case_id bigint,
    test_class_result_id bigint
);


ALTER TABLE public.test_case_result OWNER TO postgres;

--
-- Name: test_class; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_class (
    test_class_id bigint NOT NULL,
    test_class_name character varying(4000),
    plan_id bigint,
    master_job_id bigint DEFAULT '-1'::integer NOT NULL
);


ALTER TABLE public.test_class OWNER TO postgres;

--
-- Name: test_class_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_class_result (
    test_class_result_id bigint NOT NULL,
    duration bigint,
    failed_count integer,
    success_count integer,
    buildresultsummary_id bigint,
    test_class_id bigint
);


ALTER TABLE public.test_class_result OWNER TO postgres;

--
-- Name: test_error; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_error (
    error_id bigint NOT NULL,
    result_id bigint,
    error_content text
);


ALTER TABLE public.test_error OWNER TO postgres;

--
-- Name: trusted_apps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trusted_apps (
    trusted_apps_id bigint NOT NULL,
    app_id character varying(255) NOT NULL,
    public_key_clob text,
    app_name character varying(255),
    timeout bigint NOT NULL
);


ALTER TABLE public.trusted_apps OWNER TO postgres;

--
-- Name: trusted_apps_ips; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trusted_apps_ips (
    ip_pattern_id bigint NOT NULL,
    ip_pattern character varying(255)
);


ALTER TABLE public.trusted_apps_ips OWNER TO postgres;

--
-- Name: trusted_apps_urls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trusted_apps_urls (
    url_pattern_id bigint NOT NULL,
    url_pattern character varying(255)
);


ALTER TABLE public.trusted_apps_urls OWNER TO postgres;

--
-- Name: trusted_key; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trusted_key (
    id bigint NOT NULL,
    host character varying(255) NOT NULL,
    ssh_key character varying(4000) NOT NULL,
    approved boolean NOT NULL
);


ALTER TABLE public.trusted_key OWNER TO postgres;

--
-- Name: user_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_comment (
    comment_id bigint NOT NULL,
    content text,
    user_name character varying(255),
    entity_id bigint,
    created_date timestamp without time zone,
    updated_date timestamp without time zone
);


ALTER TABLE public.user_comment OWNER TO postgres;

--
-- Name: user_commit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_commit (
    commit_id bigint NOT NULL,
    repository_changeset_id bigint,
    author_id bigint,
    commit_date timestamp without time zone,
    commit_revision character varying(128),
    commit_comment_clob text,
    foreign_commit boolean DEFAULT false NOT NULL
);


ALTER TABLE public.user_commit OWNER TO postgres;

--
-- Name: variable_baseline_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variable_baseline_item (
    variable_baseline_item_id bigint NOT NULL,
    variable_key character varying(255) NOT NULL,
    variable_value character varying(4000),
    variable_type character varying(255),
    variable_context_baseline_id bigint NOT NULL
);


ALTER TABLE public.variable_baseline_item OWNER TO postgres;

--
-- Name: variable_context; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variable_context (
    variable_context_id bigint NOT NULL,
    variable_key character varying(255) NOT NULL,
    variable_value character varying(4000),
    variable_type character varying(255),
    buildresultsummary_id bigint NOT NULL
);


ALTER TABLE public.variable_context OWNER TO postgres;

--
-- Name: variable_context_baseline; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variable_context_baseline (
    variable_context_baseline_id bigint NOT NULL,
    hash_string character varying(255) NOT NULL
);


ALTER TABLE public.variable_context_baseline OWNER TO postgres;

--
-- Name: variable_definition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variable_definition (
    variable_definition_id bigint NOT NULL,
    variable_key character varying(255) NOT NULL,
    variable_value text,
    variable_type character varying(255),
    plan_id bigint,
    environment_id bigint,
    deployment_version_id bigint
);


ALTER TABLE public.variable_definition OWNER TO postgres;

--
-- Name: variable_substitution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variable_substitution (
    variable_substitution_id bigint NOT NULL,
    variable_key character varying(255) NOT NULL,
    variable_value character varying(4000),
    variable_type character varying(255),
    buildresultsummary_id bigint NOT NULL
);


ALTER TABLE public.variable_substitution OWNER TO postgres;

--
-- Name: variablestoautoincrement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.variablestoautoincrement (
    version_naming_scheme_id bigint NOT NULL,
    variable_name character varying(255) NOT NULL
);


ALTER TABLE public.variablestoautoincrement OWNER TO postgres;

--
-- Name: vcs_branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vcs_branch (
    vcs_branch_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    detected_deletion_date timestamp without time zone,
    chain_id bigint NOT NULL
);


ALTER TABLE public.vcs_branch OWNER TO postgres;

--
-- Name: vcs_location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vcs_location (
    vcs_location_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    plugin_key character varying(4000) NOT NULL,
    xml_definition_data text,
    marked_for_deletion boolean NOT NULL,
    is_global boolean NOT NULL,
    parent_id bigint,
    oid bigint
);


ALTER TABLE public.vcs_location OWNER TO postgres;

--
-- Name: vcs_pull_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vcs_pull_request (
    vcs_pull_request_id bigint NOT NULL,
    vcs_pull_request_key character varying(50) NOT NULL,
    target_repository_id bigint NOT NULL,
    target character varying(255) NOT NULL,
    source_repository_id bigint,
    source character varying(255) NOT NULL,
    open_status boolean NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone
);


ALTER TABLE public.vcs_pull_request OWNER TO postgres;

--
-- Name: vcs_specs_source; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vcs_specs_source (
    vcs_specs_source_id bigint NOT NULL,
    vcs_source_location character varying(255),
    vcs_specs_state_id bigint NOT NULL
);


ALTER TABLE public.vcs_specs_source OWNER TO postgres;

--
-- Name: vcs_specs_state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vcs_specs_state (
    vcs_specs_state_id bigint NOT NULL,
    branch character varying(255) NOT NULL,
    log_filename character varying(255),
    revision character varying(80) NOT NULL,
    specs_execution_date timestamp without time zone,
    import_state character varying(255),
    vcs_location_id bigint
);


ALTER TABLE public.vcs_specs_state OWNER TO postgres;

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
-- Name: AO_7A45FB_AOTRACKING_ENTRY TRACKING_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_7A45FB_AOTRACKING_ENTRY" ALTER COLUMN "TRACKING_ID" SET DEFAULT nextval('public."AO_7A45FB_AOTRACKING_ENTRY_TRACKING_ID_seq"'::regclass);


--
-- Name: AO_7A45FB_AOTRACKING_RESULT RESULT_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_7A45FB_AOTRACKING_RESULT" ALTER COLUMN "RESULT_ID" SET DEFAULT nextval('public."AO_7A45FB_AOTRACKING_RESULT_RESULT_ID_seq"'::regclass);


--
-- Name: AO_7A45FB_AOTRACKING_USER USER_ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_7A45FB_AOTRACKING_USER" ALTER COLUMN "USER_ID" SET DEFAULT nextval('public."AO_7A45FB_AOTRACKING_USER_USER_ID_seq"'::regclass);


--
-- Name: AO_A0B856_WEBHOOK ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEBHOOK" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A0B856_WEBHOOK_ID_seq"'::regclass);


--
-- Name: AO_A0B856_WEBHOOK_CONFIG ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEBHOOK_CONFIG" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A0B856_WEBHOOK_CONFIG_ID_seq"'::regclass);


--
-- Name: AO_A0B856_WEBHOOK_EVENT ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEBHOOK_EVENT" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A0B856_WEBHOOK_EVENT_ID_seq"'::regclass);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"'::regclass);


--
-- Name: AO_F1B80E_BRANCH_SELECTION ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_F1B80E_BRANCH_SELECTION" ALTER COLUMN "ID" SET DEFAULT nextval('public."AO_F1B80E_BRANCH_SELECTION_ID_seq"'::regclass);


--
-- Data for Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
\.


--
-- Data for Name: AO_4789DD_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_4789DD_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
1	last-run	1584217980796
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
-- Data for Name: AO_7A45FB_AOTRACKING_ENTRY; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_7A45FB_AOTRACKING_ENTRY" ("ACTIVE", "PLAN_ID", "TRACKING_ID") FROM stdin;
\.


--
-- Data for Name: AO_7A45FB_AOTRACKING_RESULT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_7A45FB_AOTRACKING_RESULT" ("BUILD_NUMBER", "LINKED_TRACKING_ENTRY_ID", "RESULT_ID", "RESULT_SUMMARY_ID") FROM stdin;
\.


--
-- Data for Name: AO_7A45FB_AOTRACKING_USER; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_7A45FB_AOTRACKING_USER" ("LINKED_TRACKING_ENTRY_ID", "USERNAME", "USER_ID", "USER_WHO_UPDATED") FROM stdin;
\.


--
-- Data for Name: AO_A0B856_WEBHOOK; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_A0B856_WEBHOOK" ("ACTIVE", "CREATED", "ID", "NAME", "SCOPE_ID", "SCOPE_TYPE", "UPDATED", "URL") FROM stdin;
\.


--
-- Data for Name: AO_A0B856_WEBHOOK_CONFIG; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_A0B856_WEBHOOK_CONFIG" ("ID", "KEY", "VALUE", "WEBHOOKID") FROM stdin;
\.


--
-- Data for Name: AO_A0B856_WEBHOOK_EVENT; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_A0B856_WEBHOOK_EVENT" ("EVENT_ID", "ID", "WEBHOOKID") FROM stdin;
\.


--
-- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
\.


--
-- Data for Name: AO_C7F71E_OAUTH_SVC_PROV_TKNS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_C7F71E_OAUTH_SVC_PROV_TKNS" ("CONSUMER_KEY", "EXPIRY_TIME", "TOKEN", "USER_NAME", "VALUE") FROM stdin;
\.


--
-- Data for Name: AO_F1B80E_BRANCH_SELECTION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AO_F1B80E_BRANCH_SELECTION" ("ID", "LAST_SELECTED_BRANCHES", "SELECTED_BRANCH_NAME", "SELECTED_REPO_ID", "USER") FROM stdin;
\.


--
-- Data for Name: access_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.access_token (access_token_id, created_date, hashed_token, name, permissions_mask, token_id, user_name) FROM stdin;
\.


--
-- Data for Name: acl_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acl_entry (id, acl_object_identity, type, sid, ace_order, mask, granting, audit_success, audit_failure) FROM stdin;
294913	262145	GROUP_PRINCIPAL	bamboo-admin	0	16	t	f	f
294914	262145	GROUP_PRINCIPAL	bamboo-admin	0	4	t	f	f
294915	262145	GROUP_PRINCIPAL	bamboo-admin	0	1024	t	f	f
294916	262145	GROUP_PRINCIPAL	bamboo-admin	0	1	t	f	f
294917	262145	GRANTED_AUTHORITY	ROLE_USER	0	1	t	f	f
294918	262145	GRANTED_AUTHORITY	ROLE_ANONYMOUS	0	1	t	f	f
\.


--
-- Data for Name: acl_object_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acl_object_identity (id, object_id_class, object_id_identity, parent_object, entries_inheriting, owner_type, owner_sid) FROM stdin;
262145	com.atlassian.bamboo.security.GlobalApplicationSecureObject	999999	\N	t	GROUP_PRINCIPAL	bamboo-admin
\.


--
-- Data for Name: agent_assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agent_assignment (assignment_id, executor_id, executor_type, executable_id, executable_type) FROM stdin;
\.


--
-- Data for Name: agent_authentication; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agent_authentication (authentication_id, ip_address, uuid, is_approved) FROM stdin;
\.


--
-- Data for Name: artifact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artifact (artifact_id, archiver_type, globally_stored, chain_artifact, label, link_type, artifact_size, plan_key, build_number) FROM stdin;
\.


--
-- Data for Name: artifact_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artifact_definition (artifact_definition_id, oid, copy_pattern, src_directory, label, required_artifact, chain_artifact, producer_job_id) FROM stdin;
\.


--
-- Data for Name: artifact_subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artifact_subscription (artifact_subscription_id, dst_directory, artifact_definition_id, consumer_job_id) FROM stdin;
\.


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_log (audit_id, child_id, entity_id, entity_type, field_header, field_type, msg, msg_type, new_value, old_value, msg_time_stamp, user_name) FROM stdin;
\.


--
-- Data for Name: auth_attempt_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_attempt_info (id, auth_count, last_auth_timestamp, user_name) FROM stdin;
\.


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.author (author_id, linked_user_name, author_email, author_name) FROM stdin;
\.


--
-- Data for Name: bandana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bandana (bandana_id, build_id, chain_id, bandana_key, serialized_data) FROM stdin;
327681	0	0	remoteAgentsSecurityToken	<string>90b2b520855da08edc3bc79ef721222b7b7a3b76</string>
327682	0	0	com.atlassian.restricted.instance.cipher.key_0	<string>CSMp7ND+y+jz5t+iE+6b9WTsRzjCazRAXOJ59fcED3c=</string>
327683	0	0	com.atlassian.restricted.instance.cipher.iv_0	<string>nfSOpUZaVhiXMId/860rtQ==</string>
327684	0	0	bamboo.plugin.state	<com.atlassian.plugin.manager.DefaultPluginPersistentState>\n  <map class="java.util.Collections$UnmodifiableMap">\n    <m/>\n  </map>\n</com.atlassian.plugin.manager.DefaultPluginPersistentState>
327685	0	0	AO_A0B856_#	<string>1</string>
327686	0	0	bamboo.db.version	70014
327687	0	0	trustedapps.application-id	<string>0A290D020170DABECE6B270013D6CE21</string>
327688	0	0	trustedapps.public-key	<string>MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvqFXFUp/o+etr8nLvt1BhLS9IZer+TNpH079nqwD42sHGRn49B2HD/UgxHi7Ve3ThmkBMBCDEdCts3uzh6Dr87zEwgmB41heWqILAUMmSpLTUjkgpvW5G/Q+UMSjbsG1SJzsYpEsLWx/3pmyZlBMyKCaX2a51JuegYVyTuwe1kgolF5/ZUHXwgrC/wrpdjMc/f5vfaiLrT9UlMtmBBk5+r74+BaKtasf7CTVwBrpK+S/4ZDKqO5cNAEf+qNaI8HEvMt4mxbUg7zZeH+Jm5WY0nXkcNZMAvPIE7TZr9ZnUXQQ6Z/V38SIeHJq3neyfrBhE5I/cdv3Rf3svtYGNK4i8wIDAQAB</string>
327689	0	0	trustedapps.private-key	<string>MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC+oVcVSn+j562vycu+3UGEtL0hl6v5M2kfTv2erAPjawcZGfj0HYcP9SDEeLtV7dOGaQEwEIMR0K2ze7OHoOvzvMTCCYHjWF5aogsBQyZKktNSOSCm9bkb9D5QxKNuwbVInOxikSwtbH/embJmUEzIoJpfZrnUm56BhXJO7B7WSCiUXn9lQdfCCsL/Cul2Mxz9/m99qIutP1SUy2YEGTn6vvj4Foq1qx/sJNXAGukr5L/hkMqo7lw0AR/6o1ojwcS8y3ibFtSDvNl4f4mblZjSdeRw1kwC88gTtNmv1mdRdBDpn9XfxIh4cmred7J+sGETkj9x2/dF/ey+1gY0riLzAgMBAAECggEAD44s0MdZr29DsTkY3IQQSTSFmZmKmY6RANJte0AmhRObt0TZffOjrMqs5NT3othoTurmNoM/OGBV4qdKcnVpxTB3KC1y1H4s6aplYxhh2VEuPnxif+oQzW/A+GhDVp6NHQkpEa+U8kcmdZ/T4R0JiimIz0lO13ZNzEKuapnb6x8N0SVvg+ecP/wLqU3t0M3BefqCZZ32yZMIDdTnH2ioUBK4klq60mrx+OpCve8vYaM8I0K8Yja9sjhYN6zcyzPkJ1ZBnuvIaSNp1vwzbUxBHuh2NkFxhmw7Jf2qNOaWd/ElIipinjbGV+rlteuvqEhVzS2uvCZ7FLSEtJMT4Y1UOQKBgQD/0wbxJWt/jXK4Fm7xoAQ/rYIQXL7AxAmuRvEpnXLJ3Lucwtp7sh9P/EHO3mGVovuJ7qI4GfkiuxGjOADb1Crwb35wvRbxBNCtbZ/UUJD93wnXo6UKuPTShyhQgW5vsjYbzCUC5RM5qv6/uVf2GK3rgXWKuVBXJXh+hsaTtfc+TwKBgQC+wtopYVci9unXRz1LWqkI7WBKyYrikkRTQ/lh6BxzgoAi6dCq+jGiiy+C1kH7AK5q9K4x0LTVeTiEKPowLwYZzGox/AOT8u4PJesmCDdRah8qMCz3f7Lio6aFGEVvamlwae6rsnKDiCmhltqhsrA5UOFXbhF6gHP6AUTbrIGsHQKBgQDJD95A4Rwf39ft/xOrLAyqz3+NxJbXgjvpkTAxeOGi7a02g56b4V7iymweXoFrzfDMc5VjamZ4eXZfRcDHBXXKCpbhnHvPae1ooOQhRkDuhsGBjchFKSCh5kA1JcTaXMJSDpx4LfpyNIaLwOv1K2hl1BXBtewC0hxltR+VMErl2QKBgCWlwvSDt3S5EjFgZ+JlRBL09hoMaJKKl11vftopuuO5D5zUVFBKDF2t5nSF4IOvAL0vCOnf7LBsuhCrHaVAwo144ER5HiOmwADRVPUujexNa1UiKN23oBBGh+igf6Obdq+u2GGeWCdJSh4P7ZoX79t/8NkWafCpRTpD4dkQ1I6pAoGBAOYC181+lWza1VjUPZlF7kHm2jpyluF5Wre2gCuv/HXQ37f7ffGAqRSVl+JRYRWm+/Q5XpkTfh019ObBq630nZwZlA8u5rEbUbRWobUEOZfwQ4Pbkbhvylu1etle+kW8qkvIhAbP/tCQzJ2GqU8g8hV+XCNnVHccUhvAnHRqHehU</string>
327690	0	0	com.atlassian.bamboo.plugins.bamboo-plugin-oauth-service-provider-spi:build	<string>2</string>
327691	0	0	com.atlassian.bamboo.plugins.bamboo-scp-plugin:build	<string>3</string>
327692	0	0	com.atlassian.crowd.embedded.admin:build	<string>3</string>
327693	0	0	com.atlassian.bamboo.plugins.tomcat.bamboo-tomcat-plugin:build	<string>11</string>
327694	0	0	com.atlassian.bamboo.plugins.bamboo-docker-plugin:build	<string>2</string>
327695	0	0	com.atlassian.analytics.client.configuration..policy_acknowledged	<string>true</string>
327696	0	0	com.atlassian.analytics.client.configuration..analytics_enabled	<string>true</string>
327697	0	0	artifactHandlersConfiguration	<map>\n  <entry>\n    <string>custom.artifactHandlers.comAtlassianBambooPluginArtifactHandlerRemote:S3ArtifactHandler:enabledForShared</string>\n    <string>false</string>\n  </entry>\n  <entry>\n    <string>custom.artifactHandlers.comAtlassianBambooPluginArtifactHandlerRemote:BambooRemoteArtifactHandler:enabledForShared</string>\n    <string>true</string>\n  </entry>\n  <entry>\n    <string>custom.artifactHandlers.comAtlassianBambooPluginArtifactHandlerLocal:ServerLocalArtifactHandler:enabledForNonShared</string>\n    <string>true</string>\n  </entry>\n  <entry>\n    <string>custom.artifactHandlers.comAtlassianBambooPluginArtifactHandlerRemote:AgentLocalArtifactHandler:enabledForNonShared</string>\n    <string>false</string>\n  </entry>\n  <entry>\n    <string>custom.artifactHandlers.comAtlassianBambooPluginArtifactHandlerRemote:AgentLocalArtifactHandler:enabledForShared</string>\n    <string>false</string>\n  </entry>\n  <entry>\n    <string>custom.artifactHandlers.comAtlassianBambooPluginArtifactHandlerRemote:S3ArtifactHandler:enabledForNonShared</string>\n    <string>false</string>\n  </entry>\n  <entry>\n    <string>custom.artifactHandlers.comAtlassianBambooPluginArtifactHandlerLocal:ServerLocalArtifactHandler:enabledForShared</string>\n    <string>true</string>\n  </entry>\n  <entry>\n    <string>custom.artifactHandlers.comAtlassianBambooPluginArtifactHandlerRemote:BambooRemoteArtifactHandler:enabledForNonShared</string>\n    <string>true</string>\n  </entry>\n</map>
327698	0	0	com.atlassian.analytics.client.configuration.uuid	<string>f4df4e71-dd3f-4d17-8d96-f60ee67811fd</string>
327699	0	0	com.atlassian.analytics.client.configuration.serverid	<string>B1AP-DDF6-9PEG-TSWF</string>
327700	0	0	com.atlassian.analytics.client.configuration..logged_base_analytics_data	<string>true</string>
\.


--
-- Data for Name: branch_commit_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branch_commit_info (branch_commit_info_id, branch_id, creating_author_id, creating_commit_date, creating_change_set_id, latest_commit_author_id, latest_commit_date, latest_commit_change_set_id) FROM stdin;
\.


--
-- Data for Name: brs_artifact_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brs_artifact_link (artifact_link_id, buildresultsummary_id, producerjobresult_id, artifact_id) FROM stdin;
\.


--
-- Data for Name: brs_consumed_subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brs_consumed_subscription (consumed_subscription_id, dst_directory, consumer_resultsummary_id, artifact_link_id) FROM stdin;
\.


--
-- Data for Name: brs_linkedjiraissues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brs_linkedjiraissues (linkedjiraissue_id, buildresultsummary_id, jira_issue_key, jira_issue_link_type) FROM stdin;
\.


--
-- Data for Name: build; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.build (build_id, build_type, created_date, updated_date, full_key, buildkey, title, description, suspended_from_building, marked_for_deletion, oid, project_id, master_id, notification_set, vcs_specs_source_id, storage_tag, linked_jira_issue, rem_jira_link_required, divergent_branch, requirement_set, stage_id) FROM stdin;
\.


--
-- Data for Name: build_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.build_definition (build_definition_id, build_definition_type, created_date, updated_date, xml_definition_data, build_id) FROM stdin;
\.


--
-- Data for Name: build_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.build_numbers (build_numbers_id, build_id, next_build_number) FROM stdin;
\.


--
-- Data for Name: buildresult_warning_summary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buildresult_warning_summary (build_result_warning_id, high_priority_count, low_priority_count, normal_priority_count, repository_id, buildresultsummary_id) FROM stdin;
\.


--
-- Data for Name: buildresultsummary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buildresultsummary (buildresultsummary_id, build_type, created_date, build_key, plan_name, build_number, build_state, life_cycle_state, build_date, build_cancelled_date, build_completed_date, duration, processing_duration, time_to_fix, trigger_reason, delta_state, build_agent_id, stageresult_id, restart_count, queue_time, marked_for_deletion, once_off, custom_build, rebuild, log_size, variable_context_baseline_id, format_version, failure_test_count, success_test_count, total_test_count, broken_test_count, existing_test_count, fixed_test_count, total_test_duration, quarantined_test_count, skipped_test_count, vcs_update_time, chain_result, continuable, fixed_in_result, mergeresult_id) FROM stdin;
\.


--
-- Data for Name: buildresultsummary_customdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buildresultsummary_customdata (buildresultsummary_id, custom_info_key, custom_info_value) FROM stdin;
\.


--
-- Data for Name: buildresultsummary_label; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buildresultsummary_label (id, label_id, buildresultsummary_id, build_id, project_id, user_name, created_date, updated_date) FROM stdin;
\.


--
-- Data for Name: capability; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.capability (capability_id, key_identifier, value, capability_set) FROM stdin;
425985	system.jdk.JDK 1.8	C:\\Program Files\\Java\\jre1.8.0_241	393218
425986	system.git.executable	C:\\Program Files\\Git\\cmd\\git.exe	393218
425987	system.jdk.JDK 1.8.0_241 (JRE)	C:\\Program Files\\Java\\jre1.8.0_241	393218
425988	system.docker.executable	C:\\Program Files\\Docker\\Docker\\resources\\bin\\docker.exe	393218
425989	system.builder.node.Node.js	C:\\Program Files\\nodejs\\node.exe	393218
425990	system.jdk.JDK	C:\\Program Files\\Java\\jre1.8.0_241	393218
425991	system.builder.devenv.Visual Studio 2008	C:\\Program Files (x86)\\Microsoft Visual Studio 9.0\\Common7\\IDE	393218
425992	system.builder.ant.Ant 1.9	/opt/ant-1.9	393220
425993	system.builder.ant.Ant	/opt/ant-1.9	393220
425994	system.docker.executable	/usr/bin/docker	393220
425995	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393220
425996	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393220
425997	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393220
425998	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393220
425999	system.git.executable	/usr/bin/git	393220
426000	system.jdk.JDK 8	/opt/jdk-8	393220
426001	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393220
426002	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393220
426003	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393220
426004	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393220
426005	system.builder.node.Node.js 10	/opt/node-10/bin/node	393220
426006	system.builder.node.Node.js 8	/opt/node-8/bin/node	393220
426007	system.jdk.JDK 11	/opt/jdk-11	393220
426008	system.builder.node.Node.js 12	/opt/node-12/bin/node	393220
426009	system.jdk.JDK 1.8	/opt/jdk-8	393220
426010	system.builder.ant.Ant 1.10	/opt/ant-1.10	393220
426011	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393220
426012	system.hg.executable	/usr/bin/hg	393220
426013	system.builder.mvn2.Maven 2	/opt/maven-2.2	393220
426014	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393220
426015	system.jdk.JDK 1.7	/opt/jdk-7	393220
426016	system.builder.mvn3.Maven 3	/opt/maven-3.6	393220
426017	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393221
426018	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393221
426019	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393221
426020	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393221
426021	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393221
426022	system.jdk.JDK 8	C:\\opt\\jdk-8	393221
426023	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393221
426024	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393221
426025	system.builder.ant.Ant	C:\\opt\\ant-1.10	393221
426026	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393221
426027	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393221
426028	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393221
426029	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393221
426030	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393221
426031	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393221
426032	system.jdk.JDK 11	C:\\opt\\jdk-11	393221
426033	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393221
426034	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393221
426035	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393221
426036	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393221
426037	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393221
426038	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393221
426039	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393221
426040	system.git.executable	C:\\opt\\git\\bin\\git.exe	393221
426041	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393221
426042	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393221
426043	system.builder.nant.Nant	C:\\opt\\nant-0.92	393221
426044	system.builder.ant.Ant 1.9	/opt/ant-1.9	393222
426045	system.builder.ant.Ant	/opt/ant-1.9	393222
426046	system.docker.executable	/usr/bin/docker	393222
426047	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393222
426048	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393222
426049	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393222
426050	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393222
426051	system.git.executable	/usr/bin/git	393222
426052	system.jdk.JDK 8	/opt/jdk-8	393222
426053	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393222
426054	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393222
426055	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393222
426056	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393222
426057	system.builder.node.Node.js 10	/opt/node-10/bin/node	393222
426058	system.builder.node.Node.js 8	/opt/node-8/bin/node	393222
426059	system.jdk.JDK 11	/opt/jdk-11	393222
426060	system.builder.node.Node.js 12	/opt/node-12/bin/node	393222
426061	system.jdk.JDK 1.8	/opt/jdk-8	393222
426062	system.builder.ant.Ant 1.10	/opt/ant-1.10	393222
426063	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393222
426064	system.hg.executable	/usr/bin/hg	393222
426065	system.builder.mvn2.Maven 2	/opt/maven-2.2	393222
426066	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393222
426067	system.jdk.JDK 1.7	/opt/jdk-7	393222
426068	system.builder.mvn3.Maven 3	/opt/maven-3.6	393222
426069	system.builder.ant.Ant 1.9	/opt/ant-1.9	393223
426070	system.builder.ant.Ant	/opt/ant-1.9	393223
426071	system.docker.executable	/usr/bin/docker	393223
426072	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393223
426073	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393223
426074	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393223
426075	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393223
426076	system.git.executable	/usr/bin/git	393223
426077	system.jdk.JDK 8	/opt/jdk-8	393223
426078	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393223
426079	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393223
426080	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393223
426081	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393223
426082	system.builder.node.Node.js 10	/opt/node-10/bin/node	393223
426083	system.builder.node.Node.js 8	/opt/node-8/bin/node	393223
426084	system.jdk.JDK 11	/opt/jdk-11	393223
426085	system.builder.node.Node.js 12	/opt/node-12/bin/node	393223
426086	system.jdk.JDK 1.8	/opt/jdk-8	393223
426087	system.builder.ant.Ant 1.10	/opt/ant-1.10	393223
426088	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393223
426089	system.hg.executable	/usr/bin/hg	393223
426090	system.builder.mvn2.Maven 2	/opt/maven-2.2	393223
426091	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393223
426092	system.jdk.JDK 1.7	/opt/jdk-7	393223
426093	system.builder.mvn3.Maven 3	/opt/maven-3.6	393223
426094	system.builder.ant.Ant 1.9	/opt/ant-1.9	393224
426095	system.builder.ant.Ant	/opt/ant-1.9	393224
426096	system.docker.executable	/usr/bin/docker	393224
426097	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393224
426098	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393224
426099	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393224
426100	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393224
426101	system.git.executable	/usr/bin/git	393224
426102	system.jdk.JDK 8	/opt/jdk-8	393224
426103	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393224
426104	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393224
426105	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393224
426106	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393224
426107	system.builder.node.Node.js 10	/opt/node-10/bin/node	393224
426108	system.builder.node.Node.js 8	/opt/node-8/bin/node	393224
426109	system.jdk.JDK 11	/opt/jdk-11	393224
426110	system.builder.node.Node.js 12	/opt/node-12/bin/node	393224
426111	system.jdk.JDK 1.8	/opt/jdk-8	393224
426112	system.builder.ant.Ant 1.10	/opt/ant-1.10	393224
426113	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393224
426114	system.hg.executable	/usr/bin/hg	393224
426115	system.builder.mvn2.Maven 2	/opt/maven-2.2	393224
426116	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393224
426117	system.jdk.JDK 1.7	/opt/jdk-7	393224
426118	system.builder.mvn3.Maven 3	/opt/maven-3.6	393224
426119	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393225
426120	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393225
426121	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393225
426122	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393225
426123	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393225
426124	system.jdk.JDK 8	C:\\opt\\jdk-8	393225
426125	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393225
426126	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393225
426127	system.builder.ant.Ant	C:\\opt\\ant-1.10	393225
426128	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393225
426129	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393225
426130	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393225
426131	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393225
426132	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393225
426133	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393225
426134	system.jdk.JDK 11	C:\\opt\\jdk-11	393225
426135	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393225
426136	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393225
426137	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393225
426138	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393225
426139	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393225
426140	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393225
426141	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393225
426142	system.git.executable	C:\\opt\\git\\bin\\git.exe	393225
426143	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393225
426144	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393225
426145	system.builder.nant.Nant	C:\\opt\\nant-0.92	393225
426146	system.builder.ant.Ant 1.9	/opt/ant-1.9	393226
426147	system.builder.ant.Ant	/opt/ant-1.9	393226
426148	system.docker.executable	/usr/bin/docker	393226
426149	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393226
426150	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393226
426151	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393226
426152	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393226
426153	system.git.executable	/usr/bin/git	393226
426154	system.jdk.JDK 8	/opt/jdk-8	393226
426155	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393226
426156	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393226
426157	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393226
426158	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393226
426159	system.builder.node.Node.js 10	/opt/node-10/bin/node	393226
426160	system.builder.node.Node.js 8	/opt/node-8/bin/node	393226
426161	system.jdk.JDK 11	/opt/jdk-11	393226
426162	system.builder.node.Node.js 12	/opt/node-12/bin/node	393226
426163	system.jdk.JDK 1.8	/opt/jdk-8	393226
426164	system.builder.ant.Ant 1.10	/opt/ant-1.10	393226
426165	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393226
426166	system.hg.executable	/usr/bin/hg	393226
426167	system.builder.mvn2.Maven 2	/opt/maven-2.2	393226
426168	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393226
426169	system.jdk.JDK 1.7	/opt/jdk-7	393226
426170	system.builder.mvn3.Maven 3	/opt/maven-3.6	393226
426171	system.builder.ant.Ant 1.9	/opt/ant-1.9	393227
426172	system.builder.ant.Ant	/opt/ant-1.9	393227
426173	system.docker.executable	/usr/bin/docker	393227
426174	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393227
426175	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393227
426176	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393227
426177	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393227
426178	system.git.executable	/usr/bin/git	393227
426179	system.jdk.JDK 8	/opt/jdk-8	393227
426180	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393227
426181	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393227
426182	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393227
426183	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393227
426184	system.builder.node.Node.js 10	/opt/node-10/bin/node	393227
426185	system.builder.node.Node.js 8	/opt/node-8/bin/node	393227
426186	system.jdk.JDK 11	/opt/jdk-11	393227
426187	system.builder.node.Node.js 12	/opt/node-12/bin/node	393227
426188	system.jdk.JDK 1.8	/opt/jdk-8	393227
426189	system.builder.ant.Ant 1.10	/opt/ant-1.10	393227
426190	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393227
426191	system.hg.executable	/usr/bin/hg	393227
426192	system.builder.mvn2.Maven 2	/opt/maven-2.2	393227
426193	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393227
426194	system.jdk.JDK 1.7	/opt/jdk-7	393227
426195	system.builder.mvn3.Maven 3	/opt/maven-3.6	393227
426196	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393228
426197	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393228
426198	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393228
426199	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393228
426200	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393228
426201	system.jdk.JDK 8	C:\\opt\\jdk-8	393228
426202	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393228
426203	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393228
426204	system.builder.ant.Ant	C:\\opt\\ant-1.10	393228
426205	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393228
426206	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393228
426207	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393228
426208	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393228
426209	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393228
426210	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393228
426211	system.jdk.JDK 11	C:\\opt\\jdk-11	393228
426212	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393228
426213	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393228
426214	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393228
426215	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393228
426216	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393228
426217	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393228
426218	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393228
426219	system.git.executable	C:\\opt\\git\\bin\\git.exe	393228
426220	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393228
426221	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393228
426222	system.builder.nant.Nant	C:\\opt\\nant-0.92	393228
426223	system.builder.ant.Ant 1.9	/opt/ant-1.9	393229
426224	system.builder.ant.Ant	/opt/ant-1.9	393229
426225	system.docker.executable	/usr/bin/docker	393229
426226	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393229
426227	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393229
426228	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393229
426229	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393229
426230	system.git.executable	/usr/bin/git	393229
426231	system.jdk.JDK 8	/opt/jdk-8	393229
426232	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393229
426233	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393229
426234	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393229
426235	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393229
426236	system.builder.node.Node.js 10	/opt/node-10/bin/node	393229
426237	system.builder.node.Node.js 8	/opt/node-8/bin/node	393229
426238	system.jdk.JDK 11	/opt/jdk-11	393229
426239	system.builder.node.Node.js 12	/opt/node-12/bin/node	393229
426240	system.jdk.JDK 1.8	/opt/jdk-8	393229
426241	system.builder.ant.Ant 1.10	/opt/ant-1.10	393229
426242	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393229
426243	system.hg.executable	/usr/bin/hg	393229
426244	system.builder.mvn2.Maven 2	/opt/maven-2.2	393229
426245	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393229
426246	system.jdk.JDK 1.7	/opt/jdk-7	393229
426247	system.builder.mvn3.Maven 3	/opt/maven-3.6	393229
426248	system.builder.ant.Ant 1.9	/opt/ant-1.9	393230
426249	system.builder.ant.Ant	/opt/ant-1.9	393230
426250	system.docker.executable	/usr/bin/docker	393230
426251	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393230
426252	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393230
426253	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393230
426254	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393230
426255	system.git.executable	/usr/bin/git	393230
426256	system.jdk.JDK 8	/opt/jdk-8	393230
426257	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393230
426258	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393230
426259	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393230
426260	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393230
426261	system.builder.node.Node.js 10	/opt/node-10/bin/node	393230
426262	system.builder.node.Node.js 8	/opt/node-8/bin/node	393230
426263	system.jdk.JDK 11	/opt/jdk-11	393230
426264	system.builder.node.Node.js 12	/opt/node-12/bin/node	393230
426265	system.jdk.JDK 1.8	/opt/jdk-8	393230
426266	system.builder.ant.Ant 1.10	/opt/ant-1.10	393230
426267	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393230
426268	system.hg.executable	/usr/bin/hg	393230
426269	system.builder.mvn2.Maven 2	/opt/maven-2.2	393230
426270	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393230
426271	system.jdk.JDK 1.7	/opt/jdk-7	393230
426272	system.builder.mvn3.Maven 3	/opt/maven-3.6	393230
426273	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393231
426274	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393231
426275	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393231
426276	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393231
426277	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393231
426278	system.jdk.JDK 8	C:\\opt\\jdk-8	393231
426279	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393231
426280	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393231
426281	system.builder.ant.Ant	C:\\opt\\ant-1.10	393231
426282	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393231
426283	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393231
426284	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393231
426285	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393231
426286	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393231
426287	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393231
426288	system.jdk.JDK 11	C:\\opt\\jdk-11	393231
426289	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393231
426290	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393231
426291	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393231
426292	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393231
426293	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393231
426294	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393231
426295	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393231
426296	system.git.executable	C:\\opt\\git\\bin\\git.exe	393231
426297	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393231
426298	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393231
426299	system.builder.nant.Nant	C:\\opt\\nant-0.92	393231
426300	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393232
426301	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393232
426302	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393232
426303	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393232
426304	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393232
426305	system.jdk.JDK 8	C:\\opt\\jdk-8	393232
426306	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393232
426307	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393232
426308	system.builder.ant.Ant	C:\\opt\\ant-1.10	393232
426309	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393232
426310	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393232
426311	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393232
426312	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393232
426313	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393232
426314	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393232
426315	system.jdk.JDK 11	C:\\opt\\jdk-11	393232
426316	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393232
426317	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393232
426318	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393232
426319	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393232
426320	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393232
426321	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393232
426322	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393232
426323	system.git.executable	C:\\opt\\git\\bin\\git.exe	393232
426324	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393232
426325	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393232
426326	system.builder.nant.Nant	C:\\opt\\nant-0.92	393232
426327	system.builder.ant.Ant 1.9	/opt/ant-1.9	393233
426328	system.builder.ant.Ant	/opt/ant-1.9	393233
426329	system.docker.executable	/usr/bin/docker	393233
426330	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393233
426331	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393233
426332	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393233
426333	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393233
426334	system.git.executable	/usr/bin/git	393233
426335	system.jdk.JDK 8	/opt/jdk-8	393233
426336	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393233
426337	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393233
426338	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393233
426339	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393233
426340	system.builder.node.Node.js 10	/opt/node-10/bin/node	393233
426341	system.builder.node.Node.js 8	/opt/node-8/bin/node	393233
426342	system.jdk.JDK 11	/opt/jdk-11	393233
426343	system.builder.node.Node.js 12	/opt/node-12/bin/node	393233
426344	system.jdk.JDK 1.8	/opt/jdk-8	393233
426345	system.builder.ant.Ant 1.10	/opt/ant-1.10	393233
426346	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393233
426347	system.hg.executable	/usr/bin/hg	393233
426348	system.builder.mvn2.Maven 2	/opt/maven-2.2	393233
426349	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393233
426350	system.jdk.JDK 1.7	/opt/jdk-7	393233
426351	system.builder.mvn3.Maven 3	/opt/maven-3.6	393233
426352	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393234
426353	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393234
426354	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393234
426355	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393234
426356	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393234
426357	system.jdk.JDK 8	C:\\opt\\jdk-8	393234
426358	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393234
426359	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393234
426360	system.builder.ant.Ant	C:\\opt\\ant-1.10	393234
426361	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393234
426362	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393234
426363	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393234
426364	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393234
426365	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393234
426366	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393234
426367	system.jdk.JDK 11	C:\\opt\\jdk-11	393234
426368	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393234
426369	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393234
426370	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393234
426371	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393234
426372	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393234
426373	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393234
426374	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393234
426375	system.git.executable	C:\\opt\\git\\bin\\git.exe	393234
426376	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393234
426377	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393234
426378	system.builder.nant.Nant	C:\\opt\\nant-0.92	393234
426379	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393235
426380	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393235
426381	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393235
426382	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393235
426383	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393235
426384	system.jdk.JDK 8	C:\\opt\\jdk-8	393235
426385	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393235
426386	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393235
426387	system.builder.ant.Ant	C:\\opt\\ant-1.10	393235
426388	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393235
426389	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393235
426390	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393235
426391	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393235
426392	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393235
426393	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393235
426394	system.jdk.JDK 11	C:\\opt\\jdk-11	393235
426395	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393235
426396	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393235
426397	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393235
426398	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393235
426399	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393235
426400	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393235
426401	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393235
426402	system.git.executable	C:\\opt\\git\\bin\\git.exe	393235
426403	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393235
426404	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393235
426405	system.builder.nant.Nant	C:\\opt\\nant-0.92	393235
426406	system.builder.ant.Ant 1.9	/opt/ant-1.9	393236
426407	system.builder.ant.Ant	/opt/ant-1.9	393236
426408	system.docker.executable	/usr/bin/docker	393236
426409	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393236
426410	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393236
426411	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393236
426412	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393236
426413	system.git.executable	/usr/bin/git	393236
426414	system.jdk.JDK 8	/opt/jdk-8	393236
426415	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393236
426416	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393236
426417	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393236
426418	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393236
426419	system.builder.node.Node.js 10	/opt/node-10/bin/node	393236
426420	system.builder.node.Node.js 8	/opt/node-8/bin/node	393236
426421	system.jdk.JDK 11	/opt/jdk-11	393236
426422	system.builder.node.Node.js 12	/opt/node-12/bin/node	393236
426423	system.jdk.JDK 1.8	/opt/jdk-8	393236
426424	system.builder.ant.Ant 1.10	/opt/ant-1.10	393236
426425	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393236
426426	system.hg.executable	/usr/bin/hg	393236
426427	system.builder.mvn2.Maven 2	/opt/maven-2.2	393236
426428	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393236
426429	system.jdk.JDK 1.7	/opt/jdk-7	393236
426430	system.builder.mvn3.Maven 3	/opt/maven-3.6	393236
426431	system.builder.ant.Ant 1.9	/opt/ant-1.9	393237
426432	system.builder.ant.Ant	/opt/ant-1.9	393237
426433	system.docker.executable	/usr/bin/docker	393237
426434	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393237
426435	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393237
426436	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393237
426437	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393237
426438	system.git.executable	/usr/bin/git	393237
426439	system.jdk.JDK 8	/opt/jdk-8	393237
426440	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393237
426441	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393237
426442	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393237
426443	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393237
426444	system.builder.node.Node.js 10	/opt/node-10/bin/node	393237
426445	system.builder.node.Node.js 8	/opt/node-8/bin/node	393237
426446	system.jdk.JDK 11	/opt/jdk-11	393237
426447	system.builder.node.Node.js 12	/opt/node-12/bin/node	393237
426448	system.jdk.JDK 1.8	/opt/jdk-8	393237
426449	system.builder.ant.Ant 1.10	/opt/ant-1.10	393237
426450	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393237
426451	system.hg.executable	/usr/bin/hg	393237
426452	system.builder.mvn2.Maven 2	/opt/maven-2.2	393237
426453	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393237
426454	system.jdk.JDK 1.7	/opt/jdk-7	393237
426455	system.builder.mvn3.Maven 3	/opt/maven-3.6	393237
426456	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393238
426457	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393238
426458	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393238
426459	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393238
426460	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393238
426461	system.jdk.JDK 8	C:\\opt\\jdk-8	393238
426462	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393238
426463	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393238
426464	system.builder.ant.Ant	C:\\opt\\ant-1.10	393238
426465	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393238
426466	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393238
426467	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393238
426468	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393238
426469	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393238
426470	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393238
426471	system.jdk.JDK 11	C:\\opt\\jdk-11	393238
426472	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393238
426473	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393238
426474	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393238
426475	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393238
426476	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393238
426477	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393238
426478	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393238
426479	system.git.executable	C:\\opt\\git\\bin\\git.exe	393238
426480	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393238
426481	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393238
426482	system.builder.nant.Nant	C:\\opt\\nant-0.92	393238
426483	system.builder.ant.Ant 1.9	/opt/ant-1.9	393239
426484	system.builder.ant.Ant	/opt/ant-1.9	393239
426485	system.docker.executable	/usr/bin/docker	393239
426486	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393239
426487	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393239
426488	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393239
426489	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393239
426490	system.git.executable	/usr/bin/git	393239
426491	system.jdk.JDK 8	/opt/jdk-8	393239
426492	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393239
426493	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393239
426494	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393239
426495	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393239
426496	system.builder.node.Node.js 10	/opt/node-10/bin/node	393239
426497	system.builder.node.Node.js 8	/opt/node-8/bin/node	393239
426498	system.jdk.JDK 11	/opt/jdk-11	393239
426499	system.builder.node.Node.js 12	/opt/node-12/bin/node	393239
426500	system.jdk.JDK 1.8	/opt/jdk-8	393239
426501	system.builder.ant.Ant 1.10	/opt/ant-1.10	393239
426502	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393239
426503	system.hg.executable	/usr/bin/hg	393239
426504	system.builder.mvn2.Maven 2	/opt/maven-2.2	393239
426505	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393239
426506	system.jdk.JDK 1.7	/opt/jdk-7	393239
426507	system.builder.mvn3.Maven 3	/opt/maven-3.6	393239
426508	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393240
426509	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393240
426510	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393240
426511	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393240
426512	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393240
426513	system.jdk.JDK 8	C:\\opt\\jdk-8	393240
426514	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393240
426515	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393240
426516	system.builder.ant.Ant	C:\\opt\\ant-1.10	393240
426517	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393240
426518	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393240
426519	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393240
426520	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393240
426521	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393240
426522	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393240
426523	system.jdk.JDK 11	C:\\opt\\jdk-11	393240
426524	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393240
426525	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393240
426526	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393240
426527	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393240
426528	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393240
426529	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393240
426530	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393240
426531	system.git.executable	C:\\opt\\git\\bin\\git.exe	393240
426532	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393240
426533	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393240
426534	system.builder.nant.Nant	C:\\opt\\nant-0.92	393240
426535	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393241
426536	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393241
426537	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393241
426538	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393241
426539	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393241
426540	system.jdk.JDK 8	C:\\opt\\jdk-8	393241
426541	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393241
426542	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393241
426543	system.builder.ant.Ant	C:\\opt\\ant-1.10	393241
426544	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393241
426545	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393241
426546	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393241
426547	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393241
426548	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393241
426549	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393241
426550	system.jdk.JDK 11	C:\\opt\\jdk-11	393241
426551	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393241
426552	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393241
426553	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393241
426554	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393241
426555	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393241
426556	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393241
426557	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393241
426558	system.git.executable	C:\\opt\\git\\bin\\git.exe	393241
426559	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393241
426560	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393241
426561	system.builder.nant.Nant	C:\\opt\\nant-0.92	393241
426562	system.builder.ant.Ant 1.9	/opt/ant-1.9	393242
426563	system.builder.ant.Ant	/opt/ant-1.9	393242
426564	system.docker.executable	/usr/bin/docker	393242
426565	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393242
426566	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393242
426567	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393242
426568	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393242
426569	system.git.executable	/usr/bin/git	393242
426570	system.jdk.JDK 8	/opt/jdk-8	393242
426571	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393242
426572	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393242
426573	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393242
426574	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393242
426575	system.builder.node.Node.js 10	/opt/node-10/bin/node	393242
426576	system.builder.node.Node.js 8	/opt/node-8/bin/node	393242
426577	system.jdk.JDK 11	/opt/jdk-11	393242
426578	system.builder.node.Node.js 12	/opt/node-12/bin/node	393242
426579	system.jdk.JDK 1.8	/opt/jdk-8	393242
426580	system.builder.ant.Ant 1.10	/opt/ant-1.10	393242
426581	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393242
426582	system.hg.executable	/usr/bin/hg	393242
426583	system.builder.mvn2.Maven 2	/opt/maven-2.2	393242
426584	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393242
426585	system.jdk.JDK 1.7	/opt/jdk-7	393242
426586	system.builder.mvn3.Maven 3	/opt/maven-3.6	393242
426614	system.builder.ant.Ant 1.9	/opt/ant-1.9	393244
426615	system.builder.ant.Ant	/opt/ant-1.9	393244
426616	system.docker.executable	/usr/bin/docker	393244
426617	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393244
426618	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393244
426619	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393244
426620	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393244
426621	system.git.executable	/usr/bin/git	393244
426622	system.jdk.JDK 8	/opt/jdk-8	393244
426623	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393244
426624	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393244
426625	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393244
426626	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393244
426627	system.builder.node.Node.js 10	/opt/node-10/bin/node	393244
426628	system.builder.node.Node.js 8	/opt/node-8/bin/node	393244
426629	system.jdk.JDK 11	/opt/jdk-11	393244
426630	system.builder.node.Node.js 12	/opt/node-12/bin/node	393244
426631	system.jdk.JDK 1.8	/opt/jdk-8	393244
426632	system.builder.ant.Ant 1.10	/opt/ant-1.10	393244
426633	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393244
426634	system.hg.executable	/usr/bin/hg	393244
426635	system.builder.mvn2.Maven 2	/opt/maven-2.2	393244
426636	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393244
426637	system.jdk.JDK 1.7	/opt/jdk-7	393244
426638	system.builder.mvn3.Maven 3	/opt/maven-3.6	393244
426639	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393245
426640	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393245
426641	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393245
426642	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393245
426643	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393245
426644	system.jdk.JDK 8	C:\\opt\\jdk-8	393245
426645	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393245
426646	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393245
426647	system.builder.ant.Ant	C:\\opt\\ant-1.10	393245
426648	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393245
426649	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393245
426650	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393245
426651	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393245
426652	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393245
426653	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393245
426654	system.jdk.JDK 11	C:\\opt\\jdk-11	393245
426655	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393245
426656	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393245
426657	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393245
426658	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393245
426659	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393245
426660	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393245
426661	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393245
426662	system.git.executable	C:\\opt\\git\\bin\\git.exe	393245
426663	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393245
426664	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393245
426665	system.builder.nant.Nant	C:\\opt\\nant-0.92	393245
426666	system.builder.ant.Ant 1.9	/opt/ant-1.9	393246
426667	system.builder.ant.Ant	/opt/ant-1.9	393246
426668	system.docker.executable	/usr/bin/docker	393246
426669	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393246
426670	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393246
426671	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393246
426672	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393246
426673	system.git.executable	/usr/bin/git	393246
426674	system.jdk.JDK 8	/opt/jdk-8	393246
426675	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393246
426676	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393246
426677	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393246
426678	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393246
426679	system.builder.node.Node.js 10	/opt/node-10/bin/node	393246
426680	system.builder.node.Node.js 8	/opt/node-8/bin/node	393246
426681	system.jdk.JDK 11	/opt/jdk-11	393246
426682	system.builder.node.Node.js 12	/opt/node-12/bin/node	393246
426683	system.jdk.JDK 1.8	/opt/jdk-8	393246
426684	system.builder.ant.Ant 1.10	/opt/ant-1.10	393246
426587	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393243
426588	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393243
426589	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393243
426590	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393243
426591	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393243
426592	system.jdk.JDK 8	C:\\opt\\jdk-8	393243
426593	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393243
426594	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393243
426595	system.builder.ant.Ant	C:\\opt\\ant-1.10	393243
426596	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393243
426597	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393243
426598	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393243
426599	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393243
426600	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393243
426601	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393243
426602	system.jdk.JDK 11	C:\\opt\\jdk-11	393243
426603	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393243
426604	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393243
426605	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393243
426606	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393243
426607	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393243
426608	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393243
426609	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393243
426610	system.git.executable	C:\\opt\\git\\bin\\git.exe	393243
426611	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393243
426612	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393243
426613	system.builder.nant.Nant	C:\\opt\\nant-0.92	393243
426870	system.builder.ant.Ant 1.9	/opt/ant-1.9	393254
426871	system.builder.ant.Ant	/opt/ant-1.9	393254
426872	system.docker.executable	/usr/bin/docker	393254
426873	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393254
426874	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393254
426875	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393254
426876	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393254
426877	system.git.executable	/usr/bin/git	393254
426878	system.jdk.JDK 8	/opt/jdk-8	393254
426879	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393254
426880	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393254
426881	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393254
426882	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393254
426883	system.builder.node.Node.js 10	/opt/node-10/bin/node	393254
426884	system.builder.node.Node.js 8	/opt/node-8/bin/node	393254
426885	system.jdk.JDK 11	/opt/jdk-11	393254
426886	system.builder.node.Node.js 12	/opt/node-12/bin/node	393254
426887	system.jdk.JDK 1.8	/opt/jdk-8	393254
426888	system.builder.ant.Ant 1.10	/opt/ant-1.10	393254
426889	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393254
426890	system.hg.executable	/usr/bin/hg	393254
426891	system.builder.mvn2.Maven 2	/opt/maven-2.2	393254
426892	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393254
426893	system.jdk.JDK 1.7	/opt/jdk-7	393254
426894	system.builder.mvn3.Maven 3	/opt/maven-3.6	393254
426895	system.builder.ant.Ant 1.9	/opt/ant-1.9	393255
426896	system.builder.ant.Ant	/opt/ant-1.9	393255
426897	system.docker.executable	/usr/bin/docker	393255
426898	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393255
426899	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393255
426900	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393255
426901	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393255
426902	system.git.executable	/usr/bin/git	393255
426903	system.jdk.JDK 8	/opt/jdk-8	393255
426904	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393255
426905	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393255
426906	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393255
426907	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393255
426908	system.builder.node.Node.js 10	/opt/node-10/bin/node	393255
426909	system.builder.node.Node.js 8	/opt/node-8/bin/node	393255
426910	system.jdk.JDK 11	/opt/jdk-11	393255
426911	system.builder.node.Node.js 12	/opt/node-12/bin/node	393255
426912	system.jdk.JDK 1.8	/opt/jdk-8	393255
426913	system.builder.ant.Ant 1.10	/opt/ant-1.10	393255
426914	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393255
426915	system.hg.executable	/usr/bin/hg	393255
426916	system.builder.mvn2.Maven 2	/opt/maven-2.2	393255
426917	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393255
426918	system.jdk.JDK 1.7	/opt/jdk-7	393255
426919	system.builder.mvn3.Maven 3	/opt/maven-3.6	393255
426920	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393256
426921	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393256
426922	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393256
426923	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393256
426924	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393256
426925	system.jdk.JDK 8	C:\\opt\\jdk-8	393256
426926	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393256
426927	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393256
426928	system.builder.ant.Ant	C:\\opt\\ant-1.10	393256
426929	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393256
426930	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393256
426685	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393246
426686	system.hg.executable	/usr/bin/hg	393246
426687	system.builder.mvn2.Maven 2	/opt/maven-2.2	393246
426688	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393246
426689	system.jdk.JDK 1.7	/opt/jdk-7	393246
426690	system.builder.mvn3.Maven 3	/opt/maven-3.6	393246
426691	system.builder.ant.Ant 1.9	/opt/ant-1.9	393247
426692	system.builder.ant.Ant	/opt/ant-1.9	393247
426693	system.docker.executable	/usr/bin/docker	393247
426694	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393247
426695	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393247
426696	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393247
426697	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393247
426698	system.git.executable	/usr/bin/git	393247
426699	system.jdk.JDK 8	/opt/jdk-8	393247
426700	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393247
426701	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393247
426702	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393247
426703	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393247
426704	system.builder.node.Node.js 10	/opt/node-10/bin/node	393247
426705	system.builder.node.Node.js 8	/opt/node-8/bin/node	393247
426706	system.jdk.JDK 11	/opt/jdk-11	393247
426707	system.builder.node.Node.js 12	/opt/node-12/bin/node	393247
426708	system.jdk.JDK 1.8	/opt/jdk-8	393247
426709	system.builder.ant.Ant 1.10	/opt/ant-1.10	393247
426710	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393247
426711	system.hg.executable	/usr/bin/hg	393247
426712	system.builder.mvn2.Maven 2	/opt/maven-2.2	393247
426713	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393247
426714	system.jdk.JDK 1.7	/opt/jdk-7	393247
426715	system.builder.mvn3.Maven 3	/opt/maven-3.6	393247
426716	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393248
426717	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393248
426718	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393248
426719	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393248
426720	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393248
426721	system.jdk.JDK 8	C:\\opt\\jdk-8	393248
426722	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393248
426723	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393248
426724	system.builder.ant.Ant	C:\\opt\\ant-1.10	393248
426725	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393248
426726	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393248
426727	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393248
426728	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393248
426729	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393248
426730	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393248
426731	system.jdk.JDK 11	C:\\opt\\jdk-11	393248
426732	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393248
426733	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393248
426734	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393248
426735	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393248
426736	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393248
426737	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393248
426738	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393248
426739	system.git.executable	C:\\opt\\git\\bin\\git.exe	393248
426740	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393248
426741	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393248
426742	system.builder.nant.Nant	C:\\opt\\nant-0.92	393248
426743	system.builder.ant.Ant 1.9	/opt/ant-1.9	393249
426744	system.builder.ant.Ant	/opt/ant-1.9	393249
426745	system.docker.executable	/usr/bin/docker	393249
426746	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393249
426747	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393249
426748	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393249
426749	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393249
426750	system.git.executable	/usr/bin/git	393249
426751	system.jdk.JDK 8	/opt/jdk-8	393249
426752	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393249
426753	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393249
426754	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393249
426755	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393249
426756	system.builder.node.Node.js 10	/opt/node-10/bin/node	393249
426757	system.builder.node.Node.js 8	/opt/node-8/bin/node	393249
426758	system.jdk.JDK 11	/opt/jdk-11	393249
426759	system.builder.node.Node.js 12	/opt/node-12/bin/node	393249
426760	system.jdk.JDK 1.8	/opt/jdk-8	393249
426761	system.builder.ant.Ant 1.10	/opt/ant-1.10	393249
426762	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393249
426763	system.hg.executable	/usr/bin/hg	393249
426764	system.builder.mvn2.Maven 2	/opt/maven-2.2	393249
426765	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393249
426766	system.jdk.JDK 1.7	/opt/jdk-7	393249
426767	system.builder.mvn3.Maven 3	/opt/maven-3.6	393249
426768	system.builder.ant.Ant 1.9	/opt/ant-1.9	393250
426769	system.builder.ant.Ant	/opt/ant-1.9	393250
426770	system.docker.executable	/usr/bin/docker	393250
426771	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393250
426772	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393250
426773	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393250
426774	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393250
426775	system.git.executable	/usr/bin/git	393250
426776	system.jdk.JDK 8	/opt/jdk-8	393250
426777	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393250
426778	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393250
426779	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393250
426780	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393250
426781	system.builder.node.Node.js 10	/opt/node-10/bin/node	393250
426782	system.builder.node.Node.js 8	/opt/node-8/bin/node	393250
426783	system.jdk.JDK 11	/opt/jdk-11	393250
426784	system.builder.node.Node.js 12	/opt/node-12/bin/node	393250
426785	system.jdk.JDK 1.8	/opt/jdk-8	393250
426786	system.builder.ant.Ant 1.10	/opt/ant-1.10	393250
426787	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393250
426788	system.hg.executable	/usr/bin/hg	393250
426789	system.builder.mvn2.Maven 2	/opt/maven-2.2	393250
426790	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393250
426791	system.jdk.JDK 1.7	/opt/jdk-7	393250
426792	system.builder.mvn3.Maven 3	/opt/maven-3.6	393250
426793	system.builder.ant.Ant 1.9	/opt/ant-1.9	393251
426794	system.builder.ant.Ant	/opt/ant-1.9	393251
426795	system.docker.executable	/usr/bin/docker	393251
426796	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393251
426797	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393251
426798	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393251
426799	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393251
426800	system.git.executable	/usr/bin/git	393251
426801	system.jdk.JDK 8	/opt/jdk-8	393251
426802	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393251
426803	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393251
426804	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393251
426805	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393251
426806	system.builder.node.Node.js 10	/opt/node-10/bin/node	393251
426807	system.builder.node.Node.js 8	/opt/node-8/bin/node	393251
426808	system.jdk.JDK 11	/opt/jdk-11	393251
426809	system.builder.node.Node.js 12	/opt/node-12/bin/node	393251
426810	system.jdk.JDK 1.8	/opt/jdk-8	393251
426811	system.builder.ant.Ant 1.10	/opt/ant-1.10	393251
426812	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393251
426813	system.hg.executable	/usr/bin/hg	393251
426814	system.builder.mvn2.Maven 2	/opt/maven-2.2	393251
426815	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393251
426816	system.jdk.JDK 1.7	/opt/jdk-7	393251
426817	system.builder.mvn3.Maven 3	/opt/maven-3.6	393251
426818	system.builder.ant.Ant 1.9	/opt/ant-1.9	393252
426819	system.builder.ant.Ant	/opt/ant-1.9	393252
426820	system.docker.executable	/usr/bin/docker	393252
426821	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393252
426822	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393252
426823	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393252
426824	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393252
426825	system.git.executable	/usr/bin/git	393252
426826	system.jdk.JDK 8	/opt/jdk-8	393252
426827	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393252
426828	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393252
426829	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393252
426830	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393252
426831	system.builder.node.Node.js 10	/opt/node-10/bin/node	393252
426832	system.builder.node.Node.js 8	/opt/node-8/bin/node	393252
426833	system.jdk.JDK 11	/opt/jdk-11	393252
426834	system.builder.node.Node.js 12	/opt/node-12/bin/node	393252
426835	system.jdk.JDK 1.8	/opt/jdk-8	393252
426836	system.builder.ant.Ant 1.10	/opt/ant-1.10	393252
426837	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393252
426838	system.hg.executable	/usr/bin/hg	393252
426839	system.builder.mvn2.Maven 2	/opt/maven-2.2	393252
426840	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393252
426841	system.jdk.JDK 1.7	/opt/jdk-7	393252
426842	system.builder.mvn3.Maven 3	/opt/maven-3.6	393252
426843	system.builder.mvn3.Maven 3.2	C:\\opt\\maven-3.2	393253
426844	system.builder.node.Node.js 12	C:\\opt\\node-12\\node.exe	393253
426845	system.builder.mvn3.Maven 3.3	C:\\opt\\maven-3.3	393253
426846	system.builder.msbuild.MSBuild v4.0 (32bit)	C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\MSBuild.exe	393253
426847	system.builder.ant.Ant 1.10	C:\\opt\\ant-1.10	393253
426848	system.jdk.JDK 8	C:\\opt\\jdk-8	393253
426849	system.builder.mvn3.Maven 3.6	C:\\opt\\maven-3.6	393253
426850	system.builder.ant.Ant 1.9	C:\\opt\\ant-1.9	393253
426851	system.builder.ant.Ant	C:\\opt\\ant-1.10	393253
426852	system.builder.mvn2.Maven 2.0	C:\\opt\\maven-2.0	393253
426853	system.builder.mvn3.Maven 3.5	C:\\opt\\maven-3.5	393253
426854	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393253
426855	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393253
426856	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393253
426857	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393253
426858	system.jdk.JDK 11	C:\\opt\\jdk-11	393253
426859	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393253
426860	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393253
426861	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393253
426862	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393253
426863	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393253
426864	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393253
426865	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393253
426866	system.git.executable	C:\\opt\\git\\bin\\git.exe	393253
426867	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393253
426868	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393253
426869	system.builder.nant.Nant	C:\\opt\\nant-0.92	393253
426972	system.builder.ant.Ant 1.9	/opt/ant-1.9	393258
426973	system.builder.ant.Ant	/opt/ant-1.9	393258
426974	system.docker.executable	/usr/bin/docker	393258
426975	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393258
426976	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393258
426977	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393258
426978	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393258
426979	system.git.executable	/usr/bin/git	393258
426980	system.jdk.JDK 8	/opt/jdk-8	393258
426981	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393258
426982	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393258
426983	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393258
426984	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393258
426985	system.builder.node.Node.js 10	/opt/node-10/bin/node	393258
426986	system.builder.node.Node.js 8	/opt/node-8/bin/node	393258
426987	system.jdk.JDK 11	/opt/jdk-11	393258
426988	system.builder.node.Node.js 12	/opt/node-12/bin/node	393258
426989	system.jdk.JDK 1.8	/opt/jdk-8	393258
426990	system.builder.ant.Ant 1.10	/opt/ant-1.10	393258
426991	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393258
426992	system.hg.executable	/usr/bin/hg	393258
426993	system.builder.mvn2.Maven 2	/opt/maven-2.2	393258
426994	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393258
426995	system.jdk.JDK 1.7	/opt/jdk-7	393258
426996	system.builder.mvn3.Maven 3	/opt/maven-3.6	393258
426997	system.builder.ant.Ant 1.9	/opt/ant-1.9	393259
426998	system.builder.ant.Ant	/opt/ant-1.9	393259
426999	system.docker.executable	/usr/bin/docker	393259
427000	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393259
427001	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393259
427002	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393259
427003	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393259
427004	system.git.executable	/usr/bin/git	393259
427005	system.jdk.JDK 8	/opt/jdk-8	393259
427006	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393259
427007	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393259
427008	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393259
427009	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393259
427010	system.builder.node.Node.js 10	/opt/node-10/bin/node	393259
427011	system.builder.node.Node.js 8	/opt/node-8/bin/node	393259
427012	system.jdk.JDK 11	/opt/jdk-11	393259
427013	system.builder.node.Node.js 12	/opt/node-12/bin/node	393259
427014	system.jdk.JDK 1.8	/opt/jdk-8	393259
427015	system.builder.ant.Ant 1.10	/opt/ant-1.10	393259
427016	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393259
427017	system.hg.executable	/usr/bin/hg	393259
427018	system.builder.mvn2.Maven 2	/opt/maven-2.2	393259
427019	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393259
427020	system.jdk.JDK 1.7	/opt/jdk-7	393259
427021	system.builder.mvn3.Maven 3	/opt/maven-3.6	393259
426931	system.builder.mvn2.Maven 2	C:\\opt\\maven-2.2	393256
426932	system.hg.executable	C:\\opt\\mercurial\\hg.exe	393256
426933	system.builder.mvn2.Maven 2.1	C:\\opt\\maven-2.1	393256
426934	system.builder.node.Node.js 8	C:\\opt\\node-8\\node.exe	393256
426935	system.jdk.JDK 11	C:\\opt\\jdk-11	393256
426936	system.jdk.JDK 1.8	C:\\opt\\jdk-8	393256
426937	system.builder.msbuild.MSBuild v4.0 (64bit)	C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSBuild.exe	393256
426938	system.builder.grailsBuilder.Grails 2.4	C:\\opt\\grails-2.4	393256
426939	system.builder.grailsBuilder.Grails 3.3	C:\\opt\\grails-3.3	393256
426940	system.builder.mvn3.Maven 3	C:\\opt\\maven-3.6	393256
426941	system.builder.mvn2.Maven 2.2	C:\\opt\\maven-2.2	393256
426942	system.builder.grailsBuilder.Grails 3.2	C:\\opt\\grails-3.2	393256
426943	system.git.executable	C:\\opt\\git\\bin\\git.exe	393256
426944	system.builder.node.Node.js 10	C:\\opt\\node-10\\node.exe	393256
426945	system.jdk.JDK 1.7	C:\\opt\\jdk-7	393256
426946	system.builder.nant.Nant	C:\\opt\\nant-0.92	393256
426947	system.builder.ant.Ant 1.9	/opt/ant-1.9	393257
426948	system.builder.ant.Ant	/opt/ant-1.9	393257
426949	system.docker.executable	/usr/bin/docker	393257
426950	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393257
426951	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393257
426952	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393257
426953	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393257
426954	system.git.executable	/usr/bin/git	393257
426955	system.jdk.JDK 8	/opt/jdk-8	393257
426956	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393257
426957	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393257
426958	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393257
426959	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393257
426960	system.builder.node.Node.js 10	/opt/node-10/bin/node	393257
426961	system.builder.node.Node.js 8	/opt/node-8/bin/node	393257
426962	system.jdk.JDK 11	/opt/jdk-11	393257
426963	system.builder.node.Node.js 12	/opt/node-12/bin/node	393257
426964	system.jdk.JDK 1.8	/opt/jdk-8	393257
426965	system.builder.ant.Ant 1.10	/opt/ant-1.10	393257
426966	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393257
426967	system.hg.executable	/usr/bin/hg	393257
426968	system.builder.mvn2.Maven 2	/opt/maven-2.2	393257
426969	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393257
426970	system.jdk.JDK 1.7	/opt/jdk-7	393257
426971	system.builder.mvn3.Maven 3	/opt/maven-3.6	393257
427022	system.builder.ant.Ant 1.9	/opt/ant-1.9	393260
427023	system.builder.ant.Ant	/opt/ant-1.9	393260
427024	system.docker.executable	/usr/bin/docker	393260
427025	system.builder.mvn2.Maven 2.2	/opt/maven-2.2	393260
427026	system.builder.mvn2.Maven 2.1	/opt/maven-2.1	393260
427027	system.builder.grailsBuilder.Grails 3.2	/opt/grails-3.2	393260
427028	system.builder.mvn3.Maven 3.6	/opt/maven-3.6	393260
427029	system.git.executable	/usr/bin/git	393260
427030	system.jdk.JDK 8	/opt/jdk-8	393260
427031	system.builder.mvn3.Maven 3.2	/opt/maven-3.2	393260
427032	system.builder.mvn2.Maven 2.0	/opt/maven-2.0	393260
427033	system.builder.grailsBuilder.Grails 2.4	/opt/grails-2.4	393260
427034	system.builder.grailsBuilder.Grails 3.3	/opt/grails-3.3	393260
427035	system.builder.node.Node.js 10	/opt/node-10/bin/node	393260
427036	system.builder.node.Node.js 8	/opt/node-8/bin/node	393260
427037	system.jdk.JDK 11	/opt/jdk-11	393260
427038	system.builder.node.Node.js 12	/opt/node-12/bin/node	393260
427039	system.jdk.JDK 1.8	/opt/jdk-8	393260
427040	system.builder.ant.Ant 1.10	/opt/ant-1.10	393260
427041	system.builder.mvn3.Maven 3.3	/opt/maven-3.3	393260
427042	system.hg.executable	/usr/bin/hg	393260
427043	system.builder.mvn2.Maven 2	/opt/maven-2.2	393260
427044	system.builder.mvn3.Maven 3.5	/opt/maven-3.5	393260
427045	system.jdk.JDK 1.7	/opt/jdk-7	393260
427046	system.builder.mvn3.Maven 3	/opt/maven-3.6	393260
\.


--
-- Data for Name: capability_set; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.capability_set (capability_set_id, capability_type, capability_scope) FROM stdin;
393217	LOCAL	AGENT
393218	LOCAL	SHARED
393219	REMOTE	SHARED
393220	IMAGE	AGENT
393221	IMAGE	AGENT
393222	IMAGE	AGENT
393223	IMAGE	AGENT
393224	IMAGE	AGENT
393225	IMAGE	AGENT
393226	IMAGE	AGENT
393227	IMAGE	AGENT
393228	IMAGE	AGENT
393229	IMAGE	AGENT
393230	IMAGE	AGENT
393231	IMAGE	AGENT
393232	IMAGE	AGENT
393233	IMAGE	AGENT
393234	IMAGE	AGENT
393235	IMAGE	AGENT
393236	IMAGE	AGENT
393237	IMAGE	AGENT
393238	IMAGE	AGENT
393239	IMAGE	AGENT
393240	IMAGE	AGENT
393241	IMAGE	AGENT
393242	IMAGE	AGENT
393243	IMAGE	AGENT
393244	IMAGE	AGENT
393245	IMAGE	AGENT
393246	IMAGE	AGENT
393247	IMAGE	AGENT
393248	IMAGE	AGENT
393249	IMAGE	AGENT
393250	IMAGE	AGENT
393251	IMAGE	AGENT
393252	IMAGE	AGENT
393253	IMAGE	AGENT
393254	IMAGE	AGENT
393255	IMAGE	AGENT
393256	IMAGE	AGENT
393257	IMAGE	AGENT
393258	IMAGE	AGENT
393259	IMAGE	AGENT
393260	IMAGE	AGENT
\.


--
-- Data for Name: chain_stage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chain_stage (stage_id, created_date, updated_date, name, description, optional_stage, final_stage, marked_for_deletion, build_id, oid, list_position) FROM stdin;
\.


--
-- Data for Name: chain_stage_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chain_stage_result (stageresult_id, created_date, updated_date, name, description, optional_stage, final_stage, processing_duration, chainresult_id, list_position) FROM stdin;
\.


--
-- Data for Name: commit_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.commit_files (commit_id, commit_file_name, commit_file_reivision) FROM stdin;
\.


--
-- Data for Name: credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.credentials (credentials_id, plugin_key, name, xml, oid) FROM stdin;
\.


--
-- Data for Name: crowd_deleted_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.crowd_deleted_entity (crowd_deleted_entity_id, deletion_date, entity_name, entity_type) FROM stdin;
\.


--
-- Data for Name: cwd_app_dir_default_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_app_dir_default_groups (id, application_mapping_id, group_name) FROM stdin;
\.


--
-- Data for Name: cwd_app_dir_group_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_app_dir_group_mapping (id, app_dir_mapping_id, application_id, directory_id, group_name) FROM stdin;
\.


--
-- Data for Name: cwd_app_dir_mapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_app_dir_mapping (id, application_id, directory_id, allow_all, list_index) FROM stdin;
98305	32769	65537	T	0
\.


--
-- Data for Name: cwd_app_dir_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_app_dir_operation (app_dir_mapping_id, operation_type) FROM stdin;
98305	CREATE_GROUP
98305	CREATE_USER
98305	UPDATE_USER
98305	DELETE_ROLE
98305	DELETE_GROUP
98305	CREATE_ROLE
98305	UPDATE_GROUP_ATTRIBUTE
98305	UPDATE_ROLE
98305	UPDATE_USER_ATTRIBUTE
98305	DELETE_USER
98305	UPDATE_ROLE_ATTRIBUTE
98305	UPDATE_GROUP
\.


--
-- Data for Name: cwd_app_licensed_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_app_licensed_user (id, username, lower_username, last_active, full_name, lower_full_name, email, lower_email, directory_id) FROM stdin;
\.


--
-- Data for Name: cwd_app_licensing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_app_licensing (id, generated_on, version, application_id, application_subtype, total_users, max_user_limit, total_crowd_users, active) FROM stdin;
\.


--
-- Data for Name: cwd_app_licensing_dir_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_app_licensing_dir_info (id, name, directory_id, licensing_summary_id) FROM stdin;
\.


--
-- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
32769	crowd-embedded	crowd-embedded	2020-03-14 16:29:34.544	2020-03-14 16:29:35.389	T	\N	CROWD	X
\.


--
-- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_application_address (application_id, remote_address) FROM stdin;
\.


--
-- Data for Name: cwd_application_alias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_application_alias (id, application_id, user_name, lower_user_name, alias_name, lower_alias_name) FROM stdin;
\.


--
-- Data for Name: cwd_application_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_application_attribute (application_id, attribute_name, attribute_value) FROM stdin;
32769	aggregateMemberships	true
32769	atlassian_sha1_applied	true
\.


--
-- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type) FROM stdin;
65537	Bamboo Internal Directory	bamboo internal directory	2020-03-14 16:29:35.375	2020-03-14 16:29:35.375	T	Bamboo default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL
\.


--
-- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory_attribute (directory_id, attribute_name, attribute_value) FROM stdin;
65537	user_encryption_method	atlassian-security
\.


--
-- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_directory_operation (directory_id, operation_type) FROM stdin;
65537	CREATE_USER
65537	DELETE_GROUP
65537	UPDATE_ROLE_ATTRIBUTE
65537	UPDATE_GROUP
65537	CREATE_GROUP
65537	UPDATE_USER
65537	DELETE_ROLE
65537	CREATE_ROLE
65537	UPDATE_GROUP_ATTRIBUTE
65537	UPDATE_ROLE
65537	UPDATE_USER_ATTRIBUTE
65537	DELETE_USER
\.


--
-- Data for Name: cwd_expirable_user_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_expirable_user_token (id, token, user_name, email_address, expiry_date, directory_id) FROM stdin;
\.


--
-- Data for Name: cwd_granted_perm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_granted_perm (id, created_date, permission_id, app_dir_mapping_id, group_name) FROM stdin;
\.


--
-- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_group (id, group_name, lower_group_name, active, is_local, created_date, updated_date, description, group_type, directory_id, external_id) FROM stdin;
196609	bamboo-admin	bamboo-admin	T	F	2020-03-14 16:29:36.078	2020-03-14 16:29:36.078	\N	GROUP	65537	\N
\.


--
-- Data for Name: cwd_group_admin_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_group_admin_group (id, group_id, target_group_id) FROM stdin;
\.


--
-- Data for Name: cwd_group_admin_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_group_admin_user (id, user_id, target_group_id) FROM stdin;
\.


--
-- Data for Name: cwd_group_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_group_attribute (id, group_id, directory_id, attribute_name, attribute_value, attribute_lower_value) FROM stdin;
\.


--
-- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, created_date, directory_id) FROM stdin;
229377	196609	131073	GROUP_USER	GROUP	bamboo-admin	bamboo-admin	syedawase	syedawase	2020-03-14 16:29:36.162	65537
\.


--
-- Data for Name: cwd_property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_property (property_key, property_name, property_value) FROM stdin;
\.


--
-- Data for Name: cwd_synchronisation_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_synchronisation_status (id, directory_id, node_id, sync_start, sync_end, sync_status, status_parameters) FROM stdin;
\.


--
-- Data for Name: cwd_synchronisation_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_synchronisation_token (directory_id, sync_status_token) FROM stdin;
\.


--
-- Data for Name: cwd_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_token (id, directory_id, entity_name, random_number, identifier_hash, random_hash, created_date, last_accessed_date, last_accessed_time, duration) FROM stdin;
\.


--
-- Data for Name: cwd_tombstone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_tombstone (id, tombstone_type, tombstone_timestamp, entity_name, directory_id, parent, application_id) FROM stdin;
\.


--
-- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_user (id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, external_id, directory_id, credential) FROM stdin;
131073	syedawase	syedawase	T	2020-03-14 16:29:35.801	2020-03-14 16:29:36.18	Syed	syed	Awase Khirni	awase khirni	Syed Awase Khirni	syed awase khirni	awasekhirni@gmail.com	awasekhirni@gmail.com	c648af77-81da-46d0-ad29-5c0d901a13f7	65537	{PKCS5S2}/EqiOalfvRh58uI0uEpDdSigm1jK67g4eii/fI3L+DBqkMp7uMP1on46oGiIbjUK
\.


--
-- Data for Name: cwd_user_attribute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_user_attribute (id, user_id, directory_id, attribute_name, attribute_value, attribute_lower_value, attribute_numeric_value) FROM stdin;
163841	131073	65537	requiresPasswordChange	false	false	\N
163842	131073	65537	invalidPasswordAttempts	0	0	0
163843	131073	65537	passwordLastChanged	1584217775815	1584217775815	1584217775815
163844	131073	65537	lastAuthenticated	1584217776364	1584217776364	1584217776364
\.


--
-- Data for Name: cwd_user_credential_record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_user_credential_record (id, user_id, password_hash, list_index) FROM stdin;
\.


--
-- Data for Name: cwd_webhook; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cwd_webhook (id, endpoint_url, application_id, token, oldest_failure_date, failures_since_last_success) FROM stdin;
\.


--
-- Data for Name: dep_version_planresultkeys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dep_version_planresultkeys (dep_version_planresultkeys_id, deployment_version_id, plan_key, build_number) FROM stdin;
\.


--
-- Data for Name: deployment_env_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_env_config (environment_id, docker_pipeline_config, plugin_config) FROM stdin;
\.


--
-- Data for Name: deployment_env_vcs_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_env_vcs_location (env_vcs_location_id, environment_id, vcs_location_id, list_position) FROM stdin;
\.


--
-- Data for Name: deployment_environment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_environment (environment_id, name, description, xml_definition_data, triggers_xml_data, configuration_state, package_definition_id, requirement_set, notification_set, list_position) FROM stdin;
\.


--
-- Data for Name: deployment_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_project (deployment_project_id, oid, description, name, plan_key, vcs_specs_source_id) FROM stdin;
\.


--
-- Data for Name: deployment_project_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_project_item (deployment_project_item_id, name, deployment_project_id) FROM stdin;
\.


--
-- Data for Name: deployment_project_item_ba; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_project_item_ba (bam_artifact_item_id, artifact_definition_id) FROM stdin;
\.


--
-- Data for Name: deployment_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_result (deployment_result_id, version_id, version_name, environment_id, deployment_state, life_cycle_state, started_date, queued_date, executed_date, finished_date, agent_id, variable_context_baseline_id, trigger_reason) FROM stdin;
\.


--
-- Data for Name: deployment_result_customdata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_result_customdata (deployment_result_id, custom_info_key, custom_info_value) FROM stdin;
\.


--
-- Data for Name: deployment_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_version (deployment_version_id, name, created_date, age_zero_point, creator_username, plan_branch_name, project_id, variable_context_baseline_id) FROM stdin;
\.


--
-- Data for Name: deployment_version_changeset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_version_changeset (dep_version_changeset_id, deployment_version_id, vcs_location_id, changeset_id, skipped_commits_count) FROM stdin;
\.


--
-- Data for Name: deployment_version_commit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_version_commit (deployment_version_commit_id, dep_version_changeset_id, author_id, commit_date, commit_revision, commit_comment_clob) FROM stdin;
\.


--
-- Data for Name: deployment_version_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_version_item (deployment_version_item_id, deployment_version_id, name) FROM stdin;
\.


--
-- Data for Name: deployment_version_item_ba; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_version_item_ba (version_bam_artifact_item_id, plan_key, build_number, label, location, copy_pattern, artifact_size, artifact_id) FROM stdin;
\.


--
-- Data for Name: deployment_version_jira_issue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_version_jira_issue (dep_ver_jira_issue_id, deployment_version_id, jira_issue_key, jira_issue_link_type) FROM stdin;
\.


--
-- Data for Name: deployment_version_naming; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_version_naming (version_naming_scheme_id, deployment_project_id, next_version_name, auto_increment, applicable_to_branches) FROM stdin;
\.


--
-- Data for Name: deployment_version_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deployment_version_status (deployment_version_status_id, version_state, user_name, deployment_version_id, created_date) FROM stdin;
\.


--
-- Data for Name: ec2_image_script; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ec2_image_script (elastic_image_id, script_index, script_id) FROM stdin;
\.


--
-- Data for Name: elastic_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.elastic_image (elastic_image_id, name, description, ami_image_id, ebs_snapshot_id, instance_type, per_second_billing, availability_zone, shipped_with_bamboo, image_disabled, legacy_ebs_handling, product, region, root_device_type, architecture, platform, subnet_id, image_files_version, os_name, virtualisation_type, root_fs_size_override, capability_set) FROM stdin;
458753	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-035c60d52e00ef237	\N	M5Large	t	\N	t	f	f	Linux/UNIX	SOUTH_AMERICA_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393220
458754	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-05e7be987b1f1331f	\N	M5Large	t	\N	t	f	f	Windows	EU_CENTRAL_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393221
458755	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-012ac45458ffcbc03	\N	M5Large	t	\N	t	f	f	Linux/UNIX	EU_WEST_3	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393222
458756	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-08725e6308b9fbd22	\N	M5Large	t	\N	t	t	f	Linux/UNIX	SOUTH_AMERICA_1	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393223
458757	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-0453236fb4c6295ce	\N	M5Large	t	\N	t	t	f	Linux/UNIX	US_WEST_1	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393224
458758	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-0f7a19b64f6a8ee20	\N	M5Large	t	\N	t	f	f	Windows	SOUTH_AMERICA_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393225
458759	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-0c92b19aeea0becef	\N	M5Large	t	\N	t	t	f	Linux/UNIX	US_EAST_1	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393226
458760	Amazon Linux PV S3 stock image	Elastic Image Configuration shipped with Bamboo	ami-02a39fb3e82838e10	\N	M5Large	t	\N	t	t	f	Linux/UNIX	US_EAST_1	S3	x86_64	linux	\N	3.0	Amazon Linux	PV	\N	393227
458761	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-0499a020287ae7f24	\N	M5Large	t	\N	t	f	f	Windows	EU_WEST_3	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393228
458762	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0f5102e57966d2712	\N	M5Large	t	\N	t	f	f	Linux/UNIX	ASIA_PACIFIC_SE_2	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393229
458763	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-06850228a7fa40093	\N	M5Large	t	\N	t	t	f	Linux/UNIX	ASIA_PACIFIC_NE_1	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393230
458764	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-05b3b988717bdde01	\N	M5Large	t	\N	t	f	f	Windows	AP_NE_2	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393231
458765	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-0f25ceb37960274ff	\N	M5Large	t	\N	t	f	f	Windows	US_EAST_2	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393232
458766	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0d969c76e5ba6c30a	\N	M5Large	t	\N	t	f	f	Linux/UNIX	US_EAST_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393233
458767	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-036feab28778b6853	\N	M5Large	t	\N	t	f	f	Windows	US_WEST_2	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393234
458768	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-0d29b9c5fe4faacb6	\N	M5Large	t	\N	t	f	f	Windows	AP_S_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393235
458769	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0e7d39cd5683322fe	\N	M5Large	t	\N	t	f	f	Linux/UNIX	AP_S_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393236
458770	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-075ddc787ae6ff0a3	\N	M5Large	t	\N	t	f	f	Linux/UNIX	EU_WEST_2	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393237
458771	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-0c7e4699bc78c9587	\N	M5Large	t	\N	t	f	f	Windows	EU_WEST_2	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393238
458772	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-078cc0857d1c50a48	\N	M5Large	t	\N	t	t	f	Linux/UNIX	US_WEST_2	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393239
458773	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-043a18d1ef1057046	\N	M5Large	t	\N	t	f	f	Windows	US_EAST_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393240
458774	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-0d3eafdad866bf414	\N	M5Large	t	\N	t	f	f	Windows	US_WEST_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393241
458775	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0d6f124f812495b4b	\N	M5Large	t	\N	t	f	f	Linux/UNIX	ASIA_PACIFIC_SE_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393242
458776	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-05dd5e051b0c854a9	\N	M5Large	t	\N	t	f	f	Windows	CA_CENTRAL_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393243
458777	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0bc2a08219b15af2d	\N	M5Large	t	\N	t	f	f	Linux/UNIX	US_WEST_2	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393244
458778	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-08c9a5d73fada453f	\N	M5Large	t	\N	t	f	f	Windows	EU_WEST_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393245
458779	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-00f743b41296dbaf2	\N	M5Large	t	\N	t	t	f	Linux/UNIX	ASIA_PACIFIC_SE_1	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393246
458780	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-058bb768250796fcc	\N	M5Large	t	\N	t	f	f	Linux/UNIX	ASIA_PACIFIC_NE_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393247
458781	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-0e8f534372100c496	\N	M5Large	t	\N	t	f	f	Windows	ASIA_PACIFIC_SE_2	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393248
458782	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0b9fde67256220b23	\N	M5Large	t	\N	t	f	f	Linux/UNIX	AP_NE_2	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393249
458783	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0593c72d1e9a5068c	\N	M5Large	t	\N	t	f	f	Linux/UNIX	EU_WEST_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393250
458784	Amazon Linux PV stock image	Elastic Image Configuration shipped with Bamboo	ami-0d4a081f9b2021fd9	\N	M5Large	t	\N	t	t	f	Linux/UNIX	US_EAST_1	EBS	x86_64	linux	\N	3.0	Amazon Linux	PV	\N	393251
458785	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0a47721c5ecbe6ea8	\N	M5Large	t	\N	t	f	f	Linux/UNIX	EU_CENTRAL_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393252
458786	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-02e5388a58d8caf9c	\N	M5Large	t	\N	t	f	f	Windows	ASIA_PACIFIC_NE_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393253
458787	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0eb597c9a34d87e14	\N	M5Large	t	\N	t	f	f	Linux/UNIX	US_WEST_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393254
458788	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-0fd93b928eaf7b055	\N	M5Large	t	\N	t	f	f	Linux/UNIX	CA_CENTRAL_1	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393255
458789	Windows stock image	Elastic Image Configuration shipped with Bamboo	ami-0b158c4f3e859e2f3	\N	M5Large	t	\N	t	f	f	Windows	ASIA_PACIFIC_SE_1	EBS	x86_64	windows	\N	3.0	Windows	HVM	\N	393256
458790	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-0082c92884c167e4d	\N	M5Large	t	\N	t	t	f	Linux/UNIX	EU_CENTRAL_1	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393257
458791	Ubuntu stock image	Elastic Image Configuration shipped with Bamboo	ami-02ba367f4d0dd15de	\N	M5Large	t	\N	t	f	f	Linux/UNIX	US_EAST_2	EBS	x86_64	linux	\N	3.0	Ubuntu	HVM	\N	393258
458792	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-0cb81fe14c5723466	\N	M5Large	t	\N	t	t	f	Linux/UNIX	ASIA_PACIFIC_SE_2	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393259
458793	Ubuntu PV stock image	Elastic Image Configuration shipped with Bamboo	ami-01a4e9b3316f56083	\N	M5Large	t	\N	t	t	f	Linux/UNIX	EU_WEST_1	EBS	x86_64	linux	\N	3.0	Ubuntu	PV	\N	393260
\.


--
-- Data for Name: elastic_schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.elastic_schedule (schedule_id, cron_exp, number_active, enabled, elastic_image, comparison) FROM stdin;
\.


--
-- Data for Name: hibernate_unique_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hibernate_unique_key (next_hi) FROM stdin;
15
\.


--
-- Data for Name: id_generator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.id_generator (name, next_id) FROM stdin;
\.


--
-- Data for Name: imserver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imserver (imserver_id, title, host, port, username, resource_name, password, ssl_required, tls_required) FROM stdin;
\.


--
-- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.label (label_id, name, namespace, created_date, updated_date) FROM stdin;
\.


--
-- Data for Name: merge_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.merge_result (mergeresult_id, failure_reason, integration_branch_vcs_key, integration_vcs_location_id, integration_branch_name, merge_result_vcs_key, branch_target_vcs_key, branch_name, merge_state, push_state, integration_strategy) FROM stdin;
\.


--
-- Data for Name: notification_sets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification_sets (notification_set_id, set_type) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (notification_rule_id, recipient_type, recipient, notification_set, condition_key, condition_data) FROM stdin;
\.


--
-- Data for Name: orphaned_tests_cleanup_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orphaned_tests_cleanup_job (build_id, min_build_number) FROM stdin;
\.


--
-- Data for Name: os_propertyentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.os_propertyentry (entity_name, entity_id, entity_key, key_type, boolean_val, double_val, string_val, text_val, long_val, int_val, date_val) FROM stdin;
\.


--
-- Data for Name: password_reset_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_token (id, username, token, token_created) FROM stdin;
\.


--
-- Data for Name: plan_branch_pull_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plan_branch_pull_request (plan_branch_pull_request_id, chain_branch_id, vcs_pull_request_id) FROM stdin;
\.


--
-- Data for Name: plan_dependencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plan_dependencies (dependency_id, dependency_type, child_plan_id, parent_plan_id) FROM stdin;
\.


--
-- Data for Name: plan_vcs_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plan_vcs_history (plan_vcs_history_id, plan_key, build_number, revision_key, vcs_location_id, xml_custom_data) FROM stdin;
\.


--
-- Data for Name: plan_vcs_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plan_vcs_location (plan_vcs_location_id, plan_id, vcs_location_id, list_position, build_trigger) FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project (project_id, created_date, updated_date, project_key, title, description, marked_for_deletion, oid) FROM stdin;
\.


--
-- Data for Name: queue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.queue (queue_id, agent_type, title, agent_description, created_date, updated_date, enabled, capability_set, last_start_time, last_stop_time, uuid, elastic_instance_id, elastic_image) FROM stdin;
360449	LOCAL	Default Agent	\N	2020-03-14 16:29:36.915	2020-03-14 16:29:36.915	t	393217	\N	\N	\N	\N	\N
\.


--
-- Data for Name: quick_filter_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quick_filter_rules (quick_filter_rule_id, plugin_key, name, configuration, quick_filter_id) FROM stdin;
\.


--
-- Data for Name: quick_filters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quick_filters (quick_filter_id, name, list_position) FROM stdin;
\.


--
-- Data for Name: relevant_changesets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relevant_changesets (buildresultsummary_id, repository_changeset_id) FROM stdin;
\.


--
-- Data for Name: rememberme_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rememberme_token (id, username, created, token) FROM stdin;
\.


--
-- Data for Name: repository_changeset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.repository_changeset (repository_changeset_id, buildresultsummary_id, vcs_location_id, changeset_id, skipped_commits_count, list_position, build_trigger) FROM stdin;
\.


--
-- Data for Name: requirement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.requirement (requirement_id, key_identifier, regex_match, readonly_req, match_value, plugin_module_key, unique_identifier, requirement_set) FROM stdin;
\.


--
-- Data for Name: requirement_set; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.requirement_set (requirement_set_id) FROM stdin;
\.


--
-- Data for Name: rss_permission_deployment_proj; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rss_permission_deployment_proj (permission_id, deployment_project_id, repository_id) FROM stdin;
\.


--
-- Data for Name: rss_permission_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rss_permission_project (permission_id, project_id, repository_id) FROM stdin;
\.


--
-- Data for Name: rss_permission_repository; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rss_permission_repository (permission_id, repository_id, target_repository_id) FROM stdin;
\.


--
-- Data for Name: script; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.script (script_id, body) FROM stdin;
\.


--
-- Data for Name: stage_variable_context; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stage_variable_context (variable_context_id, variable_key, variable_value, variable_type, stageresult_id) FROM stdin;
\.


--
-- Data for Name: test_case; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_case (test_case_id, test_class_id, test_case_name, successful_runs, failed_runs, avg_duration, first_build_num, last_build_num, quarantining_username, quarantine_date, linked_jira_issue) FROM stdin;
\.


--
-- Data for Name: test_case_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_case_result (test_case_result_id, delta_state, duration, failing_since, quarantined, test_state, test_case_id, test_class_result_id) FROM stdin;
\.


--
-- Data for Name: test_class; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_class (test_class_id, test_class_name, plan_id, master_job_id) FROM stdin;
\.


--
-- Data for Name: test_class_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_class_result (test_class_result_id, duration, failed_count, success_count, buildresultsummary_id, test_class_id) FROM stdin;
\.


--
-- Data for Name: test_error; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_error (error_id, result_id, error_content) FROM stdin;
\.


--
-- Data for Name: trusted_apps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trusted_apps (trusted_apps_id, app_id, public_key_clob, app_name, timeout) FROM stdin;
\.


--
-- Data for Name: trusted_apps_ips; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trusted_apps_ips (ip_pattern_id, ip_pattern) FROM stdin;
\.


--
-- Data for Name: trusted_apps_urls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trusted_apps_urls (url_pattern_id, url_pattern) FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trusted_key (id, host, ssh_key, approved) FROM stdin;
\.


--
-- Data for Name: user_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_comment (comment_id, content, user_name, entity_id, created_date, updated_date) FROM stdin;
\.


--
-- Data for Name: user_commit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_commit (commit_id, repository_changeset_id, author_id, commit_date, commit_revision, commit_comment_clob, foreign_commit) FROM stdin;
\.


--
-- Data for Name: variable_baseline_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variable_baseline_item (variable_baseline_item_id, variable_key, variable_value, variable_type, variable_context_baseline_id) FROM stdin;
\.


--
-- Data for Name: variable_context; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variable_context (variable_context_id, variable_key, variable_value, variable_type, buildresultsummary_id) FROM stdin;
\.


--
-- Data for Name: variable_context_baseline; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variable_context_baseline (variable_context_baseline_id, hash_string) FROM stdin;
\.


--
-- Data for Name: variable_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variable_definition (variable_definition_id, variable_key, variable_value, variable_type, plan_id, environment_id, deployment_version_id) FROM stdin;
\.


--
-- Data for Name: variable_substitution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variable_substitution (variable_substitution_id, variable_key, variable_value, variable_type, buildresultsummary_id) FROM stdin;
\.


--
-- Data for Name: variablestoautoincrement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.variablestoautoincrement (version_naming_scheme_id, variable_name) FROM stdin;
\.


--
-- Data for Name: vcs_branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vcs_branch (vcs_branch_id, name, detected_deletion_date, chain_id) FROM stdin;
\.


--
-- Data for Name: vcs_location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vcs_location (vcs_location_id, name, description, plugin_key, xml_definition_data, marked_for_deletion, is_global, parent_id, oid) FROM stdin;
\.


--
-- Data for Name: vcs_pull_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vcs_pull_request (vcs_pull_request_id, vcs_pull_request_key, target_repository_id, target, source_repository_id, source, open_status, created_date, updated_date) FROM stdin;
\.


--
-- Data for Name: vcs_specs_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vcs_specs_source (vcs_specs_source_id, vcs_source_location, vcs_specs_state_id) FROM stdin;
\.


--
-- Data for Name: vcs_specs_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vcs_specs_state (vcs_specs_state_id, branch, log_filename, revision, specs_execution_date, import_state, vcs_location_id) FROM stdin;
\.


--
-- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"', 1, false);


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
-- Name: AO_7A45FB_AOTRACKING_ENTRY_TRACKING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_7A45FB_AOTRACKING_ENTRY_TRACKING_ID_seq"', 1, false);


--
-- Name: AO_7A45FB_AOTRACKING_RESULT_RESULT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_7A45FB_AOTRACKING_RESULT_RESULT_ID_seq"', 1, false);


--
-- Name: AO_7A45FB_AOTRACKING_USER_USER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_7A45FB_AOTRACKING_USER_USER_ID_seq"', 1, false);


--
-- Name: AO_A0B856_WEBHOOK_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_A0B856_WEBHOOK_CONFIG_ID_seq"', 1, false);


--
-- Name: AO_A0B856_WEBHOOK_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_A0B856_WEBHOOK_EVENT_ID_seq"', 1, false);


--
-- Name: AO_A0B856_WEBHOOK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_A0B856_WEBHOOK_ID_seq"', 1, false);


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);


--
-- Name: AO_F1B80E_BRANCH_SELECTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AO_F1B80E_BRANCH_SELECTION_ID_seq"', 1, false);


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
-- Name: AO_7A45FB_AOTRACKING_ENTRY AO_7A45FB_AOTRACKING_ENTRY_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_7A45FB_AOTRACKING_ENTRY"
    ADD CONSTRAINT "AO_7A45FB_AOTRACKING_ENTRY_pkey" PRIMARY KEY ("TRACKING_ID");


--
-- Name: AO_7A45FB_AOTRACKING_RESULT AO_7A45FB_AOTRACKING_RESULT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_7A45FB_AOTRACKING_RESULT"
    ADD CONSTRAINT "AO_7A45FB_AOTRACKING_RESULT_pkey" PRIMARY KEY ("RESULT_ID");


--
-- Name: AO_7A45FB_AOTRACKING_USER AO_7A45FB_AOTRACKING_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_7A45FB_AOTRACKING_USER"
    ADD CONSTRAINT "AO_7A45FB_AOTRACKING_USER_pkey" PRIMARY KEY ("USER_ID");


--
-- Name: AO_A0B856_WEBHOOK_CONFIG AO_A0B856_WEBHOOK_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEBHOOK_CONFIG"
    ADD CONSTRAINT "AO_A0B856_WEBHOOK_CONFIG_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEBHOOK_EVENT AO_A0B856_WEBHOOK_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEBHOOK_EVENT"
    ADD CONSTRAINT "AO_A0B856_WEBHOOK_EVENT_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEBHOOK AO_A0B856_WEBHOOK_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEBHOOK"
    ADD CONSTRAINT "AO_A0B856_WEBHOOK_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_A0B856_WEB_HOOK_LISTENER_AO AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO"
    ADD CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");


--
-- Name: AO_C7F71E_OAUTH_SVC_PROV_TKNS AO_C7F71E_OAUTH_SVC_PROV_TKNS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_C7F71E_OAUTH_SVC_PROV_TKNS"
    ADD CONSTRAINT "AO_C7F71E_OAUTH_SVC_PROV_TKNS_pkey" PRIMARY KEY ("TOKEN");


--
-- Name: AO_F1B80E_BRANCH_SELECTION AO_F1B80E_BRANCH_SELECTION_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_F1B80E_BRANCH_SELECTION"
    ADD CONSTRAINT "AO_F1B80E_BRANCH_SELECTION_pkey" PRIMARY KEY ("ID");


--
-- Name: access_token access_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_token
    ADD CONSTRAINT access_token_pkey PRIMARY KEY (access_token_id);


--
-- Name: acl_entry acl_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_entry
    ADD CONSTRAINT acl_entry_pkey PRIMARY KEY (id);


--
-- Name: acl_object_identity acl_object_identity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_object_identity
    ADD CONSTRAINT acl_object_identity_pkey PRIMARY KEY (id);


--
-- Name: agent_assignment agent_assignment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agent_assignment
    ADD CONSTRAINT agent_assignment_pkey PRIMARY KEY (assignment_id);


--
-- Name: agent_authentication agent_authentication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agent_authentication
    ADD CONSTRAINT agent_authentication_pkey PRIMARY KEY (authentication_id);


--
-- Name: artifact_definition artifact_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artifact_definition
    ADD CONSTRAINT artifact_definition_pkey PRIMARY KEY (artifact_definition_id);


--
-- Name: artifact artifact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artifact
    ADD CONSTRAINT artifact_pkey PRIMARY KEY (artifact_id);


--
-- Name: artifact_subscription artifact_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artifact_subscription
    ADD CONSTRAINT artifact_subscription_pkey PRIMARY KEY (artifact_subscription_id);


--
-- Name: agent_assignment assignment_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agent_assignment
    ADD CONSTRAINT assignment_unique UNIQUE (executor_id, executor_type, executable_id, executable_type);


--
-- Name: audit_log audit_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id);


--
-- Name: auth_attempt_info auth_attempt_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_attempt_info
    ADD CONSTRAINT auth_attempt_info_pkey PRIMARY KEY (id);


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (author_id);


--
-- Name: bandana bandana_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bandana
    ADD CONSTRAINT bandana_pkey PRIMARY KEY (bandana_id);


--
-- Name: branch_commit_info branch_commit_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch_commit_info
    ADD CONSTRAINT branch_commit_info_pkey PRIMARY KEY (branch_commit_info_id);


--
-- Name: brs_artifact_link brs_artifact_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_artifact_link
    ADD CONSTRAINT brs_artifact_link_pkey PRIMARY KEY (artifact_link_id);


--
-- Name: brs_consumed_subscription brs_consumed_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_consumed_subscription
    ADD CONSTRAINT brs_consumed_subscription_pkey PRIMARY KEY (consumed_subscription_id);


--
-- Name: buildresultsummary brs_key_number_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary
    ADD CONSTRAINT brs_key_number_unique UNIQUE (build_key, build_number);


--
-- Name: brs_linkedjiraissues brs_linkedjiraissues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_linkedjiraissues
    ADD CONSTRAINT brs_linkedjiraissues_pkey PRIMARY KEY (linkedjiraissue_id);


--
-- Name: build_definition build_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build_definition
    ADD CONSTRAINT build_definition_pkey PRIMARY KEY (build_definition_id);


--
-- Name: build_numbers build_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build_numbers
    ADD CONSTRAINT build_numbers_pkey PRIMARY KEY (build_numbers_id);


--
-- Name: build build_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT build_pkey PRIMARY KEY (build_id);


--
-- Name: buildresult_warning_summary buildresult_warning_summary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresult_warning_summary
    ADD CONSTRAINT buildresult_warning_summary_pkey PRIMARY KEY (build_result_warning_id);


--
-- Name: buildresultsummary_customdata buildresultsummary_customdata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary_customdata
    ADD CONSTRAINT buildresultsummary_customdata_pkey PRIMARY KEY (buildresultsummary_id, custom_info_key);


--
-- Name: buildresultsummary_label buildresultsummary_label_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary_label
    ADD CONSTRAINT buildresultsummary_label_pkey PRIMARY KEY (id);


--
-- Name: buildresultsummary buildresultsummary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary
    ADD CONSTRAINT buildresultsummary_pkey PRIMARY KEY (buildresultsummary_id);


--
-- Name: capability capability_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.capability
    ADD CONSTRAINT capability_pkey PRIMARY KEY (capability_id);


--
-- Name: capability_set capability_set_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.capability_set
    ADD CONSTRAINT capability_set_pkey PRIMARY KEY (capability_set_id);


--
-- Name: crowd_deleted_entity cde_entity_unq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crowd_deleted_entity
    ADD CONSTRAINT cde_entity_unq UNIQUE (entity_type, entity_name);


--
-- Name: chain_stage chain_stage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chain_stage
    ADD CONSTRAINT chain_stage_pkey PRIMARY KEY (stage_id);


--
-- Name: chain_stage_result chain_stage_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chain_stage_result
    ADD CONSTRAINT chain_stage_result_pkey PRIMARY KEY (stageresult_id);


--
-- Name: credentials credentials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.credentials
    ADD CONSTRAINT credentials_pkey PRIMARY KEY (credentials_id);


--
-- Name: crowd_deleted_entity crowd_deleted_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crowd_deleted_entity
    ADD CONSTRAINT crowd_deleted_entity_pkey PRIMARY KEY (crowd_deleted_entity_id);


--
-- Name: cwd_app_dir_default_groups cwd_app_dir_default_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_default_groups
    ADD CONSTRAINT cwd_app_dir_default_groups_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_group_mapping cwd_app_dir_group_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT cwd_app_dir_group_mapping_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_mapping cwd_app_dir_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_mapping
    ADD CONSTRAINT cwd_app_dir_mapping_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_dir_operation cwd_app_dir_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_operation
    ADD CONSTRAINT cwd_app_dir_operation_pkey PRIMARY KEY (app_dir_mapping_id, operation_type);


--
-- Name: cwd_app_licensed_user cwd_app_licensed_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_licensed_user
    ADD CONSTRAINT cwd_app_licensed_user_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_licensing_dir_info cwd_app_licensing_dir_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_licensing_dir_info
    ADD CONSTRAINT cwd_app_licensing_dir_info_pkey PRIMARY KEY (id);


--
-- Name: cwd_app_licensing cwd_app_licensing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_licensing
    ADD CONSTRAINT cwd_app_licensing_pkey PRIMARY KEY (id);


--
-- Name: cwd_application_address cwd_application_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_address
    ADD CONSTRAINT cwd_application_address_pkey PRIMARY KEY (application_id, remote_address);


--
-- Name: cwd_application_alias cwd_application_alias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_alias
    ADD CONSTRAINT cwd_application_alias_pkey PRIMARY KEY (id);


--
-- Name: cwd_application_attribute cwd_application_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_attribute
    ADD CONSTRAINT cwd_application_attribute_pkey PRIMARY KEY (application_id, attribute_name);


--
-- Name: cwd_application cwd_application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application
    ADD CONSTRAINT cwd_application_pkey PRIMARY KEY (id);


--
-- Name: cwd_directory_attribute cwd_directory_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory_attribute
    ADD CONSTRAINT cwd_directory_attribute_pkey PRIMARY KEY (directory_id, attribute_name);


--
-- Name: cwd_directory_operation cwd_directory_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory_operation
    ADD CONSTRAINT cwd_directory_operation_pkey PRIMARY KEY (directory_id, operation_type);


--
-- Name: cwd_directory cwd_directory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory
    ADD CONSTRAINT cwd_directory_pkey PRIMARY KEY (id);


--
-- Name: cwd_expirable_user_token cwd_expirable_user_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_expirable_user_token
    ADD CONSTRAINT cwd_expirable_user_token_pkey PRIMARY KEY (id);


--
-- Name: cwd_granted_perm cwd_granted_perm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_granted_perm
    ADD CONSTRAINT cwd_granted_perm_pkey PRIMARY KEY (id);


--
-- Name: cwd_group_admin_group cwd_group_admin_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_admin_group
    ADD CONSTRAINT cwd_group_admin_group_pkey PRIMARY KEY (id);


--
-- Name: cwd_group_admin_user cwd_group_admin_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_admin_user
    ADD CONSTRAINT cwd_group_admin_user_pkey PRIMARY KEY (id);


--
-- Name: cwd_group_attribute cwd_group_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_attribute
    ADD CONSTRAINT cwd_group_attribute_pkey PRIMARY KEY (id);


--
-- Name: cwd_group cwd_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT cwd_group_pkey PRIMARY KEY (id);


--
-- Name: cwd_membership cwd_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT cwd_membership_pkey PRIMARY KEY (id);


--
-- Name: cwd_property cwd_property_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_property
    ADD CONSTRAINT cwd_property_pkey PRIMARY KEY (property_key, property_name);


--
-- Name: cwd_synchronisation_status cwd_synchronisation_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_synchronisation_status
    ADD CONSTRAINT cwd_synchronisation_status_pkey PRIMARY KEY (id);


--
-- Name: cwd_synchronisation_token cwd_synchronisation_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_synchronisation_token
    ADD CONSTRAINT cwd_synchronisation_token_pkey PRIMARY KEY (directory_id);


--
-- Name: cwd_token cwd_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_token
    ADD CONSTRAINT cwd_token_pkey PRIMARY KEY (id);


--
-- Name: cwd_tombstone cwd_tombstone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_tombstone
    ADD CONSTRAINT cwd_tombstone_pkey PRIMARY KEY (id);


--
-- Name: cwd_user_attribute cwd_user_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user_attribute
    ADD CONSTRAINT cwd_user_attribute_pkey PRIMARY KEY (id);


--
-- Name: cwd_user_credential_record cwd_user_credential_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user_credential_record
    ADD CONSTRAINT cwd_user_credential_record_pkey PRIMARY KEY (id);


--
-- Name: cwd_user cwd_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT cwd_user_pkey PRIMARY KEY (id);


--
-- Name: cwd_webhook cwd_webhook_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_webhook
    ADD CONSTRAINT cwd_webhook_pkey PRIMARY KEY (id);


--
-- Name: dep_version_planresultkeys dep_version_planresultkeys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dep_version_planresultkeys
    ADD CONSTRAINT dep_version_planresultkeys_pkey PRIMARY KEY (dep_version_planresultkeys_id);


--
-- Name: deployment_env_config deployment_env_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_env_config
    ADD CONSTRAINT deployment_env_config_pkey PRIMARY KEY (environment_id);


--
-- Name: deployment_env_vcs_location deployment_env_vcs_location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_env_vcs_location
    ADD CONSTRAINT deployment_env_vcs_location_pkey PRIMARY KEY (env_vcs_location_id);


--
-- Name: deployment_environment deployment_environment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_environment
    ADD CONSTRAINT deployment_environment_pkey PRIMARY KEY (environment_id);


--
-- Name: deployment_project_item_ba deployment_project_item_ba_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_project_item_ba
    ADD CONSTRAINT deployment_project_item_ba_pkey PRIMARY KEY (bam_artifact_item_id);


--
-- Name: deployment_project_item deployment_project_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_project_item
    ADD CONSTRAINT deployment_project_item_pkey PRIMARY KEY (deployment_project_item_id);


--
-- Name: deployment_project deployment_project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_project
    ADD CONSTRAINT deployment_project_pkey PRIMARY KEY (deployment_project_id);


--
-- Name: deployment_result_customdata deployment_result_customdata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_result_customdata
    ADD CONSTRAINT deployment_result_customdata_pkey PRIMARY KEY (deployment_result_id, custom_info_key);


--
-- Name: deployment_result deployment_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_result
    ADD CONSTRAINT deployment_result_pkey PRIMARY KEY (deployment_result_id);


--
-- Name: deployment_version_changeset deployment_version_changeset_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_changeset
    ADD CONSTRAINT deployment_version_changeset_pkey PRIMARY KEY (dep_version_changeset_id);


--
-- Name: deployment_version_commit deployment_version_commit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_commit
    ADD CONSTRAINT deployment_version_commit_pkey PRIMARY KEY (deployment_version_commit_id);


--
-- Name: deployment_version_item_ba deployment_version_item_ba_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_item_ba
    ADD CONSTRAINT deployment_version_item_ba_pkey PRIMARY KEY (version_bam_artifact_item_id);


--
-- Name: deployment_version_item deployment_version_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_item
    ADD CONSTRAINT deployment_version_item_pkey PRIMARY KEY (deployment_version_item_id);


--
-- Name: deployment_version_jira_issue deployment_version_jira_issue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_jira_issue
    ADD CONSTRAINT deployment_version_jira_issue_pkey PRIMARY KEY (dep_ver_jira_issue_id);


--
-- Name: deployment_version_naming deployment_version_naming_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_naming
    ADD CONSTRAINT deployment_version_naming_pkey PRIMARY KEY (version_naming_scheme_id);


--
-- Name: deployment_version deployment_version_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version
    ADD CONSTRAINT deployment_version_pkey PRIMARY KEY (deployment_version_id);


--
-- Name: deployment_version_status deployment_version_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_status
    ADD CONSTRAINT deployment_version_status_pkey PRIMARY KEY (deployment_version_status_id);


--
-- Name: ec2_image_script ec2_image_script_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec2_image_script
    ADD CONSTRAINT ec2_image_script_pkey PRIMARY KEY (elastic_image_id, script_index);


--
-- Name: elastic_image elastic_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elastic_image
    ADD CONSTRAINT elastic_image_pkey PRIMARY KEY (elastic_image_id);


--
-- Name: elastic_schedule elastic_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elastic_schedule
    ADD CONSTRAINT elastic_schedule_pkey PRIMARY KEY (schedule_id);


--
-- Name: id_generator id_generator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id_generator
    ADD CONSTRAINT id_generator_pkey PRIMARY KEY (name);


--
-- Name: imserver imserver_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imserver
    ADD CONSTRAINT imserver_pkey PRIMARY KEY (imserver_id);


--
-- Name: label label_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.label
    ADD CONSTRAINT label_pkey PRIMARY KEY (label_id);


--
-- Name: merge_result merge_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merge_result
    ADD CONSTRAINT merge_result_pkey PRIMARY KEY (mergeresult_id);


--
-- Name: notification_sets notification_sets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_sets
    ADD CONSTRAINT notification_sets_pkey PRIMARY KEY (notification_set_id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_rule_id);


--
-- Name: notifications notifications_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_unique UNIQUE (recipient_type, recipient, notification_set, condition_key, condition_data);


--
-- Name: orphaned_tests_cleanup_job orphaned_tests_cleanup_job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orphaned_tests_cleanup_job
    ADD CONSTRAINT orphaned_tests_cleanup_job_pkey PRIMARY KEY (build_id);


--
-- Name: os_propertyentry os_propertyentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os_propertyentry
    ADD CONSTRAINT os_propertyentry_pkey PRIMARY KEY (entity_name, entity_id, entity_key);


--
-- Name: password_reset_token password_reset_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_token
    ADD CONSTRAINT password_reset_token_pkey PRIMARY KEY (id);


--
-- Name: plan_branch_pull_request plan_branch_pr_unq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_branch_pull_request
    ADD CONSTRAINT plan_branch_pr_unq UNIQUE (vcs_pull_request_id, chain_branch_id);


--
-- Name: plan_branch_pull_request plan_branch_pull_request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_branch_pull_request
    ADD CONSTRAINT plan_branch_pull_request_pkey PRIMARY KEY (plan_branch_pull_request_id);


--
-- Name: plan_dependencies plan_dependencies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_dependencies
    ADD CONSTRAINT plan_dependencies_pkey PRIMARY KEY (dependency_id);


--
-- Name: plan_vcs_history plan_vcs_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_vcs_history
    ADD CONSTRAINT plan_vcs_history_pkey PRIMARY KEY (plan_vcs_history_id);


--
-- Name: plan_vcs_location plan_vcs_location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_vcs_location
    ADD CONSTRAINT plan_vcs_location_pkey PRIMARY KEY (plan_vcs_location_id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (project_id);


--
-- Name: queue queue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.queue
    ADD CONSTRAINT queue_pkey PRIMARY KEY (queue_id);


--
-- Name: quick_filter_rules quick_filter_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quick_filter_rules
    ADD CONSTRAINT quick_filter_rules_pkey PRIMARY KEY (quick_filter_rule_id);


--
-- Name: quick_filters quick_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quick_filters
    ADD CONSTRAINT quick_filters_pkey PRIMARY KEY (quick_filter_id);


--
-- Name: rememberme_token rememberme_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rememberme_token
    ADD CONSTRAINT rememberme_token_pkey PRIMARY KEY (id);


--
-- Name: repository_changeset repository_changeset_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repository_changeset
    ADD CONSTRAINT repository_changeset_pkey PRIMARY KEY (repository_changeset_id);


--
-- Name: requirement requirement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requirement
    ADD CONSTRAINT requirement_pkey PRIMARY KEY (requirement_id);


--
-- Name: requirement_set requirement_set_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requirement_set
    ADD CONSTRAINT requirement_set_pkey PRIMARY KEY (requirement_set_id);


--
-- Name: rss_permission_deployment_proj rss_permission_deployment_proj_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_deployment_proj
    ADD CONSTRAINT rss_permission_deployment_proj_pkey PRIMARY KEY (permission_id);


--
-- Name: rss_permission_project rss_permission_project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_project
    ADD CONSTRAINT rss_permission_project_pkey PRIMARY KEY (permission_id);


--
-- Name: rss_permission_repository rss_permission_repository_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_repository
    ADD CONSTRAINT rss_permission_repository_pkey PRIMARY KEY (permission_id);


--
-- Name: script script_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.script
    ADD CONSTRAINT script_pkey PRIMARY KEY (script_id);


--
-- Name: stage_variable_context stage_variable_context_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage_variable_context
    ADD CONSTRAINT stage_variable_context_pkey PRIMARY KEY (variable_context_id);


--
-- Name: test_case test_case_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_case
    ADD CONSTRAINT test_case_pkey PRIMARY KEY (test_case_id);


--
-- Name: test_case_result test_case_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_case_result
    ADD CONSTRAINT test_case_result_pkey PRIMARY KEY (test_case_result_id);


--
-- Name: test_class test_class_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_class
    ADD CONSTRAINT test_class_pkey PRIMARY KEY (test_class_id);


--
-- Name: test_class_result test_class_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_class_result
    ADD CONSTRAINT test_class_result_pkey PRIMARY KEY (test_class_result_id);


--
-- Name: test_error test_error_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_error
    ADD CONSTRAINT test_error_pkey PRIMARY KEY (error_id);


--
-- Name: trusted_apps trusted_apps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trusted_apps
    ADD CONSTRAINT trusted_apps_pkey PRIMARY KEY (trusted_apps_id);


--
-- Name: trusted_key trusted_key_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trusted_key
    ADD CONSTRAINT trusted_key_pkey PRIMARY KEY (id);


--
-- Name: AO_4789DD_TASK_MONITOR u_ao_4789dd_task_mo1827547914; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
    ADD CONSTRAINT u_ao_4789dd_task_mo1827547914 UNIQUE ("TASK_ID");


--
-- Name: access_token uk6o8sg52lge9ppfnjjwcn2suji; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_token
    ADD CONSTRAINT uk6o8sg52lge9ppfnjjwcn2suji UNIQUE (user_name, name);


--
-- Name: rss_permission_repository uk7wkdmhiju5g1sd7o3c4wk7gub; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_repository
    ADD CONSTRAINT uk7wkdmhiju5g1sd7o3c4wk7gub UNIQUE (target_repository_id, repository_id);


--
-- Name: buildresult_warning_summary uk8ddc0wxvevky6o3e5ts6ygn0x; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresult_warning_summary
    ADD CONSTRAINT uk8ddc0wxvevky6o3e5ts6ygn0x UNIQUE (buildresultsummary_id, repository_id);


--
-- Name: build_definition uk_3my79d2knlrehoklnnljwr0pn; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build_definition
    ADD CONSTRAINT uk_3my79d2knlrehoklnnljwr0pn UNIQUE (build_id);


--
-- Name: branch_commit_info uk_40mo3l9h2lpmkg0vne9q70eh2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch_commit_info
    ADD CONSTRAINT uk_40mo3l9h2lpmkg0vne9q70eh2 UNIQUE (branch_id);


--
-- Name: build_numbers uk_651b86dhg54bcgvn82tdcw4by; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build_numbers
    ADD CONSTRAINT uk_651b86dhg54bcgvn82tdcw4by UNIQUE (build_id);


--
-- Name: quick_filters uk_a8gx2nksxf6lg33tul00dub6i; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quick_filters
    ADD CONSTRAINT uk_a8gx2nksxf6lg33tul00dub6i UNIQUE (name);


--
-- Name: cwd_application_alias uk_alias_app_l_alias; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_alias
    ADD CONSTRAINT uk_alias_app_l_alias UNIQUE (application_id, lower_alias_name);


--
-- Name: cwd_application_alias uk_alias_app_l_username; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_alias
    ADD CONSTRAINT uk_alias_app_l_username UNIQUE (application_id, lower_user_name);


--
-- Name: cwd_app_dir_mapping uk_app_dir; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_mapping
    ADD CONSTRAINT uk_app_dir UNIQUE (application_id, directory_id);


--
-- Name: cwd_app_dir_group_mapping uk_app_dir_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT uk_app_dir_group UNIQUE (app_dir_mapping_id, group_name);


--
-- Name: cwd_application uk_app_l_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application
    ADD CONSTRAINT uk_app_l_name UNIQUE (lower_application_name);


--
-- Name: cwd_app_dir_default_groups uk_appmapping_groupname; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_default_groups
    ADD CONSTRAINT uk_appmapping_groupname UNIQUE (application_mapping_id, group_name);


--
-- Name: auth_attempt_info uk_bm0lb4ya9whq89box05jyqjo1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_attempt_info
    ADD CONSTRAINT uk_bm0lb4ya9whq89box05jyqjo1 UNIQUE (user_name);


--
-- Name: agent_authentication uk_cm59c74kkx7htg87ttqotblh8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agent_authentication
    ADD CONSTRAINT uk_cm59c74kkx7htg87ttqotblh8 UNIQUE (uuid);


--
-- Name: trusted_apps uk_crhbetxf4qgtmwmn72l6mtgdx; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trusted_apps
    ADD CONSTRAINT uk_crhbetxf4qgtmwmn72l6mtgdx UNIQUE (app_id);


--
-- Name: cwd_directory uk_dir_l_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory
    ADD CONSTRAINT uk_dir_l_name UNIQUE (lower_directory_name);


--
-- Name: cwd_expirable_user_token uk_expirable_user_token; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_expirable_user_token
    ADD CONSTRAINT uk_expirable_user_token UNIQUE (token);


--
-- Name: author uk_ffiibfpic09earlrraqgngf1o; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT uk_ffiibfpic09earlrraqgngf1o UNIQUE (author_name);


--
-- Name: password_reset_token uk_g23a77q0tmnt3tswjuwajytal; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_token
    ADD CONSTRAINT uk_g23a77q0tmnt3tswjuwajytal UNIQUE (username);


--
-- Name: cwd_group_admin_group uk_group_and_target_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_admin_group
    ADD CONSTRAINT uk_group_and_target_group UNIQUE (group_id, target_group_id);


--
-- Name: cwd_group_attribute uk_group_name_attr_lval; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_attribute
    ADD CONSTRAINT uk_group_name_attr_lval UNIQUE (group_id, attribute_name, attribute_lower_value);


--
-- Name: cwd_group uk_group_name_dir_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT uk_group_name_dir_id UNIQUE (lower_group_name, directory_id);


--
-- Name: credentials uk_jf9vosiiv28opgjwy6y26aruw; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.credentials
    ADD CONSTRAINT uk_jf9vosiiv28opgjwy6y26aruw UNIQUE (name);


--
-- Name: cwd_membership uk_mem_parent_child_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT uk_mem_parent_child_type UNIQUE (parent_id, child_id, membership_type);


--
-- Name: build uk_n3cbpttuc3dd9kx0cao3xobgj; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT uk_n3cbpttuc3dd9kx0cao3xobgj UNIQUE (full_key);


--
-- Name: access_token uk_pjennhdel1u236343vshpcvse; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_token
    ADD CONSTRAINT uk_pjennhdel1u236343vshpcvse UNIQUE (token_id);


--
-- Name: cwd_token uk_token_id_hash; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_token
    ADD CONSTRAINT uk_token_id_hash UNIQUE (identifier_hash);


--
-- Name: cwd_group_admin_user uk_user_and_target_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_admin_user
    ADD CONSTRAINT uk_user_and_target_group UNIQUE (user_id, target_group_id);


--
-- Name: cwd_user_attribute uk_user_attr_name_lval; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user_attribute
    ADD CONSTRAINT uk_user_attr_name_lval UNIQUE (user_id, attribute_name, attribute_lower_value);


--
-- Name: cwd_user uk_user_name_dir_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT uk_user_name_dir_id UNIQUE (lower_user_name, directory_id);


--
-- Name: cwd_webhook uk_webhook_url_app; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_webhook
    ADD CONSTRAINT uk_webhook_url_app UNIQUE (endpoint_url, application_id);


--
-- Name: rss_permission_project ukabxfbb8ye3w2jvsod2kj9w7up; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_project
    ADD CONSTRAINT ukabxfbb8ye3w2jvsod2kj9w7up UNIQUE (project_id, repository_id);


--
-- Name: rss_permission_deployment_proj ukj8mkx1xvntuq3ig1th18u0j9r; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_deployment_proj
    ADD CONSTRAINT ukj8mkx1xvntuq3ig1th18u0j9r UNIQUE (deployment_project_id, repository_id);


--
-- Name: user_comment user_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_comment
    ADD CONSTRAINT user_comment_pkey PRIMARY KEY (comment_id);


--
-- Name: user_commit user_commit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_commit
    ADD CONSTRAINT user_commit_pkey PRIMARY KEY (commit_id);


--
-- Name: variable_baseline_item variable_baseline_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_baseline_item
    ADD CONSTRAINT variable_baseline_item_pkey PRIMARY KEY (variable_baseline_item_id);


--
-- Name: variable_context_baseline variable_context_baseline_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_context_baseline
    ADD CONSTRAINT variable_context_baseline_pkey PRIMARY KEY (variable_context_baseline_id);


--
-- Name: variable_context variable_context_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_context
    ADD CONSTRAINT variable_context_pkey PRIMARY KEY (variable_context_id);


--
-- Name: variable_definition variable_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_definition
    ADD CONSTRAINT variable_definition_pkey PRIMARY KEY (variable_definition_id);


--
-- Name: variable_substitution variable_substitution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_substitution
    ADD CONSTRAINT variable_substitution_pkey PRIMARY KEY (variable_substitution_id);


--
-- Name: variablestoautoincrement variablestoautoincrement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variablestoautoincrement
    ADD CONSTRAINT variablestoautoincrement_pkey PRIMARY KEY (version_naming_scheme_id, variable_name);


--
-- Name: vcs_branch vcs_branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_branch
    ADD CONSTRAINT vcs_branch_pkey PRIMARY KEY (vcs_branch_id);


--
-- Name: vcs_location vcs_location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_location
    ADD CONSTRAINT vcs_location_pkey PRIMARY KEY (vcs_location_id);


--
-- Name: vcs_pull_request vcs_pull_request_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_pull_request
    ADD CONSTRAINT vcs_pull_request_pkey PRIMARY KEY (vcs_pull_request_id);


--
-- Name: vcs_specs_source vcs_specs_source_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_specs_source
    ADD CONSTRAINT vcs_specs_source_pkey PRIMARY KEY (vcs_specs_source_id);


--
-- Name: vcs_specs_state vcs_specs_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_specs_state
    ADD CONSTRAINT vcs_specs_state_pkey PRIMARY KEY (vcs_specs_state_id);


--
-- Name: vcs_pull_request vcspullreq_keytargetrepo_idx; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_pull_request
    ADD CONSTRAINT vcspullreq_keytargetrepo_idx UNIQUE (vcs_pull_request_key, target_repository_id);


--
-- Name: artifact_plan_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX artifact_plan_key ON public.artifact USING btree (plan_key, build_number);


--
-- Name: band_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX band_key_idx ON public.bandana USING btree (build_id, bandana_key);


--
-- Name: brs_agent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brs_agent_idx ON public.buildresultsummary USING btree (build_agent_id);


--
-- Name: brs_build_state_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brs_build_state_idx ON public.buildresultsummary USING btree (build_state);


--
-- Name: brs_deletion_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brs_deletion_idx ON public.buildresultsummary USING btree (marked_for_deletion);


--
-- Name: brs_life_cycle_state_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brs_life_cycle_state_idx ON public.buildresultsummary USING btree (life_cycle_state);


--
-- Name: brs_log_size_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX brs_log_size_idx ON public.buildresultsummary USING btree (log_size);


--
-- Name: cap_scope_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cap_scope_idx ON public.capability_set USING btree (capability_scope);


--
-- Name: capability_key_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX capability_key_index ON public.capability USING btree (key_identifier);


--
-- Name: cde_deletion_date_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cde_deletion_date_idx ON public.crowd_deleted_entity USING btree (deletion_date);


--
-- Name: comment_entityid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comment_entityid_idx ON public.user_comment USING btree (entity_id);


--
-- Name: comment_username_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comment_username_idx ON public.user_comment USING btree (user_name);


--
-- Name: commit_rev_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX commit_rev_idx ON public.user_commit USING btree (commit_revision);


--
-- Name: dep_ver_commit_rev_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dep_ver_commit_rev_idx ON public.deployment_version_commit USING btree (commit_revision);


--
-- Name: dep_ver_jiraissues_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dep_ver_jiraissues_key_idx ON public.deployment_version_jira_issue USING btree (jira_issue_key);


--
-- Name: deployment_plan_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deployment_plan_key ON public.deployment_project USING btree (plan_key);


--
-- Name: deployment_plan_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX deployment_plan_name ON public.deployment_project USING btree (name);


--
-- Name: dr_agent_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dr_agent_idx ON public.deployment_result USING btree (agent_id);


--
-- Name: dr_build_state_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dr_build_state_idx ON public.deployment_result USING btree (deployment_state);


--
-- Name: dr_life_cycle_state_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dr_life_cycle_state_idx ON public.deployment_result USING btree (life_cycle_state);


--
-- Name: dr_started; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dr_started ON public.deployment_result USING btree (started_date);


--
-- Name: dr_started_env_lc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dr_started_env_lc ON public.deployment_result USING btree (started_date, environment_id, life_cycle_state);


--
-- Name: dver_pk_plan_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dver_pk_plan_key ON public.dep_version_planresultkeys USING btree (plan_key, build_number);


--
-- Name: dversion_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX dversion_name ON public.deployment_version USING btree (name);


--
-- Name: entity_time_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX entity_time_idx ON public.audit_log USING btree (entity_id, msg_time_stamp);


--
-- Name: executable_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX executable_id_idx ON public.agent_assignment USING btree (executable_id);


--
-- Name: executable_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX executable_type_idx ON public.agent_assignment USING btree (executable_type);


--
-- Name: executor_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX executor_id_idx ON public.agent_assignment USING btree (executor_id);


--
-- Name: executor_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX executor_type_idx ON public.agent_assignment USING btree (executor_type);


--
-- Name: idx_app_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_active ON public.cwd_application USING btree (active);


--
-- Name: idx_app_dir_group_group_dir; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_dir_group_group_dir ON public.cwd_app_dir_group_mapping USING btree (directory_id, group_name);


--
-- Name: idx_app_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_app_type ON public.cwd_application USING btree (application_type);


--
-- Name: idx_dir_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_active ON public.cwd_directory USING btree (active);


--
-- Name: idx_dir_l_impl_class; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_l_impl_class ON public.cwd_directory USING btree (lower_impl_class);


--
-- Name: idx_dir_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dir_type ON public.cwd_directory USING btree (directory_type);


--
-- Name: idx_external_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_external_id ON public.cwd_user USING btree (external_id);


--
-- Name: idx_group_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_active ON public.cwd_group USING btree (active, directory_id);


--
-- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_attr_dir_name_lval ON public.cwd_group_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


--
-- Name: idx_group_external_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_group_external_id ON public.cwd_group USING btree (external_id);


--
-- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_child ON public.cwd_membership USING btree (membership_type, lower_child_name, directory_id);


--
-- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent ON public.cwd_membership USING btree (membership_type, lower_parent_name, directory_id);


--
-- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_mem_dir_parent_child ON public.cwd_membership USING btree (membership_type, lower_parent_name, lower_child_name, directory_id);


--
-- Name: idx_sync_end; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sync_end ON public.cwd_synchronisation_status USING btree (sync_end);


--
-- Name: idx_sync_status_node_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_sync_status_node_id ON public.cwd_synchronisation_status USING btree (node_id);


--
-- Name: idx_token_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_token_dir_id ON public.cwd_token USING btree (directory_id);


--
-- Name: idx_token_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_token_key ON public.cwd_token USING btree (random_hash);


--
-- Name: idx_token_last_access; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_token_last_access ON public.cwd_token USING btree (last_accessed_date);


--
-- Name: idx_token_name_dir_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_token_name_dir_id ON public.cwd_token USING btree (directory_id, entity_name);


--
-- Name: idx_tombstone_type_timestamp; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_tombstone_type_timestamp ON public.cwd_tombstone USING btree (tombstone_type, tombstone_timestamp);


--
-- Name: idx_user_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_active ON public.cwd_user USING btree (active, directory_id);


--
-- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_attr_dir_name_lval ON public.cwd_user_attribute USING btree (directory_id, attribute_name, attribute_lower_value);


--
-- Name: idx_user_attr_nval; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_attr_nval ON public.cwd_user_attribute USING btree (attribute_name, attribute_numeric_value);


--
-- Name: idx_user_lower_display_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_lower_display_name ON public.cwd_user USING btree (lower_display_name, directory_id);


--
-- Name: idx_user_lower_email_address; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_lower_email_address ON public.cwd_user USING btree (lower_email_address, directory_id);


--
-- Name: idx_user_lower_first_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_lower_first_name ON public.cwd_user USING btree (lower_first_name, directory_id);


--
-- Name: idx_user_lower_last_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_lower_last_name ON public.cwd_user USING btree (lower_last_name, directory_id);


--
-- Name: index_ao_4789dd_tas42846517; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_4789dd_tas42846517 ON public."AO_4789DD_TASK_MONITOR" USING btree ("TASK_MONITOR_KIND");


--
-- Name: index_ao_7a45fb_aot1332136998; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_7a45fb_aot1332136998 ON public."AO_7A45FB_AOTRACKING_RESULT" USING btree ("LINKED_TRACKING_ENTRY_ID");


--
-- Name: index_ao_7a45fb_aot1861572280; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_7a45fb_aot1861572280 ON public."AO_7A45FB_AOTRACKING_USER" USING btree ("LINKED_TRACKING_ENTRY_ID");


--
-- Name: index_ao_7a45fb_aot189814902; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_7a45fb_aot189814902 ON public."AO_7A45FB_AOTRACKING_RESULT" USING btree ("BUILD_NUMBER");


--
-- Name: index_ao_7a45fb_aot3191716; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_7a45fb_aot3191716 ON public."AO_7A45FB_AOTRACKING_USER" USING btree ("USERNAME");


--
-- Name: index_ao_7a45fb_aot57609990; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_7a45fb_aot57609990 ON public."AO_7A45FB_AOTRACKING_RESULT" USING btree ("RESULT_SUMMARY_ID");


--
-- Name: index_ao_7a45fb_aot979049305; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_7a45fb_aot979049305 ON public."AO_7A45FB_AOTRACKING_ENTRY" USING btree ("ACTIVE");


--
-- Name: index_ao_a0b856_web1050270930; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_a0b856_web1050270930 ON public."AO_A0B856_WEBHOOK_CONFIG" USING btree ("WEBHOOKID");


--
-- Name: index_ao_a0b856_web110787824; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_a0b856_web110787824 ON public."AO_A0B856_WEBHOOK_EVENT" USING btree ("WEBHOOKID");


--
-- Name: index_ao_c7f71e_oau210133629; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_c7f71e_oau210133629 ON public."AO_C7F71E_OAUTH_SVC_PROV_TKNS" USING btree ("EXPIRY_TIME");


--
-- Name: index_ao_c7f71e_oau416679895; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ao_c7f71e_oau416679895 ON public."AO_C7F71E_OAUTH_SVC_PROV_TKNS" USING btree ("USER_NAME");


--
-- Name: key_number_delta_state; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX key_number_delta_state ON public.buildresultsummary USING btree (delta_state);


--
-- Name: label_name_namespace_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX label_name_namespace_index ON public.label USING btree (name, namespace);


--
-- Name: permissions_mask_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX permissions_mask_idx ON public.access_token USING btree (permissions_mask);


--
-- Name: plan_deletion_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX plan_deletion_idx ON public.build USING btree (marked_for_deletion);


--
-- Name: plan_vcs_build_number_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX plan_vcs_build_number_idx ON public.plan_vcs_history USING btree (build_number);


--
-- Name: plan_vcs_location_is_global; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX plan_vcs_location_is_global ON public.vcs_location USING btree (is_global);


--
-- Name: plan_vcs_plan_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX plan_vcs_plan_key_idx ON public.plan_vcs_history USING btree (plan_key);


--
-- Name: project_deletion_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_deletion_idx ON public.project USING btree (marked_for_deletion);


--
-- Name: project_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_key_idx ON public.project USING btree (project_key);


--
-- Name: repocommits_changesetid_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX repocommits_changesetid_idx ON public.repository_changeset USING btree (changeset_id);


--
-- Name: rmt_created_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rmt_created_idx ON public.rememberme_token USING btree (created);


--
-- Name: rmt_username_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rmt_username_idx ON public.rememberme_token USING btree (username);


--
-- Name: settypeindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX settypeindex ON public.notification_sets USING btree (set_type);


--
-- Name: stage_deletion_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stage_deletion_idx ON public.chain_stage USING btree (marked_for_deletion);


--
-- Name: stg_var_ctx_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stg_var_ctx_type_idx ON public.stage_variable_context USING btree (variable_type);


--
-- Name: test_case_quarantine_date; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX test_case_quarantine_date ON public.test_case USING btree (quarantine_date);


--
-- Name: test_class_master_job; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX test_class_master_job ON public.test_class USING btree (master_job_id);


--
-- Name: testcaseres_deltastate_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX testcaseres_deltastate_idx ON public.test_case_result USING btree (delta_state);


--
-- Name: testcaseres_state_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX testcaseres_state_idx ON public.test_case_result USING btree (test_state);


--
-- Name: tk_host_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tk_host_idx ON public.trusted_key USING btree (host);


--
-- Name: user_name_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_name_idx ON public.access_token USING btree (user_name);


--
-- Name: var_base_ctx_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX var_base_ctx_type_idx ON public.variable_baseline_item USING btree (variable_type);


--
-- Name: var_ctx_hash_string; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX var_ctx_hash_string ON public.variable_context_baseline USING btree (hash_string);


--
-- Name: var_ctx_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX var_ctx_type_idx ON public.variable_context USING btree (variable_type);


--
-- Name: var_def_dep_ver_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX var_def_dep_ver_idx ON public.variable_definition USING btree (deployment_version_id);


--
-- Name: var_def_env_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX var_def_env_idx ON public.variable_definition USING btree (environment_id);


--
-- Name: var_def_key_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX var_def_key_idx ON public.variable_definition USING btree (variable_key);


--
-- Name: var_subst_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX var_subst_type_idx ON public.variable_substitution USING btree (variable_type);


--
-- Name: variable_definition_type_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX variable_definition_type_idx ON public.variable_definition USING btree (variable_type);


--
-- Name: vrs_st_username_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vrs_st_username_idx ON public.deployment_version_status USING btree (user_name);


--
-- Name: vrs_status_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vrs_status_idx ON public.deployment_version_status USING btree (version_state);


--
-- Name: vss_vcs_location_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX vss_vcs_location_id_idx ON public.vcs_specs_state USING btree (vcs_location_id);


--
-- Name: plan_branch_pull_request fk_1agrw43yocsqt1n4p8u7i0xl1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_branch_pull_request
    ADD CONSTRAINT fk_1agrw43yocsqt1n4p8u7i0xl1 FOREIGN KEY (chain_branch_id) REFERENCES public.build(build_id);


--
-- Name: deployment_environment fk_1l6sjqpnxr2s1soam6ta8tq4l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_environment
    ADD CONSTRAINT fk_1l6sjqpnxr2s1soam6ta8tq4l FOREIGN KEY (notification_set) REFERENCES public.notification_sets(notification_set_id);


--
-- Name: variable_substitution fk_1oyf19gdr05qq9ppyyxqjs1q3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_substitution
    ADD CONSTRAINT fk_1oyf19gdr05qq9ppyyxqjs1q3 FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: variable_definition fk_2831bcr38j6y2a1f0gr898y86; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_definition
    ADD CONSTRAINT fk_2831bcr38j6y2a1f0gr898y86 FOREIGN KEY (plan_id) REFERENCES public.build(build_id);


--
-- Name: cwd_group_admin_user fk_2d9x5ks4gybkysfsv4j2vr1lk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_admin_user
    ADD CONSTRAINT fk_2d9x5ks4gybkysfsv4j2vr1lk FOREIGN KEY (target_group_id) REFERENCES public.cwd_group(id) ON DELETE CASCADE;


--
-- Name: stage_variable_context fk_2ewf5u6g614u11mr4yxk847m3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage_variable_context
    ADD CONSTRAINT fk_2ewf5u6g614u11mr4yxk847m3 FOREIGN KEY (stageresult_id) REFERENCES public.chain_stage_result(stageresult_id);


--
-- Name: deployment_version fk_2f71yjhxxy69jfayt6ndiqkq4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version
    ADD CONSTRAINT fk_2f71yjhxxy69jfayt6ndiqkq4 FOREIGN KEY (variable_context_baseline_id) REFERENCES public.variable_context_baseline(variable_context_baseline_id);


--
-- Name: test_error fk_2wkefweiskbdw4ke7y73nnvpj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_error
    ADD CONSTRAINT fk_2wkefweiskbdw4ke7y73nnvpj FOREIGN KEY (result_id) REFERENCES public.test_case_result(test_case_result_id) ON DELETE CASCADE;


--
-- Name: cwd_application_alias fk_31x6s1jfuft0db3mle9k33n52; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_alias
    ADD CONSTRAINT fk_31x6s1jfuft0db3mle9k33n52 FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: deployment_result fk_3257whbcav4xpmppwgrkf5lsp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_result
    ADD CONSTRAINT fk_3257whbcav4xpmppwgrkf5lsp FOREIGN KEY (variable_context_baseline_id) REFERENCES public.variable_context_baseline(variable_context_baseline_id);


--
-- Name: cwd_directory_attribute fk_33hlip3152idxunvjduimfmt4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory_attribute
    ADD CONSTRAINT fk_33hlip3152idxunvjduimfmt4 FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_application_attribute fk_3hfqd7alexmrs5dc28hucbruk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_attribute
    ADD CONSTRAINT fk_3hfqd7alexmrs5dc28hucbruk FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: build_definition fk_3my79d2knlrehoklnnljwr0pn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build_definition
    ADD CONSTRAINT fk_3my79d2knlrehoklnnljwr0pn FOREIGN KEY (build_id) REFERENCES public.build(build_id);


--
-- Name: cwd_user_credential_record fk_3owk1dbhlrx2x67lhwbdpvvjb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user_credential_record
    ADD CONSTRAINT fk_3owk1dbhlrx2x67lhwbdpvvjb FOREIGN KEY (user_id) REFERENCES public.cwd_user(id);


--
-- Name: chain_stage fk_44s794oofw2e2jjb69vvsqq5b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chain_stage
    ADD CONSTRAINT fk_44s794oofw2e2jjb69vvsqq5b FOREIGN KEY (build_id) REFERENCES public.build(build_id);


--
-- Name: ec2_image_script fk_48i2g7s16rws7ygpa1hgrge9r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec2_image_script
    ADD CONSTRAINT fk_48i2g7s16rws7ygpa1hgrge9r FOREIGN KEY (script_id) REFERENCES public.script(script_id);


--
-- Name: deployment_project_item_ba fk_4cjpe0bx8degcbcfark446gb2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_project_item_ba
    ADD CONSTRAINT fk_4cjpe0bx8degcbcfark446gb2 FOREIGN KEY (bam_artifact_item_id) REFERENCES public.deployment_project_item(deployment_project_item_id) ON DELETE CASCADE;


--
-- Name: branch_commit_info fk_4fx5ebqd4hrd7u17co491bnw6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch_commit_info
    ADD CONSTRAINT fk_4fx5ebqd4hrd7u17co491bnw6 FOREIGN KEY (creating_author_id) REFERENCES public.author(author_id);


--
-- Name: chain_stage_result fk_4p9t5luuw2awjxfgensarfhpn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chain_stage_result
    ADD CONSTRAINT fk_4p9t5luuw2awjxfgensarfhpn FOREIGN KEY (chainresult_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: acl_entry fk_4rfb2hf1mgefbvivqlb3uhc1o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_entry
    ADD CONSTRAINT fk_4rfb2hf1mgefbvivqlb3uhc1o FOREIGN KEY (acl_object_identity) REFERENCES public.acl_object_identity(id);


--
-- Name: deployment_version_changeset fk_4twxojdwt5df5pofxc917oe0l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_changeset
    ADD CONSTRAINT fk_4twxojdwt5df5pofxc917oe0l FOREIGN KEY (vcs_location_id) REFERENCES public.vcs_location(vcs_location_id);


--
-- Name: cwd_app_dir_group_mapping fk_56d8w06d7eh6enhu4rx8sglvo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_56d8w06d7eh6enhu4rx8sglvo FOREIGN KEY (app_dir_mapping_id) REFERENCES public.cwd_app_dir_mapping(id);


--
-- Name: brs_artifact_link fk_5j2wsxrddw99842p10ppyla50; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_artifact_link
    ADD CONSTRAINT fk_5j2wsxrddw99842p10ppyla50 FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: deployment_project_item_ba fk_5mrngre4ok64031yreb3083h7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_project_item_ba
    ADD CONSTRAINT fk_5mrngre4ok64031yreb3083h7 FOREIGN KEY (artifact_definition_id) REFERENCES public.artifact_definition(artifact_definition_id) ON DELETE CASCADE;


--
-- Name: cwd_user fk_61kyoc25on6xha3wh8627ao54; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user
    ADD CONSTRAINT fk_61kyoc25on6xha3wh8627ao54 FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: elastic_image fk_657nc08f20kthnw16t46uy3js; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elastic_image
    ADD CONSTRAINT fk_657nc08f20kthnw16t46uy3js FOREIGN KEY (capability_set) REFERENCES public.capability_set(capability_set_id);


--
-- Name: plan_vcs_location fk_6kuy829k0q2wb34whk0gbhrs9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_vcs_location
    ADD CONSTRAINT fk_6kuy829k0q2wb34whk0gbhrs9 FOREIGN KEY (plan_id) REFERENCES public.build(build_id);


--
-- Name: vcs_location fk_6lo84xenkp53fi9ke6mje2350; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_location
    ADD CONSTRAINT fk_6lo84xenkp53fi9ke6mje2350 FOREIGN KEY (parent_id) REFERENCES public.vcs_location(vcs_location_id);


--
-- Name: deployment_version_commit fk_6qb3ldb1xm5451t36jl3trv8e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_commit
    ADD CONSTRAINT fk_6qb3ldb1xm5451t36jl3trv8e FOREIGN KEY (dep_version_changeset_id) REFERENCES public.deployment_version_changeset(dep_version_changeset_id);


--
-- Name: cwd_synchronisation_token fk_6v2qf1ta4ixorcr6g1kaq44qg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_synchronisation_token
    ADD CONSTRAINT fk_6v2qf1ta4ixorcr6g1kaq44qg FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_user_attribute fk_72oveccpg44pvnbbwfw5622fi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user_attribute
    ADD CONSTRAINT fk_72oveccpg44pvnbbwfw5622fi FOREIGN KEY (user_id) REFERENCES public.cwd_user(id);


--
-- Name: build fk_7cw15vww807nvgj3fig64by9r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT fk_7cw15vww807nvgj3fig64by9r FOREIGN KEY (requirement_set) REFERENCES public.requirement_set(requirement_set_id);


--
-- Name: queue fk_7ijhrn58lvsfn9kn6lgb2bbtw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.queue
    ADD CONSTRAINT fk_7ijhrn58lvsfn9kn6lgb2bbtw FOREIGN KEY (elastic_image) REFERENCES public.elastic_image(elastic_image_id);


--
-- Name: deployment_environment fk_7kgxvxnrqx1mhj0ak85kqnbn0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_environment
    ADD CONSTRAINT fk_7kgxvxnrqx1mhj0ak85kqnbn0 FOREIGN KEY (package_definition_id) REFERENCES public.deployment_project(deployment_project_id);


--
-- Name: buildresultsummary_label fk_7yawuoq2tiuey1rpca0mx5hnj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary_label
    ADD CONSTRAINT fk_7yawuoq2tiuey1rpca0mx5hnj FOREIGN KEY (label_id) REFERENCES public.label(label_id);


--
-- Name: plan_branch_pull_request fk_87cuj5fyswg48spn71skpt10t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_branch_pull_request
    ADD CONSTRAINT fk_87cuj5fyswg48spn71skpt10t FOREIGN KEY (vcs_pull_request_id) REFERENCES public.vcs_pull_request(vcs_pull_request_id);


--
-- Name: rss_permission_repository fk_88t2xugqw8kf5eayytvv7qbkl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_repository
    ADD CONSTRAINT fk_88t2xugqw8kf5eayytvv7qbkl FOREIGN KEY (target_repository_id) REFERENCES public.vcs_location(vcs_location_id) ON DELETE CASCADE;


--
-- Name: cwd_app_dir_mapping fk_8ggbqlrfjbn3gh4rgvar7g077; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_mapping
    ADD CONSTRAINT fk_8ggbqlrfjbn3gh4rgvar7g077 FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: build fk_92f5wxmklkcj445db4jmpqp94; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT fk_92f5wxmklkcj445db4jmpqp94 FOREIGN KEY (notification_set) REFERENCES public.notification_sets(notification_set_id);


--
-- Name: test_case_result fk_9ds53f7pwqcbcyvlqytkbitr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_case_result
    ADD CONSTRAINT fk_9ds53f7pwqcbcyvlqytkbitr FOREIGN KEY (test_class_result_id) REFERENCES public.test_class_result(test_class_result_id) ON DELETE CASCADE;


--
-- Name: cwd_app_dir_mapping fk_9s4l6aoctujeux3wx833mxle9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_mapping
    ADD CONSTRAINT fk_9s4l6aoctujeux3wx833mxle9 FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_app_dir_default_groups fk_9xe3taepoky5je81aectn9jom; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_default_groups
    ADD CONSTRAINT fk_9xe3taepoky5je81aectn9jom FOREIGN KEY (application_mapping_id) REFERENCES public.cwd_app_dir_mapping(id);


--
-- Name: notifications fk_9yq63rpvaew90wyh5wim6664j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_9yq63rpvaew90wyh5wim6664j FOREIGN KEY (notification_set) REFERENCES public.notification_sets(notification_set_id);


--
-- Name: cwd_app_licensing fk_a4qaf71rw2pf3t9oval43bpjh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_licensing
    ADD CONSTRAINT fk_a4qaf71rw2pf3t9oval43bpjh FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: variable_baseline_item fk_aldduj7bhdk6a39r8bh7jhyyr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_baseline_item
    ADD CONSTRAINT fk_aldduj7bhdk6a39r8bh7jhyyr FOREIGN KEY (variable_context_baseline_id) REFERENCES public.variable_context_baseline(variable_context_baseline_id);


--
-- Name: rss_permission_deployment_proj fk_am8g4kmgoqo7w60vehaqdyu9v; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_deployment_proj
    ADD CONSTRAINT fk_am8g4kmgoqo7w60vehaqdyu9v FOREIGN KEY (deployment_project_id) REFERENCES public.deployment_project(deployment_project_id) ON DELETE CASCADE;


--
-- Name: deployment_result fk_amw6ck121sbhyw4um2ls3h8rs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_result
    ADD CONSTRAINT fk_amw6ck121sbhyw4um2ls3h8rs FOREIGN KEY (environment_id) REFERENCES public.deployment_environment(environment_id);


--
-- Name: AO_7A45FB_AOTRACKING_RESULT fk_ao_7a45fb_aotracking_result_linked_tracking_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_7A45FB_AOTRACKING_RESULT"
    ADD CONSTRAINT fk_ao_7a45fb_aotracking_result_linked_tracking_entry_id FOREIGN KEY ("LINKED_TRACKING_ENTRY_ID") REFERENCES public."AO_7A45FB_AOTRACKING_ENTRY"("TRACKING_ID");


--
-- Name: AO_7A45FB_AOTRACKING_USER fk_ao_7a45fb_aotracking_user_linked_tracking_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_7A45FB_AOTRACKING_USER"
    ADD CONSTRAINT fk_ao_7a45fb_aotracking_user_linked_tracking_entry_id FOREIGN KEY ("LINKED_TRACKING_ENTRY_ID") REFERENCES public."AO_7A45FB_AOTRACKING_ENTRY"("TRACKING_ID");


--
-- Name: AO_A0B856_WEBHOOK_CONFIG fk_ao_a0b856_webhook_config_webhookid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEBHOOK_CONFIG"
    ADD CONSTRAINT fk_ao_a0b856_webhook_config_webhookid FOREIGN KEY ("WEBHOOKID") REFERENCES public."AO_A0B856_WEBHOOK"("ID");


--
-- Name: AO_A0B856_WEBHOOK_EVENT fk_ao_a0b856_webhook_event_webhookid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AO_A0B856_WEBHOOK_EVENT"
    ADD CONSTRAINT fk_ao_a0b856_webhook_event_webhookid FOREIGN KEY ("WEBHOOKID") REFERENCES public."AO_A0B856_WEBHOOK"("ID");


--
-- Name: cwd_group fk_c1gre41vpf0em4fqx3h68hypa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group
    ADD CONSTRAINT fk_c1gre41vpf0em4fqx3h68hypa FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: cwd_directory_operation fk_c83jhqyv18f3hac1phjqcwgjg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_directory_operation
    ADD CONSTRAINT fk_c83jhqyv18f3hac1phjqcwgjg FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: deployment_environment fk_cb04dldjrt053ovs7srru5cx9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_environment
    ADD CONSTRAINT fk_cb04dldjrt053ovs7srru5cx9 FOREIGN KEY (requirement_set) REFERENCES public.requirement_set(requirement_set_id);


--
-- Name: test_class_result fk_cdrjn2851d5syqyocf3ys3ah0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_class_result
    ADD CONSTRAINT fk_cdrjn2851d5syqyocf3ys3ah0 FOREIGN KEY (test_class_id) REFERENCES public.test_class(test_class_id);


--
-- Name: cwd_group_attribute fk_cimmhqn64wmbvjjldnpkdcqnk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_attribute
    ADD CONSTRAINT fk_cimmhqn64wmbvjjldnpkdcqnk FOREIGN KEY (group_id) REFERENCES public.cwd_group(id);


--
-- Name: brs_consumed_subscription fk_ck8l4usbcvx7jadid4b38f2ly; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_consumed_subscription
    ADD CONSTRAINT fk_ck8l4usbcvx7jadid4b38f2ly FOREIGN KEY (artifact_link_id) REFERENCES public.brs_artifact_link(artifact_link_id);


--
-- Name: cwd_synchronisation_status fk_clce0lxxnu12qkiwf3xu5iody; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_synchronisation_status
    ADD CONSTRAINT fk_clce0lxxnu12qkiwf3xu5iody FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: trusted_apps_urls fk_dbrs3296p7udt2qmcdc40xyyn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trusted_apps_urls
    ADD CONSTRAINT fk_dbrs3296p7udt2qmcdc40xyyn FOREIGN KEY (url_pattern_id) REFERENCES public.trusted_apps(trusted_apps_id);


--
-- Name: dep_version_planresultkeys fk_dfipqt049erdrolcl5xqxeq8d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dep_version_planresultkeys
    ADD CONSTRAINT fk_dfipqt049erdrolcl5xqxeq8d FOREIGN KEY (deployment_version_id) REFERENCES public.deployment_version(deployment_version_id);


--
-- Name: cwd_membership fk_dy12rwpyrjc7oskyf6rnxgyby; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_membership
    ADD CONSTRAINT fk_dy12rwpyrjc7oskyf6rnxgyby FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: deployment_version_naming fk_e81h01vqmmipqtorefo065ilq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_naming
    ADD CONSTRAINT fk_e81h01vqmmipqtorefo065ilq FOREIGN KEY (deployment_project_id) REFERENCES public.deployment_project(deployment_project_id);


--
-- Name: cwd_app_dir_group_mapping fk_e8n65yabj4t4fo1b675bwodpa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_e8n65yabj4t4fo1b675bwodpa FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: brs_artifact_link fk_eb6e20lkefhl1et580d5ry5me; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_artifact_link
    ADD CONSTRAINT fk_eb6e20lkefhl1et580d5ry5me FOREIGN KEY (producerjobresult_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: variable_context fk_ebnchmunwnv7t6q39xw3ogqem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variable_context
    ADD CONSTRAINT fk_ebnchmunwnv7t6q39xw3ogqem FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: repository_changeset fk_eerx3t0i10mi9rrl83uu73gug; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repository_changeset
    ADD CONSTRAINT fk_eerx3t0i10mi9rrl83uu73gug FOREIGN KEY (vcs_location_id) REFERENCES public.vcs_location(vcs_location_id);


--
-- Name: elastic_schedule fk_efn5l5ur1kj8mr6w1lmgfut3w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.elastic_schedule
    ADD CONSTRAINT fk_efn5l5ur1kj8mr6w1lmgfut3w FOREIGN KEY (elastic_image) REFERENCES public.elastic_image(elastic_image_id);


--
-- Name: cwd_group_admin_group fk_ej1i0486mnjnqoj28oycd3l6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_admin_group
    ADD CONSTRAINT fk_ej1i0486mnjnqoj28oycd3l6 FOREIGN KEY (target_group_id) REFERENCES public.cwd_group(id) ON DELETE CASCADE;


--
-- Name: buildresult_warning_summary fk_epui3fw0r8i3sr38y3wintoxs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresult_warning_summary
    ADD CONSTRAINT fk_epui3fw0r8i3sr38y3wintoxs FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id) ON DELETE CASCADE;


--
-- Name: test_case_result fk_ex0sqd0gqaxtvrqg32ejp758j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_case_result
    ADD CONSTRAINT fk_ex0sqd0gqaxtvrqg32ejp758j FOREIGN KEY (test_case_id) REFERENCES public.test_case(test_case_id);


--
-- Name: deployment_env_vcs_location fk_eymndb6iim0hysbl9rmwxy0l3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_env_vcs_location
    ADD CONSTRAINT fk_eymndb6iim0hysbl9rmwxy0l3 FOREIGN KEY (environment_id) REFERENCES public.deployment_environment(environment_id);


--
-- Name: deployment_version_item_ba fk_f9h7qp5oqfe9o0cos5oqba252; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_item_ba
    ADD CONSTRAINT fk_f9h7qp5oqfe9o0cos5oqba252 FOREIGN KEY (version_bam_artifact_item_id) REFERENCES public.deployment_version_item(deployment_version_item_id);


--
-- Name: build fk_fh6upg03tuksbmm60mgvsvm7k; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT fk_fh6upg03tuksbmm60mgvsvm7k FOREIGN KEY (stage_id) REFERENCES public.chain_stage(stage_id);


--
-- Name: queue fk_gbjrpkvqhtw9tmvi2qaa0anv1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.queue
    ADD CONSTRAINT fk_gbjrpkvqhtw9tmvi2qaa0anv1 FOREIGN KEY (capability_set) REFERENCES public.capability_set(capability_set_id);


--
-- Name: trusted_apps_ips fk_ghk9e8gjq3jjpjiu978jqndg2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trusted_apps_ips
    ADD CONSTRAINT fk_ghk9e8gjq3jjpjiu978jqndg2 FOREIGN KEY (ip_pattern_id) REFERENCES public.trusted_apps(trusted_apps_id);


--
-- Name: buildresultsummary fk_gp357kl07x691di4i2xn0c8hi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary
    ADD CONSTRAINT fk_gp357kl07x691di4i2xn0c8hi FOREIGN KEY (stageresult_id) REFERENCES public.chain_stage_result(stageresult_id);


--
-- Name: deployment_project_item fk_gt48noidjrccbaexg0c36kyqd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_project_item
    ADD CONSTRAINT fk_gt48noidjrccbaexg0c36kyqd FOREIGN KEY (deployment_project_id) REFERENCES public.deployment_project(deployment_project_id);


--
-- Name: buildresultsummary fk_h0ye74xa5mvi5tvu4g3n6hxfs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary
    ADD CONSTRAINT fk_h0ye74xa5mvi5tvu4g3n6hxfs FOREIGN KEY (variable_context_baseline_id) REFERENCES public.variable_context_baseline(variable_context_baseline_id);


--
-- Name: cwd_webhook fk_h1ql2jhyfjyfscyw9x18bevp5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_webhook
    ADD CONSTRAINT fk_h1ql2jhyfjyfscyw9x18bevp5 FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: build fk_hgbxno8yq0ahhu7kda4hriexq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT fk_hgbxno8yq0ahhu7kda4hriexq FOREIGN KEY (vcs_specs_source_id) REFERENCES public.vcs_specs_source(vcs_specs_source_id);


--
-- Name: quick_filter_rules fk_hs04e8gf2pwf0yv6cy4uw5euo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quick_filter_rules
    ADD CONSTRAINT fk_hs04e8gf2pwf0yv6cy4uw5euo FOREIGN KEY (quick_filter_id) REFERENCES public.quick_filters(quick_filter_id);


--
-- Name: branch_commit_info fk_i1rp6v6xjoa7efbdkyrnnk3td; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch_commit_info
    ADD CONSTRAINT fk_i1rp6v6xjoa7efbdkyrnnk3td FOREIGN KEY (latest_commit_author_id) REFERENCES public.author(author_id);


--
-- Name: relevant_changesets fk_i3uhg3pr2rkpvieivkgql6e5l; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relevant_changesets
    ADD CONSTRAINT fk_i3uhg3pr2rkpvieivkgql6e5l FOREIGN KEY (repository_changeset_id) REFERENCES public.repository_changeset(repository_changeset_id);


--
-- Name: buildresultsummary fk_i4wjndm6u2d3gy8oepw8waqu3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary
    ADD CONSTRAINT fk_i4wjndm6u2d3gy8oepw8waqu3 FOREIGN KEY (mergeresult_id) REFERENCES public.merge_result(mergeresult_id);


--
-- Name: variablestoautoincrement fk_i5j5hj7vqg7mpsmiurobck59s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.variablestoautoincrement
    ADD CONSTRAINT fk_i5j5hj7vqg7mpsmiurobck59s FOREIGN KEY (version_naming_scheme_id) REFERENCES public.deployment_version_naming(version_naming_scheme_id);


--
-- Name: buildresultsummary_customdata fk_ia81c3o6qb69puc74f4rx1rm2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary_customdata
    ADD CONSTRAINT fk_ia81c3o6qb69puc74f4rx1rm2 FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: deployment_version_changeset fk_ieuf20xbdrexbes5a5d197dd3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_changeset
    ADD CONSTRAINT fk_ieuf20xbdrexbes5a5d197dd3 FOREIGN KEY (deployment_version_id) REFERENCES public.deployment_version(deployment_version_id);


--
-- Name: brs_artifact_link fk_ipxpfcc7xcqi9ve2jfyfye8vc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_artifact_link
    ADD CONSTRAINT fk_ipxpfcc7xcqi9ve2jfyfye8vc FOREIGN KEY (artifact_id) REFERENCES public.artifact(artifact_id);


--
-- Name: deployment_env_vcs_location fk_iqw5ym58ju0jve08brnpjkeo2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_env_vcs_location
    ADD CONSTRAINT fk_iqw5ym58ju0jve08brnpjkeo2 FOREIGN KEY (vcs_location_id) REFERENCES public.vcs_location(vcs_location_id);


--
-- Name: build fk_jdvuiqpnjmsvf3llia8jvvg03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT fk_jdvuiqpnjmsvf3llia8jvvg03 FOREIGN KEY (master_id) REFERENCES public.build(build_id);


--
-- Name: cwd_app_dir_group_mapping fk_jf1n645natkwvg6xluggp6n1j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_group_mapping
    ADD CONSTRAINT fk_jf1n645natkwvg6xluggp6n1j FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: plan_vcs_location fk_jfe2h94tdbavd8cpmqbi1j0j2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_vcs_location
    ADD CONSTRAINT fk_jfe2h94tdbavd8cpmqbi1j0j2 FOREIGN KEY (vcs_location_id) REFERENCES public.vcs_location(vcs_location_id);


--
-- Name: cwd_granted_perm fk_jig3otaqav9ntmwiqso34yy3y; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_granted_perm
    ADD CONSTRAINT fk_jig3otaqav9ntmwiqso34yy3y FOREIGN KEY (app_dir_mapping_id) REFERENCES public.cwd_app_dir_mapping(id);


--
-- Name: rss_permission_project fk_jj4ipv8e262510cn1airfddco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_project
    ADD CONSTRAINT fk_jj4ipv8e262510cn1airfddco FOREIGN KEY (repository_id) REFERENCES public.vcs_location(vcs_location_id) ON DELETE CASCADE;


--
-- Name: build fk_jkh3kx5ffgm6nai4v4ru4rqm9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.build
    ADD CONSTRAINT fk_jkh3kx5ffgm6nai4v4ru4rqm9 FOREIGN KEY (project_id) REFERENCES public.project(project_id);


--
-- Name: test_class_result fk_jkq1lf9h2tkioay789nuliwxf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_class_result
    ADD CONSTRAINT fk_jkq1lf9h2tkioay789nuliwxf FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id) ON DELETE CASCADE;


--
-- Name: cwd_user_attribute fk_jlyjg64hbadrou9yekx893u1w; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_user_attribute
    ADD CONSTRAINT fk_jlyjg64hbadrou9yekx893u1w FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: plan_dependencies fk_k9jgx1isf58v27toyq8cf4x35; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_dependencies
    ADD CONSTRAINT fk_k9jgx1isf58v27toyq8cf4x35 FOREIGN KEY (child_plan_id) REFERENCES public.build(build_id);


--
-- Name: vcs_specs_source fk_kd9mxr773e9lmqjnkbkac48mo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_specs_source
    ADD CONSTRAINT fk_kd9mxr773e9lmqjnkbkac48mo FOREIGN KEY (vcs_specs_state_id) REFERENCES public.vcs_specs_state(vcs_specs_state_id) ON DELETE CASCADE;


--
-- Name: deployment_result_customdata fk_ke1f2h9l20hmo2boo00x1m1si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_result_customdata
    ADD CONSTRAINT fk_ke1f2h9l20hmo2boo00x1m1si FOREIGN KEY (deployment_result_id) REFERENCES public.deployment_result(deployment_result_id);


--
-- Name: brs_consumed_subscription fk_l4tpi519m59qhdvh4qx2cjp2n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_consumed_subscription
    ADD CONSTRAINT fk_l4tpi519m59qhdvh4qx2cjp2n FOREIGN KEY (consumer_resultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: buildresultsummary_label fk_lkfm80iiqseau7cn3s0gy6010; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary_label
    ADD CONSTRAINT fk_lkfm80iiqseau7cn3s0gy6010 FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: rss_permission_deployment_proj fk_lt2hupdeie8odpi9i7ry3kc42; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_deployment_proj
    ADD CONSTRAINT fk_lt2hupdeie8odpi9i7ry3kc42 FOREIGN KEY (repository_id) REFERENCES public.vcs_location(vcs_location_id) ON DELETE CASCADE;


--
-- Name: cwd_group_admin_user fk_lwq8omymbdqcdbpplddns6af4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_admin_user
    ADD CONSTRAINT fk_lwq8omymbdqcdbpplddns6af4 FOREIGN KEY (user_id) REFERENCES public.cwd_user(id) ON DELETE CASCADE;


--
-- Name: cwd_app_licensing_dir_info fk_m96p7iici19leqi4d0b66clvh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_licensing_dir_info
    ADD CONSTRAINT fk_m96p7iici19leqi4d0b66clvh FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: deployment_project fk_m9nnb8amb4kai65uli04ddt4m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_project
    ADD CONSTRAINT fk_m9nnb8amb4kai65uli04ddt4m FOREIGN KEY (vcs_specs_source_id) REFERENCES public.vcs_specs_source(vcs_specs_source_id);


--
-- Name: cwd_group_admin_group fk_mx0t24r8wmljfdqowf5wshieu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_admin_group
    ADD CONSTRAINT fk_mx0t24r8wmljfdqowf5wshieu FOREIGN KEY (group_id) REFERENCES public.cwd_group(id);


--
-- Name: deployment_version fk_n1cfafv2ami150u7kdg9n3ohf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version
    ADD CONSTRAINT fk_n1cfafv2ami150u7kdg9n3ohf FOREIGN KEY (project_id) REFERENCES public.deployment_project(deployment_project_id);


--
-- Name: plan_dependencies fk_n6osnnx7kmoyocsp13w4k5h17; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plan_dependencies
    ADD CONSTRAINT fk_n6osnnx7kmoyocsp13w4k5h17 FOREIGN KEY (parent_plan_id) REFERENCES public.build(build_id);


--
-- Name: vcs_branch fk_n7owu8ehnkgf04m3nl7a62bcp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vcs_branch
    ADD CONSTRAINT fk_n7owu8ehnkgf04m3nl7a62bcp FOREIGN KEY (chain_id) REFERENCES public.build(build_id);


--
-- Name: artifact_definition fk_neh0vgh021t8s2epr4yek11jh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artifact_definition
    ADD CONSTRAINT fk_neh0vgh021t8s2epr4yek11jh FOREIGN KEY (producer_job_id) REFERENCES public.build(build_id);


--
-- Name: user_commit fk_neld8p5veb382a9v8dcwdw3hb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_commit
    ADD CONSTRAINT fk_neld8p5veb382a9v8dcwdw3hb FOREIGN KEY (author_id) REFERENCES public.author(author_id);


--
-- Name: deployment_version_status fk_o6y1xa5r3eygjqvj1t6pui66e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_status
    ADD CONSTRAINT fk_o6y1xa5r3eygjqvj1t6pui66e FOREIGN KEY (deployment_version_id) REFERENCES public.deployment_version(deployment_version_id);


--
-- Name: rss_permission_repository fk_og5j01vwe2040vdoh4dhh5d34; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_repository
    ADD CONSTRAINT fk_og5j01vwe2040vdoh4dhh5d34 FOREIGN KEY (repository_id) REFERENCES public.vcs_location(vcs_location_id);


--
-- Name: requirement fk_olpf0ujgievtguhmvglqbtyal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requirement
    ADD CONSTRAINT fk_olpf0ujgievtguhmvglqbtyal FOREIGN KEY (requirement_set) REFERENCES public.requirement_set(requirement_set_id);


--
-- Name: acl_object_identity fk_osevoaw0w5t99q4x25r4ohkm2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acl_object_identity
    ADD CONSTRAINT fk_osevoaw0w5t99q4x25r4ohkm2 FOREIGN KEY (parent_object) REFERENCES public.acl_object_identity(id);


--
-- Name: buildresultsummary fk_p3gerdfga5l9fu5qijd0j36sj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary
    ADD CONSTRAINT fk_p3gerdfga5l9fu5qijd0j36sj FOREIGN KEY (chain_result) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: cwd_app_licensing_dir_info fk_p54hc6hsrwtue512xogtmjs3n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_licensing_dir_info
    ADD CONSTRAINT fk_p54hc6hsrwtue512xogtmjs3n FOREIGN KEY (licensing_summary_id) REFERENCES public.cwd_app_licensing(id);


--
-- Name: user_commit fk_pbehra1eqru6oqwa3fxq4ddfr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_commit
    ADD CONSTRAINT fk_pbehra1eqru6oqwa3fxq4ddfr FOREIGN KEY (repository_changeset_id) REFERENCES public.repository_changeset(repository_changeset_id);


--
-- Name: artifact_subscription fk_pci9141wsjtwqtn4ev61wxxkc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artifact_subscription
    ADD CONSTRAINT fk_pci9141wsjtwqtn4ev61wxxkc FOREIGN KEY (artifact_definition_id) REFERENCES public.artifact_definition(artifact_definition_id) ON DELETE CASCADE;


--
-- Name: test_class fk_po3k8ns6fi8r5oe5f2p6o7pnh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_class
    ADD CONSTRAINT fk_po3k8ns6fi8r5oe5f2p6o7pnh FOREIGN KEY (plan_id) REFERENCES public.build(build_id) ON DELETE CASCADE;


--
-- Name: cwd_app_licensed_user fk_qdwhn8u4wu1xu6eeux7unqgdq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_licensed_user
    ADD CONSTRAINT fk_qdwhn8u4wu1xu6eeux7unqgdq FOREIGN KEY (directory_id) REFERENCES public.cwd_app_licensing_dir_info(id);


--
-- Name: relevant_changesets fk_qi40i74ayf29ovlos9vigoown; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relevant_changesets
    ADD CONSTRAINT fk_qi40i74ayf29ovlos9vigoown FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: buildresultsummary_label fk_qtpveewvlxh602gj5qarcxkmk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary_label
    ADD CONSTRAINT fk_qtpveewvlxh602gj5qarcxkmk FOREIGN KEY (project_id) REFERENCES public.project(project_id);


--
-- Name: deployment_result fk_qtxyymjj7cd667ys0hp9dk6tq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_result
    ADD CONSTRAINT fk_qtxyymjj7cd667ys0hp9dk6tq FOREIGN KEY (version_id) REFERENCES public.deployment_version(deployment_version_id);


--
-- Name: commit_files fk_qu6jkca23aqtgitxwt91l7gmv; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commit_files
    ADD CONSTRAINT fk_qu6jkca23aqtgitxwt91l7gmv FOREIGN KEY (commit_id) REFERENCES public.user_commit(commit_id);


--
-- Name: deployment_env_config fk_quv94i2pc2soyt2bm6e3ywj3p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_env_config
    ADD CONSTRAINT fk_quv94i2pc2soyt2bm6e3ywj3p FOREIGN KEY (environment_id) REFERENCES public.deployment_environment(environment_id) ON DELETE CASCADE;


--
-- Name: buildresultsummary_label fk_r5un7grsmypaas30s9mha4f2f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buildresultsummary_label
    ADD CONSTRAINT fk_r5un7grsmypaas30s9mha4f2f FOREIGN KEY (build_id) REFERENCES public.build(build_id);


--
-- Name: deployment_version_item fk_r9vjjrte30atqunhruimr7456; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_item
    ADD CONSTRAINT fk_r9vjjrte30atqunhruimr7456 FOREIGN KEY (deployment_version_id) REFERENCES public.deployment_version(deployment_version_id);


--
-- Name: cwd_application_address fk_rbed8phbx7d807gdrefyvcpt9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_application_address
    ADD CONSTRAINT fk_rbed8phbx7d807gdrefyvcpt9 FOREIGN KEY (application_id) REFERENCES public.cwd_application(id);


--
-- Name: brs_linkedjiraissues fk_rhamoijfnb7coquyeag9aj978; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brs_linkedjiraissues
    ADD CONSTRAINT fk_rhamoijfnb7coquyeag9aj978 FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- Name: test_case fk_ricabl79kd7w4x6en9nre51px; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_case
    ADD CONSTRAINT fk_ricabl79kd7w4x6en9nre51px FOREIGN KEY (test_class_id) REFERENCES public.test_class(test_class_id) ON DELETE CASCADE;


--
-- Name: deployment_version_jira_issue fk_rioqvx1w37j90wieeq5nvb88t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_jira_issue
    ADD CONSTRAINT fk_rioqvx1w37j90wieeq5nvb88t FOREIGN KEY (deployment_version_id) REFERENCES public.deployment_version(deployment_version_id);


--
-- Name: rss_permission_project fk_sdkg2ib2cxckimq5dst51gmpg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rss_permission_project
    ADD CONSTRAINT fk_sdkg2ib2cxckimq5dst51gmpg FOREIGN KEY (project_id) REFERENCES public.project(project_id) ON DELETE CASCADE;


--
-- Name: cwd_group_attribute fk_sdl2ff68get5nxfnd97rxmbyj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_group_attribute
    ADD CONSTRAINT fk_sdl2ff68get5nxfnd97rxmbyj FOREIGN KEY (directory_id) REFERENCES public.cwd_directory(id);


--
-- Name: deployment_version_commit fk_sdu0kbyihnddf0v6a5e6qe8ug; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_commit
    ADD CONSTRAINT fk_sdu0kbyihnddf0v6a5e6qe8ug FOREIGN KEY (author_id) REFERENCES public.author(author_id);


--
-- Name: artifact_subscription fk_slp0qrrvq7bn2kbq6x3599dcj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artifact_subscription
    ADD CONSTRAINT fk_slp0qrrvq7bn2kbq6x3599dcj FOREIGN KEY (consumer_job_id) REFERENCES public.build(build_id);


--
-- Name: deployment_version_item_ba fk_slyvlxw9qqm9s11kin2vu8eal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deployment_version_item_ba
    ADD CONSTRAINT fk_slyvlxw9qqm9s11kin2vu8eal FOREIGN KEY (artifact_id) REFERENCES public.artifact(artifact_id);


--
-- Name: capability fk_sm8xum6eu61qtx5twb34enyf9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.capability
    ADD CONSTRAINT fk_sm8xum6eu61qtx5twb34enyf9 FOREIGN KEY (capability_set) REFERENCES public.capability_set(capability_set_id) ON DELETE CASCADE;


--
-- Name: ec2_image_script fk_sr49wkq8mn0pspjjkinupoh70; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec2_image_script
    ADD CONSTRAINT fk_sr49wkq8mn0pspjjkinupoh70 FOREIGN KEY (elastic_image_id) REFERENCES public.elastic_image(elastic_image_id);


--
-- Name: cwd_app_dir_operation fk_srneqi9vh5mis2nf450l8rk10; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cwd_app_dir_operation
    ADD CONSTRAINT fk_srneqi9vh5mis2nf450l8rk10 FOREIGN KEY (app_dir_mapping_id) REFERENCES public.cwd_app_dir_mapping(id);


--
-- Name: repository_changeset fk_t9jxtrvky1fabch7y856mbojd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.repository_changeset
    ADD CONSTRAINT fk_t9jxtrvky1fabch7y856mbojd FOREIGN KEY (buildresultsummary_id) REFERENCES public.buildresultsummary(buildresultsummary_id);


--
-- PostgreSQL database dump complete
--

