--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: childattendance; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE childattendance (
    id integer NOT NULL,
    day date NOT NULL,
    is_attend boolean NOT NULL,
    child_id integer NOT NULL
);


ALTER TABLE childattendance OWNER TO smart;

--
-- Name: childattendance_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE childattendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE childattendance_id_seq OWNER TO smart;

--
-- Name: childattendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE childattendance_id_seq OWNED BY childattendance.id;


--
-- Name: children; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE children (
    id integer NOT NULL,
    child_name character varying(100) NOT NULL,
    birth_date date NOT NULL,
    siblings_num integer,
    child_order integer,
    diseases text,
    vulnerability text,
    drugs text,
    emergency character varying(50),
    fav_color character varying(25),
    fav_name character varying(25),
    fav_game character varying(25),
    hobby character varying(50),
    strangers character varying(25),
    other_children character varying(25),
    good_manners character varying(50),
    bad_manners character varying(50),
    why_us character varying(50),
    how_find character varying(50),
    excpectation character varying(50),
    guardian_id integer NOT NULL,
    relative_id integer NOT NULL,
    mother_id integer NOT NULL,
    class_room_id integer,
    picture character varying(100),
    taker text NOT NULL
);


ALTER TABLE children OWNER TO smart;

--
-- Name: children_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE children_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE children_id_seq OWNER TO smart;

--
-- Name: children_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE children_id_seq OWNED BY children.id;


--
-- Name: classrooms; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE classrooms (
    id integer NOT NULL,
    classroom_name character varying(50) NOT NULL,
    level_id integer NOT NULL,
    supervisor_id integer NOT NULL
);


ALTER TABLE classrooms OWNER TO smart;

--
-- Name: classrooms_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE classrooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE classrooms_id_seq OWNER TO smart;

--
-- Name: classrooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE classrooms_id_seq OWNED BY classrooms.id;


--
-- Name: guardianrelative; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE guardianrelative (
    id integer NOT NULL,
    relative_name character varying(25) NOT NULL
);


ALTER TABLE guardianrelative OWNER TO smart;

--
-- Name: guardianrelative_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE guardianrelative_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE guardianrelative_id_seq OWNER TO smart;

--
-- Name: guardianrelative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE guardianrelative_id_seq OWNED BY guardianrelative.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE jobs (
    id integer NOT NULL,
    job_name character varying(50) NOT NULL
);


ALTER TABLE jobs OWNER TO smart;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE jobs_id_seq OWNER TO smart;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE jobs_id_seq OWNED BY jobs.id;


--
-- Name: levels; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE levels (
    id integer NOT NULL,
    level_name character varying(50) NOT NULL
);


ALTER TABLE levels OWNER TO smart;

--
-- Name: levels_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE levels_id_seq OWNER TO smart;

--
-- Name: levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE levels_id_seq OWNED BY levels.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE members (
    id integer NOT NULL,
    full_name character varying(250) NOT NULL,
    membership_no character varying(25) NOT NULL,
    membership_date date NOT NULL,
    national_num character varying(25) NOT NULL,
    job character varying(50),
    birth_date date,
    education_degree character varying(50),
    address character varying(100),
    cell_phone character varying(25) NOT NULL,
    email character varying(254)
);


ALTER TABLE members OWNER TO smart;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE members_id_seq OWNER TO smart;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE members_id_seq OWNED BY members.id;


--
-- Name: mothers; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE mothers (
    id integer NOT NULL,
    mother_name character varying(100) NOT NULL,
    national_num character varying(25) NOT NULL,
    education_degree character varying(100),
    job character varying(100),
    address character varying(500),
    cell_phone character varying(25)
);


ALTER TABLE mothers OWNER TO smart;

--
-- Name: mothers_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE mothers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mothers_id_seq OWNER TO smart;

--
-- Name: mothers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE mothers_id_seq OWNED BY mothers.id;


--
-- Name: staff; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE staff (
    id integer NOT NULL,
    staff_name character varying(250) NOT NULL,
    address character varying(250),
    cell_phone character varying(50) NOT NULL,
    job_id integer NOT NULL
);


ALTER TABLE staff OWNER TO smart;

--
-- Name: staff_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE staff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE staff_id_seq OWNER TO smart;

--
-- Name: staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE staff_id_seq OWNED BY staff.id;


--
-- Name: staffattendance; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE staffattendance (
    id integer NOT NULL,
    day date NOT NULL,
    is_attend boolean NOT NULL,
    staff_member_id integer NOT NULL
);


ALTER TABLE staffattendance OWNER TO smart;

