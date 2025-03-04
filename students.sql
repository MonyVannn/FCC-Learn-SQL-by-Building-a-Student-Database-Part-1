--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (40, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (41, 'Web Programming');
INSERT INTO public.courses VALUES (42, 'Database Systems');
INSERT INTO public.courses VALUES (43, 'Computer Networks');
INSERT INTO public.courses VALUES (44, 'SQL');
INSERT INTO public.courses VALUES (45, 'Machine Learning');
INSERT INTO public.courses VALUES (46, 'Computer Systems');
INSERT INTO public.courses VALUES (47, 'Web Applications');
INSERT INTO public.courses VALUES (48, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (49, 'Python');
INSERT INTO public.courses VALUES (50, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (51, 'Calculus');
INSERT INTO public.courses VALUES (52, 'Game Architecture');
INSERT INTO public.courses VALUES (53, 'Algorithms');
INSERT INTO public.courses VALUES (54, 'UNIX');
INSERT INTO public.courses VALUES (55, 'Server Administration');
INSERT INTO public.courses VALUES (56, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (47, 'Database Administration');
INSERT INTO public.majors VALUES (48, 'Web Development');
INSERT INTO public.majors VALUES (49, 'Data Science');
INSERT INTO public.majors VALUES (50, 'Network Engineering');
INSERT INTO public.majors VALUES (51, 'Computer Programming');
INSERT INTO public.majors VALUES (52, 'Game Design');
INSERT INTO public.majors VALUES (53, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (47, 40);
INSERT INTO public.majors_courses VALUES (48, 41);
INSERT INTO public.majors_courses VALUES (47, 42);
INSERT INTO public.majors_courses VALUES (49, 40);
INSERT INTO public.majors_courses VALUES (50, 43);
INSERT INTO public.majors_courses VALUES (47, 44);
INSERT INTO public.majors_courses VALUES (49, 45);
INSERT INTO public.majors_courses VALUES (50, 46);
INSERT INTO public.majors_courses VALUES (51, 43);
INSERT INTO public.majors_courses VALUES (47, 47);
INSERT INTO public.majors_courses VALUES (52, 48);
INSERT INTO public.majors_courses VALUES (49, 49);
INSERT INTO public.majors_courses VALUES (51, 50);
INSERT INTO public.majors_courses VALUES (53, 46);
INSERT INTO public.majors_courses VALUES (52, 51);
INSERT INTO public.majors_courses VALUES (48, 40);
INSERT INTO public.majors_courses VALUES (49, 51);
INSERT INTO public.majors_courses VALUES (48, 50);
INSERT INTO public.majors_courses VALUES (52, 52);
INSERT INTO public.majors_courses VALUES (53, 43);
INSERT INTO public.majors_courses VALUES (52, 53);
INSERT INTO public.majors_courses VALUES (53, 54);
INSERT INTO public.majors_courses VALUES (53, 55);
INSERT INTO public.majors_courses VALUES (51, 46);
INSERT INTO public.majors_courses VALUES (51, 49);
INSERT INTO public.majors_courses VALUES (50, 56);
INSERT INTO public.majors_courses VALUES (48, 47);
INSERT INTO public.majors_courses VALUES (50, 53);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (37, 'Rhea', 'Kellems', 47, 2.5);
INSERT INTO public.students VALUES (38, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (39, 'Kimberly', 'Whitley', 48, 3.8);
INSERT INTO public.students VALUES (40, 'Jimmy', 'Felipe', 47, 3.7);
INSERT INTO public.students VALUES (41, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (42, 'Casares', 'Hijo', 52, 4.0);
INSERT INTO public.students VALUES (43, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (44, 'Sterling', 'Boss', 52, 3.9);
INSERT INTO public.students VALUES (45, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (46, 'Kaija', 'Uronen', 52, 3.7);
INSERT INTO public.students VALUES (47, 'Faye', 'Conn', 52, 2.1);
INSERT INTO public.students VALUES (48, 'Efren', 'Reilly', 48, 3.9);
INSERT INTO public.students VALUES (49, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (50, 'Maxine', 'Hagenes', 47, 2.9);
INSERT INTO public.students VALUES (51, 'Larry', 'Saunders', 49, 2.2);
INSERT INTO public.students VALUES (52, 'Karl', 'Kuhar', 48, NULL);
INSERT INTO public.students VALUES (53, 'Lieke', 'Hazenveld', 52, 3.5);
INSERT INTO public.students VALUES (54, 'Obie', 'Hilpert', 48, NULL);
INSERT INTO public.students VALUES (55, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (56, 'Nathan', 'Turner', 47, 3.3);
INSERT INTO public.students VALUES (57, 'Gerald', 'Osiki', 49, 2.2);
INSERT INTO public.students VALUES (58, 'Vanya', 'Hassanah', 52, 4.0);
INSERT INTO public.students VALUES (59, 'Roxelana', 'Florescu', 47, 3.2);
INSERT INTO public.students VALUES (60, 'Helene', 'Parker', 49, 3.4);
INSERT INTO public.students VALUES (61, 'Mariana', 'Russel', 48, 1.8);
INSERT INTO public.students VALUES (62, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (63, 'Mehdi', 'Vandenberghe', 47, 1.9);
INSERT INTO public.students VALUES (64, 'Dejon', 'Howell', 48, 4.0);
INSERT INTO public.students VALUES (65, 'Aliya', 'Gulgowski', 53, 2.6);
INSERT INTO public.students VALUES (66, 'Ana', 'Tupajic', 49, 3.1);
INSERT INTO public.students VALUES (67, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 56, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 53, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 67, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

