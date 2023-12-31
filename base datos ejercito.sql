toc.dat                                                                                             0000600 0004000 0002000 00000014311 14516340153 0014441 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                   	    {            EJERCITO    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    16464    EJERCITO    DATABASE     �   CREATE DATABASE "EJERCITO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "EJERCITO";
                postgres    false         �            1259    16521 
   compañias    TABLE     g   CREATE TABLE public."compañias" (
    numero integer NOT NULL,
    actividad character varying(50)
);
     DROP TABLE public."compañias";
       public         heap    postgres    false         �            1259    16546 	   cuarteles    TABLE     �   CREATE TABLE public.cuarteles (
    codigo integer NOT NULL,
    nombre character varying(50),
    ubicacion character varying(50)
);
    DROP TABLE public.cuarteles;
       public         heap    postgres    false         �            1259    16536    cuerpo    TABLE     d   CREATE TABLE public.cuerpo (
    codigo integer NOT NULL,
    denominacion character varying(50)
);
    DROP TABLE public.cuerpo;
       public         heap    postgres    false         �            1259    16577 	   servicios    TABLE     f   CREATE TABLE public.servicios (
    codigo integer NOT NULL,
    descripcion character varying(50)
);
    DROP TABLE public.servicios;
       public         heap    postgres    false         �            1259    16511    soldados    TABLE     �   CREATE TABLE public.soldados (
    codigo integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    graduacion date,
    "compañia" integer,
    cuerpo integer,
    cuartel integer,
    servicio integer
);
    DROP TABLE public.soldados;
       public         heap    postgres    false         �          0    16521 
   compañias 
   TABLE DATA           9   COPY public."compañias" (numero, actividad) FROM stdin;
    public          postgres    false    216       4807.dat �          0    16546 	   cuarteles 
   TABLE DATA           >   COPY public.cuarteles (codigo, nombre, ubicacion) FROM stdin;
    public          postgres    false    218       4809.dat �          0    16536    cuerpo 
   TABLE DATA           6   COPY public.cuerpo (codigo, denominacion) FROM stdin;
    public          postgres    false    217       4808.dat �          0    16577 	   servicios 
   TABLE DATA           8   COPY public.servicios (codigo, descripcion) FROM stdin;
    public          postgres    false    219       4810.dat �          0    16511    soldados 
   TABLE DATA           p   COPY public.soldados (codigo, nombre, apellido, graduacion, "compañia", cuerpo, cuartel, servicio) FROM stdin;
    public          postgres    false    215       4806.dat ,           2606    16525    compañias compañias_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."compañias"
    ADD CONSTRAINT "compañias_pkey" PRIMARY KEY (numero);
 H   ALTER TABLE ONLY public."compañias" DROP CONSTRAINT "compañias_pkey";
       public            postgres    false    216         0           2606    16550    cuarteles cuarteles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cuarteles
    ADD CONSTRAINT cuarteles_pkey PRIMARY KEY (codigo);
 B   ALTER TABLE ONLY public.cuarteles DROP CONSTRAINT cuarteles_pkey;
       public            postgres    false    218         .           2606    16540    cuerpo cuerpo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cuerpo
    ADD CONSTRAINT cuerpo_pkey PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.cuerpo DROP CONSTRAINT cuerpo_pkey;
       public            postgres    false    217         2           2606    16581    servicios servicios_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (codigo);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public            postgres    false    219         *           2606    16515    soldados soldados_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT soldados_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.soldados DROP CONSTRAINT soldados_pkey;
       public            postgres    false    215         3           2606    16526    soldados compañias    FK CONSTRAINT     �   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT "compañias" FOREIGN KEY ("compañia") REFERENCES public."compañias"(numero) NOT VALID;
 ?   ALTER TABLE ONLY public.soldados DROP CONSTRAINT "compañias";
       public          postgres    false    4652    215    216         4           2606    16562    soldados cuartel    FK CONSTRAINT     �   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT cuartel FOREIGN KEY (cuartel) REFERENCES public.cuarteles(codigo) NOT VALID;
 :   ALTER TABLE ONLY public.soldados DROP CONSTRAINT cuartel;
       public          postgres    false    4656    215    218         5           2606    16541    soldados cuerpo    FK CONSTRAINT     |   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT cuerpo FOREIGN KEY (cuerpo) REFERENCES public.cuerpo(codigo) NOT VALID;
 9   ALTER TABLE ONLY public.soldados DROP CONSTRAINT cuerpo;
       public          postgres    false    4654    215    217         6           2606    16582    soldados servicios     FK CONSTRAINT     �   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT "servicios " FOREIGN KEY (servicio) REFERENCES public.servicios(codigo) NOT VALID;
 ?   ALTER TABLE ONLY public.soldados DROP CONSTRAINT "servicios ";
       public          postgres    false    4658    215    219                                                                                                                                                                                                                                                                                                                               4807.dat                                                                                            0000600 0004000 0002000 00000000023 14516340153 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1234	ronderos
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             4809.dat                                                                                            0000600 0004000 0002000 00000000037 14516340153 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	cuarta brigada	medellin
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 4808.dat                                                                                            0000600 0004000 0002000 00000000031 14516340153 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        12312	profesionales
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       4810.dat                                                                                            0000600 0004000 0002000 00000000024 14516340153 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        345	vigilancia
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            4806.dat                                                                                            0000600 0004000 0002000 00000000066 14516340153 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        12334	andres 	correa	2018-12-13	1234	12312	2	345
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000013012 14516340153 0015363 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE "EJERCITO";
--
-- Name: EJERCITO; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "EJERCITO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE "EJERCITO" OWNER TO postgres;

\connect "EJERCITO"

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
-- Name: compañias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."compañias" (
    numero integer NOT NULL,
    actividad character varying(50)
);


ALTER TABLE public."compañias" OWNER TO postgres;

--
-- Name: cuarteles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuarteles (
    codigo integer NOT NULL,
    nombre character varying(50),
    ubicacion character varying(50)
);


ALTER TABLE public.cuarteles OWNER TO postgres;

--
-- Name: cuerpo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuerpo (
    codigo integer NOT NULL,
    denominacion character varying(50)
);


ALTER TABLE public.cuerpo OWNER TO postgres;

--
-- Name: servicios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicios (
    codigo integer NOT NULL,
    descripcion character varying(50)
);


ALTER TABLE public.servicios OWNER TO postgres;

--
-- Name: soldados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soldados (
    codigo integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    graduacion date,
    "compañia" integer,
    cuerpo integer,
    cuartel integer,
    servicio integer
);


ALTER TABLE public.soldados OWNER TO postgres;

--
-- Data for Name: compañias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."compañias" (numero, actividad) FROM stdin;
\.
COPY public."compañias" (numero, actividad) FROM '$$PATH$$/4807.dat';

--
-- Data for Name: cuarteles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuarteles (codigo, nombre, ubicacion) FROM stdin;
\.
COPY public.cuarteles (codigo, nombre, ubicacion) FROM '$$PATH$$/4809.dat';

--
-- Data for Name: cuerpo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuerpo (codigo, denominacion) FROM stdin;
\.
COPY public.cuerpo (codigo, denominacion) FROM '$$PATH$$/4808.dat';

--
-- Data for Name: servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.servicios (codigo, descripcion) FROM stdin;
\.
COPY public.servicios (codigo, descripcion) FROM '$$PATH$$/4810.dat';

--
-- Data for Name: soldados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soldados (codigo, nombre, apellido, graduacion, "compañia", cuerpo, cuartel, servicio) FROM stdin;
\.
COPY public.soldados (codigo, nombre, apellido, graduacion, "compañia", cuerpo, cuartel, servicio) FROM '$$PATH$$/4806.dat';

--
-- Name: compañias compañias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."compañias"
    ADD CONSTRAINT "compañias_pkey" PRIMARY KEY (numero);


--
-- Name: cuarteles cuarteles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuarteles
    ADD CONSTRAINT cuarteles_pkey PRIMARY KEY (codigo);


--
-- Name: cuerpo cuerpo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuerpo
    ADD CONSTRAINT cuerpo_pkey PRIMARY KEY (codigo);


--
-- Name: servicios servicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (codigo);


--
-- Name: soldados soldados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT soldados_pkey PRIMARY KEY (codigo);


--
-- Name: soldados compañias; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT "compañias" FOREIGN KEY ("compañia") REFERENCES public."compañias"(numero) NOT VALID;


--
-- Name: soldados cuartel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT cuartel FOREIGN KEY (cuartel) REFERENCES public.cuarteles(codigo) NOT VALID;


--
-- Name: soldados cuerpo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT cuerpo FOREIGN KEY (cuerpo) REFERENCES public.cuerpo(codigo) NOT VALID;


--
-- Name: soldados servicios ; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT "servicios " FOREIGN KEY (servicio) REFERENCES public.servicios(codigo) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      