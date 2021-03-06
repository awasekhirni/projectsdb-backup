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
-- Name: academic_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academic_details (
    id bigint NOT NULL,
    registration_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.academic_details OWNER TO postgres;

--
-- Name: academic_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.academic_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.academic_details_id_seq OWNER TO postgres;

--
-- Name: academic_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.academic_details_id_seq OWNED BY public.academic_details.id;


--
-- Name: additional_exam_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.additional_exam_groups (
    id bigint NOT NULL,
    name character varying,
    batch_id integer,
    exam_type character varying,
    is_published boolean DEFAULT false,
    result_published boolean DEFAULT false,
    students_list character varying,
    exam_date date,
    school_id integer
);


ALTER TABLE public.additional_exam_groups OWNER TO postgres;

--
-- Name: additional_exam_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.additional_exam_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_exam_groups_id_seq OWNER TO postgres;

--
-- Name: additional_exam_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.additional_exam_groups_id_seq OWNED BY public.additional_exam_groups.id;


--
-- Name: additional_exam_scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.additional_exam_scores (
    id bigint NOT NULL,
    student_id integer,
    additional_exam_id integer,
    marks numeric(7,2),
    grading_level_id integer,
    remarks character varying,
    is_failed boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.additional_exam_scores OWNER TO postgres;

--
-- Name: additional_exam_scores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.additional_exam_scores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_exam_scores_id_seq OWNER TO postgres;

--
-- Name: additional_exam_scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.additional_exam_scores_id_seq OWNED BY public.additional_exam_scores.id;


--
-- Name: additional_exams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.additional_exams (
    id bigint NOT NULL,
    additional_exam_group_id integer,
    subject_id integer,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    maximum_marks integer,
    minimum_marks integer,
    grading_level_id integer,
    weightage integer DEFAULT 0,
    event_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.additional_exams OWNER TO postgres;

--
-- Name: additional_exams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.additional_exams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_exams_id_seq OWNER TO postgres;

--
-- Name: additional_exams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.additional_exams_id_seq OWNED BY public.additional_exams.id;


--
-- Name: additional_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.additional_fields (
    id bigint NOT NULL,
    name character varying,
    status boolean,
    school_id integer
);


ALTER TABLE public.additional_fields OWNER TO postgres;

--
-- Name: additional_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.additional_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_fields_id_seq OWNER TO postgres;

--
-- Name: additional_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.additional_fields_id_seq OWNED BY public.additional_fields.id;


--
-- Name: applicant_addl_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_addl_attachments (
    id bigint NOT NULL,
    school_id integer,
    applicant_id integer,
    attachment_file_name character varying,
    attachment_content_type character varying,
    attachment_file_size integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicant_addl_attachments OWNER TO postgres;

--
-- Name: applicant_addl_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicant_addl_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_addl_attachments_id_seq OWNER TO postgres;

--
-- Name: applicant_addl_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicant_addl_attachments_id_seq OWNED BY public.applicant_addl_attachments.id;


--
-- Name: applicant_addl_field_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_addl_field_groups (
    id bigint NOT NULL,
    school_id integer,
    registration_course_id integer,
    name character varying,
    is_active boolean DEFAULT true,
    "position" integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicant_addl_field_groups OWNER TO postgres;

--
-- Name: applicant_addl_field_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicant_addl_field_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_addl_field_groups_id_seq OWNER TO postgres;

--
-- Name: applicant_addl_field_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicant_addl_field_groups_id_seq OWNED BY public.applicant_addl_field_groups.id;


--
-- Name: applicant_addl_field_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_addl_field_values (
    id bigint NOT NULL,
    school_id integer,
    applicant_addl_field_id integer,
    option character varying,
    is_active boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicant_addl_field_values OWNER TO postgres;

--
-- Name: applicant_addl_field_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicant_addl_field_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_addl_field_values_id_seq OWNER TO postgres;

--
-- Name: applicant_addl_field_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicant_addl_field_values_id_seq OWNED BY public.applicant_addl_field_values.id;


--
-- Name: applicant_addl_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_addl_fields (
    id bigint NOT NULL,
    school_id integer,
    applicant_addl_field_group_id integer,
    field_name character varying,
    field_type character varying,
    is_active boolean DEFAULT true,
    "position" integer,
    is_mandatory boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicant_addl_fields OWNER TO postgres;

--
-- Name: applicant_addl_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicant_addl_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_addl_fields_id_seq OWNER TO postgres;

--
-- Name: applicant_addl_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicant_addl_fields_id_seq OWNED BY public.applicant_addl_fields.id;


--
-- Name: applicant_addl_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_addl_values (
    id bigint NOT NULL,
    school_id integer,
    applicant_id integer,
    applicant_addl_field_id integer,
    option text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicant_addl_values OWNER TO postgres;

--
-- Name: applicant_addl_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicant_addl_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_addl_values_id_seq OWNER TO postgres;

--
-- Name: applicant_addl_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicant_addl_values_id_seq OWNED BY public.applicant_addl_values.id;


--
-- Name: applicant_guardians; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_guardians (
    id bigint NOT NULL,
    school_id integer,
    applicant_id integer,
    first_name character varying,
    last_name character varying,
    relation character varying,
    email character varying,
    office_phone1 character varying,
    office_phone2 character varying,
    mobile_phone character varying,
    office_address_line1 character varying,
    office_address_line2 character varying,
    city character varying,
    state character varying,
    country_id integer,
    dob date,
    occupation character varying,
    income character varying,
    education character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicant_guardians OWNER TO postgres;

--
-- Name: applicant_guardians_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicant_guardians_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_guardians_id_seq OWNER TO postgres;

--
-- Name: applicant_guardians_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicant_guardians_id_seq OWNED BY public.applicant_guardians.id;


--
-- Name: applicant_previous_datas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_previous_datas (
    id bigint NOT NULL,
    school_id integer,
    applicant_id integer,
    last_attended_school character varying,
    qualifying_exam character varying,
    qualifying_exam_year character varying,
    qualifying_exam_roll character varying,
    qualifying_exam_final_score character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicant_previous_datas OWNER TO postgres;

--
-- Name: applicant_previous_datas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicant_previous_datas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_previous_datas_id_seq OWNER TO postgres;

--
-- Name: applicant_previous_datas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicant_previous_datas_id_seq OWNED BY public.applicant_previous_datas.id;


--
-- Name: applicant_registration_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicant_registration_settings (
    id bigint NOT NULL,
    school_id integer,
    key character varying,
    value character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicant_registration_settings OWNER TO postgres;

--
-- Name: applicant_registration_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicant_registration_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicant_registration_settings_id_seq OWNER TO postgres;

--
-- Name: applicant_registration_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicant_registration_settings_id_seq OWNED BY public.applicant_registration_settings.id;


--
-- Name: applicants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.applicants (
    id bigint NOT NULL,
    school_id integer,
    reg_no character varying,
    first_name character varying,
    middle_name character varying,
    last_name character varying,
    date_of_birth date,
    address_line1 character varying,
    address_line2 character varying,
    city character varying,
    state character varying,
    country_id character varying,
    nationality_id integer NOT NULL,
    pin_code character varying,
    phone1 character varying,
    phone2 character varying,
    email character varying,
    gender character varying,
    registration_course_id integer,
    applicant_guardians_id integer,
    applicant_previous_data_id integer,
    photo_file_size integer,
    photo_file_name character varying,
    photo_content_type character varying,
    status character varying,
    has_paid boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.applicants OWNER TO postgres;

--
-- Name: applicants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.applicants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicants_id_seq OWNER TO postgres;

--
-- Name: applicants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.applicants_id_seq OWNED BY public.applicants.id;


--
-- Name: apply_leaves; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.apply_leaves (
    id bigint NOT NULL,
    employee_id integer,
    employee_leave_types_id integer,
    is_half_day boolean,
    start_date date,
    end_date date,
    reason character varying,
    approved boolean DEFAULT false,
    viewed_by_manager boolean DEFAULT false,
    manager_remark character varying,
    school_id integer
);


ALTER TABLE public.apply_leaves OWNER TO postgres;

--
-- Name: apply_leaves_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.apply_leaves_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.apply_leaves_id_seq OWNER TO postgres;

--
-- Name: apply_leaves_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.apply_leaves_id_seq OWNED BY public.apply_leaves.id;


--
-- Name: archived_employee_additional_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archived_employee_additional_details (
    id bigint NOT NULL,
    employee_id integer,
    additional_field_id integer,
    additional_info character varying,
    school_id integer
);


ALTER TABLE public.archived_employee_additional_details OWNER TO postgres;

--
-- Name: archived_employee_additional_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archived_employee_additional_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archived_employee_additional_details_id_seq OWNER TO postgres;

--
-- Name: archived_employee_additional_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archived_employee_additional_details_id_seq OWNED BY public.archived_employee_additional_details.id;


--
-- Name: archived_employee_bank_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archived_employee_bank_details (
    id bigint NOT NULL,
    employee_id integer,
    bank_field_id integer,
    bank_info character varying,
    school_id integer
);


ALTER TABLE public.archived_employee_bank_details OWNER TO postgres;

--
-- Name: archived_employee_bank_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archived_employee_bank_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archived_employee_bank_details_id_seq OWNER TO postgres;

--
-- Name: archived_employee_bank_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archived_employee_bank_details_id_seq OWNED BY public.archived_employee_bank_details.id;


--
-- Name: archived_employee_salary_structures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archived_employee_salary_structures (
    id bigint NOT NULL,
    employee_id integer,
    payroll_category_id integer,
    amount character varying,
    school_id integer
);


ALTER TABLE public.archived_employee_salary_structures OWNER TO postgres;

--
-- Name: archived_employee_salary_structures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archived_employee_salary_structures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archived_employee_salary_structures_id_seq OWNER TO postgres;

--
-- Name: archived_employee_salary_structures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archived_employee_salary_structures_id_seq OWNED BY public.archived_employee_salary_structures.id;


--
-- Name: archived_employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archived_employees (
    id bigint NOT NULL,
    employee_category_id integer,
    employee_number character varying,
    joining_date date,
    first_name character varying,
    middle_name character varying,
    last_name character varying,
    gender boolean,
    job_title character varying,
    employee_position_id integer,
    employee_department_id integer,
    reporting_manager_id integer,
    employee_grade_id integer,
    qualification character varying,
    experience_detail text,
    experience_year integer,
    experience_month integer,
    status boolean,
    status_description character varying,
    date_of_birth date,
    marital_status character varying,
    children_count integer,
    father_name character varying,
    mother_name character varying,
    husband_name character varying,
    blood_group character varying,
    nationality_id integer,
    home_address_line1 character varying,
    home_address_line2 character varying,
    home_city character varying,
    home_state character varying,
    home_country_id integer,
    home_pin_code character varying,
    office_address_line1 character varying,
    office_address_line2 character varying,
    office_city character varying,
    office_state character varying,
    office_country_id integer,
    office_pin_code character varying,
    office_phone1 character varying,
    office_phone2 character varying,
    mobile_phone character varying,
    home_phone character varying,
    email character varying,
    fax character varying,
    photo_file_name character varying,
    photo_content_type character varying,
    photo_data bytea,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    library_card character varying,
    photo_file_size integer,
    former_id character varying,
    school_id integer
);


ALTER TABLE public.archived_employees OWNER TO postgres;

--
-- Name: archived_employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archived_employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archived_employees_id_seq OWNER TO postgres;

--
-- Name: archived_employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archived_employees_id_seq OWNED BY public.archived_employees.id;


--
-- Name: archived_exam_scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archived_exam_scores (
    id bigint NOT NULL,
    student_id integer,
    exam_id integer,
    marks numeric(7,2),
    grading_level_id integer,
    remarks character varying,
    is_failed boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.archived_exam_scores OWNER TO postgres;

--
-- Name: archived_exam_scores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archived_exam_scores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archived_exam_scores_id_seq OWNER TO postgres;

--
-- Name: archived_exam_scores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archived_exam_scores_id_seq OWNED BY public.archived_exam_scores.id;


--
-- Name: archived_guardians; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archived_guardians (
    id bigint NOT NULL,
    ward_id integer,
    first_name character varying,
    last_name character varying,
    relation character varying,
    email character varying,
    office_phone1 character varying,
    office_phone2 character varying,
    mobile_phone character varying,
    office_address_line1 character varying,
    office_address_line2 character varying,
    city character varying,
    state character varying,
    country_id integer,
    dob date,
    occupation character varying,
    income character varying,
    education character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.archived_guardians OWNER TO postgres;

--
-- Name: archived_guardians_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archived_guardians_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archived_guardians_id_seq OWNER TO postgres;

--
-- Name: archived_guardians_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archived_guardians_id_seq OWNED BY public.archived_guardians.id;


--
-- Name: archived_students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.archived_students (
    id bigint NOT NULL,
    admission_no character varying,
    class_roll_no character varying,
    admission_date date,
    first_name character varying,
    middle_name character varying,
    last_name character varying,
    batch_id integer,
    date_of_birth date,
    gender character varying,
    blood_group character varying,
    birth_place character varying,
    nationality_id integer,
    language character varying,
    religion character varying,
    student_category_id integer,
    address_line1 character varying,
    address_line2 character varying,
    city character varying,
    state character varying,
    pin_code character varying,
    country_id integer,
    phone1 character varying,
    phone2 character varying,
    email character varying,
    photo_file_name character varying,
    photo_content_type character varying,
    photo_data bytea,
    status_description character varying,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    immediate_contact_id integer,
    is_sms_enabled boolean DEFAULT true,
    former_id character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    library_card character varying,
    photo_file_size integer,
    passport_number text,
    enrollment_date date,
    school_id integer
);


ALTER TABLE public.archived_students OWNER TO postgres;

--
-- Name: archived_students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.archived_students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archived_students_id_seq OWNER TO postgres;

--
-- Name: archived_students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.archived_students_id_seq OWNED BY public.archived_students.id;


--
-- Name: asset_entries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_entries (
    id bigint NOT NULL,
    dynamic_attributes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_asset_id integer,
    school_id integer
);


ALTER TABLE public.asset_entries OWNER TO postgres;

--
-- Name: asset_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asset_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asset_entries_id_seq OWNER TO postgres;

--
-- Name: asset_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asset_entries_id_seq OWNED BY public.asset_entries.id;


--
-- Name: asset_field_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_field_options (
    id bigint NOT NULL,
    asset_field_id integer,
    option character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.asset_field_options OWNER TO postgres;

--
-- Name: asset_field_options_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asset_field_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asset_field_options_id_seq OWNER TO postgres;

--
-- Name: asset_field_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asset_field_options_id_seq OWNED BY public.asset_field_options.id;


--
-- Name: asset_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asset_fields (
    id bigint NOT NULL,
    school_asset_id integer,
    field_name character varying,
    field_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.asset_fields OWNER TO postgres;

--
-- Name: asset_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asset_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asset_fields_id_seq OWNER TO postgres;

--
-- Name: asset_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asset_fields_id_seq OWNED BY public.asset_fields.id;


--
-- Name: assets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assets (
    id bigint NOT NULL,
    title character varying,
    description text,
    amount integer,
    is_inactive boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.assets OWNER TO postgres;

--
-- Name: assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assets_id_seq OWNER TO postgres;

--
-- Name: assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assets_id_seq OWNED BY public.assets.id;


--
-- Name: assignment_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assignment_answers (
    id bigint NOT NULL,
    assignment_id integer,
    student_id integer,
    status character varying DEFAULT '0'::character varying,
    title character varying,
    content text,
    attachment_file_name character varying,
    attachment_content_type character varying,
    attachment_file_size integer,
    attachment_updated_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.assignment_answers OWNER TO postgres;

--
-- Name: assignment_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.assignment_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assignment_answers_id_seq OWNER TO postgres;

--
-- Name: assignment_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assignment_answers_id_seq OWNED BY public.assignment_answers.id;


--
-- Name: assignments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assignments (
    id bigint NOT NULL,
    employee_id integer,
    subject_id integer,
    student_list character varying,
    title character varying,
    content text,
    duedate timestamp without time zone,
    attachment_file_name character varying,
    attachment_content_type character varying,
    attachment_file_size integer,
    attachment_updated_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.assignments OWNER TO postgres;

--
-- Name: assignments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.assignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assignments_id_seq OWNER TO postgres;

--
-- Name: assignments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assignments_id_seq OWNED BY public.assignments.id;


--
-- Name: attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attachments (
    id bigint NOT NULL,
    attachment_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    attachment_file_name character varying,
    attachment_content_type character varying,
    attachment_file_size integer,
    attachment_updated_at timestamp without time zone,
    registration_id integer
);


ALTER TABLE public.attachments OWNER TO postgres;

--
-- Name: attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attachments_id_seq OWNER TO postgres;

--
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attachments_id_seq OWNED BY public.attachments.id;


--
-- Name: attendances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attendances (
    id bigint NOT NULL,
    student_id integer,
    period_table_entry_id integer,
    forenoon boolean DEFAULT false,
    afternoon boolean DEFAULT false,
    reason character varying,
    school_id integer,
    month_date date,
    batch_id integer
);


ALTER TABLE public.attendances OWNER TO postgres;

--
-- Name: attendances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attendances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attendances_id_seq OWNER TO postgres;

--
-- Name: attendances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attendances_id_seq OWNED BY public.attendances.id;


--
-- Name: bank_fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bank_fields (
    id bigint NOT NULL,
    name character varying,
    status boolean,
    school_id integer
);


ALTER TABLE public.bank_fields OWNER TO postgres;

--
-- Name: bank_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bank_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bank_fields_id_seq OWNER TO postgres;

--
-- Name: bank_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bank_fields_id_seq OWNED BY public.bank_fields.id;


--
-- Name: batch_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batch_events (
    id bigint NOT NULL,
    event_id integer,
    batch_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    school_id integer
);


ALTER TABLE public.batch_events OWNER TO postgres;

--
-- Name: batch_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.batch_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.batch_events_id_seq OWNER TO postgres;

--
-- Name: batch_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.batch_events_id_seq OWNED BY public.batch_events.id;


--
-- Name: batch_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batch_groups (
    id bigint NOT NULL,
    course_id integer,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.batch_groups OWNER TO postgres;

--
-- Name: batch_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.batch_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.batch_groups_id_seq OWNER TO postgres;

--
-- Name: batch_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.batch_groups_id_seq OWNED BY public.batch_groups.id;


--
-- Name: batch_seats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batch_seats (
    id bigint NOT NULL,
    seat integer,
    batch_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.batch_seats OWNER TO postgres;

--
-- Name: batch_seats_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.batch_seats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.batch_seats_id_seq OWNER TO postgres;

--
-- Name: batch_seats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.batch_seats_id_seq OWNED BY public.batch_seats.id;


--
-- Name: batch_students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batch_students (
    student_id integer,
    batch_id integer,
    school_id integer
);


ALTER TABLE public.batch_students OWNER TO postgres;

--
-- Name: batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batches (
    id bigint NOT NULL,
    name character varying,
    course_id integer,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    employee_id character varying,
    school_id integer,
    grading_type character varying
);


ALTER TABLE public.batches OWNER TO postgres;

--
-- Name: batches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.batches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.batches_id_seq OWNER TO postgres;

--
-- Name: batches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.batches_id_seq OWNED BY public.batches.id;


--
-- Name: academic_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_details ALTER COLUMN id SET DEFAULT nextval('public.academic_details_id_seq'::regclass);


--
-- Name: additional_exam_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_exam_groups ALTER COLUMN id SET DEFAULT nextval('public.additional_exam_groups_id_seq'::regclass);


--
-- Name: additional_exam_scores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_exam_scores ALTER COLUMN id SET DEFAULT nextval('public.additional_exam_scores_id_seq'::regclass);


--
-- Name: additional_exams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_exams ALTER COLUMN id SET DEFAULT nextval('public.additional_exams_id_seq'::regclass);


--
-- Name: additional_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_fields ALTER COLUMN id SET DEFAULT nextval('public.additional_fields_id_seq'::regclass);


--
-- Name: applicant_addl_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_attachments ALTER COLUMN id SET DEFAULT nextval('public.applicant_addl_attachments_id_seq'::regclass);


--
-- Name: applicant_addl_field_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_field_groups ALTER COLUMN id SET DEFAULT nextval('public.applicant_addl_field_groups_id_seq'::regclass);


--
-- Name: applicant_addl_field_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_field_values ALTER COLUMN id SET DEFAULT nextval('public.applicant_addl_field_values_id_seq'::regclass);


--
-- Name: applicant_addl_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_fields ALTER COLUMN id SET DEFAULT nextval('public.applicant_addl_fields_id_seq'::regclass);


--
-- Name: applicant_addl_values id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_values ALTER COLUMN id SET DEFAULT nextval('public.applicant_addl_values_id_seq'::regclass);


--
-- Name: applicant_guardians id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_guardians ALTER COLUMN id SET DEFAULT nextval('public.applicant_guardians_id_seq'::regclass);


--
-- Name: applicant_previous_datas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_previous_datas ALTER COLUMN id SET DEFAULT nextval('public.applicant_previous_datas_id_seq'::regclass);


--
-- Name: applicant_registration_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_registration_settings ALTER COLUMN id SET DEFAULT nextval('public.applicant_registration_settings_id_seq'::regclass);


--
-- Name: applicants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicants ALTER COLUMN id SET DEFAULT nextval('public.applicants_id_seq'::regclass);


--
-- Name: apply_leaves id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apply_leaves ALTER COLUMN id SET DEFAULT nextval('public.apply_leaves_id_seq'::regclass);


--
-- Name: archived_employee_additional_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_employee_additional_details ALTER COLUMN id SET DEFAULT nextval('public.archived_employee_additional_details_id_seq'::regclass);


--
-- Name: archived_employee_bank_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_employee_bank_details ALTER COLUMN id SET DEFAULT nextval('public.archived_employee_bank_details_id_seq'::regclass);


--
-- Name: archived_employee_salary_structures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_employee_salary_structures ALTER COLUMN id SET DEFAULT nextval('public.archived_employee_salary_structures_id_seq'::regclass);


--
-- Name: archived_employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_employees ALTER COLUMN id SET DEFAULT nextval('public.archived_employees_id_seq'::regclass);


--
-- Name: archived_exam_scores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_exam_scores ALTER COLUMN id SET DEFAULT nextval('public.archived_exam_scores_id_seq'::regclass);


--
-- Name: archived_guardians id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_guardians ALTER COLUMN id SET DEFAULT nextval('public.archived_guardians_id_seq'::regclass);


--
-- Name: archived_students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_students ALTER COLUMN id SET DEFAULT nextval('public.archived_students_id_seq'::regclass);


--
-- Name: asset_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_entries ALTER COLUMN id SET DEFAULT nextval('public.asset_entries_id_seq'::regclass);


--
-- Name: asset_field_options id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_field_options ALTER COLUMN id SET DEFAULT nextval('public.asset_field_options_id_seq'::regclass);


--
-- Name: asset_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_fields ALTER COLUMN id SET DEFAULT nextval('public.asset_fields_id_seq'::regclass);


--
-- Name: assets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assets ALTER COLUMN id SET DEFAULT nextval('public.assets_id_seq'::regclass);


--
-- Name: assignment_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignment_answers ALTER COLUMN id SET DEFAULT nextval('public.assignment_answers_id_seq'::regclass);


--
-- Name: assignments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments ALTER COLUMN id SET DEFAULT nextval('public.assignments_id_seq'::regclass);


--
-- Name: attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments ALTER COLUMN id SET DEFAULT nextval('public.attachments_id_seq'::regclass);


--
-- Name: attendances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendances ALTER COLUMN id SET DEFAULT nextval('public.attendances_id_seq'::regclass);


--
-- Name: bank_fields id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_fields ALTER COLUMN id SET DEFAULT nextval('public.bank_fields_id_seq'::regclass);


--
-- Name: batch_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batch_events ALTER COLUMN id SET DEFAULT nextval('public.batch_events_id_seq'::regclass);


--
-- Name: batch_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batch_groups ALTER COLUMN id SET DEFAULT nextval('public.batch_groups_id_seq'::regclass);


--
-- Name: batch_seats id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batch_seats ALTER COLUMN id SET DEFAULT nextval('public.batch_seats_id_seq'::regclass);


--
-- Name: batches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches ALTER COLUMN id SET DEFAULT nextval('public.batches_id_seq'::regclass);


--
-- Data for Name: academic_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.academic_details (id, registration_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: additional_exam_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.additional_exam_groups (id, name, batch_id, exam_type, is_published, result_published, students_list, exam_date, school_id) FROM stdin;
\.


--
-- Data for Name: additional_exam_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.additional_exam_scores (id, student_id, additional_exam_id, marks, grading_level_id, remarks, is_failed, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: additional_exams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.additional_exams (id, additional_exam_group_id, subject_id, start_time, end_time, maximum_marks, minimum_marks, grading_level_id, weightage, event_id, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: additional_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.additional_fields (id, name, status, school_id) FROM stdin;
\.


--
-- Data for Name: applicant_addl_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_addl_attachments (id, school_id, applicant_id, attachment_file_name, attachment_content_type, attachment_file_size, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: applicant_addl_field_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_addl_field_groups (id, school_id, registration_course_id, name, is_active, "position", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: applicant_addl_field_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_addl_field_values (id, school_id, applicant_addl_field_id, option, is_active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: applicant_addl_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_addl_fields (id, school_id, applicant_addl_field_group_id, field_name, field_type, is_active, "position", is_mandatory, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: applicant_addl_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_addl_values (id, school_id, applicant_id, applicant_addl_field_id, option, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: applicant_guardians; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_guardians (id, school_id, applicant_id, first_name, last_name, relation, email, office_phone1, office_phone2, mobile_phone, office_address_line1, office_address_line2, city, state, country_id, dob, occupation, income, education, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: applicant_previous_datas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_previous_datas (id, school_id, applicant_id, last_attended_school, qualifying_exam, qualifying_exam_year, qualifying_exam_roll, qualifying_exam_final_score, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: applicant_registration_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicant_registration_settings (id, school_id, key, value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: applicants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.applicants (id, school_id, reg_no, first_name, middle_name, last_name, date_of_birth, address_line1, address_line2, city, state, country_id, nationality_id, pin_code, phone1, phone2, email, gender, registration_course_id, applicant_guardians_id, applicant_previous_data_id, photo_file_size, photo_file_name, photo_content_type, status, has_paid, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: apply_leaves; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.apply_leaves (id, employee_id, employee_leave_types_id, is_half_day, start_date, end_date, reason, approved, viewed_by_manager, manager_remark, school_id) FROM stdin;
\.


--
-- Data for Name: archived_employee_additional_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archived_employee_additional_details (id, employee_id, additional_field_id, additional_info, school_id) FROM stdin;
\.


--
-- Data for Name: archived_employee_bank_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archived_employee_bank_details (id, employee_id, bank_field_id, bank_info, school_id) FROM stdin;
\.


--
-- Data for Name: archived_employee_salary_structures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archived_employee_salary_structures (id, employee_id, payroll_category_id, amount, school_id) FROM stdin;
\.


--
-- Data for Name: archived_employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archived_employees (id, employee_category_id, employee_number, joining_date, first_name, middle_name, last_name, gender, job_title, employee_position_id, employee_department_id, reporting_manager_id, employee_grade_id, qualification, experience_detail, experience_year, experience_month, status, status_description, date_of_birth, marital_status, children_count, father_name, mother_name, husband_name, blood_group, nationality_id, home_address_line1, home_address_line2, home_city, home_state, home_country_id, home_pin_code, office_address_line1, office_address_line2, office_city, office_state, office_country_id, office_pin_code, office_phone1, office_phone2, mobile_phone, home_phone, email, fax, photo_file_name, photo_content_type, photo_data, created_at, updated_at, library_card, photo_file_size, former_id, school_id) FROM stdin;
\.


--
-- Data for Name: archived_exam_scores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archived_exam_scores (id, student_id, exam_id, marks, grading_level_id, remarks, is_failed, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: archived_guardians; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archived_guardians (id, ward_id, first_name, last_name, relation, email, office_phone1, office_phone2, mobile_phone, office_address_line1, office_address_line2, city, state, country_id, dob, occupation, income, education, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: archived_students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.archived_students (id, admission_no, class_roll_no, admission_date, first_name, middle_name, last_name, batch_id, date_of_birth, gender, blood_group, birth_place, nationality_id, language, religion, student_category_id, address_line1, address_line2, city, state, pin_code, country_id, phone1, phone2, email, photo_file_name, photo_content_type, photo_data, status_description, is_active, is_deleted, immediate_contact_id, is_sms_enabled, former_id, created_at, updated_at, library_card, photo_file_size, passport_number, enrollment_date, school_id) FROM stdin;
\.


--
-- Data for Name: asset_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_entries (id, dynamic_attributes, created_at, updated_at, school_asset_id, school_id) FROM stdin;
\.


--
-- Data for Name: asset_field_options; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_field_options (id, asset_field_id, option, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: asset_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asset_fields (id, school_asset_id, field_name, field_type, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.assets (id, title, description, amount, is_inactive, is_deleted, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: assignment_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.assignment_answers (id, assignment_id, student_id, status, title, content, attachment_file_name, attachment_content_type, attachment_file_size, attachment_updated_at, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: assignments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.assignments (id, employee_id, subject_id, student_list, title, content, duedate, attachment_file_name, attachment_content_type, attachment_file_size, attachment_updated_at, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attachments (id, attachment_type, created_at, updated_at, attachment_file_name, attachment_content_type, attachment_file_size, attachment_updated_at, registration_id) FROM stdin;
\.


--
-- Data for Name: attendances; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attendances (id, student_id, period_table_entry_id, forenoon, afternoon, reason, school_id, month_date, batch_id) FROM stdin;
\.


--
-- Data for Name: bank_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bank_fields (id, name, status, school_id) FROM stdin;
\.


--
-- Data for Name: batch_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.batch_events (id, event_id, batch_id, created_at, updated_at, school_id) FROM stdin;
\.


--
-- Data for Name: batch_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.batch_groups (id, course_id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: batch_seats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.batch_seats (id, seat, batch_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: batch_students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.batch_students (student_id, batch_id, school_id) FROM stdin;
\.


--
-- Data for Name: batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.batches (id, name, course_id, start_date, end_date, is_active, is_deleted, employee_id, school_id, grading_type) FROM stdin;
\.


--
-- Name: academic_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.academic_details_id_seq', 1, false);


--
-- Name: additional_exam_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.additional_exam_groups_id_seq', 1, false);


--
-- Name: additional_exam_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.additional_exam_scores_id_seq', 1, false);


--
-- Name: additional_exams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.additional_exams_id_seq', 1, false);


--
-- Name: additional_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.additional_fields_id_seq', 1, false);


--
-- Name: applicant_addl_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicant_addl_attachments_id_seq', 1, false);


--
-- Name: applicant_addl_field_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicant_addl_field_groups_id_seq', 1, false);


--
-- Name: applicant_addl_field_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicant_addl_field_values_id_seq', 1, false);


--
-- Name: applicant_addl_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicant_addl_fields_id_seq', 1, false);


--
-- Name: applicant_addl_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicant_addl_values_id_seq', 1, false);


--
-- Name: applicant_guardians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicant_guardians_id_seq', 1, false);


--
-- Name: applicant_previous_datas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicant_previous_datas_id_seq', 1, false);


--
-- Name: applicant_registration_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicant_registration_settings_id_seq', 1, false);


--
-- Name: applicants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.applicants_id_seq', 1, false);


--
-- Name: apply_leaves_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.apply_leaves_id_seq', 1, false);


--
-- Name: archived_employee_additional_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archived_employee_additional_details_id_seq', 1, false);


--
-- Name: archived_employee_bank_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archived_employee_bank_details_id_seq', 1, false);


--
-- Name: archived_employee_salary_structures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archived_employee_salary_structures_id_seq', 1, false);


--
-- Name: archived_employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archived_employees_id_seq', 1, false);


--
-- Name: archived_exam_scores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archived_exam_scores_id_seq', 1, false);


--
-- Name: archived_guardians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archived_guardians_id_seq', 1, false);


--
-- Name: archived_students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.archived_students_id_seq', 1, false);


--
-- Name: asset_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asset_entries_id_seq', 1, false);


--
-- Name: asset_field_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asset_field_options_id_seq', 1, false);


--
-- Name: asset_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asset_fields_id_seq', 1, false);


--
-- Name: assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assets_id_seq', 1, false);


--
-- Name: assignment_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assignment_answers_id_seq', 1, false);


--
-- Name: assignments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assignments_id_seq', 1, false);


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attachments_id_seq', 1, false);


--
-- Name: attendances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendances_id_seq', 1, false);


--
-- Name: bank_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_fields_id_seq', 1, false);


--
-- Name: batch_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.batch_events_id_seq', 1, false);


--
-- Name: batch_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.batch_groups_id_seq', 1, false);


--
-- Name: batch_seats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.batch_seats_id_seq', 1, false);


--
-- Name: batches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.batches_id_seq', 1, false);


--
-- Name: academic_details academic_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_details
    ADD CONSTRAINT academic_details_pkey PRIMARY KEY (id);


--
-- Name: additional_exam_groups additional_exam_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_exam_groups
    ADD CONSTRAINT additional_exam_groups_pkey PRIMARY KEY (id);


--
-- Name: additional_exam_scores additional_exam_scores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_exam_scores
    ADD CONSTRAINT additional_exam_scores_pkey PRIMARY KEY (id);


--
-- Name: additional_exams additional_exams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_exams
    ADD CONSTRAINT additional_exams_pkey PRIMARY KEY (id);


--
-- Name: additional_fields additional_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.additional_fields
    ADD CONSTRAINT additional_fields_pkey PRIMARY KEY (id);


--
-- Name: applicant_addl_attachments applicant_addl_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_attachments
    ADD CONSTRAINT applicant_addl_attachments_pkey PRIMARY KEY (id);


--
-- Name: applicant_addl_field_groups applicant_addl_field_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_field_groups
    ADD CONSTRAINT applicant_addl_field_groups_pkey PRIMARY KEY (id);


--
-- Name: applicant_addl_field_values applicant_addl_field_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_field_values
    ADD CONSTRAINT applicant_addl_field_values_pkey PRIMARY KEY (id);


--
-- Name: applicant_addl_fields applicant_addl_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_fields
    ADD CONSTRAINT applicant_addl_fields_pkey PRIMARY KEY (id);


--
-- Name: applicant_addl_values applicant_addl_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_addl_values
    ADD CONSTRAINT applicant_addl_values_pkey PRIMARY KEY (id);


--
-- Name: applicant_guardians applicant_guardians_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_guardians
    ADD CONSTRAINT applicant_guardians_pkey PRIMARY KEY (id);


--
-- Name: applicant_previous_datas applicant_previous_datas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_previous_datas
    ADD CONSTRAINT applicant_previous_datas_pkey PRIMARY KEY (id);


--
-- Name: applicant_registration_settings applicant_registration_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicant_registration_settings
    ADD CONSTRAINT applicant_registration_settings_pkey PRIMARY KEY (id);


--
-- Name: applicants applicants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.applicants
    ADD CONSTRAINT applicants_pkey PRIMARY KEY (id);


--
-- Name: apply_leaves apply_leaves_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.apply_leaves
    ADD CONSTRAINT apply_leaves_pkey PRIMARY KEY (id);


--
-- Name: archived_employee_additional_details archived_employee_additional_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_employee_additional_details
    ADD CONSTRAINT archived_employee_additional_details_pkey PRIMARY KEY (id);


--
-- Name: archived_employee_bank_details archived_employee_bank_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_employee_bank_details
    ADD CONSTRAINT archived_employee_bank_details_pkey PRIMARY KEY (id);


--
-- Name: archived_employee_salary_structures archived_employee_salary_structures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_employee_salary_structures
    ADD CONSTRAINT archived_employee_salary_structures_pkey PRIMARY KEY (id);


--
-- Name: archived_employees archived_employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_employees
    ADD CONSTRAINT archived_employees_pkey PRIMARY KEY (id);


--
-- Name: archived_exam_scores archived_exam_scores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_exam_scores
    ADD CONSTRAINT archived_exam_scores_pkey PRIMARY KEY (id);


--
-- Name: archived_guardians archived_guardians_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_guardians
    ADD CONSTRAINT archived_guardians_pkey PRIMARY KEY (id);


--
-- Name: archived_students archived_students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.archived_students
    ADD CONSTRAINT archived_students_pkey PRIMARY KEY (id);


--
-- Name: asset_entries asset_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_entries
    ADD CONSTRAINT asset_entries_pkey PRIMARY KEY (id);


--
-- Name: asset_field_options asset_field_options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_field_options
    ADD CONSTRAINT asset_field_options_pkey PRIMARY KEY (id);


--
-- Name: asset_fields asset_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asset_fields
    ADD CONSTRAINT asset_fields_pkey PRIMARY KEY (id);


--
-- Name: assets assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (id);


--
-- Name: assignment_answers assignment_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignment_answers
    ADD CONSTRAINT assignment_answers_pkey PRIMARY KEY (id);


--
-- Name: assignments assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (id);


--
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- Name: attendances attendances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendances
    ADD CONSTRAINT attendances_pkey PRIMARY KEY (id);


--
-- Name: bank_fields bank_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_fields
    ADD CONSTRAINT bank_fields_pkey PRIMARY KEY (id);


--
-- Name: batch_events batch_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batch_events
    ADD CONSTRAINT batch_events_pkey PRIMARY KEY (id);


--
-- Name: batch_groups batch_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batch_groups
    ADD CONSTRAINT batch_groups_pkey PRIMARY KEY (id);


--
-- Name: batch_seats batch_seats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batch_seats
    ADD CONSTRAINT batch_seats_pkey PRIMARY KEY (id);


--
-- Name: batches batches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches
    ADD CONSTRAINT batches_pkey PRIMARY KEY (id);


--
-- Name: index_additional_exam_groups_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_additional_exam_groups_on_school_id ON public.additional_exam_groups USING btree (school_id);


--
-- Name: index_additional_exam_scores_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_additional_exam_scores_on_school_id ON public.additional_exam_scores USING btree (school_id);


--
-- Name: index_additional_exams_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_additional_exams_on_school_id ON public.additional_exams USING btree (school_id);


--
-- Name: index_additional_fields_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_additional_fields_on_school_id ON public.additional_fields USING btree (school_id);


--
-- Name: index_applicant_addl_attachments_on_applicant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_attachments_on_applicant_id ON public.applicant_addl_attachments USING btree (applicant_id);


--
-- Name: index_applicant_addl_attachments_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_attachments_on_school_id ON public.applicant_addl_attachments USING btree (school_id);


--
-- Name: index_applicant_addl_field_groups_on_is_active; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_field_groups_on_is_active ON public.applicant_addl_field_groups USING btree (is_active);


--
-- Name: index_applicant_addl_field_groups_on_registration_course_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_field_groups_on_registration_course_id ON public.applicant_addl_field_groups USING btree (registration_course_id);


--
-- Name: index_applicant_addl_field_groups_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_field_groups_on_school_id ON public.applicant_addl_field_groups USING btree (school_id);


--
-- Name: index_applicant_addl_field_values_on_applicant_addl_field_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_field_values_on_applicant_addl_field_id ON public.applicant_addl_field_values USING btree (applicant_addl_field_id);


--
-- Name: index_applicant_addl_field_values_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_field_values_on_school_id ON public.applicant_addl_field_values USING btree (school_id);


--
-- Name: index_applicant_addl_fields_on_applicant_addl_field_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_fields_on_applicant_addl_field_group_id ON public.applicant_addl_fields USING btree (applicant_addl_field_group_id);


--
-- Name: index_applicant_addl_fields_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_fields_on_school_id ON public.applicant_addl_fields USING btree (school_id);


--
-- Name: index_applicant_addl_values_on_applicant_addl_field_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_values_on_applicant_addl_field_id ON public.applicant_addl_values USING btree (applicant_addl_field_id);


--
-- Name: index_applicant_addl_values_on_applicant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_values_on_applicant_id ON public.applicant_addl_values USING btree (applicant_id);


--
-- Name: index_applicant_addl_values_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_addl_values_on_school_id ON public.applicant_addl_values USING btree (school_id);


--
-- Name: index_applicant_guardians_on_applicant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_guardians_on_applicant_id ON public.applicant_guardians USING btree (applicant_id);


--
-- Name: index_applicant_guardians_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_guardians_on_school_id ON public.applicant_guardians USING btree (school_id);


--
-- Name: index_applicant_previous_datas_on_applicant_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_previous_datas_on_applicant_id ON public.applicant_previous_datas USING btree (applicant_id);


--
-- Name: index_applicant_previous_datas_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_previous_datas_on_school_id ON public.applicant_previous_datas USING btree (school_id);


--
-- Name: index_applicant_registration_settings_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicant_registration_settings_on_school_id ON public.applicant_registration_settings USING btree (school_id);


--
-- Name: index_applicants_on_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicants_on_created_at ON public.applicants USING btree (created_at);


--
-- Name: index_applicants_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicants_on_school_id ON public.applicants USING btree (school_id);


--
-- Name: index_applicants_on_status; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_applicants_on_status ON public.applicants USING btree (status);


--
-- Name: index_apply_leaves_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_apply_leaves_on_school_id ON public.apply_leaves USING btree (school_id);


--
-- Name: index_archived_employee_additional_details_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_archived_employee_additional_details_on_school_id ON public.archived_employee_additional_details USING btree (school_id);


--
-- Name: index_archived_employee_bank_details_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_archived_employee_bank_details_on_school_id ON public.archived_employee_bank_details USING btree (school_id);


--
-- Name: index_archived_employee_salary_structures_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_archived_employee_salary_structures_on_school_id ON public.archived_employee_salary_structures USING btree (school_id);


--
-- Name: index_archived_employees_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_archived_employees_on_school_id ON public.archived_employees USING btree (school_id);


--
-- Name: index_archived_exam_scores_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_archived_exam_scores_on_school_id ON public.archived_exam_scores USING btree (school_id);


--
-- Name: index_archived_exam_scores_on_student_id_and_exam_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_archived_exam_scores_on_student_id_and_exam_id ON public.archived_exam_scores USING btree (student_id, exam_id);


--
-- Name: index_archived_guardians_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_archived_guardians_on_school_id ON public.archived_guardians USING btree (school_id);


--
-- Name: index_archived_students_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_archived_students_on_school_id ON public.archived_students USING btree (school_id);


--
-- Name: index_assets_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_assets_on_school_id ON public.assets USING btree (school_id);


--
-- Name: index_attendances_on_month_date_and_batch_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attendances_on_month_date_and_batch_id ON public.attendances USING btree (month_date, batch_id);


--
-- Name: index_attendances_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attendances_on_school_id ON public.attendances USING btree (school_id);


--
-- Name: index_attendances_on_student_id_and_batch_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attendances_on_student_id_and_batch_id ON public.attendances USING btree (student_id, batch_id);


--
-- Name: index_bank_fields_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_bank_fields_on_school_id ON public.bank_fields USING btree (school_id);


--
-- Name: index_batch_events_on_batch_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_batch_events_on_batch_id ON public.batch_events USING btree (batch_id);


--
-- Name: index_batch_events_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_batch_events_on_school_id ON public.batch_events USING btree (school_id);


--
-- Name: index_batch_students_on_batch_id_and_student_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_batch_students_on_batch_id_and_student_id ON public.batch_students USING btree (batch_id, student_id);


--
-- Name: index_batch_students_on_school_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_batch_students_on_school_id ON public.batch_students USING btree (school_id);


--
-- PostgreSQL database dump complete
--

