PGDMP     :    $                 x            NIC_1504    12.2    12.2 �   E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    30244    NIC_1504    DATABASE     �   CREATE DATABASE "NIC_1504" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NIC_1504";
                postgres    false            �            1259    30245    mpr_master_table    TABLE     �  CREATE TABLE public.mpr_master_table (
    id_pk bigint NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying(20) NOT NULL,
    nodal_check integer NOT NULL,
    session character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    CONSTRAINT month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric))),
    CONSTRAINT node_check CHECK (((nodal_check >= '-1'::integer) AND (nodal_check <= 1)))
);
 $   DROP TABLE public.mpr_master_table;
       public         heap    postgres    false            �            1259    30254    mpr_scheme_awcc    TABLE     S  CREATE TABLE public.mpr_scheme_awcc (
    no_of_icds_cenetres_devoid_of_own_building numeric(10,0) NOT NULL,
    no_of_new_icds_building_constructed numeric(10,0) NOT NULL,
    no_of_icds_centres_running_in_open_space numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 #   DROP TABLE public.mpr_scheme_awcc;
       public         heap    postgres    false    202            �            1259    30259    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    204            I           0    0    AWCC_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public.mpr_scheme_awcc.id_pk;
          public          postgres    false    205            �            1259    30261    mpr_scheme_baitarani    TABLE     �   CREATE TABLE public.mpr_scheme_baitarani (
    no_of_burning_ghats_taken_up numeric(10,0) NOT NULL,
    completed_till_date date NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_baitarani;
       public         heap    postgres    false    202            �            1259    30266    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    206            J           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public.mpr_scheme_baitarani.id_pk;
          public          postgres    false    207            �            1259    30275    mpr_scheme_dog    TABLE     z  CREATE TABLE public.mpr_scheme_dog (
    target_for_distribution_of_goats numeric(10,0) NOT NULL,
    no_of_goats_actually_distributed numeric(10,0) NOT NULL,
    no_of_beneficiaries_selected numeric(10,0) NOT NULL,
    no_of_beneficiaries_approved character varying(10) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_dog;
       public         heap    postgres    false    202            �            1259    30280 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    209            K           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public.mpr_scheme_dog.id_pk;
          public          postgres    false    210            �            1259    30282    mpr_scheme_dopthud    TABLE     �   CREATE TABLE public.mpr_scheme_dopthud (
    no_of_power_tiller_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_dopthud;
       public         heap    postgres    false    202            �            1259    30287    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    211            L           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public.mpr_scheme_dopthud.id_pk;
          public          postgres    false    212            �            1259    30289    mpr_scheme_enrollment    TABLE     }  CREATE TABLE public.mpr_scheme_enrollment (
    gross_enrolment_ratio_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_primary numeric(10,0) NOT NULL,
    gross_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_enrollment;
       public         heap    postgres    false    202            �            1259    30294    ENROLLMENT_id_seq    SEQUENCE     |   CREATE SEQUENCE public."ENROLLMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ENROLLMENT_id_seq";
       public          postgres    false    213            M           0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public.mpr_scheme_enrollment.id_pk;
          public          postgres    false    214            �            1259    30296    mpr_scheme_foodpro    TABLE     �   CREATE TABLE public.mpr_scheme_foodpro (
    status_of_pocurement numeric(10,0) NOT NULL,
    target_of_pocurement numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_foodpro;
       public         heap    postgres    false    202            �            1259    30301    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    215            N           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public.mpr_scheme_foodpro.id_pk;
          public          postgres    false    216            �            1259    30303    mpr_scheme_gitanjali    TABLE     I  CREATE TABLE public.mpr_scheme_gitanjali (
    no_of_case_sanctioned_under_gitanjali numeric(10,0) NOT NULL,
    date_of_inception character varying(15) NOT NULL,
    no_of_houses_constructed_under_gitanjali numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_gitanjali;
       public         heap    postgres    false    202            �            1259    30308    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    217            O           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public.mpr_scheme_gitanjali.id_pk;
          public          postgres    false    218            �            1259    30310    mpr_scheme_immunisati    TABLE     �   CREATE TABLE public.mpr_scheme_immunisati (
    per_of_fully_immunised_child numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_immunisati;
       public         heap    postgres    false    202            �            1259    30315    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    219            P           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public.mpr_scheme_immunisati.id_pk;
          public          postgres    false    220            �            1259    30317    mpr_scheme_infantd    TABLE     �   CREATE TABLE public.mpr_scheme_infantd (
    total_no_of_infant_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_infantd;
       public         heap    postgres    false    202            �            1259    30322    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    221            Q           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public.mpr_scheme_infantd.id_pk;
          public          postgres    false    222            �            1259    30324    mpr_scheme_inspection    TABLE       CREATE TABLE public.mpr_scheme_inspection (
    no_of_homes_inspected_by_senior_officers numeric(10,0) NOT NULL,
    designation_of_officers character varying(5) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_inspection;
       public         heap    postgres    false    202            �            1259    30329    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    223            R           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public.mpr_scheme_inspection.id_pk;
          public          postgres    false    224            �            1259    30331    mpr_scheme_instdel    TABLE     �   CREATE TABLE public.mpr_scheme_instdel (
    per_of_institutional_delivery numeric(52,0) NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_instdel;
       public         heap    postgres    false    202            �            1259    30336    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    225            S           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public.mpr_scheme_instdel.id_pk;
          public          postgres    false    226            �            1259    30338    mpr_scheme_jaldjalb    TABLE     N  CREATE TABLE public.mpr_scheme_jaldjalb (
    date_of_inspection character varying(15) NOT NULL,
    no_of_ponds_excavated_under_jal_dharo_jal_bharo numeric(10,0) NOT NULL,
    no_of_ponds_fish_production_started numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 '   DROP TABLE public.mpr_scheme_jaldjalb;
       public         heap    postgres    false    202            �            1259    30343    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    227            T           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public.mpr_scheme_jaldjalb.id_pk;
          public          postgres    false    228            �            1259    30345    mpr_scheme_kanyas    TABLE       CREATE TABLE public.mpr_scheme_kanyas (
    no_of_k1_cases_application_received numeric(10,0) NOT NULL,
    no_of_k1_cases_application_sanctioned numeric(10,0) NOT NULL,
    no_of_k1_cases_application_disbursed numeric(10,0) NOT NULL,
    no_of_k2_cases_application_received numeric(10,0) NOT NULL,
    no_of_k2_cases_application_sanctioned numeric(10,0) NOT NULL,
    no_of_k2_cases_application_disbursed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_kanyas;
       public         heap    postgres    false    202            �            1259    30350    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    229            U           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public.mpr_scheme_kanyas.id_pk;
          public          postgres    false    230            �            1259    30352    mpr_scheme_karmatirth    TABLE     �  CREATE TABLE public.mpr_scheme_karmatirth (
    no_of_karmatirtha_sanctioned numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_started numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_completed numeric(10,0) NOT NULL,
    no_of_karmatirth_operationalised numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_karmatirth;
       public         heap    postgres    false    202            �            1259    30357    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    231            V           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public.mpr_scheme_karmatirth.id_pk;
          public          postgres    false    232            �            1259    30359    mpr_scheme_kcc    TABLE     I  CREATE TABLE public.mpr_scheme_kcc (
    no_of_agricultrural_families_in_the_district numeric(10,0) NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(2,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_kcc;
       public         heap    postgres    false    202            �            1259    30380    KCC_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public."KCC_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KCC_id_pk_seq";
       public          postgres    false    233            W           0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public.mpr_scheme_kcc.id_pk;
          public          postgres    false    234            �            1259    30387    mpr_scheme_landpp    TABLE     �   CREATE TABLE public.mpr_scheme_landpp (
    no_of_land_permission_pending numeric(10,0) NOT NULL,
    projects_name character varying(30) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_landpp;
       public         heap    postgres    false    202            �            1259    30392    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    236            X           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public.mpr_scheme_landpp.id_pk;
          public          postgres    false    237            �            1259    30394    mpr_semitrans_login    TABLE       CREATE TABLE public.mpr_semitrans_login (
    username character varying(50) NOT NULL,
    password text NOT NULL,
    user_type_id_fk bigint DEFAULT 0 NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    login_id_pk bigint NOT NULL,
    active_status numeric(1,0) NOT NULL,
    dept_id_fk bigint DEFAULT 0 NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL,
    desig_id_fk bigint DEFAULT 0 NOT NULL,
    CONSTRAINT login_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 '   DROP TABLE public.mpr_semitrans_login;
       public         heap    postgres    false            �            1259    30400    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    238            Y           0    0    Login_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."Login_id_seq" OWNED BY public.mpr_semitrans_login.login_id_pk;
          public          postgres    false    239            �            1259    30402    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    238            Z           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public.mpr_semitrans_login.user_type_id_fk;
          public          postgres    false    240            �            1259    30404    mpr_scheme_maternald    TABLE     �   CREATE TABLE public.mpr_scheme_maternald (
    total_no_of_maternal_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_maternald;
       public         heap    postgres    false    202            �            1259    30409    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    241            [           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public.mpr_scheme_maternald.id_pk;
          public          postgres    false    242            �            1259    30411    mpr_scheme_mci    TABLE     �   CREATE TABLE public.mpr_scheme_mci (
    percentage_of_malnourished_child numeric(2,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_mci;
       public         heap    postgres    false    202            �            1259    30416 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    243            \           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public.mpr_scheme_mci.id_pk;
          public          postgres    false    244            �            1259    30423    mpr_scheme_minoritys    TABLE     n  CREATE TABLE public.mpr_scheme_minoritys (
    target_for_scholarship_distribution_aikyashree numeric(10,0) NOT NULL,
    no_of_students_distributed_scholarship numeric(10,0) NOT NULL,
    no_of_application_uploaded_under_aikyashree_scholarship numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_minoritys;
       public         heap    postgres    false    202            �            1259    30428    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    246            ]           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public.mpr_scheme_minoritys.id_pk;
          public          postgres    false    247            �            1259    30430    mpr_scheme_poe    TABLE     �   CREATE TABLE public.mpr_scheme_poe (
    target numeric(10,0) NOT NULL,
    production numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_poe;
       public         heap    postgres    false    202            �            1259    30435 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    248            ^           0    0 
   POE_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."POE_id_seq" OWNED BY public.mpr_scheme_poe.id_pk;
          public          postgres    false    249            �            1259    30448    mpr_scheme_saboojshre    TABLE     <  CREATE TABLE public.mpr_scheme_saboojshre (
    no_of_children_born_since_inception_of_the_project_in_the_dist numeric(10,0) NOT NULL,
    no_of_tree_sapling_handed_over_to_the_new_born_children numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_saboojshre;
       public         heap    postgres    false    202            �            1259    30453    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    251            _           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public.mpr_scheme_saboojshre.id_pk;
          public          postgres    false    252            �            1259    30443    mpr_scheme_saboojs    TABLE        CREATE TABLE public.mpr_scheme_saboojs (
    target_for_distribution_of_cycles numeric(10,0) NOT NULL,
    cycle_distributed_till_date numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_saboojs;
       public         heap    postgres    false    202            �            1259    30455    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    250            `           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public.mpr_scheme_saboojs.id_pk;
          public          postgres    false    253            �            1259    30457    mpr_scheme_safedsavel    TABLE       CREATE TABLE public.mpr_scheme_safedsavel (
    no_of_accidents numeric(10,0) NOT NULL,
    no_of_death numeric(10,0) NOT NULL,
    no_of_insured_person numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_safedsavel;
       public         heap    postgres    false    202            �            1259    30462    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    254            a           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public.mpr_scheme_safedsavel.id_pk;
          public          postgres    false    255                        1259    30464    mpr_scheme_samaybythi    TABLE       CREATE TABLE public.mpr_scheme_samaybythi (
    no_of_beneficiaries_provided_benefit_till_date numeric(10,0) NOT NULL,
    till_date character varying(15) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_samaybythi;
       public         heap    postgres    false    202                       1259    30469    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    256            b           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public.mpr_scheme_samaybythi.id_pk;
          public          postgres    false    257                       1259    30471    mpr_scheme_sikhas    TABLE     n  CREATE TABLE public.mpr_scheme_sikhas (
    "targetted_no_of_sc/st_student_under_sikshashree" numeric(10,0) NOT NULL,
    no_of_students_getting_benefit_under_sikshashree numeric(10,0) NOT NULL,
    no_of_applications_uploaded_under_sikshashree numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_sikhas;
       public         heap    postgres    false    202                       1259    30476    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    258            c           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public.mpr_scheme_sikhas.id_pk;
          public          postgres    false    259                       1259    30478    mpr_scheme_svskp    TABLE     	  CREATE TABLE public.mpr_scheme_svskp (
    no_of_project_sponsored_under_svskp numeric(10,0) NOT NULL,
    no_of_project_sanctioned_under_svskp numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_svskp;
       public         heap    postgres    false    202                       1259    30483    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    260            d           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public.mpr_scheme_svskp.id_pk;
          public          postgres    false    261                       1259    30485    mpr_scheme_yubas    TABLE     /  CREATE TABLE public.mpr_scheme_yubas (
    no_of_unemployed_youth_registered_under_yubashree numeric(10,0) NOT NULL,
    no_of_unemployed_registered_youth_getting_monthly_assistance numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_yubas;
       public         heap    postgres    false    202                       1259    30490    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    262            e           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public.mpr_scheme_yubas.id_pk;
          public          postgres    false    263            �            1259    30249    mpr_scheme_anand    TABLE       CREATE TABLE public.mpr_scheme_anand (
    total_no_of_shgs_formed_in_the_district numeric(10,0) NOT NULL,
    total_no_of_shgs_got_credit_linkage numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_anand;
       public         heap    postgres    false    202                       1259    30492    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    203            f           0    0    anand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.anand_id_seq OWNED BY public.mpr_scheme_anand.id_pk;
          public          postgres    false    264                       1259    30948    mpr_master_attri_table    TABLE     �   CREATE TABLE public.mpr_master_attri_table (
    attri_id_pk bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    attri_name character varying(100) NOT NULL,
    actual_name character varying(100) NOT NULL
);
 *   DROP TABLE public.mpr_master_attri_table;
       public         heap    postgres    false                       1259    30954    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    286            g           0    0    att_table_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.mpr_master_attri_table.attri_id_pk;
          public          postgres    false    287            	           1259    30502    mpr_trans_audit_log    TABLE     �  CREATE TABLE public.mpr_trans_audit_log (
    section character varying(100) NOT NULL,
    action character varying(50) NOT NULL,
    request character varying(100) NOT NULL,
    comment character varying(200) DEFAULT 'NA'::character varying NOT NULL,
    ip_addr character varying(20) NOT NULL,
    audit_id_pk bigint NOT NULL,
    login_id_fk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL
);
 '   DROP TABLE public.mpr_trans_audit_log;
       public         heap    postgres    false            
           1259    30508    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    265            h           0    0    audit_log_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.mpr_trans_audit_log.audit_id_pk;
          public          postgres    false    266                       1259    30510    mpr_semitrans_check_first_user    TABLE     u  CREATE TABLE public.mpr_semitrans_check_first_user (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer NOT NULL,
    CONSTRAINT check_first_user_check CHECK ((check_if_first_user = ANY (ARRAY[0, 1]))),
    CONSTRAINT check_profile_updated_once_check CHECK ((check_profile_updated_once = ANY (ARRAY[0, 1])))
);
 2   DROP TABLE public.mpr_semitrans_check_first_user;
       public         heap    postgres    false                       1259    30513 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    267            i           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public.mpr_semitrans_check_first_user.check_if_first_user;
          public          postgres    false    268                       1259    30515    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    267            j           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public.mpr_semitrans_check_first_user.user_id_pk;
          public          postgres    false    269                       1259    30520 !   mpr_semitrans_dba_financial_range    TABLE     %  CREATE TABLE public.mpr_semitrans_dba_financial_range (
    dba_financial_range_table_id_pk bigint NOT NULL,
    financial_year_range character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    CONSTRAINT dba_month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric)))
);
 5   DROP TABLE public.mpr_semitrans_dba_financial_range;
       public         heap    postgres    false                       1259    30523 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq;
       public          postgres    false    271            k           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.mpr_semitrans_dba_financial_range.dba_financial_range_table_id_pk;
          public          postgres    false    272            +           1259    31114    mpr_master_designation    TABLE     �   CREATE TABLE public.mpr_master_designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_designation;
       public         heap    postgres    false            *           1259    31112    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    299            l           0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.mpr_master_designation.desig_id_pk;
          public          postgres    false    298            �            1259    30268    mpr_scheme_doc    TABLE       CREATE TABLE public.mpr_scheme_doc (
    target_for_distribution_of_poultry numeric(10,0) NOT NULL,
    no_of_poultry_actually_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_doc;
       public         heap    postgres    false    202                       1259    30525 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    208            m           0    0 
   doc_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.doc_id_seq OWNED BY public.mpr_scheme_doc.id_pk;
          public          postgres    false    273            -           1259    31156    mpr_master_financial_year    TABLE     �  CREATE TABLE public.mpr_master_financial_year (
    financial_year_master_id_pk bigint NOT NULL,
    "scheme_table_id_fk " bigint NOT NULL,
    start_month numeric(2,0) NOT NULL,
    end_month numeric(2,0) NOT NULL,
    CONSTRAINT end_month_check CHECK (((end_month > (0)::numeric) AND (end_month < (13)::numeric))),
    CONSTRAINT start_month_check CHECK (((start_month > (0)::numeric) AND (start_month < (13)::numeric)))
);
 -   DROP TABLE public.mpr_master_financial_year;
       public         heap    postgres    false            ,           1259    31154 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq;
       public          postgres    false    301            n           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq OWNED BY public.mpr_master_financial_year.financial_year_master_id_pk;
          public          postgres    false    300            �            1259    30382    mpr_scheme_kishanm    TABLE     ,  CREATE TABLE public.mpr_scheme_kishanm (
    no_of_kishan_mandis_sanctioned numeric(10,0) NOT NULL,
    no_of_kishan_mandis_operational numeric(10,0) NOT NULL,
    operationality numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_kishanm;
       public         heap    postgres    false    202                       1259    30527    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    235            o           0    0    kishanm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public.mpr_scheme_kishanm.id_pk;
          public          postgres    false    274                       1259    30529    mpr_master_location_data    TABLE     �   CREATE TABLE public.mpr_master_location_data (
    location_area character varying(100) NOT NULL,
    location_code character varying(12) NOT NULL,
    location_id_pk bigint NOT NULL
);
 ,   DROP TABLE public.mpr_master_location_data;
       public         heap    postgres    false                       1259    30532     location_data_location_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.location_data_location_id_pk_seq;
       public          postgres    false    275            p           0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.mpr_master_location_data.location_id_pk;
          public          postgres    false    276                       1259    30534    mpr_trans_meeting_schedule    TABLE     �   CREATE TABLE public.mpr_trans_meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16) NOT NULL,
    end_time character varying(16) NOT NULL
);
 .   DROP TABLE public.mpr_trans_meeting_schedule;
       public         heap    postgres    false                       1259    30537    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    277            q           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.mpr_trans_meeting_schedule.meeting_id_pk;
          public          postgres    false    278            �            1259    30418    mpr_scheme_mgnregs    TABLE     �  CREATE TABLE public.mpr_scheme_mgnregs (
    no_of_person_days_generated_under_mgnregs numeric(10,0) NOT NULL,
    average_no_of_persondays_generated_per_household numeric(10,0) NOT NULL,
    expenditure_of_the_session numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_mgnregs;
       public         heap    postgres    false    202                       1259    30539    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    245            r           0    0    mgnres_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public.mpr_scheme_mgnregs.id_pk;
          public          postgres    false    279            3           1259    32053    mpr_master_block    TABLE     �   CREATE TABLE public.mpr_master_block (
    block_id_pk bigint NOT NULL,
    block_name character varying(50) NOT NULL,
    block_lg_code bigint NOT NULL,
    subdiv_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.mpr_master_block;
       public         heap    postgres    false                       1259    30517    mpr_master_dashboard_info    TABLE     �  CREATE TABLE public.mpr_master_dashboard_info (
    dashboard_id_pk bigint NOT NULL,
    sch_tab_name character varying(50) NOT NULL,
    scheme_name character varying(50) NOT NULL,
    attr_target character varying(50) NOT NULL,
    attr_target_name character varying(50) NOT NULL,
    attri_progress character varying(50) NOT NULL,
    attri_progress_name character varying(50) NOT NULL
);
 -   DROP TABLE public.mpr_master_dashboard_info;
       public         heap    postgres    false            )           1259    31076    mpr_master_department    TABLE     �   CREATE TABLE public.mpr_master_department (
    dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    short_name character varying(15) NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL
);
 )   DROP TABLE public.mpr_master_department;
       public         heap    postgres    false            6           1259    32070    mpr_master_district    TABLE     �   CREATE TABLE public.mpr_master_district (
    district_id_pk bigint NOT NULL,
    district_name character varying(50) NOT NULL,
    state_id_fk bigint DEFAULT 0 NOT NULL,
    dist_lg_code bigint NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 '   DROP TABLE public.mpr_master_district;
       public         heap    postgres    false            5           1259    32068 &   mpr_master_district_district_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_district_district_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.mpr_master_district_district_id_pk_seq;
       public          postgres    false    310            s           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.mpr_master_district_district_id_pk_seq OWNED BY public.mpr_master_district.district_id_pk;
          public          postgres    false    309            '           1259    31068    mpr_master_office    TABLE     }   CREATE TABLE public.mpr_master_office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
 %   DROP TABLE public.mpr_master_office;
       public         heap    postgres    false            /           1259    31169    mpr_master_scheme_dept    TABLE     �   CREATE TABLE public.mpr_master_scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_scheme_dept;
       public         heap    postgres    false                       1259    30564    mpr_master_scheme_table    TABLE     �   CREATE TABLE public.mpr_master_scheme_table (
    scheme_id_pk bigint NOT NULL,
    short_name character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    financial_year_id_fk bigint
);
 +   DROP TABLE public.mpr_master_scheme_table;
       public         heap    postgres    false            1           1259    32044    mpr_master_state    TABLE     y   CREATE TABLE public.mpr_master_state (
    state_id_pk bigint NOT NULL,
    state_name character varying(50) NOT NULL
);
 $   DROP TABLE public.mpr_master_state;
       public         heap    postgres    false            0           1259    32042     mpr_master_state_state_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_state_state_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_master_state_state_id_pk_seq;
       public          postgres    false    305            t           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_master_state_state_id_pk_seq OWNED BY public.mpr_master_state.state_id_pk;
          public          postgres    false    304            2           1259    32050    mpr_master_subdiv    TABLE     �   CREATE TABLE public.mpr_master_subdiv (
    sub_div_id_pk bigint NOT NULL,
    sub_div_name character varying(50) NOT NULL,
    sub_div_code bigint NOT NULL,
    district_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.mpr_master_subdiv;
       public         heap    postgres    false            4           1259    32056 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq;
       public          postgres    false    306            u           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq OWNED BY public.mpr_master_subdiv.sub_div_id_pk;
          public          postgres    false    308            "           1259    31034    mpr_semitrans_privilege    TABLE       CREATE TABLE public.mpr_semitrans_privilege (
    privilege_id_pk bigint NOT NULL,
    parent integer NOT NULL,
    link character varying(70) NOT NULL,
    "order" integer NOT NULL,
    page_name character varying(70) NOT NULL,
    active_status numeric NOT NULL,
    view_sidebar numeric NOT NULL,
    CONSTRAINT privilege_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric))),
    CONSTRAINT view_sidebar_active_check CHECK (((view_sidebar >= (0)::numeric) AND (view_sidebar <= (1)::numeric)))
);
 +   DROP TABLE public.mpr_semitrans_privilege;
       public         heap    postgres    false                       1259    30541    mpr_semitrans_profile    TABLE     �  CREATE TABLE public.mpr_semitrans_profile (
    username character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    f_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    m_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    l_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    mobile numeric(10,0) DEFAULT 0 NOT NULL,
    email character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    district character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    image text,
    profile_id_pk bigint NOT NULL,
    desig_id_fk bigint NOT NULL,
    dept_id_fk bigint NOT NULL,
    office_id_fk bigint NOT NULL
);
 )   DROP TABLE public.mpr_semitrans_profile;
       public         heap    postgres    false            #           1259    31042    mpr_semitrans_user_privilege    TABLE     X  CREATE TABLE public.mpr_semitrans_user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT user_privilege_active_check CHECK ((((active_status)::numeric >= (0)::numeric) AND ((active_status)::numeric <= (1)::numeric)))
);
 0   DROP TABLE public.mpr_semitrans_user_privilege;
       public         heap    postgres    false                       1259    30581    mpr_semitrans_user_type    TABLE       CREATE TABLE public.mpr_semitrans_user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(20) NOT NULL,
    active_status numeric NOT NULL,
    CONSTRAINT user_type_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 +   DROP TABLE public.mpr_semitrans_user_type;
       public         heap    postgres    false                        1259    30999    mpr_trans_notification    TABLE     �  CREATE TABLE public.mpr_trans_notification (
    audience_id character varying(10) NOT NULL,
    notification_text character varying(50) NOT NULL,
    notification_id_pk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    notification_head text NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT notification_active_check CHECK (((active_status >= 0) AND (active_status <= 1)))
);
 *   DROP TABLE public.mpr_trans_notification;
       public         heap    postgres    false            !           1259    31002    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    288            v           0    0    notifications_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.mpr_trans_notification.notification_id_pk;
          public          postgres    false    289            (           1259    31074    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    297            w           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.mpr_master_department.dept_id_pk;
          public          postgres    false    296            &           1259    31066    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    295            x           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.mpr_master_office.office_id_pk;
          public          postgres    false    294                       1259    30547    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    280            y           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.mpr_semitrans_profile.profile_id_pk;
          public          postgres    false    281            .           1259    31167 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    303            z           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     r   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.mpr_master_scheme_dept.scheme_dept_id_pk;
          public          postgres    false    302                       1259    30567    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    282            {           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.mpr_master_scheme_table.scheme_id_pk;
          public          postgres    false    283                       1259    30569    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            |           0    0    table_id_pk_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public.mpr_master_table.id_pk;
          public          postgres    false    284            $           1259    31048 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    291            }           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.privilege_id_fk;
          public          postgres    false    292            %           1259    31050 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    291            ~           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.user_type_id_fk;
          public          postgres    false    293            _           2604    30956 "   mpr_master_attri_table attri_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_attri_table ALTER COLUMN attri_id_pk SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_attri_table ALTER COLUMN attri_id_pk DROP DEFAULT;
       public          postgres    false    287    286            f           2604    31079     mpr_master_department dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_department ALTER COLUMN dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 O   ALTER TABLE public.mpr_master_department ALTER COLUMN dept_id_pk DROP DEFAULT;
       public          postgres    false    297    296    297            h           2604    31117 "   mpr_master_designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    298    299    299            s           2604    32073 "   mpr_master_district district_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_district ALTER COLUMN district_id_pk SET DEFAULT nextval('public.mpr_master_district_district_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_district ALTER COLUMN district_id_pk DROP DEFAULT;
       public          postgres    false    309    310    310            i           2604    31159 5   mpr_master_financial_year financial_year_master_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk SET DEFAULT nextval('public.financial_year_master_financial_year_master_id_pk_seq'::regclass);
 d   ALTER TABLE public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk DROP DEFAULT;
       public          postgres    false    301    300    301            S           2604    30658 '   mpr_master_location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 V   ALTER TABLE public.mpr_master_location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    276    275            e           2604    31071    mpr_master_office office_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_master_office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    294    295    295            l           2604    31172 (   mpr_master_scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 W   ALTER TABLE public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    303    302    303            ]           2604    30661 $   mpr_master_scheme_table scheme_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 S   ALTER TABLE public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    283    282            m           2604    32047    mpr_master_state state_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_state ALTER COLUMN state_id_pk SET DEFAULT nextval('public.mpr_master_state_state_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_master_state ALTER COLUMN state_id_pk DROP DEFAULT;
       public          postgres    false    304    305    305            n           2604    32058    mpr_master_subdiv sub_div_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk SET DEFAULT nextval('public.mpr_master_subdiv_sub_div_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk DROP DEFAULT;
       public          postgres    false    308    306            �           2604    30662    mpr_master_table id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_master_table ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 E   ALTER TABLE public.mpr_master_table ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    284    202            �           2604    30587    mpr_scheme_anand id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_anand ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 E   ALTER TABLE public.mpr_scheme_anand ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    264    203            �           2604    30589    mpr_scheme_awcc id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_awcc ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 D   ALTER TABLE public.mpr_scheme_awcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    204    205            �           2604    30591    mpr_scheme_baitarani id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_baitarani ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_baitarani ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    206    207            �           2604    30593    mpr_scheme_doc id_pk    DEFAULT     n   ALTER TABLE ONLY public.mpr_scheme_doc ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 C   ALTER TABLE public.mpr_scheme_doc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    273    208            �           2604    30595    mpr_scheme_dog id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_dog ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_dog ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    209    210            �           2604    30597    mpr_scheme_dopthud id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_dopthud ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_dopthud ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    211    212            �           2604    30599    mpr_scheme_enrollment id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_enrollment ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_enrollment ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    213    214            �           2604    30601    mpr_scheme_foodpro id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_foodpro ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_foodpro ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    215    216            �           2604    30603    mpr_scheme_gitanjali id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_gitanjali ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_gitanjali ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    218    217            �           2604    30605    mpr_scheme_immunisati id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_immunisati ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    220    219            �           2604    30607    mpr_scheme_infantd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_infantd ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_infantd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    222    221            �           2604    30609    mpr_scheme_inspection id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_inspection ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_inspection ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    224    223            �           2604    30611    mpr_scheme_instdel id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_instdel ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_instdel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    225    226            �           2604    30613    mpr_scheme_jaldjalb id_pk    DEFAULT     z   ALTER TABLE ONLY public.mpr_scheme_jaldjalb ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 H   ALTER TABLE public.mpr_scheme_jaldjalb ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    227    228                       2604    30615    mpr_scheme_kanyas id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kanyas ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_kanyas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    230    229                       2604    30617    mpr_scheme_karmatirth id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_karmatirth ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_karmatirth ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    231    232            
           2604    30619    mpr_scheme_kcc id_pk    DEFAULT     s   ALTER TABLE ONLY public.mpr_scheme_kcc ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_kcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    234    233                       2604    30623    mpr_scheme_kishanm id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kishanm ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_kishanm ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    235    274                       2604    30625    mpr_scheme_landpp id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_landpp ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_landpp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    236    237                       2604    30629    mpr_scheme_maternald id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_maternald ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_maternald ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    241    242            !           2604    30631    mpr_scheme_mci id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_mci ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_mci ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    243    244            %           2604    30633    mpr_scheme_mgnregs id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_mgnregs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    279    245            )           2604    30635    mpr_scheme_minoritys id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_minoritys ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_minoritys ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    247    246            -           2604    30637    mpr_scheme_poe id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_poe ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_poe ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    249    248            1           2604    30639    mpr_scheme_saboojs id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_saboojs ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_saboojs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    250    253            5           2604    30641    mpr_scheme_saboojshre id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_saboojshre ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_saboojshre ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    252    251            9           2604    30643    mpr_scheme_safedsavel id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_safedsavel ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_safedsavel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    255    254            =           2604    30645    mpr_scheme_samaybythi id_pk    DEFAULT     }   ALTER TABLE ONLY public.mpr_scheme_samaybythi ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_samaybythi ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    257            A           2604    30647    mpr_scheme_sikhas id_pk    DEFAULT     w   ALTER TABLE ONLY public.mpr_scheme_sikhas ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_sikhas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    259    258            E           2604    30649    mpr_scheme_svskp id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_svskp ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_svskp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    260    261            I           2604    30651    mpr_scheme_yubas id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_yubas ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_yubas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    262    263            N           2604    30655 )   mpr_semitrans_check_first_user user_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 X   ALTER TABLE public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    269    267            Q           2604    30657 A   mpr_semitrans_dba_financial_range dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 p   ALTER TABLE public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    272    271                       2604    30628    mpr_semitrans_login login_id_pk    DEFAULT     }   ALTER TABLE ONLY public.mpr_semitrans_login ALTER COLUMN login_id_pk SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 N   ALTER TABLE public.mpr_semitrans_login ALTER COLUMN login_id_pk DROP DEFAULT;
       public          postgres    false    239    238            \           2604    30660 #   mpr_semitrans_profile profile_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_profile ALTER COLUMN profile_id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_semitrans_profile ALTER COLUMN profile_id_pk DROP DEFAULT;
       public          postgres    false    281    280            M           2604    30654    mpr_trans_audit_log audit_id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_trans_audit_log ALTER COLUMN audit_id_pk SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 N   ALTER TABLE public.mpr_trans_audit_log ALTER COLUMN audit_id_pk DROP DEFAULT;
       public          postgres    false    266    265            T           2604    30659 (   mpr_trans_meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 W   ALTER TABLE public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    278    277            `           2604    31004 )   mpr_trans_notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 X   ALTER TABLE public.mpr_trans_notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    289    288            *          0    30948    mpr_master_attri_table 
   TABLE DATA           d   COPY public.mpr_master_attri_table (attri_id_pk, scheme_id_fk, attri_name, actual_name) FROM stdin;
    public          postgres    false    286   ��      ?          0    32053    mpr_master_block 
   TABLE DATA           p   COPY public.mpr_master_block (block_id_pk, block_name, block_lg_code, subdiv_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    307   ;�                0    30517    mpr_master_dashboard_info 
   TABLE DATA           �   COPY public.mpr_master_dashboard_info (dashboard_id_pk, sch_tab_name, scheme_name, attr_target, attr_target_name, attri_progress, attri_progress_name) FROM stdin;
    public          postgres    false    270   �      5          0    31076    mpr_master_department 
   TABLE DATA           `   COPY public.mpr_master_department (dept_id_pk, dept_name, short_name, office_id_fk) FROM stdin;
    public          postgres    false    297   h�      7          0    31114    mpr_master_designation 
   TABLE DATA           U   COPY public.mpr_master_designation (desig_id_pk, desig_name, dept_id_fk) FROM stdin;
    public          postgres    false    299   �      B          0    32070    mpr_master_district 
   TABLE DATA           w   COPY public.mpr_master_district (district_id_pk, district_name, state_id_fk, dist_lg_code, location_id_fk) FROM stdin;
    public          postgres    false    310   ��      9          0    31156    mpr_master_financial_year 
   TABLE DATA              COPY public.mpr_master_financial_year (financial_year_master_id_pk, "scheme_table_id_fk ", start_month, end_month) FROM stdin;
    public          postgres    false    301   �                0    30529    mpr_master_location_data 
   TABLE DATA           `   COPY public.mpr_master_location_data (location_area, location_code, location_id_pk) FROM stdin;
    public          postgres    false    275   �      3          0    31068    mpr_master_office 
   TABLE DATA           F   COPY public.mpr_master_office (office_id_pk, office_name) FROM stdin;
    public          postgres    false    295   ݿ      ;          0    31169    mpr_master_scheme_dept 
   TABLE DATA           ]   COPY public.mpr_master_scheme_dept (scheme_dept_id_pk, scheme_id_fk, dept_id_fk) FROM stdin;
    public          postgres    false    303   �      &          0    30564    mpr_master_scheme_table 
   TABLE DATA           g   COPY public.mpr_master_scheme_table (scheme_id_pk, short_name, name, financial_year_id_fk) FROM stdin;
    public          postgres    false    282   ��      =          0    32044    mpr_master_state 
   TABLE DATA           C   COPY public.mpr_master_state (state_id_pk, state_name) FROM stdin;
    public          postgres    false    305   ��      >          0    32050    mpr_master_subdiv 
   TABLE DATA           v   COPY public.mpr_master_subdiv (sub_div_id_pk, sub_div_name, sub_div_code, district_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    306   �      �          0    30245    mpr_master_table 
   TABLE DATA           l   COPY public.mpr_master_table (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at) FROM stdin;
    public          postgres    false    202   ^�      �          0    30249    mpr_scheme_anand 
   TABLE DATA           �   COPY public.mpr_scheme_anand (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_shgs_formed_in_the_district, total_no_of_shgs_got_credit_linkage, location_code) FROM stdin;
    public          postgres    false    203   {�      �          0    30254    mpr_scheme_awcc 
   TABLE DATA           �   COPY public.mpr_scheme_awcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_icds_cenetres_devoid_of_own_building, no_of_new_icds_building_constructed, no_of_icds_centres_running_in_open_space, location_code) FROM stdin;
    public          postgres    false    204   ��      �          0    30261    mpr_scheme_baitarani 
   TABLE DATA           �   COPY public.mpr_scheme_baitarani (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_burning_ghats_taken_up, completed_till_date, location_code) FROM stdin;
    public          postgres    false    206   ��      �          0    30268    mpr_scheme_doc 
   TABLE DATA           �   COPY public.mpr_scheme_doc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_poultry, no_of_poultry_actually_distributed, location_code) FROM stdin;
    public          postgres    false    208   ��      �          0    30275    mpr_scheme_dog 
   TABLE DATA           �   COPY public.mpr_scheme_dog (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_goats, no_of_goats_actually_distributed, no_of_beneficiaries_selected, no_of_beneficiaries_approved, location_code) FROM stdin;
    public          postgres    false    209   ��      �          0    30282    mpr_scheme_dopthud 
   TABLE DATA           �   COPY public.mpr_scheme_dopthud (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_power_tiller_distributed, location_code) FROM stdin;
    public          postgres    false    211   �      �          0    30289    mpr_scheme_enrollment 
   TABLE DATA             COPY public.mpr_scheme_enrollment (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, gross_enrolment_ratio_primary, net_enrolment_ratio_primary, gross_enrolment_ratio_upper_primary, net_enrolment_ratio_upper_primary, location_code) FROM stdin;
    public          postgres    false    213   )�      �          0    30296    mpr_scheme_foodpro 
   TABLE DATA           �   COPY public.mpr_scheme_foodpro (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, status_of_pocurement, target_of_pocurement, location_code) FROM stdin;
    public          postgres    false    215   F�      �          0    30303    mpr_scheme_gitanjali 
   TABLE DATA           �   COPY public.mpr_scheme_gitanjali (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_case_sanctioned_under_gitanjali, date_of_inception, no_of_houses_constructed_under_gitanjali, location_code) FROM stdin;
    public          postgres    false    217   c�      �          0    30310    mpr_scheme_immunisati 
   TABLE DATA           �   COPY public.mpr_scheme_immunisati (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_fully_immunised_child, location_code) FROM stdin;
    public          postgres    false    219   ��      �          0    30317    mpr_scheme_infantd 
   TABLE DATA           �   COPY public.mpr_scheme_infantd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_infant_death, location_code) FROM stdin;
    public          postgres    false    221   ��      �          0    30324    mpr_scheme_inspection 
   TABLE DATA           �   COPY public.mpr_scheme_inspection (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_homes_inspected_by_senior_officers, designation_of_officers, location_code) FROM stdin;
    public          postgres    false    223   ��      �          0    30331    mpr_scheme_instdel 
   TABLE DATA           �   COPY public.mpr_scheme_instdel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_institutional_delivery, location_code) FROM stdin;
    public          postgres    false    225   ��      �          0    30338    mpr_scheme_jaldjalb 
   TABLE DATA           �   COPY public.mpr_scheme_jaldjalb (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, date_of_inspection, no_of_ponds_excavated_under_jal_dharo_jal_bharo, no_of_ponds_fish_production_started, location_code) FROM stdin;
    public          postgres    false    227   ��      �          0    30345    mpr_scheme_kanyas 
   TABLE DATA           `  COPY public.mpr_scheme_kanyas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_k1_cases_application_received, no_of_k1_cases_application_sanctioned, no_of_k1_cases_application_disbursed, no_of_k2_cases_application_received, no_of_k2_cases_application_sanctioned, no_of_k2_cases_application_disbursed, location_code) FROM stdin;
    public          postgres    false    229   �      �          0    30352    mpr_scheme_karmatirth 
   TABLE DATA           &  COPY public.mpr_scheme_karmatirth (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_karmatirtha_sanctioned, no_of_karmatirtha_for_which_construction_started, no_of_karmatirtha_for_which_construction_completed, no_of_karmatirth_operationalised, location_code) FROM stdin;
    public          postgres    false    231   .�      �          0    30359    mpr_scheme_kcc 
   TABLE DATA           �   COPY public.mpr_scheme_kcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    233   K�      �          0    30382    mpr_scheme_kishanm 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    235   h�      �          0    30387    mpr_scheme_landpp 
   TABLE DATA           �   COPY public.mpr_scheme_landpp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_land_permission_pending, projects_name, location_code) FROM stdin;
    public          postgres    false    236   ��      �          0    30404    mpr_scheme_maternald 
   TABLE DATA           �   COPY public.mpr_scheme_maternald (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_maternal_death, location_code) FROM stdin;
    public          postgres    false    241   ��      �          0    30411    mpr_scheme_mci 
   TABLE DATA           �   COPY public.mpr_scheme_mci (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, percentage_of_malnourished_child, location_code) FROM stdin;
    public          postgres    false    243   ��                0    30418    mpr_scheme_mgnregs 
   TABLE DATA             COPY public.mpr_scheme_mgnregs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    245   ��                0    30423    mpr_scheme_minoritys 
   TABLE DATA             COPY public.mpr_scheme_minoritys (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_scholarship_distribution_aikyashree, no_of_students_distributed_scholarship, no_of_application_uploaded_under_aikyashree_scholarship, location_code) FROM stdin;
    public          postgres    false    246   ��                0    30430    mpr_scheme_poe 
   TABLE DATA           �   COPY public.mpr_scheme_poe (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target, production, location_code) FROM stdin;
    public          postgres    false    248   �                0    30443    mpr_scheme_saboojs 
   TABLE DATA           �   COPY public.mpr_scheme_saboojs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_cycles, cycle_distributed_till_date, location_code) FROM stdin;
    public          postgres    false    250   3�                0    30448    mpr_scheme_saboojshre 
   TABLE DATA           �   COPY public.mpr_scheme_saboojshre (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_children_born_since_inception_of_the_project_in_the_dist, no_of_tree_sapling_handed_over_to_the_new_born_children, location_code) FROM stdin;
    public          postgres    false    251   P�      
          0    30457    mpr_scheme_safedsavel 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_accidents, no_of_death, no_of_insured_person, location_code) FROM stdin;
    public          postgres    false    254   m�                0    30464    mpr_scheme_samaybythi 
   TABLE DATA           �   COPY public.mpr_scheme_samaybythi (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_beneficiaries_provided_benefit_till_date, till_date, location_code) FROM stdin;
    public          postgres    false    256   ��                0    30471    mpr_scheme_sikhas 
   TABLE DATA             COPY public.mpr_scheme_sikhas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "targetted_no_of_sc/st_student_under_sikshashree", no_of_students_getting_benefit_under_sikshashree, no_of_applications_uploaded_under_sikshashree, location_code) FROM stdin;
    public          postgres    false    258   ��                0    30478    mpr_scheme_svskp 
   TABLE DATA           �   COPY public.mpr_scheme_svskp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_project_sponsored_under_svskp, no_of_project_sanctioned_under_svskp, location_code) FROM stdin;
    public          postgres    false    260   ��                0    30485    mpr_scheme_yubas 
   TABLE DATA           �   COPY public.mpr_scheme_yubas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_unemployed_youth_registered_under_yubashree, no_of_unemployed_registered_youth_getting_monthly_assistance, location_code) FROM stdin;
    public          postgres    false    262   ��                0    30510    mpr_semitrans_check_first_user 
   TABLE DATA           u   COPY public.mpr_semitrans_check_first_user (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    267   ��                0    30520 !   mpr_semitrans_dba_financial_range 
   TABLE DATA           y   COPY public.mpr_semitrans_dba_financial_range (dba_financial_range_table_id_pk, financial_year_range, month) FROM stdin;
    public          postgres    false    271   �      �          0    30394    mpr_semitrans_login 
   TABLE DATA           �   COPY public.mpr_semitrans_login (username, password, user_type_id_fk, location_code, login_id_pk, active_status, dept_id_fk, office_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    238   8�      .          0    31034    mpr_semitrans_privilege 
   TABLE DATA           �   COPY public.mpr_semitrans_privilege (privilege_id_pk, parent, link, "order", page_name, active_status, view_sidebar) FROM stdin;
    public          postgres    false    290   U�      $          0    30541    mpr_semitrans_profile 
   TABLE DATA           �   COPY public.mpr_semitrans_profile (username, f_name, m_name, l_name, mobile, email, district, image, profile_id_pk, desig_id_fk, dept_id_fk, office_id_fk) FROM stdin;
    public          postgres    false    280   D�      /          0    31042    mpr_semitrans_user_privilege 
   TABLE DATA           x   COPY public.mpr_semitrans_user_privilege (user_priv_id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    291   a�      )          0    30581    mpr_semitrans_user_type 
   TABLE DATA           X   COPY public.mpr_semitrans_user_type (user_type_id_pk, desig, active_status) FROM stdin;
    public          postgres    false    285   E�                0    30502    mpr_trans_audit_log 
   TABLE DATA           �   COPY public.mpr_trans_audit_log (section, action, request, comment, ip_addr, audit_id_pk, login_id_fk, "timestamp") FROM stdin;
    public          postgres    false    265   ��      !          0    30534    mpr_trans_meeting_schedule 
   TABLE DATA           Y   COPY public.mpr_trans_meeting_schedule (meeting_id_pk, start_time, end_time) FROM stdin;
    public          postgres    false    277   ��      ,          0    30999    mpr_trans_notification 
   TABLE DATA           �   COPY public.mpr_trans_notification (audience_id, notification_text, notification_id_pk, "timestamp", notification_head, active_status) FROM stdin;
    public          postgres    false    288   ��                 0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    205            �           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    207            �           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    210            �           0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    212            �           0    0    ENROLLMENT_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ENROLLMENT_id_seq"', 1, false);
          public          postgres    false    214            �           0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    216            �           0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    218            �           0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    220            �           0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    222            �           0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    224            �           0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    228            �           0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    KCC_id_pk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."KCC_id_pk_seq"', 4, true);
          public          postgres    false    234            �           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    237            �           0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 1, true);
          public          postgres    false    239            �           0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    240            �           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    242            �           0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    244            �           0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    247            �           0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    249            �           0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    252            �           0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    253            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    255            �           0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    257            �           0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    259            �           0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    261            �           0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    263            �           0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 1, true);
          public          postgres    false    264            �           0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    287            �           0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 103, true);
          public          postgres    false    266            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    268            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    269            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE SET     l   SELECT pg_catalog.setval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq', 1, false);
          public          postgres    false    272            �           0    0    designation_desig_id_pk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.designation_desig_id_pk_seq', 1, false);
          public          postgres    false    298            �           0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    273            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.financial_year_master_financial_year_master_id_pk_seq', 1, false);
          public          postgres    false    300            �           0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 1, false);
          public          postgres    false    274            �           0    0     location_data_location_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.location_data_location_id_pk_seq', 1, false);
          public          postgres    false    276            �           0    0    meeting_schedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 1, true);
          public          postgres    false    278            �           0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    279            �           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_master_district_district_id_pk_seq', 1, false);
          public          postgres    false    309            �           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mpr_master_state_state_id_pk_seq', 1, false);
          public          postgres    false    304            �           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_master_subdiv_sub_div_id_pk_seq', 1, false);
          public          postgres    false    308            �           0    0    notifications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.notifications_id_seq', 8, true);
          public          postgres    false    289            �           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    296            �           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    294            �           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 3, true);
          public          postgres    false    281            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    302            �           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    283            �           0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    284            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    292            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    293            z           2606    30667    mpr_scheme_awcc AWCC_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    204            }           2606    30669 #   mpr_scheme_baitarani BAITARANI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    206            �           2606    30671    mpr_scheme_dog DOG_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    209            �           2606    30673    mpr_scheme_dopthud DOPTUHD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_dopthud
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_dopthud DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    211            �           2606    30675 %   mpr_scheme_enrollment ENROLLMENT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    213            �           2606    30677    mpr_scheme_foodpro FOODPRO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    215            �           2606    30679 #   mpr_scheme_gitanjali GITANJALI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    217            �           2606    30681 '   mpr_scheme_immunisati IMMUNISATION_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 S   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    219            �           2606    30683    mpr_scheme_infantd INFANTD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    221            �           2606    30685 %   mpr_scheme_inspection INSPECTION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    223            �           2606    30687    mpr_scheme_instdel INSTDEL_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    225            �           2606    30689 !   mpr_scheme_jaldjalb JALDJALB_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 M   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    227            �           2606    30691    mpr_scheme_kanyas KANYAS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    229            �           2606    30693 %   mpr_scheme_karmatirth KARMATIRTH_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    231            �           2606    30695    mpr_scheme_kcc KCC_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    233            �           2606    31008    mpr_scheme_landpp LANDPP_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_pkey";
       public            postgres    false    236            �           2606    30697    mpr_semitrans_login Login_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (login_id_pk);
 J   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_pkey";
       public            postgres    false    238            �           2606    31234 0   mpr_semitrans_login Login_username_username1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    238    238            �           2606    30701 #   mpr_scheme_maternald MATERNALD_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    241            �           2606    30703    mpr_scheme_mci MCI_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    243            �           2606    30705    mpr_scheme_mgnregs MGNREGS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    245            �           2606    30707 #   mpr_scheme_minoritys MINORITYS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    246            �           2606    30709    mpr_scheme_poe POE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_pkey";
       public            postgres    false    248            �           2606    31041 &   mpr_semitrans_privilege Privilege_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mpr_semitrans_privilege
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 R   ALTER TABLE ONLY public.mpr_semitrans_privilege DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    290            �           2606    30713 %   mpr_scheme_saboojshre SABOOJSHRE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    251            �           2606    30715    mpr_scheme_saboojs SABOOJS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    250            �           2606    30717 %   mpr_scheme_safedsavel SAFEDSAVEL_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    254            �           2606    30719 $   mpr_scheme_samaybythi SAMABYTHI_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.mpr_scheme_samaybythi
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 P   ALTER TABLE ONLY public.mpr_scheme_samaybythi DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    256            �           2606    30721    mpr_scheme_sikhas SIKSHAS_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mpr_scheme_sikhas
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 J   ALTER TABLE ONLY public.mpr_scheme_sikhas DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    258            �           2606    30723    mpr_scheme_svskp SVSKP_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    260            �           2606    30725    mpr_scheme_yubas YUBAS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    262            w           2606    30727    mpr_scheme_anand anand_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT anand_pkey;
       public            postgres    false    203            �           2606    30958 %   mpr_master_attri_table att_table_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (attri_id_pk);
 O   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    286            �           2606    31106 "   mpr_trans_audit_log audit_log_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id_pk);
 L   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    265            �           2606    30733 4   mpr_semitrans_check_first_user check_First_User_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 `   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    267            �           2606    30735 -   mpr_master_dashboard_info dashboard_info_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.mpr_master_dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (dashboard_id_pk);
 W   ALTER TABLE ONLY public.mpr_master_dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    270            �           2606    30737 @   mpr_semitrans_dba_financial_range dba_financial_range_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range
    ADD CONSTRAINT dba_financial_range_table_pkey PRIMARY KEY (dba_financial_range_table_id_pk);
 j   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range DROP CONSTRAINT dba_financial_range_table_pkey;
       public            postgres    false    271            �           2606    31119 '   mpr_master_designation designation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (desig_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    299            �           2606    30739    mpr_scheme_doc doc_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 A   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT doc_pkey;
       public            postgres    false    208            �           2606    31161 4   mpr_master_financial_year financial_year_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_financial_year
    ADD CONSTRAINT financial_year_master_pkey PRIMARY KEY (financial_year_master_id_pk);
 ^   ALTER TABLE ONLY public.mpr_master_financial_year DROP CONSTRAINT financial_year_master_pkey;
       public            postgres    false    301            �           2606    30741    mpr_scheme_kishanm kishanm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    235            �           2606    30743 +   mpr_master_location_data location_data_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id_pk);
 U   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    275            �           2606    30745 0   mpr_trans_meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mpr_trans_meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (meeting_id_pk);
 Z   ALTER TABLE ONLY public.mpr_trans_meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    277                       2606    32087 &   mpr_master_block mpr_master_block_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_pkey PRIMARY KEY (block_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_pkey;
       public            postgres    false    307                       2606    32075 ,   mpr_master_district mpr_master_district_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_pkey PRIMARY KEY (district_id_pk);
 V   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_pkey;
       public            postgres    false    310            �           2606    31550 C   mpr_master_location_data mpr_master_location_data_location_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT mpr_master_location_data_location_code_key UNIQUE (location_code);
 m   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT mpr_master_location_data_location_code_key;
       public            postgres    false    275                        2606    32049 &   mpr_master_state mpr_master_state_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_state
    ADD CONSTRAINT mpr_master_state_pkey PRIMARY KEY (state_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_state DROP CONSTRAINT mpr_master_state_pkey;
       public            postgres    false    305                       2606    32063 (   mpr_master_subdiv mpr_master_subdiv_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_pkey PRIMARY KEY (sub_div_id_pk);
 R   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_pkey;
       public            postgres    false    306            �           2606    31497 8   mpr_semitrans_profile mpr_semitrans_profile_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_key;
       public            postgres    false    280            �           2606    31006 )   mpr_trans_notification notifications_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_notification
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id_pk);
 S   ALTER TABLE ONLY public.mpr_trans_notification DROP CONSTRAINT notifications_pkey;
       public            postgres    false    288            �           2606    31081 &   mpr_master_department office_dept_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (dept_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_pkey;
       public            postgres    false    297            �           2606    31073    mpr_master_office office_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpr_master_office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id_pk);
 G   ALTER TABLE ONLY public.mpr_master_office DROP CONSTRAINT office_pkey;
       public            postgres    false    295            �           2606    30751 "   mpr_semitrans_profile profile_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id_pk);
 L   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    280            �           2606    31174 '   mpr_master_scheme_dept scheme_dept_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_pkey PRIMARY KEY (scheme_dept_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_pkey;
       public            postgres    false    303            �           2606    30755 )   mpr_master_scheme_table scheme_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (scheme_id_pk);
 S   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    282            �           2606    31055 0   mpr_semitrans_user_privilege user_privilege_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (user_priv_id_pk);
 Z   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    291            �           2606    30761 &   mpr_semitrans_user_type user_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_semitrans_user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 P   ALTER TABLE ONLY public.mpr_semitrans_user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    285            x           1259    31268 	   idx_anand    INDEX     _   CREATE INDEX idx_anand ON public.mpr_scheme_anand USING btree (session, month, location_code);
    DROP INDEX public.idx_anand;
       public            postgres    false    203    203    203            {           1259    31269    idx_awcc    INDEX     ]   CREATE INDEX idx_awcc ON public.mpr_scheme_awcc USING btree (session, month, location_code);
    DROP INDEX public.idx_awcc;
       public            postgres    false    204    204    204            ~           1259    31270    idx_baitarani    INDEX     g   CREATE INDEX idx_baitarani ON public.mpr_scheme_baitarani USING btree (session, month, location_code);
 !   DROP INDEX public.idx_baitarani;
       public            postgres    false    206    206    206            �           1259    31271    idx_doc    INDEX     [   CREATE INDEX idx_doc ON public.mpr_scheme_doc USING btree (session, month, location_code);
    DROP INDEX public.idx_doc;
       public            postgres    false    208    208    208            �           1259    31272    idx_dog    INDEX     [   CREATE INDEX idx_dog ON public.mpr_scheme_dog USING btree (session, month, location_code);
    DROP INDEX public.idx_dog;
       public            postgres    false    209    209    209            �           1259    31273    idx_doptuhd    INDEX     c   CREATE INDEX idx_doptuhd ON public.mpr_scheme_dopthud USING btree (session, month, location_code);
    DROP INDEX public.idx_doptuhd;
       public            postgres    false    211    211    211            �           1259    31274    idx_enrollment    INDEX     i   CREATE INDEX idx_enrollment ON public.mpr_scheme_enrollment USING btree (session, month, location_code);
 "   DROP INDEX public.idx_enrollment;
       public            postgres    false    213    213    213            �           1259    31275    idx_foodpro    INDEX     c   CREATE INDEX idx_foodpro ON public.mpr_scheme_foodpro USING btree (session, month, location_code);
    DROP INDEX public.idx_foodpro;
       public            postgres    false    215    215    215            �           1259    31276    idx_gitanjali    INDEX     g   CREATE INDEX idx_gitanjali ON public.mpr_scheme_gitanjali USING btree (session, month, location_code);
 !   DROP INDEX public.idx_gitanjali;
       public            postgres    false    217    217    217            �           1259    31277    idx_immunisati    INDEX     i   CREATE INDEX idx_immunisati ON public.mpr_scheme_immunisati USING btree (session, month, location_code);
 "   DROP INDEX public.idx_immunisati;
       public            postgres    false    219    219    219            �           1259    31278    idx_infantd    INDEX     c   CREATE INDEX idx_infantd ON public.mpr_scheme_infantd USING btree (session, month, location_code);
    DROP INDEX public.idx_infantd;
       public            postgres    false    221    221    221            �           1259    31279    idx_inspection    INDEX     i   CREATE INDEX idx_inspection ON public.mpr_scheme_inspection USING btree (session, month, location_code);
 "   DROP INDEX public.idx_inspection;
       public            postgres    false    223    223    223            �           1259    31280    idx_instdel    INDEX     c   CREATE INDEX idx_instdel ON public.mpr_scheme_instdel USING btree (session, month, location_code);
    DROP INDEX public.idx_instdel;
       public            postgres    false    225    225    225            �           1259    31281    idx_jaldjalb    INDEX     e   CREATE INDEX idx_jaldjalb ON public.mpr_scheme_jaldjalb USING btree (session, month, location_code);
     DROP INDEX public.idx_jaldjalb;
       public            postgres    false    227    227    227            �           1259    31282 
   idx_kanyas    INDEX     a   CREATE INDEX idx_kanyas ON public.mpr_scheme_kanyas USING btree (session, month, location_code);
    DROP INDEX public.idx_kanyas;
       public            postgres    false    229    229    229            �           1259    31283    idx_karmatirth    INDEX     i   CREATE INDEX idx_karmatirth ON public.mpr_scheme_karmatirth USING btree (session, month, location_code);
 "   DROP INDEX public.idx_karmatirth;
       public            postgres    false    231    231    231            �           1259    31284    idx_kcc    INDEX     [   CREATE INDEX idx_kcc ON public.mpr_scheme_kcc USING btree (session, month, location_code);
    DROP INDEX public.idx_kcc;
       public            postgres    false    233    233    233            �           1259    31285    idx_kishanm    INDEX     c   CREATE INDEX idx_kishanm ON public.mpr_scheme_kishanm USING btree (session, month, location_code);
    DROP INDEX public.idx_kishanm;
       public            postgres    false    235    235    235            �           1259    31286 
   idx_landpp    INDEX     a   CREATE INDEX idx_landpp ON public.mpr_scheme_landpp USING btree (session, month, location_code);
    DROP INDEX public.idx_landpp;
       public            postgres    false    236    236    236            �           1259    31287    idx_maternald    INDEX     g   CREATE INDEX idx_maternald ON public.mpr_scheme_maternald USING btree (session, month, location_code);
 !   DROP INDEX public.idx_maternald;
       public            postgres    false    241    241    241            �           1259    31288    idx_mci    INDEX     [   CREATE INDEX idx_mci ON public.mpr_scheme_mci USING btree (session, month, location_code);
    DROP INDEX public.idx_mci;
       public            postgres    false    243    243    243            �           1259    31289    idx_mgnregs    INDEX     c   CREATE INDEX idx_mgnregs ON public.mpr_scheme_mgnregs USING btree (session, month, location_code);
    DROP INDEX public.idx_mgnregs;
       public            postgres    false    245    245    245            �           1259    31290    idx_minoritys    INDEX     g   CREATE INDEX idx_minoritys ON public.mpr_scheme_minoritys USING btree (session, month, location_code);
 !   DROP INDEX public.idx_minoritys;
       public            postgres    false    246    246    246            �           1259    31291    idx_poe    INDEX     [   CREATE INDEX idx_poe ON public.mpr_scheme_poe USING btree (session, month, location_code);
    DROP INDEX public.idx_poe;
       public            postgres    false    248    248    248            �           1259    31292    idx_saboojs    INDEX     c   CREATE INDEX idx_saboojs ON public.mpr_scheme_saboojs USING btree (session, month, location_code);
    DROP INDEX public.idx_saboojs;
       public            postgres    false    250    250    250            �           1259    31293    idx_saboojshre    INDEX     i   CREATE INDEX idx_saboojshre ON public.mpr_scheme_saboojshre USING btree (session, month, location_code);
 "   DROP INDEX public.idx_saboojshre;
       public            postgres    false    251    251    251            �           1259    31294    idx_safedsavel    INDEX     i   CREATE INDEX idx_safedsavel ON public.mpr_scheme_safedsavel USING btree (session, month, location_code);
 "   DROP INDEX public.idx_safedsavel;
       public            postgres    false    254    254    254            �           1259    31295    idx_samabythi    INDEX     h   CREATE INDEX idx_samabythi ON public.mpr_scheme_samaybythi USING btree (session, month, location_code);
 !   DROP INDEX public.idx_samabythi;
       public            postgres    false    256    256    256            �           1259    31296    idx_sikshas    INDEX     b   CREATE INDEX idx_sikshas ON public.mpr_scheme_sikhas USING btree (session, month, location_code);
    DROP INDEX public.idx_sikshas;
       public            postgres    false    258    258    258            �           1259    31297 	   idx_svskp    INDEX     _   CREATE INDEX idx_svskp ON public.mpr_scheme_svskp USING btree (session, month, location_code);
    DROP INDEX public.idx_svskp;
       public            postgres    false    260    260    260            �           1259    31298 	   idx_yubas    INDEX     _   CREATE INDEX idx_yubas ON public.mpr_scheme_yubas USING btree (session, month, location_code);
    DROP INDEX public.idx_yubas;
       public            postgres    false    262    262    262                       2606    30762 '   mpr_scheme_anand ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    203    3248    238            	           2606    30767 %   mpr_scheme_awcc AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Q   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    204    3248    238                       2606    30772 /   mpr_scheme_baitarani BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    238    206    3248                       2606    30777 #   mpr_scheme_doc DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    208    3248    238                       2606    30782 #   mpr_scheme_dog DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    209    3248    238                       2606    30787 +   mpr_scheme_dopthud DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dopthud
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_dopthud DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    211    238    3248                       2606    30792 1   mpr_scheme_enrollment ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    238    213    3248                       2606    30797 +   mpr_scheme_foodpro FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    238    215    3248                       2606    30802 /   mpr_scheme_gitanjali GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    238    217    3248                       2606    30807 1   mpr_scheme_immunisati IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    219    238    3248                       2606    30812 +   mpr_scheme_infantd INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    3248    221    238                       2606    30817 1   mpr_scheme_inspection INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    238    3248    223                       2606    31009 +   mpr_scheme_instdel INSTDEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_login_id_fk_fkey";
       public          postgres    false    225    238    3248                        2606    30827 -   mpr_scheme_jaldjalb JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Y   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    227    3248    238            !           2606    30832 )   mpr_scheme_kanyas KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    238    3248    229            #           2606    30837 1   mpr_scheme_karmatirth KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    231    3248    238            %           2606    30842 #   mpr_scheme_kcc KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    233    3248    238            '           2606    30847 +   mpr_scheme_kishanm KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    235    238    3248            )           2606    30852 )   mpr_scheme_landpp LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    236    238    3248            .           2606    31125 *   mpr_semitrans_login Login_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_desig_id_fk_fkey" FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 V   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_desig_id_fk_fkey";
       public          postgres    false    238    299    3322            ,           2606    31095 0   mpr_semitrans_login Login_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_dept_id_fk_fkey" FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_dept_id_fk_fkey";
       public          postgres    false    238    297    3320            -           2606    31100 +   mpr_semitrans_login Login_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_id_fk_fkey" FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 W   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_id_fk_fkey";
       public          postgres    false    238    295    3318            +           2606    31061 .   mpr_semitrans_login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Z   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    238    285    3308            1           2606    30862 /   mpr_scheme_maternald MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    241    3248    238            2           2606    30867 #   mpr_scheme_mci MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    243    238    3248            4           2606    30872 +   mpr_scheme_mgnregs MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    3248    238    245            7           2606    30877 /   mpr_scheme_minoritys MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    238    3248    246            8           2606    30882 #   mpr_scheme_poe POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    248    238    3248            ;           2606    30887 1   mpr_scheme_saboojshre SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    251    238    3248            :           2606    30892 +   mpr_scheme_saboojs SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    250    238    3248            =           2606    30897 1   mpr_scheme_safedsavel SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    254    238    3248            ?           2606    30902 0   mpr_scheme_samaybythi SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samaybythi
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 \   ALTER TABLE ONLY public.mpr_scheme_samaybythi DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    256    238    3248            B           2606    30907 *   mpr_scheme_sikhas SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikhas
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 V   ALTER TABLE ONLY public.mpr_scheme_sikhas DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    258    238    3248            D           2606    30912 '   mpr_scheme_svskp SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    260    238    3248            E           2606    30917 '   mpr_scheme_yubas YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    262    238    3248            G           2606    31107 .   mpr_trans_audit_log audit_log_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_login_id_fk_fkey FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 X   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_login_id_fk_fkey;
       public          postgres    false    265    238    3248            P           2606    31120 9   mpr_master_designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    299    297    3320            Q           2606    31162 H   mpr_master_financial_year financial_year_master_scheme_table_id_fk _fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_financial_year
    ADD CONSTRAINT "financial_year_master_scheme_table_id_fk _fkey" FOREIGN KEY ("scheme_table_id_fk ") REFERENCES public.mpr_master_scheme_table(scheme_id_pk);
 t   ALTER TABLE ONLY public.mpr_master_financial_year DROP CONSTRAINT "financial_year_master_scheme_table_id_fk _fkey";
       public          postgres    false    301    282    3306            L           2606    32032 ?   mpr_master_attri_table mpr_master_attri_table_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey;
       public          postgres    false    282    286    3306            U           2606    32093 5   mpr_master_block mpr_master_block_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 _   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_location_id_fk_fkey;
       public          postgres    false    3296    307    275            V           2606    32088 3   mpr_master_block mpr_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.mpr_master_subdiv(sub_div_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_subdiv_id_fk_fkey;
       public          postgres    false    3330    306    307            W           2606    32076 8   mpr_master_district mpr_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.mpr_master_state(state_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_state_id_fk_fkey;
       public          postgres    false    310    305    3328            S           2606    32027 ?   mpr_master_scheme_dept mpr_master_scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    282    3306    303            K           2606    32037 I   mpr_master_scheme_table mpr_master_scheme_table_financial_year_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey FOREIGN KEY (financial_year_id_fk) REFERENCES public.mpr_master_financial_year(financial_year_master_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 s   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey;
       public          postgres    false    3324    282    301            T           2606    32081 3   mpr_master_subdiv mpr_master_subdiv_dist_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.mpr_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey;
       public          postgres    false    306    3334    310                       2606    31626 &   mpr_scheme_anand mpr_scheme_anand_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT mpr_scheme_anand_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT mpr_scheme_anand_lcfk;
       public          postgres    false    203    275    3298            
           2606    31681 $   mpr_scheme_awcc mpr_scheme_awcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT mpr_scheme_awcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 N   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT mpr_scheme_awcc_lcfk;
       public          postgres    false    204    275    3298                       2606    31981 .   mpr_scheme_baitarani mpr_scheme_baitarani_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT mpr_scheme_baitarani_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT mpr_scheme_baitarani_lcfk;
       public          postgres    false    275    206    3298                       2606    31631 "   mpr_scheme_doc mpr_scheme_doc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT mpr_scheme_doc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT mpr_scheme_doc_lcfk;
       public          postgres    false    208    275    3298                       2606    31676 *   mpr_scheme_dopthud mpr_scheme_dopthud_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dopthud
    ADD CONSTRAINT mpr_scheme_dopthud_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_dopthud DROP CONSTRAINT mpr_scheme_dopthud_lcfk;
       public          postgres    false    211    275    3298                       2606    31966 0   mpr_scheme_enrollment mpr_scheme_enrollment_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT mpr_scheme_enrollment_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT mpr_scheme_enrollment_lcfk;
       public          postgres    false    213    3298    275                       2606    31961 *   mpr_scheme_foodpro mpr_scheme_foodpro_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT mpr_scheme_foodpro_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT mpr_scheme_foodpro_lcfk;
       public          postgres    false    215    275    3298                       2606    31951 .   mpr_scheme_gitanjali mpr_scheme_gitanjali_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT mpr_scheme_gitanjali_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT mpr_scheme_gitanjali_lcfk;
       public          postgres    false    3298    217    275                       2606    31696 0   mpr_scheme_immunisati mpr_scheme_immunisati_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT mpr_scheme_immunisati_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT mpr_scheme_immunisati_lcfk;
       public          postgres    false    219    3298    275                       2606    31986 0   mpr_scheme_inspection mpr_scheme_inspection_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT mpr_scheme_inspection_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT mpr_scheme_inspection_lcfk;
       public          postgres    false    223    3298    275                       2606    31701 *   mpr_scheme_instdel mpr_scheme_instdel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT mpr_scheme_instdel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT mpr_scheme_instdel_lcfk;
       public          postgres    false    3298    275    225                       2606    31956 ,   mpr_scheme_jaldjalb mpr_scheme_jaldjalb_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT mpr_scheme_jaldjalb_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 V   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT mpr_scheme_jaldjalb_lcfk;
       public          postgres    false    227    275    3298            "           2606    31691 (   mpr_scheme_kanyas mpr_scheme_kanyas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT mpr_scheme_kanyas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT mpr_scheme_kanyas_lcfk;
       public          postgres    false    229    3298    275            $           2606    32006 1   mpr_scheme_karmatirth mpr_scheme_karmatirtha_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT mpr_scheme_karmatirtha_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 [   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT mpr_scheme_karmatirtha_lcfk;
       public          postgres    false    275    3298    231            &           2606    31616 "   mpr_scheme_kcc mpr_scheme_kcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT mpr_scheme_kcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT mpr_scheme_kcc_lcfk;
       public          postgres    false    233    275    3298            (           2606    32011 *   mpr_scheme_kishanm mpr_scheme_kishanm_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT mpr_scheme_kishanm_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT mpr_scheme_kishanm_lcfk;
       public          postgres    false    275    235    3298            *           2606    31991 (   mpr_scheme_landpp mpr_scheme_landpp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT mpr_scheme_landpp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT mpr_scheme_landpp_lcfk;
       public          postgres    false    3298    236    275            0           2606    31926 .   mpr_scheme_maternald mpr_scheme_maternald_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT mpr_scheme_maternald_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT mpr_scheme_maternald_lcfk;
       public          postgres    false    275    3298    241            3           2606    31686 "   mpr_scheme_mci mpr_scheme_mci_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT mpr_scheme_mci_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT mpr_scheme_mci_lcfk;
       public          postgres    false    243    275    3298            5           2606    31621 *   mpr_scheme_mgnregs mpr_scheme_mgnregs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT mpr_scheme_mgnregs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT mpr_scheme_mgnregs_lcfk;
       public          postgres    false    245    275    3298            6           2606    31941 .   mpr_scheme_minoritys mpr_scheme_minoritys_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT mpr_scheme_minoritys_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT mpr_scheme_minoritys_lcfk;
       public          postgres    false    3298    246    275            9           2606    31936 *   mpr_scheme_saboojs mpr_scheme_saboojs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT mpr_scheme_saboojs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT mpr_scheme_saboojs_lcfk;
       public          postgres    false    250    3298    275            <           2606    32001 0   mpr_scheme_saboojshre mpr_scheme_saboojshre_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT mpr_scheme_saboojshre_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT mpr_scheme_saboojshre_lcfk;
       public          postgres    false    251    275    3298            >           2606    31996 0   mpr_scheme_safedsavel mpr_scheme_safedsavel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT mpr_scheme_safedsavel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT mpr_scheme_safedsavel_lcfk;
       public          postgres    false    254    275    3298            @           2606    31976 0   mpr_scheme_samaybythi mpr_scheme_samaybythi_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samaybythi
    ADD CONSTRAINT mpr_scheme_samaybythi_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_samaybythi DROP CONSTRAINT mpr_scheme_samaybythi_lcfk;
       public          postgres    false    256    275    3298            A           2606    31931 (   mpr_scheme_sikhas mpr_scheme_sikhas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikhas
    ADD CONSTRAINT mpr_scheme_sikhas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_sikhas DROP CONSTRAINT mpr_scheme_sikhas_lcfk;
       public          postgres    false    258    3298    275            C           2606    31946 &   mpr_scheme_svskp mpr_scheme_svskp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT mpr_scheme_svskp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT mpr_scheme_svskp_lcfk;
       public          postgres    false    275    3298    260            F           2606    31971 &   mpr_scheme_yubas mpr_scheme_yubas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT mpr_scheme_yubas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT mpr_scheme_yubas_lcfk;
       public          postgres    false    3298    262    275            /           2606    32022 :   mpr_semitrans_login mpr_semitrans_login_location_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT mpr_semitrans_login_location_code_fkey FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 d   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT mpr_semitrans_login_location_code_fkey;
       public          postgres    false    238    3298    275            J           2606    31491 9   mpr_semitrans_profile mpr_semitrans_profile_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_fkey FOREIGN KEY (username) REFERENCES public.mpr_semitrans_login(username) NOT VALID;
 c   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_fkey;
       public          postgres    false    280    238    3250            O           2606    31082 3   mpr_master_department office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 ]   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    297    295    3318            M           2606    31056 ,   mpr_semitrans_user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public.mpr_semitrans_privilege(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    291    290    3314            I           2606    30959 (   mpr_semitrans_profile profile_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_id_pk_fkey FOREIGN KEY (profile_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_id_pk_fkey;
       public          postgres    false    280    238    3248            R           2606    31180 9   mpr_master_scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk);
 c   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    303    297    3320            H           2606    30937 )   mpr_semitrans_check_first_user user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk);
 S   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT user_id_fk;
       public          postgres    false    267    238    3248            N           2606    31130 @   mpr_semitrans_user_privilege user_privilege_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 j   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_user_type_id_fk_fkey;
       public          postgres    false    291    285    3308            *   |  x��XKo�8>���.t&kI~��l��ѝ��]`�FflNd�У3��[ŇHي3{����+>�U�J�4�^�ꙋm���l�%{U*�p�y��|���-��z�<���E�9����	Ϳ	�B^d-ZUiQ:B++�HΖ�q���x�i�'׿pl+�5� ��ql�VjB�G-���F�r���
�+ *@������u�8Ŷ�%١�id��\b1�F8Kg�4y�Z�X;�����\�{���������67���n����y�R�\�9!b�b�aX�Lfɣ����y��<u���}�贏BS�B�²4�_��V�m. �2��3\m'����y��@`Y��<��>�B�����,�@^Ȳ���p��_o�{!����-���l�Cu��
Zp�ɲU�t��W��V���Gl�`Ń��Y�rZ���7����S�F�-/*��.Z5b�0�1aX��d��F�Ƶם�ć��7U�� 
�������$�$x�
�ѝE��(u���F;�L � ��E���������S�^�B�pH����{|����a0������{����Ŧ��1�;��.�z���7��1�h���=��U�QF��&�%��_���wZ5���F<F��z
|���}�c�\��<IsO�}�M%��,qG0�����M�I�a��~�Em����
���m6���9��vO5����v��J���1���c���m��[�;��5����fWK�Dz������`���,'+.�Xe϶��n�ۘ�W�8G�L���p��e%6�����h��1`�RPq,Jy1Y�͉���Q�f��S��8��$c3��e<�u������:�t�^��c3����	8�OȆ�M.��f�V��A�t[�Dzl��S��?1Y��������w���Yp�1�����9[�&�h�7M��㣠rNv�Z�����ꜭG���?��_ȃI�4b��a�y�mj�&N�o���8��� k�4�As�����/	���چ˿
�K�	|���ue��I_~k	=����"B�/�g�թ�g��t����M+�PkXf�@��ðE�`ŷnE�5���Bz�1�Z
?�!|�cD(�8h����Q�k7�r�k@�xdS��N�=ހ#��U��0�n�����tO��4�h@�p��k��b�Rd��Qw_�v��N�37J#F#s־��N�2[�c�|^��|���H��8�/V���^w��_??�����Q�X�w�����ST��K?��T�Ö-�5>�b��~!�U��羐	�3��ث?	:���X똺z���N+^$�qo�
��1X���o�j�����y���O�2Z�lX=�����E?Ζ+��1mo�&����Zj�s�i|Lۛ����,�{�<�|%К�D�7`'4m;>��T��1�f��Z�b��ڙiMj�z`������s�^8�^�-�1�{�u���B�m|�W	���C�XW�$Ƿя�/�7�k����m��[���VK\/�5����i@�3FRRpR�ʓ����23������1�E�o��z��~���>w��:��yr�y)��aC�[��Iz��f�C2�2�2��<}�J�J��_����#x�j���_u�f�7�W��rм���j�oBW�.TSy�u�`�4�$���v�����L��-0X��]]5��uUR�?�-����Z�>bz<X[f���aoY�0_p������YԳ��S��ͨC���a�nS�N|PW������dv�M��G��E��9���g���?n�־-b�p�ƳY�"�֚�KQ`�p�C�gH��܀�0β�.�Ijtl0D��=R��x���bF����q"��\��v��ϲ�ߚ�%���1�?B��"      ?   �   x�E�A��0E��)��:M�vi
��4S�)�?v�`��_b�7>0C���E�!yA[8�5q��:a�U���	����9�1,�V���X=�=?�����*�����U5B��tjS����F�,��)�d����r�J[�-��
�����ʞdQ���OE�g.�W.�>�j�Q��鲆�0�&�Cq����:"��F�         9  x���Mj�0F��)��� 8�B��h��a"˶�"I.���,�:qI�ʶ�}����N���~|L�Xi�֘�p8��Ɉ���U��P�<��f��ۋt�����'�+�ɨp�R
rS15N�^�;�X�Yi%=*����B��;���K�^<]��?hU�a�r]n��D����1�{>޷k��1u/5pPZ�5$2�@�`s���P�@�LG�\vE2#�_��P�\{��~]�Jt��52$�Q0�΋M��H�Tw��/$z���S8�� L��=���Rx�9�*�Ȏ��#����s�9�6+.�      5     x�mT�n�:]��?��\�HJbC�I������H�"M��;C;q]X>sfH�[v����9ڂ��!�7�9B-j�h�o)��{g[9X�4z��iK���sz=��
�0�p옯F��Z�a
���0.%FaҰ��tk?�G�D�@�nao��nD"	FPJ� ��{�Hg��%z��VB-��A������Ӄ�?��k�}x�����"��������c�]%�3���|z9�����giο�O�˩t~�u����6�L�]�6�v�(%	��`\ʔ�L��9�m�L�!I�I�~��&h/"��PKh]�)T�ߐ��ZA��Kޭ�5f���@m���i��P>������L�Ct�(�m��&Ȧ[hP���R{LI�o�Z��������MY`�m�C_8O���p<bꣵ�S 6!|H�{����ٹ���1W��8Ph1�Ș���%��rIA�[��H��K=Jlzw��S�Ȫ5�a������v	��+?n43���ԯ6+������fj=��y�r�H�A�
�q���L�Ի�G����ĀF�c�h�^g"^9P;Q��C)hG_��j]�J���n����#�R��8��>L�_9]l٣�ݿ�VԔ�inh^%m�G�p"._����/g�c�5�y�6FALn��LT�ko�5[�1x�5����f��}AR�K��\0i�Z�4n�x���'H׀vb���;S�v�6����]�=�9����LȀ�0AE�R�oYb̏Ր��2�V2&���B�?|@OO      7   '  x�uR͒� >����^� ��Qٰk�p����?G��M��كg<H��I��y��t!��)Kr��X�L��,%���~�b`��N5�A���2�v_�0�(�R.]^�(�p��@��z(��*�H�cC!8�#'m�5�q��j=Ot�H橠�8}alM�xʁ
�N����}]���W���|��B)�>P/'r���{���c��3�S�}X�Cű��9�`�)�:H��|Ǹb��N�������_$��P�S��[��h�t�	�4��r�(��1df;
uڐk�o82����$c��{vBs �d)z/�������4�i��bn�wy�r�4B�W�7g��7���3��)N�~q=���o��ԧ<�gg������b�y�<�ѕ�47��D~l��`�����n��c����ʞ�Gɷ:��i�[���q[?�Ų�A��A�r^.c��������t¨V��|_�9������Fsƴ�)8�+ߌ9	ӵǁ"5o���Y��vM��Lxor��Ê���`v�egA1�й��-��5%���K�����      B       x�34���r��4��464�4����� <4      9      x������ � �         �   x�M�Kn�0D��)z���_N� R*+�b�����Jl	Y�q�CR?~=4�(B�O���BHq��r�o��f,Nf/���d�P��\���YG}b�Ư%83��lqOM�ao��a�8xC#Ϗ���R�T��l/9~���H�W�I��N��t���0�`��槎X��,����8�[3��G��i�I��2�'�?h���gf��P6      3   !  x�]Q[n�0�VN��h�ާjˉ �
l�[���S$)�'Q�)�-8.5��&b7�XɈ�l�9 v:C�
��\��'����Td̅��"����`{&o"9��oz�P��p�C����+�0Vb�RX�ex�������5�~8�0s�ѭx��9a~������b��N^rĪ��3��f�	��[.�P�8Ѥ�5���rY�j/�߄�P���e	���:������|��d�}B=MCKe�T���PĲ��E��ӡ,�jJs֓�j�;3���4���i� XV�      ;   �   x���	D1�G�,��\����X)`2(BI:'�*��Z,�6�y8��%�xD(�9v$��ev[S���4Wq0鯗�(�|�T�TZ�&��b�&�Rƽh|�4���l��^ʚG�[s`����?��!�      &   C  x�m�QO�0ǟ�O��M���6!���Udb���.��u��v���wvi�a���_ξ����u�}tU+;���*�Bׂ湕=��
�p;�&XD�#�-0@_O���V6���w�E��N�A�c�*� Z���SB����y����hnj��Xm]@/R�y�.�H~;%{#��1TGn�4�8�4h�������Њwgl̳��7*EaЂ֟�z��+�L�R�I��4�?9ύ�b�{*����B���`i�R�Ε��2��ifY�	�=8����2�%�a�xd�1}9;��bB*���>6�zQ��v����A{A|��o#��ف��
	�됝����d,ǊC��H%J:(�y"*F^P���,Q�Cm,�=�%�E�ֵ�G>���ܶg�}��D�'�4�A?�B�� %Jп�~%�:$g��E:�6F���"'cVd�Nj�D��Q*��ǔ�#�H�J�߰�0=O�bI�4�՘�wpz�)S�q�c�7rtP�Ř(Q�����z�t��~�<���4|_1}9���P�i;t.��I_#�D>K/XK�`G�.h�3Kv&�Ԓ�`;z�<�L�_�Ł      =      x�3��wQpr�sw������ 0�2      >   1   x�3�vtq�425021�44�4�2��	ur�t�[����b���� ���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      
      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �      .   �   x�]O�n�0<���_PpH��X����HH=E����1���݅��^�3��+P�M���$������J� ��Q����-���DB�j�X�6�=��=Maom7�ÀcnM���Mr�96c���uy��'�G%�Qqb;���^��Ƶ�LJN��Qcmpm��4�tw�ɒ�lq�ӿ��wv%�yM���&������WA,T<K�e� k�L��� ��b�k�      $      x������ � �      /   �   x�%��D!�I1+�����_�z�z������\���T�R�e%ղ-}҃Kz���v�k
(X�P�0l H�J@��*n���
��x|�0=�N4����z	�- Џ�@��|�RsT�w�<O0V)F	�d+�O��OZ�7^O�s��3�j�H.L��V�'�0aҒ	����g'�����Yꟳ R�!b+ r+!�� ��3�\?�      )   D   x�3�t��4�2�t�Ɯ~�@ʄ3�D�r:�i3NW�x ��
�,�,' ˒3828b@� ���            x������ � �      !   #   x�3�4202�50�54Q04�24E0����� ��      ,      x������ � �     