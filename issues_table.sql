PGDMP                           x            NIC9    12.3    12.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17500    NIC9    DATABASE     �   CREATE DATABASE "NIC9" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NIC9";
                postgres    false            l           1259    21860    mpr_trans_issues    TABLE     5  CREATE TABLE public.mpr_trans_issues (
    issue_id_pk bigint NOT NULL,
    name character varying(70) NOT NULL,
    email character varying(70) NOT NULL,
    rating numeric(1,0) NOT NULL,
    description text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    login_id_fk bigint NOT NULL
);
 $   DROP TABLE public.mpr_trans_issues;
       public         heap    postgres    false            k           1259    21858     mpr_trans_issues_issue_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_trans_issues_issue_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_trans_issues_issue_id_pk_seq;
       public          postgres    false    364            �           0    0     mpr_trans_issues_issue_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_trans_issues_issue_id_pk_seq OWNED BY public.mpr_trans_issues.issue_id_pk;
          public          postgres    false    363            /           2604    21863    mpr_trans_issues issue_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_issues ALTER COLUMN issue_id_pk SET DEFAULT nextval('public.mpr_trans_issues_issue_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_trans_issues ALTER COLUMN issue_id_pk DROP DEFAULT;
       public          postgres    false    364    363    364            �          0    21860    mpr_trans_issues 
   TABLE DATA           s   COPY public.mpr_trans_issues (issue_id_pk, name, email, rating, description, "timestamp", login_id_fk) FROM stdin;
    public          postgres    false    364   �       �           0    0     mpr_trans_issues_issue_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mpr_trans_issues_issue_id_pk_seq', 1, false);
          public          postgres    false    363            1           2606    21868 &   mpr_trans_issues mpr_trans_issues_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_trans_issues
    ADD CONSTRAINT mpr_trans_issues_pkey PRIMARY KEY (issue_id_pk);
 P   ALTER TABLE ONLY public.mpr_trans_issues DROP CONSTRAINT mpr_trans_issues_pkey;
       public            postgres    false    364            �      x������ � �     