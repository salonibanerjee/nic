PGDMP         '                x            NIC    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    20847    NIC    DATABASE     �   CREATE DATABASE "NIC" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "NIC";
                postgres    false            �            1259    21024 	   Privilege    TABLE     !  CREATE TABLE public."Privilege" (
    privilege_id_pk bigint NOT NULL,
    parent integer NOT NULL,
    link character varying(70) NOT NULL,
    view_sidebar bit(1) NOT NULL,
    "order" integer NOT NULL,
    page_name character varying(70) NOT NULL,
    active_status numeric NOT NULL
);
    DROP TABLE public."Privilege";
       public         heap    postgres    false                      0    21024 	   Privilege 
   TABLE DATA           u   COPY public."Privilege" (privilege_id_pk, parent, link, view_sidebar, "order", page_name, active_status) FROM stdin;
    public          postgres    false    250   a       �           2606    21275    Privilege Privilege_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Privilege"
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 F   ALTER TABLE ONLY public."Privilege" DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    250               �   x�]�݊�0��3O�'����{)D�aA�Jck�MJMY��w�B��/g2?J(q��IR�>n���
�"��WW[�|2rku�Km�:�I�EAp*6���\aD����Z�7[�9�^/���^�����6:_���gb������_��]]���5��O��P9O��o�@��%��G������	��^�=��N�~kC����� �V"k�     