--
-- Name: staffattendance_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE staffattendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE staffattendance_id_seq OWNER TO smart;

--
-- Name: staffattendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE staffattendance_id_seq OWNED BY staffattendance.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: smart; Tablespace: 
--

CREATE TABLE users (
    user_id integer NOT NULL,
    username character varying(50),
    password character varying(250)
);


ALTER TABLE users OWNER TO smart;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: smart
--

CREATE SEQUENCE users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_user_id_seq OWNER TO smart;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: smart
--

ALTER SEQUENCE users_user_id_seq OWNED BY users.user_id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY childattendance ALTER COLUMN id SET DEFAULT nextval('childattendance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY children ALTER COLUMN id SET DEFAULT nextval('children_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY classrooms ALTER COLUMN id SET DEFAULT nextval('classrooms_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY guardianrelative ALTER COLUMN id SET DEFAULT nextval('guardianrelative_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY jobs ALTER COLUMN id SET DEFAULT nextval('jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY levels ALTER COLUMN id SET DEFAULT nextval('levels_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY members ALTER COLUMN id SET DEFAULT nextval('members_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY mothers ALTER COLUMN id SET DEFAULT nextval('mothers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY staff ALTER COLUMN id SET DEFAULT nextval('staff_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY staffattendance ALTER COLUMN id SET DEFAULT nextval('staffattendance_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: smart
--

ALTER TABLE ONLY users ALTER COLUMN user_id SET DEFAULT nextval('users_user_id_seq'::regclass);


--
-- Name: child_day_uniq; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY childattendance
    ADD CONSTRAINT child_day_uniq UNIQUE (day, child_id);


--
-- Name: child_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY children
    ADD CONSTRAINT child_pkey PRIMARY KEY (id);


--
-- Name: childattendance_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY childattendance
    ADD CONSTRAINT childattendance_pkey PRIMARY KEY (id);


--
-- Name: classroom_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY classrooms
    ADD CONSTRAINT classroom_pkey PRIMARY KEY (id);


--
-- Name: guardianrelative_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY guardianrelative
    ADD CONSTRAINT guardianrelative_pkey PRIMARY KEY (id);


--
-- Name: job_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY jobs
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);


--
-- Name: levels_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY levels
    ADD CONSTRAINT levels_pkey PRIMARY KEY (id);


--
-- Name: member_membership_no_uniq; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY members
    ADD CONSTRAINT member_membership_no_uniq UNIQUE (membership_no);


--
-- Name: member_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY members
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);


--
-- Name: mother_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY mothers
    ADD CONSTRAINT mother_pkey PRIMARY KEY (id);


--
-- Name: staff_day_uniq; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY staffattendance
    ADD CONSTRAINT staff_day_uniq UNIQUE (day, staff_member_id);


--
-- Name: staff_pkey; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id);


--
-- Name: staffattendance_pk; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY staffattendance
    ADD CONSTRAINT staffattendance_pk PRIMARY KEY (id);


--
-- Name: user_pk; Type: CONSTRAINT; Schema: public; Owner: smart; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT user_pk PRIMARY KEY (user_id);


--
-- Name: child_classroom_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY children
    ADD CONSTRAINT child_classroom_fk FOREIGN KEY (class_room_id) REFERENCES classrooms(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: child_member_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY children
    ADD CONSTRAINT child_member_fk FOREIGN KEY (guardian_id) REFERENCES members(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: child_mother_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY children
    ADD CONSTRAINT child_mother_fk FOREIGN KEY (mother_id) REFERENCES mothers(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: child_relative_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY children
    ADD CONSTRAINT child_relative_fk FOREIGN KEY (relative_id) REFERENCES guardianrelative(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: childattendance_child_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY childattendance
    ADD CONSTRAINT childattendance_child_fk FOREIGN KEY (child_id) REFERENCES children(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_level_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY classrooms
    ADD CONSTRAINT classroom_level_fk FOREIGN KEY (level_id) REFERENCES levels(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classroom_staff_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY classrooms
    ADD CONSTRAINT classroom_staff_fk FOREIGN KEY (supervisor_id) REFERENCES staff(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: staff_job_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY staff
    ADD CONSTRAINT staff_job_fk FOREIGN KEY (job_id) REFERENCES jobs(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: staffattendance_staff_fk; Type: FK CONSTRAINT; Schema: public; Owner: smart
--

ALTER TABLE ONLY staffattendance
    ADD CONSTRAINT staffattendance_staff_fk FOREIGN KEY (staff_member_id) REFERENCES staff(id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

