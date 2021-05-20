PGDMP     
                     y            ikoshel_db_17 #   12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16622    ikoshel_db_17    DATABASE        CREATE DATABASE ikoshel_db_17 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE ikoshel_db_17;
                postgres    false            �           0    0    DATABASE ikoshel_db_17    ACL     3   GRANT ALL ON DATABASE ikoshel_db_17 TO ikoshel_17;
                   postgres    false    2959                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    17414 	   countries    TABLE     S   CREATE TABLE public.countries (
    id integer NOT NULL,
    country_title text
);
    DROP TABLE public.countries;
       public         heap 
   ikoshel_17    false    3            �            1259    17446    payment_system    TABLE     w   CREATE TABLE public.payment_system (
    payment_system_id integer NOT NULL,
    system_title character varying(50)
);
 "   DROP TABLE public.payment_system;
       public         heap 
   ikoshel_17    false    3            �            1259    17392 	   qa_groups    TABLE     T   CREATE TABLE public.qa_groups (
    id integer NOT NULL,
    group_title integer
);
    DROP TABLE public.qa_groups;
       public         heap 
   ikoshel_17    false    3            �            1259    17209    qa_padawans    TABLE     �   CREATE TABLE public.qa_padawans (
    id integer NOT NULL,
    name text,
    age integer,
    future_salary integer,
    country text,
    city text,
    email text,
    phone text,
    qa_group integer
);
    DROP TABLE public.qa_padawans;
       public         heap 
   ikoshel_17    false    3            �            1259    17432    transactions    TABLE        CREATE TABLE public.transactions (
    id integer NOT NULL,
    payment_system_id integer,
    money integer,
    date text
);
     DROP TABLE public.transactions;
       public         heap 
   ikoshel_17    false    3            �          0    17414 	   countries 
   TABLE DATA           6   COPY public.countries (id, country_title) FROM stdin;
    public       
   ikoshel_17    false    204            �          0    17446    payment_system 
   TABLE DATA           I   COPY public.payment_system (payment_system_id, system_title) FROM stdin;
    public       
   ikoshel_17    false    206            �          0    17392 	   qa_groups 
   TABLE DATA           4   COPY public.qa_groups (id, group_title) FROM stdin;
    public       
   ikoshel_17    false    203            �          0    17209    qa_padawans 
   TABLE DATA           j   COPY public.qa_padawans (id, name, age, future_salary, country, city, email, phone, qa_group) FROM stdin;
    public       
   ikoshel_17    false    202            �          0    17432    transactions 
   TABLE DATA           J   COPY public.transactions (id, payment_system_id, money, date) FROM stdin;
    public       
   ikoshel_17    false    205                       2606    17421    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         
   ikoshel_17    false    204                       2606    17450 "   payment_system payment_system_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.payment_system
    ADD CONSTRAINT payment_system_pkey PRIMARY KEY (payment_system_id);
 L   ALTER TABLE ONLY public.payment_system DROP CONSTRAINT payment_system_pkey;
       public         
   ikoshel_17    false    206                        2606    17396    qa_groups qa_groups_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_pkey;
       public         
   ikoshel_17    false    203            �
           2606    17216    qa_padawans qa_padawans_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_pkey;
       public         
   ikoshel_17    false    202                       2606    17439    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public         
   ikoshel_17    false    205            �      x�3�tJ�I,*-����� "�      �   &   x�3�0�{/슿0��x�Lv_l����� ^�      �      x�3�44����� |Z      �   O   x�3��,��K�4��4400�tJ�I,*-����+���,��/�H�q�M���+*��667�0��4620077�44����� ݱ�      �       x�3�4�4�4�46�30�3202����� 0=�          �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16622    ikoshel_db_17    DATABASE        CREATE DATABASE ikoshel_db_17 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE ikoshel_db_17;
                postgres    false            �           0    0    DATABASE ikoshel_db_17    ACL     3   GRANT ALL ON DATABASE ikoshel_db_17 TO ikoshel_17;
                   postgres    false    2959                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    17414 	   countries    TABLE     S   CREATE TABLE public.countries (
    id integer NOT NULL,
    country_title text
);
    DROP TABLE public.countries;
       public         heap 
   ikoshel_17    false    3            �            1259    17446    payment_system    TABLE     w   CREATE TABLE public.payment_system (
    payment_system_id integer NOT NULL,
    system_title character varying(50)
);
 "   DROP TABLE public.payment_system;
       public         heap 
   ikoshel_17    false    3            �            1259    17392 	   qa_groups    TABLE     T   CREATE TABLE public.qa_groups (
    id integer NOT NULL,
    group_title integer
);
    DROP TABLE public.qa_groups;
       public         heap 
   ikoshel_17    false    3            �            1259    17209    qa_padawans    TABLE     �   CREATE TABLE public.qa_padawans (
    id integer NOT NULL,
    name text,
    age integer,
    future_salary integer,
    country text,
    city text,
    email text,
    phone text,
    qa_group integer
);
    DROP TABLE public.qa_padawans;
       public         heap 
   ikoshel_17    false    3            �            1259    17432    transactions    TABLE        CREATE TABLE public.transactions (
    id integer NOT NULL,
    payment_system_id integer,
    money integer,
    date text
);
     DROP TABLE public.transactions;
       public         heap 
   ikoshel_17    false    3            �          0    17414 	   countries 
   TABLE DATA           6   COPY public.countries (id, country_title) FROM stdin;
    public       
   ikoshel_17    false    204            �          0    17446    payment_system 
   TABLE DATA           I   COPY public.payment_system (payment_system_id, system_title) FROM stdin;
    public       
   ikoshel_17    false    206   !        �          0    17392 	   qa_groups 
   TABLE DATA           4   COPY public.qa_groups (id, group_title) FROM stdin;
    public       
   ikoshel_17    false    203   0        �          0    17209    qa_padawans 
   TABLE DATA           j   COPY public.qa_padawans (id, name, age, future_salary, country, city, email, phone, qa_group) FROM stdin;
    public       
   ikoshel_17    false    202           �          0    17432    transactions 
   TABLE DATA           J   COPY public.transactions (id, payment_system_id, money, date) FROM stdin;
    public       
   ikoshel_17    false    205   Y                   2606    17421    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         
   ikoshel_17    false    204                       2606    17450 "   payment_system payment_system_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.payment_system
    ADD CONSTRAINT payment_system_pkey PRIMARY KEY (payment_system_id);
 L   ALTER TABLE ONLY public.payment_system DROP CONSTRAINT payment_system_pkey;
       public         
   ikoshel_17    false    206                        2606    17396    qa_groups qa_groups_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_pkey;
       public         
   ikoshel_17    false    203            �
           2606    17216    qa_padawans qa_padawans_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_pkey;
       public         
   ikoshel_17    false    202                       2606    17439    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public         
   ikoshel_17    false    205           