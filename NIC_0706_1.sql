PGDMP     !    (                x            NIC5    12.2    12.2    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    45490    NIC5    DATABASE     �   CREATE DATABASE "NIC5" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "NIC5";
                postgres    false            �            1259    45491    mpr_master_table    TABLE     �  CREATE TABLE public.mpr_master_table (
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
       public         heap    postgres    false            �            1259    45496    mpr_scheme_awcc    TABLE     S  CREATE TABLE public.mpr_scheme_awcc (
    no_of_icds_cenetres_devoid_of_own_building numeric(10,0) NOT NULL,
    no_of_new_icds_building_constructed numeric(10,0) NOT NULL,
    no_of_icds_centres_running_in_open_space numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 #   DROP TABLE public.mpr_scheme_awcc;
       public         heap    postgres    false    202            �            1259    45502    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    203            �           0    0    AWCC_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public.mpr_scheme_awcc.id_pk;
          public          postgres    false    204            �            1259    45504    mpr_scheme_baitarani    TABLE     �   CREATE TABLE public.mpr_scheme_baitarani (
    no_of_burning_ghats_taken_up numeric(10,0) NOT NULL,
    completed_till_date date NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_baitarani;
       public         heap    postgres    false    202            �            1259    45510    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    205            �           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public.mpr_scheme_baitarani.id_pk;
          public          postgres    false    206            �            1259    45512    mpr_scheme_dog    TABLE     h  CREATE TABLE public.mpr_scheme_dog (
    target_for_distribution_of_goats numeric(10,0) NOT NULL,
    no_of_goats_actually_distributed numeric(10,0) NOT NULL,
    no_of_beneficiaries_selected numeric(10,0) NOT NULL,
    no_of_beneficiaries_approved numeric(10,0) NOT NULL,
    location_code character varying(10) NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_dog;
       public         heap    postgres    false    202            �            1259    45517 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    207            �           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public.mpr_scheme_dog.id_pk;
          public          postgres    false    208            �            1259    45519    mpr_scheme_doptuhd    TABLE     �   CREATE TABLE public.mpr_scheme_doptuhd (
    no_of_power_tiller_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_doptuhd;
       public         heap    postgres    false    202            �            1259    45525    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    209            �           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public.mpr_scheme_doptuhd.id_pk;
          public          postgres    false    210            �            1259    45527    mpr_scheme_enrollment    TABLE     }  CREATE TABLE public.mpr_scheme_enrollment (
    gross_enrolment_ratio_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_primary numeric(10,0) NOT NULL,
    gross_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_enrollment;
       public         heap    postgres    false    202            �            1259    45533    ENROLLMENT_id_seq    SEQUENCE     |   CREATE SEQUENCE public."ENROLLMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ENROLLMENT_id_seq";
       public          postgres    false    211            �           0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public.mpr_scheme_enrollment.id_pk;
          public          postgres    false    212            �            1259    45535    mpr_scheme_foodpro    TABLE     �   CREATE TABLE public.mpr_scheme_foodpro (
    status_of_pocurement numeric(10,0) NOT NULL,
    target_of_pocurement numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_foodpro;
       public         heap    postgres    false    202            �            1259    45541    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    213            �           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public.mpr_scheme_foodpro.id_pk;
          public          postgres    false    214            �            1259    45543    mpr_scheme_gitanjali    TABLE     I  CREATE TABLE public.mpr_scheme_gitanjali (
    no_of_case_sanctioned_under_gitanjali numeric(10,0) NOT NULL,
    date_of_inception character varying(15) NOT NULL,
    no_of_houses_constructed_under_gitanjali numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_gitanjali;
       public         heap    postgres    false    202            �            1259    45549    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    215            �           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public.mpr_scheme_gitanjali.id_pk;
          public          postgres    false    216            �            1259    45551    mpr_scheme_immunisati    TABLE     �   CREATE TABLE public.mpr_scheme_immunisati (
    per_of_fully_immunised_child numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_immunisati;
       public         heap    postgres    false    202            �            1259    45557    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    217            �           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public.mpr_scheme_immunisati.id_pk;
          public          postgres    false    218            �            1259    45559    mpr_scheme_infantd    TABLE     �   CREATE TABLE public.mpr_scheme_infantd (
    total_no_of_infant_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_infantd;
       public         heap    postgres    false    202            �            1259    45565    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    219            �           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public.mpr_scheme_infantd.id_pk;
          public          postgres    false    220            �            1259    45567    mpr_scheme_inspection    TABLE       CREATE TABLE public.mpr_scheme_inspection (
    no_of_homes_inspected_by_senior_officers numeric(10,0) NOT NULL,
    designation_of_officers character varying(5) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_inspection;
       public         heap    postgres    false    202            �            1259    45573    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    221            �           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public.mpr_scheme_inspection.id_pk;
          public          postgres    false    222            �            1259    45575    mpr_scheme_instdel    TABLE     �   CREATE TABLE public.mpr_scheme_instdel (
    per_of_institutional_delivery numeric(52,0) NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_instdel;
       public         heap    postgres    false    202            �            1259    45581    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    223            �           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public.mpr_scheme_instdel.id_pk;
          public          postgres    false    224            �            1259    45583    mpr_scheme_jaldjalb    TABLE     N  CREATE TABLE public.mpr_scheme_jaldjalb (
    date_of_inspection character varying(15) NOT NULL,
    no_of_ponds_excavated_under_jal_dharo_jal_bharo numeric(10,0) NOT NULL,
    no_of_ponds_fish_production_started numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 '   DROP TABLE public.mpr_scheme_jaldjalb;
       public         heap    postgres    false    202            �            1259    45589    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    225            �           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public.mpr_scheme_jaldjalb.id_pk;
          public          postgres    false    226            �            1259    45591    mpr_scheme_kanyas    TABLE       CREATE TABLE public.mpr_scheme_kanyas (
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
       public         heap    postgres    false    202            �            1259    45597    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    227            �           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public.mpr_scheme_kanyas.id_pk;
          public          postgres    false    228            �            1259    45599    mpr_scheme_karmatirth    TABLE     �  CREATE TABLE public.mpr_scheme_karmatirth (
    no_of_karmatirtha_sanctioned numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_started numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_completed numeric(10,0) NOT NULL,
    no_of_karmatirth_operationalised numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_karmatirth;
       public         heap    postgres    false    202            �            1259    45605    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    229            �           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public.mpr_scheme_karmatirth.id_pk;
          public          postgres    false    230            �            1259    45607    mpr_scheme_kcc    TABLE     I  CREATE TABLE public.mpr_scheme_kcc (
    no_of_agricultrural_families_in_the_district numeric(10,0) NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(4,2) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_kcc;
       public         heap    postgres    false    202            �            1259    45613    KCC_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public."KCC_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KCC_id_pk_seq";
       public          postgres    false    231            �           0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public.mpr_scheme_kcc.id_pk;
          public          postgres    false    232            �            1259    45615    mpr_scheme_landpp    TABLE     �   CREATE TABLE public.mpr_scheme_landpp (
    no_of_land_permission_pending numeric(10,0) NOT NULL,
    projects_name character varying(30) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_landpp;
       public         heap    postgres    false    202            �            1259    45621    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    233            �           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public.mpr_scheme_landpp.id_pk;
          public          postgres    false    234            �            1259    45623    mpr_semitrans_login    TABLE       CREATE TABLE public.mpr_semitrans_login (
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
       public         heap    postgres    false            �            1259    45635    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    235            �           0    0    Login_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."Login_id_seq" OWNED BY public.mpr_semitrans_login.login_id_pk;
          public          postgres    false    236            �            1259    45637    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    235            �           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public.mpr_semitrans_login.user_type_id_fk;
          public          postgres    false    237            �            1259    45639    mpr_scheme_maternald    TABLE     �   CREATE TABLE public.mpr_scheme_maternald (
    total_no_of_maternal_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_maternald;
       public         heap    postgres    false    202            �            1259    45645    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    238            �           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public.mpr_scheme_maternald.id_pk;
          public          postgres    false    239            �            1259    45647    mpr_scheme_mci    TABLE     �   CREATE TABLE public.mpr_scheme_mci (
    percentage_of_malnourished_child numeric(2,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_mci;
       public         heap    postgres    false    202            �            1259    45653 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    240            �           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public.mpr_scheme_mci.id_pk;
          public          postgres    false    241            �            1259    45655    mpr_scheme_minoritys    TABLE     n  CREATE TABLE public.mpr_scheme_minoritys (
    target_for_scholarship_distribution_aikyashree numeric(10,0) NOT NULL,
    no_of_students_distributed_scholarship numeric(10,0) NOT NULL,
    no_of_application_uploaded_under_aikyashree_scholarship numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_minoritys;
       public         heap    postgres    false    202            �            1259    45661    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    242            �           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public.mpr_scheme_minoritys.id_pk;
          public          postgres    false    243            �            1259    45663    mpr_scheme_poe    TABLE     �   CREATE TABLE public.mpr_scheme_poe (
    target numeric(10,0) NOT NULL,
    production numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_poe;
       public         heap    postgres    false    202            �            1259    45669 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    244            �           0    0 
   POE_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."POE_id_seq" OWNED BY public.mpr_scheme_poe.id_pk;
          public          postgres    false    245            �            1259    45671    mpr_scheme_saboojshre    TABLE     <  CREATE TABLE public.mpr_scheme_saboojshre (
    no_of_children_born_since_inception_of_the_project_in_the_dist numeric(10,0) NOT NULL,
    no_of_tree_sapling_handed_over_to_the_new_born_children numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_saboojshre;
       public         heap    postgres    false    202            �            1259    45677    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    246            �           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public.mpr_scheme_saboojshre.id_pk;
          public          postgres    false    247            �            1259    45679    mpr_scheme_saboojs    TABLE        CREATE TABLE public.mpr_scheme_saboojs (
    target_for_distribution_of_cycles numeric(10,0) NOT NULL,
    cycle_distributed_till_date numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_saboojs;
       public         heap    postgres    false    202            �            1259    45685    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    248            �           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public.mpr_scheme_saboojs.id_pk;
          public          postgres    false    249            �            1259    45687    mpr_scheme_safedsavel    TABLE       CREATE TABLE public.mpr_scheme_safedsavel (
    no_of_accidents numeric(10,0) NOT NULL,
    no_of_death numeric(10,0) NOT NULL,
    no_of_insured_person numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_safedsavel;
       public         heap    postgres    false    202            �            1259    45693    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    250            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public.mpr_scheme_safedsavel.id_pk;
          public          postgres    false    251            �            1259    45695    mpr_scheme_samabythi    TABLE       CREATE TABLE public.mpr_scheme_samabythi (
    no_of_beneficiaries_provided_benefit_till_date numeric(10,0) NOT NULL,
    till_date character varying(15) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_samabythi;
       public         heap    postgres    false    202            �            1259    45701    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    252            �           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public.mpr_scheme_samabythi.id_pk;
          public          postgres    false    253            �            1259    45703    mpr_scheme_sikshas    TABLE     m  CREATE TABLE public.mpr_scheme_sikshas (
    targetted_no_of_sc_st_student_under_sikshashree numeric(10,0) NOT NULL,
    no_of_students_getting_benefit_under_sikshashree numeric(10,0) NOT NULL,
    no_of_applications_uploaded_under_sikshashree numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_sikshas;
       public         heap    postgres    false    202            �            1259    45709    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    254            �           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public.mpr_scheme_sikshas.id_pk;
          public          postgres    false    255                        1259    45711    mpr_scheme_svskp    TABLE     	  CREATE TABLE public.mpr_scheme_svskp (
    no_of_project_sponsored_under_svskp numeric(10,0) NOT NULL,
    no_of_project_sanctioned_under_svskp numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_svskp;
       public         heap    postgres    false    202                       1259    45717    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    256            �           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public.mpr_scheme_svskp.id_pk;
          public          postgres    false    257                       1259    45719    mpr_scheme_yubas    TABLE     /  CREATE TABLE public.mpr_scheme_yubas (
    no_of_unemployed_youth_registered_under_yubashree numeric(10,0) NOT NULL,
    no_of_unemployed_registered_youth_getting_monthly_assistance numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_yubas;
       public         heap    postgres    false    202                       1259    45725    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    258            �           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public.mpr_scheme_yubas.id_pk;
          public          postgres    false    259                       1259    45727    mpr_scheme_anand    TABLE       CREATE TABLE public.mpr_scheme_anand (
    total_no_of_shgs_formed_in_the_district numeric(10,0) NOT NULL,
    total_no_of_shgs_got_credit_linkage numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_anand;
       public         heap    postgres    false    202                       1259    45733    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    260            �           0    0    anand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.anand_id_seq OWNED BY public.mpr_scheme_anand.id_pk;
          public          postgres    false    261                       1259    45735    mpr_master_attri_table    TABLE     �   CREATE TABLE public.mpr_master_attri_table (
    attri_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    attri_name character varying(100) NOT NULL,
    actual_name character varying(100) NOT NULL
);
 *   DROP TABLE public.mpr_master_attri_table;
       public         heap    postgres    false                       1259    45739    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    262            �           0    0    att_table_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.mpr_master_attri_table.attri_id_pk;
          public          postgres    false    263                       1259    45741    mpr_trans_audit_log    TABLE     �  CREATE TABLE public.mpr_trans_audit_log (
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
       public         heap    postgres    false            	           1259    45745    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    264            �           0    0    audit_log_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.mpr_trans_audit_log.audit_id_pk;
          public          postgres    false    265            
           1259    45747    mpr_semitrans_check_first_user    TABLE     u  CREATE TABLE public.mpr_semitrans_check_first_user (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer NOT NULL,
    CONSTRAINT check_first_user_check CHECK ((check_if_first_user = ANY (ARRAY[0, 1]))),
    CONSTRAINT check_profile_updated_once_check CHECK ((check_profile_updated_once = ANY (ARRAY[0, 1])))
);
 2   DROP TABLE public.mpr_semitrans_check_first_user;
       public         heap    postgres    false                       1259    45752 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    266            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public.mpr_semitrans_check_first_user.check_if_first_user;
          public          postgres    false    267                       1259    45754    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    266            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public.mpr_semitrans_check_first_user.user_id_pk;
          public          postgres    false    268                       1259    45756 !   mpr_semitrans_dba_financial_range    TABLE     %  CREATE TABLE public.mpr_semitrans_dba_financial_range (
    dba_financial_range_table_id_pk bigint NOT NULL,
    financial_year_range character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    CONSTRAINT dba_month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric)))
);
 5   DROP TABLE public.mpr_semitrans_dba_financial_range;
       public         heap    postgres    false                       1259    45760 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq;
       public          postgres    false    269            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.mpr_semitrans_dba_financial_range.dba_financial_range_table_id_pk;
          public          postgres    false    270                       1259    45762    mpr_master_designation    TABLE     �   CREATE TABLE public.mpr_master_designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_designation;
       public         heap    postgres    false                       1259    45765    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    271            �           0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.mpr_master_designation.desig_id_pk;
          public          postgres    false    272                       1259    45767    mpr_scheme_doc    TABLE       CREATE TABLE public.mpr_scheme_doc (
    target_for_distribution_of_poultry numeric(10,0) NOT NULL,
    no_of_poultry_actually_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_doc;
       public         heap    postgres    false    202                       1259    45773 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    273            �           0    0 
   doc_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.doc_id_seq OWNED BY public.mpr_scheme_doc.id_pk;
          public          postgres    false    274                       1259    45775    mpr_master_financial_year    TABLE     �   CREATE TABLE public.mpr_master_financial_year (
    financial_year_master_id_pk bigint NOT NULL,
    year_type character varying(50) NOT NULL
);
 -   DROP TABLE public.mpr_master_financial_year;
       public         heap    postgres    false                       1259    45778 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq;
       public          postgres    false    275            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq OWNED BY public.mpr_master_financial_year.financial_year_master_id_pk;
          public          postgres    false    276                       1259    45780    mpr_scheme_kishanm    TABLE     ,  CREATE TABLE public.mpr_scheme_kishanm (
    no_of_kishan_mandis_sanctioned numeric(10,0) NOT NULL,
    no_of_kishan_mandis_operational numeric(10,0) NOT NULL,
    operationality numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_kishanm;
       public         heap    postgres    false    202                       1259    45786    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    277            �           0    0    kishanm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public.mpr_scheme_kishanm.id_pk;
          public          postgres    false    278                       1259    45788    mpr_master_location_data    TABLE     �   CREATE TABLE public.mpr_master_location_data (
    location_area character varying(100) NOT NULL,
    location_code character varying(12) NOT NULL,
    location_id_pk bigint NOT NULL
);
 ,   DROP TABLE public.mpr_master_location_data;
       public         heap    postgres    false                       1259    45791     location_data_location_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.location_data_location_id_pk_seq;
       public          postgres    false    279            �           0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.mpr_master_location_data.location_id_pk;
          public          postgres    false    280                       1259    45793    mpr_trans_meeting_schedule    TABLE     �   CREATE TABLE public.mpr_trans_meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16) NOT NULL,
    end_time character varying(16) NOT NULL
);
 .   DROP TABLE public.mpr_trans_meeting_schedule;
       public         heap    postgres    false                       1259    45796    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    281            �           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.mpr_trans_meeting_schedule.meeting_id_pk;
          public          postgres    false    282                       1259    45798    mpr_scheme_mgnregs    TABLE     �  CREATE TABLE public.mpr_scheme_mgnregs (
    no_of_person_days_generated_under_mgnregs numeric(10,0) NOT NULL,
    average_no_of_persondays_generated_per_household numeric(10,0) NOT NULL,
    expenditure_of_the_session numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_mgnregs;
       public         heap    postgres    false    202                       1259    45804    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    283            �           0    0    mgnres_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public.mpr_scheme_mgnregs.id_pk;
          public          postgres    false    284                       1259    45806    mpr_master_block    TABLE     �   CREATE TABLE public.mpr_master_block (
    block_id_pk bigint NOT NULL,
    block_name character varying(50) NOT NULL,
    block_lg_code bigint NOT NULL,
    subdiv_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.mpr_master_block;
       public         heap    postgres    false                       1259    45811    mpr_master_dashboard_info    TABLE     �  CREATE TABLE public.mpr_master_dashboard_info (
    dashboard_id_pk bigint NOT NULL,
    sch_tab_name character varying(50) NOT NULL,
    scheme_name character varying(50) NOT NULL,
    attr_target character varying(50) NOT NULL,
    attr_target_name character varying(50) NOT NULL,
    attri_progress character varying(50) NOT NULL,
    attri_progress_name character varying(50) NOT NULL
);
 -   DROP TABLE public.mpr_master_dashboard_info;
       public         heap    postgres    false                       1259    45814    mpr_master_department    TABLE     �   CREATE TABLE public.mpr_master_department (
    dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    short_name character varying(15) NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL
);
 )   DROP TABLE public.mpr_master_department;
       public         heap    postgres    false                        1259    45818    mpr_master_district    TABLE     �   CREATE TABLE public.mpr_master_district (
    district_id_pk bigint NOT NULL,
    district_name character varying(50) NOT NULL,
    state_id_fk bigint DEFAULT 0 NOT NULL,
    dist_lg_code bigint NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 '   DROP TABLE public.mpr_master_district;
       public         heap    postgres    false            !           1259    45823 &   mpr_master_district_district_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_district_district_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.mpr_master_district_district_id_pk_seq;
       public          postgres    false    288            �           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.mpr_master_district_district_id_pk_seq OWNED BY public.mpr_master_district.district_id_pk;
          public          postgres    false    289            "           1259    45825    mpr_master_office    TABLE     }   CREATE TABLE public.mpr_master_office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
 %   DROP TABLE public.mpr_master_office;
       public         heap    postgres    false            #           1259    45828    mpr_master_scheme_dept    TABLE     �   CREATE TABLE public.mpr_master_scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_scheme_dept;
       public         heap    postgres    false            $           1259    45832    mpr_master_scheme_table    TABLE     �   CREATE TABLE public.mpr_master_scheme_table (
    scheme_id_pk bigint NOT NULL,
    short_name character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    financial_year_id_fk bigint NOT NULL,
    desig_id_fk bigint NOT NULL
);
 +   DROP TABLE public.mpr_master_scheme_table;
       public         heap    postgres    false            %           1259    45835    mpr_master_state    TABLE     y   CREATE TABLE public.mpr_master_state (
    state_id_pk bigint NOT NULL,
    state_name character varying(50) NOT NULL
);
 $   DROP TABLE public.mpr_master_state;
       public         heap    postgres    false            &           1259    45838     mpr_master_state_state_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_state_state_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_master_state_state_id_pk_seq;
       public          postgres    false    293            �           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_master_state_state_id_pk_seq OWNED BY public.mpr_master_state.state_id_pk;
          public          postgres    false    294            '           1259    45840    mpr_master_subdiv    TABLE     �   CREATE TABLE public.mpr_master_subdiv (
    sub_div_id_pk bigint NOT NULL,
    sub_div_name character varying(50) NOT NULL,
    sub_div_lg_code bigint NOT NULL,
    district_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.mpr_master_subdiv;
       public         heap    postgres    false            (           1259    45845 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq;
       public          postgres    false    295            �           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq OWNED BY public.mpr_master_subdiv.sub_div_id_pk;
          public          postgres    false    296            )           1259    45847    mpr_scheme_kcc_backup    TABLE     
  CREATE TABLE public.mpr_scheme_kcc_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_agricultrural_families_in_the_district numeric NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric NOT NULL,
    kcc_coverage_percentage numeric NOT NULL,
    location_code character varying NOT NULL
);
 )   DROP TABLE public.mpr_scheme_kcc_backup;
       public         heap    postgres    false            *           1259    45853    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq;
       public          postgres    false    297            �           0    0    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq OWNED BY public.mpr_scheme_kcc_backup.id_pk;
          public          postgres    false    298            +           1259    45855    mpr_scheme_kcc_draft    TABLE     	  CREATE TABLE public.mpr_scheme_kcc_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_agricultrural_families_in_the_district numeric NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric NOT NULL,
    kcc_coverage_percentage numeric NOT NULL,
    location_code character varying NOT NULL
);
 (   DROP TABLE public.mpr_scheme_kcc_draft;
       public         heap    postgres    false            ,           1259    45861    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq;
       public          postgres    false    299            �           0    0    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq OWNED BY public.mpr_scheme_kcc_draft.id_pk;
          public          postgres    false    300            -           1259    45863    mpr_scheme_kishanm_backup    TABLE     �  CREATE TABLE public.mpr_scheme_kishanm_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_kishan_mandis_sanctioned numeric NOT NULL,
    no_of_kishan_mandis_operational numeric NOT NULL,
    operationality numeric NOT NULL,
    location_code character varying NOT NULL
);
 -   DROP TABLE public.mpr_scheme_kishanm_backup;
       public         heap    postgres    false            .           1259    45869 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq;
       public          postgres    false    301            �           0    0 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq OWNED BY public.mpr_scheme_kishanm_backup.id_pk;
          public          postgres    false    302            /           1259    45871    mpr_scheme_kishanm_draft    TABLE     �  CREATE TABLE public.mpr_scheme_kishanm_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_kishan_mandis_sanctioned numeric NOT NULL,
    no_of_kishan_mandis_operational numeric NOT NULL,
    operationality numeric NOT NULL,
    location_code character varying NOT NULL
);
 ,   DROP TABLE public.mpr_scheme_kishanm_draft;
       public         heap    postgres    false            0           1259    45877 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq;
       public          postgres    false    303            �           0    0 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq OWNED BY public.mpr_scheme_kishanm_draft.id_pk;
          public          postgres    false    304            1           1259    45879    mpr_semitrans_location_mapping    TABLE     �   CREATE TABLE public.mpr_semitrans_location_mapping (
    location_mapping_id_pk bigint NOT NULL,
    user_type_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 2   DROP TABLE public.mpr_semitrans_location_mapping;
       public         heap    postgres    false            2           1259    45884 9   mpr_semitrans_location_mapping_location_mapping_id_pk_seq    SEQUENCE       ALTER TABLE public.mpr_semitrans_location_mapping ALTER COLUMN location_mapping_id_pk ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.mpr_semitrans_location_mapping_location_mapping_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    305            3           1259    45886    mpr_semitrans_privilege    TABLE       CREATE TABLE public.mpr_semitrans_privilege (
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
       public         heap    postgres    false            4           1259    45894    mpr_semitrans_profile    TABLE     �  CREATE TABLE public.mpr_semitrans_profile (
    username character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    f_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    m_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    l_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    mobile numeric(10,0) DEFAULT 0 NOT NULL,
    email character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    district character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    image text,
    profile_id_pk bigint NOT NULL,
    desig character varying(50) NOT NULL,
    office character varying(50) NOT NULL,
    dept character varying(50) NOT NULL
);
 )   DROP TABLE public.mpr_semitrans_profile;
       public         heap    postgres    false            5           1259    45907    mpr_semitrans_user_privilege    TABLE     X  CREATE TABLE public.mpr_semitrans_user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT user_privilege_active_check CHECK ((((active_status)::numeric >= (0)::numeric) AND ((active_status)::numeric <= (1)::numeric)))
);
 0   DROP TABLE public.mpr_semitrans_user_privilege;
       public         heap    postgres    false            6           1259    45911    mpr_semitrans_user_type    TABLE       CREATE TABLE public.mpr_semitrans_user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(50) NOT NULL,
    active_status numeric NOT NULL,
    CONSTRAINT user_type_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 +   DROP TABLE public.mpr_semitrans_user_type;
       public         heap    postgres    false            7           1259    45918    mpr_trans_notification    TABLE     �  CREATE TABLE public.mpr_trans_notification (
    audience_id character varying(10) NOT NULL,
    notification_text character varying(50) NOT NULL,
    notification_id_pk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    notification_head text NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT notification_active_check CHECK (((active_status >= 0) AND (active_status <= 1)))
);
 *   DROP TABLE public.mpr_trans_notification;
       public         heap    postgres    false            8           1259    45925    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    311            �           0    0    notifications_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.mpr_trans_notification.notification_id_pk;
          public          postgres    false    312            9           1259    45927    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    287            �           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.mpr_master_department.dept_id_pk;
          public          postgres    false    313            :           1259    45929    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    290            �           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.mpr_master_office.office_id_pk;
          public          postgres    false    314            ;           1259    45931    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    308            �           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.mpr_semitrans_profile.profile_id_pk;
          public          postgres    false    315            <           1259    45933 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    291            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     r   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.mpr_master_scheme_dept.scheme_dept_id_pk;
          public          postgres    false    316            =           1259    45935    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    292            �           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.mpr_master_scheme_table.scheme_id_pk;
          public          postgres    false    317            >           1259    45937    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            �           0    0    table_id_pk_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public.mpr_master_table.id_pk;
          public          postgres    false    318            ?           1259    45939 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    309            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.privilege_id_fk;
          public          postgres    false    319            @           1259    45941 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    309            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.user_type_id_fk;
          public          postgres    false    320            b           2604    45943 "   mpr_master_attri_table attri_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_attri_table ALTER COLUMN attri_id_pk SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_attri_table ALTER COLUMN attri_id_pk DROP DEFAULT;
       public          postgres    false    263    262            }           2604    45944     mpr_master_department dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_department ALTER COLUMN dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 O   ALTER TABLE public.mpr_master_department ALTER COLUMN dept_id_pk DROP DEFAULT;
       public          postgres    false    313    287            j           2604    45945 "   mpr_master_designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    272    271            �           2604    45946 "   mpr_master_district district_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_district ALTER COLUMN district_id_pk SET DEFAULT nextval('public.mpr_master_district_district_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_district ALTER COLUMN district_id_pk DROP DEFAULT;
       public          postgres    false    289    288            o           2604    45947 5   mpr_master_financial_year financial_year_master_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk SET DEFAULT nextval('public.financial_year_master_financial_year_master_id_pk_seq'::regclass);
 d   ALTER TABLE public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk DROP DEFAULT;
       public          postgres    false    276    275            t           2604    45948 '   mpr_master_location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 V   ALTER TABLE public.mpr_master_location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    280    279            �           2604    45949    mpr_master_office office_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_master_office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    314    290            �           2604    45950 (   mpr_master_scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 W   ALTER TABLE public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    316    291            �           2604    45951 $   mpr_master_scheme_table scheme_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 S   ALTER TABLE public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    317    292            �           2604    45952    mpr_master_state state_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_state ALTER COLUMN state_id_pk SET DEFAULT nextval('public.mpr_master_state_state_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_master_state ALTER COLUMN state_id_pk DROP DEFAULT;
       public          postgres    false    294    293            �           2604    45953    mpr_master_subdiv sub_div_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk SET DEFAULT nextval('public.mpr_master_subdiv_sub_div_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk DROP DEFAULT;
       public          postgres    false    296    295            �           2604    45954    mpr_master_table id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_master_table ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 E   ALTER TABLE public.mpr_master_table ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    318    202            ^           2604    45955    mpr_scheme_anand id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_anand ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 E   ALTER TABLE public.mpr_scheme_anand ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    260    261            �           2604    45956    mpr_scheme_awcc id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_awcc ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 D   ALTER TABLE public.mpr_scheme_awcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    203    204            �           2604    45957    mpr_scheme_baitarani id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_baitarani ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_baitarani ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    206    205            l           2604    45958    mpr_scheme_doc id_pk    DEFAULT     n   ALTER TABLE ONLY public.mpr_scheme_doc ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 C   ALTER TABLE public.mpr_scheme_doc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    274    273            �           2604    45959    mpr_scheme_dog id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_dog ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_dog ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    208    207            �           2604    45960    mpr_scheme_doptuhd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_doptuhd ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_doptuhd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    209    210            �           2604    45961    mpr_scheme_enrollment id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_enrollment ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_enrollment ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    212    211            �           2604    45962    mpr_scheme_foodpro id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_foodpro ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_foodpro ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    213    214                       2604    45963    mpr_scheme_gitanjali id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_gitanjali ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_gitanjali ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    216    215                       2604    45964    mpr_scheme_immunisati id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_immunisati ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    217    218                       2604    45965    mpr_scheme_infantd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_infantd ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_infantd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    219    220                       2604    45966    mpr_scheme_inspection id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_inspection ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_inspection ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    221    222                       2604    45967    mpr_scheme_instdel id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_instdel ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_instdel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    223    224                       2604    45968    mpr_scheme_jaldjalb id_pk    DEFAULT     z   ALTER TABLE ONLY public.mpr_scheme_jaldjalb ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 H   ALTER TABLE public.mpr_scheme_jaldjalb ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    226    225                       2604    45969    mpr_scheme_kanyas id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kanyas ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_kanyas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    228    227                       2604    45970    mpr_scheme_karmatirth id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_karmatirth ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_karmatirth ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    230    229            #           2604    45971    mpr_scheme_kcc id_pk    DEFAULT     s   ALTER TABLE ONLY public.mpr_scheme_kcc ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_kcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    232    231            �           2604    45972    mpr_scheme_kcc_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kcc_backup_id_pk_seq'::regclass);
 J   ALTER TABLE public.mpr_scheme_kcc_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    298    297            �           2604    45973    mpr_scheme_kcc_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kcc_draft_id_pk_seq'::regclass);
 I   ALTER TABLE public.mpr_scheme_kcc_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    300    299            q           2604    45974    mpr_scheme_kishanm id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kishanm ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_kishanm ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    277    278            �           2604    45975    mpr_scheme_kishanm_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kishanm_backup_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_scheme_kishanm_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    302    301            �           2604    45976    mpr_scheme_kishanm_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kishanm_draft_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_scheme_kishanm_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    304    303            '           2604    45977    mpr_scheme_landpp id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_landpp ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_landpp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    233    234            2           2604    45978    mpr_scheme_maternald id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_maternald ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_maternald ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    239    238            6           2604    45979    mpr_scheme_mci id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_mci ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_mci ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    240    241            w           2604    45980    mpr_scheme_mgnregs id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_mgnregs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    283    284            :           2604    45981    mpr_scheme_minoritys id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_minoritys ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_minoritys ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    242    243            >           2604    45982    mpr_scheme_poe id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_poe ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_poe ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    244    245            F           2604    45983    mpr_scheme_saboojs id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_saboojs ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_saboojs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    249    248            B           2604    45984    mpr_scheme_saboojshre id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_saboojshre ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_saboojshre ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    246    247            J           2604    45985    mpr_scheme_safedsavel id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_safedsavel ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_safedsavel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    251    250            N           2604    45986    mpr_scheme_samabythi id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_samabythi ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_samabythi ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    253    252            R           2604    45987    mpr_scheme_sikshas id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_sikshas ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_sikshas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    254    255            V           2604    45988    mpr_scheme_svskp id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_svskp ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_svskp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    257            Z           2604    45989    mpr_scheme_yubas id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_yubas ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_yubas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    258    259            e           2604    45990 )   mpr_semitrans_check_first_user user_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 X   ALTER TABLE public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    268    266            h           2604    45991 A   mpr_semitrans_dba_financial_range dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 p   ALTER TABLE public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    270    269            /           2604    45992    mpr_semitrans_login login_id_pk    DEFAULT     }   ALTER TABLE ONLY public.mpr_semitrans_login ALTER COLUMN login_id_pk SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 N   ALTER TABLE public.mpr_semitrans_login ALTER COLUMN login_id_pk DROP DEFAULT;
       public          postgres    false    236    235            �           2604    45993 #   mpr_semitrans_profile profile_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_profile ALTER COLUMN profile_id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_semitrans_profile ALTER COLUMN profile_id_pk DROP DEFAULT;
       public          postgres    false    315    308            d           2604    45994    mpr_trans_audit_log audit_id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_trans_audit_log ALTER COLUMN audit_id_pk SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 N   ALTER TABLE public.mpr_trans_audit_log ALTER COLUMN audit_id_pk DROP DEFAULT;
       public          postgres    false    265    264            u           2604    45995 (   mpr_trans_meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 W   ALTER TABLE public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    282    281            �           2604    45996 )   mpr_trans_notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 X   ALTER TABLE public.mpr_trans_notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    312    311            J          0    45735    mpr_master_attri_table 
   TABLE DATA           d   COPY public.mpr_master_attri_table (attri_id_pk, scheme_id_fk, attri_name, actual_name) FROM stdin;
    public          postgres    false    262    �      a          0    45806    mpr_master_block 
   TABLE DATA           p   COPY public.mpr_master_block (block_id_pk, block_name, block_lg_code, subdiv_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    285   ��      b          0    45811    mpr_master_dashboard_info 
   TABLE DATA           �   COPY public.mpr_master_dashboard_info (dashboard_id_pk, sch_tab_name, scheme_name, attr_target, attr_target_name, attri_progress, attri_progress_name) FROM stdin;
    public          postgres    false    286   ��      c          0    45814    mpr_master_department 
   TABLE DATA           `   COPY public.mpr_master_department (dept_id_pk, dept_name, short_name, office_id_fk) FROM stdin;
    public          postgres    false    287   ��      S          0    45762    mpr_master_designation 
   TABLE DATA           U   COPY public.mpr_master_designation (desig_id_pk, desig_name, dept_id_fk) FROM stdin;
    public          postgres    false    271   �      d          0    45818    mpr_master_district 
   TABLE DATA           w   COPY public.mpr_master_district (district_id_pk, district_name, state_id_fk, dist_lg_code, location_id_fk) FROM stdin;
    public          postgres    false    288   i�      W          0    45775    mpr_master_financial_year 
   TABLE DATA           [   COPY public.mpr_master_financial_year (financial_year_master_id_pk, year_type) FROM stdin;
    public          postgres    false    275   ��      [          0    45788    mpr_master_location_data 
   TABLE DATA           `   COPY public.mpr_master_location_data (location_area, location_code, location_id_pk) FROM stdin;
    public          postgres    false    279   ��      f          0    45825    mpr_master_office 
   TABLE DATA           F   COPY public.mpr_master_office (office_id_pk, office_name) FROM stdin;
    public          postgres    false    290   ��      g          0    45828    mpr_master_scheme_dept 
   TABLE DATA           ]   COPY public.mpr_master_scheme_dept (scheme_dept_id_pk, scheme_id_fk, dept_id_fk) FROM stdin;
    public          postgres    false    291   �      h          0    45832    mpr_master_scheme_table 
   TABLE DATA           t   COPY public.mpr_master_scheme_table (scheme_id_pk, short_name, name, financial_year_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    292   �      i          0    45835    mpr_master_state 
   TABLE DATA           C   COPY public.mpr_master_state (state_id_pk, state_name) FROM stdin;
    public          postgres    false    293   ��      k          0    45840    mpr_master_subdiv 
   TABLE DATA           y   COPY public.mpr_master_subdiv (sub_div_id_pk, sub_div_name, sub_div_lg_code, district_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    295   ��                0    45491    mpr_master_table 
   TABLE DATA           l   COPY public.mpr_master_table (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at) FROM stdin;
    public          postgres    false    202   �      H          0    45727    mpr_scheme_anand 
   TABLE DATA           �   COPY public.mpr_scheme_anand (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_shgs_formed_in_the_district, total_no_of_shgs_got_credit_linkage, location_code) FROM stdin;
    public          postgres    false    260   �                0    45496    mpr_scheme_awcc 
   TABLE DATA           �   COPY public.mpr_scheme_awcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_icds_cenetres_devoid_of_own_building, no_of_new_icds_building_constructed, no_of_icds_centres_running_in_open_space, location_code) FROM stdin;
    public          postgres    false    203   ;�                0    45504    mpr_scheme_baitarani 
   TABLE DATA           �   COPY public.mpr_scheme_baitarani (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_burning_ghats_taken_up, completed_till_date, location_code) FROM stdin;
    public          postgres    false    205   X�      U          0    45767    mpr_scheme_doc 
   TABLE DATA           �   COPY public.mpr_scheme_doc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_poultry, no_of_poultry_actually_distributed, location_code) FROM stdin;
    public          postgres    false    273   u�                0    45512    mpr_scheme_dog 
   TABLE DATA           �   COPY public.mpr_scheme_dog (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_goats, no_of_goats_actually_distributed, no_of_beneficiaries_selected, no_of_beneficiaries_approved, location_code) FROM stdin;
    public          postgres    false    207   ��                0    45519    mpr_scheme_doptuhd 
   TABLE DATA           �   COPY public.mpr_scheme_doptuhd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_power_tiller_distributed, location_code) FROM stdin;
    public          postgres    false    209   ��                0    45527    mpr_scheme_enrollment 
   TABLE DATA             COPY public.mpr_scheme_enrollment (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, gross_enrolment_ratio_primary, net_enrolment_ratio_primary, gross_enrolment_ratio_upper_primary, net_enrolment_ratio_upper_primary, location_code) FROM stdin;
    public          postgres    false    211   ��                0    45535    mpr_scheme_foodpro 
   TABLE DATA           �   COPY public.mpr_scheme_foodpro (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, status_of_pocurement, target_of_pocurement, location_code) FROM stdin;
    public          postgres    false    213   ��                0    45543    mpr_scheme_gitanjali 
   TABLE DATA           �   COPY public.mpr_scheme_gitanjali (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_case_sanctioned_under_gitanjali, date_of_inception, no_of_houses_constructed_under_gitanjali, location_code) FROM stdin;
    public          postgres    false    215                    0    45551    mpr_scheme_immunisati 
   TABLE DATA           �   COPY public.mpr_scheme_immunisati (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_fully_immunised_child, location_code) FROM stdin;
    public          postgres    false    217   #                 0    45559    mpr_scheme_infantd 
   TABLE DATA           �   COPY public.mpr_scheme_infantd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_infant_death, location_code) FROM stdin;
    public          postgres    false    219   @       !          0    45567    mpr_scheme_inspection 
   TABLE DATA           �   COPY public.mpr_scheme_inspection (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_homes_inspected_by_senior_officers, designation_of_officers, location_code) FROM stdin;
    public          postgres    false    221   ]       #          0    45575    mpr_scheme_instdel 
   TABLE DATA           �   COPY public.mpr_scheme_instdel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_institutional_delivery, location_code) FROM stdin;
    public          postgres    false    223   z       %          0    45583    mpr_scheme_jaldjalb 
   TABLE DATA           �   COPY public.mpr_scheme_jaldjalb (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, date_of_inspection, no_of_ponds_excavated_under_jal_dharo_jal_bharo, no_of_ponds_fish_production_started, location_code) FROM stdin;
    public          postgres    false    225   �       '          0    45591    mpr_scheme_kanyas 
   TABLE DATA           `  COPY public.mpr_scheme_kanyas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_k1_cases_application_received, no_of_k1_cases_application_sanctioned, no_of_k1_cases_application_disbursed, no_of_k2_cases_application_received, no_of_k2_cases_application_sanctioned, no_of_k2_cases_application_disbursed, location_code) FROM stdin;
    public          postgres    false    227   �       )          0    45599    mpr_scheme_karmatirth 
   TABLE DATA           &  COPY public.mpr_scheme_karmatirth (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_karmatirtha_sanctioned, no_of_karmatirtha_for_which_construction_started, no_of_karmatirtha_for_which_construction_completed, no_of_karmatirth_operationalised, location_code) FROM stdin;
    public          postgres    false    229   �       +          0    45607    mpr_scheme_kcc 
   TABLE DATA           �   COPY public.mpr_scheme_kcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    231   �       m          0    45847    mpr_scheme_kcc_backup 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    297   J      o          0    45855    mpr_scheme_kcc_draft 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    299   �      Y          0    45780    mpr_scheme_kishanm 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    277   �      q          0    45863    mpr_scheme_kishanm_backup 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    301         s          0    45871    mpr_scheme_kishanm_draft 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    303   /      -          0    45615    mpr_scheme_landpp 
   TABLE DATA           �   COPY public.mpr_scheme_landpp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_land_permission_pending, projects_name, location_code) FROM stdin;
    public          postgres    false    233   L      2          0    45639    mpr_scheme_maternald 
   TABLE DATA           �   COPY public.mpr_scheme_maternald (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_maternal_death, location_code) FROM stdin;
    public          postgres    false    238   i      4          0    45647    mpr_scheme_mci 
   TABLE DATA           �   COPY public.mpr_scheme_mci (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, percentage_of_malnourished_child, location_code) FROM stdin;
    public          postgres    false    240   �      _          0    45798    mpr_scheme_mgnregs 
   TABLE DATA             COPY public.mpr_scheme_mgnregs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    283   �      6          0    45655    mpr_scheme_minoritys 
   TABLE DATA             COPY public.mpr_scheme_minoritys (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_scholarship_distribution_aikyashree, no_of_students_distributed_scholarship, no_of_application_uploaded_under_aikyashree_scholarship, location_code) FROM stdin;
    public          postgres    false    242   �      8          0    45663    mpr_scheme_poe 
   TABLE DATA           �   COPY public.mpr_scheme_poe (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target, production, location_code) FROM stdin;
    public          postgres    false    244   �      <          0    45679    mpr_scheme_saboojs 
   TABLE DATA           �   COPY public.mpr_scheme_saboojs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_cycles, cycle_distributed_till_date, location_code) FROM stdin;
    public          postgres    false    248   �      :          0    45671    mpr_scheme_saboojshre 
   TABLE DATA           �   COPY public.mpr_scheme_saboojshre (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_children_born_since_inception_of_the_project_in_the_dist, no_of_tree_sapling_handed_over_to_the_new_born_children, location_code) FROM stdin;
    public          postgres    false    246         >          0    45687    mpr_scheme_safedsavel 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_accidents, no_of_death, no_of_insured_person, location_code) FROM stdin;
    public          postgres    false    250   4      @          0    45695    mpr_scheme_samabythi 
   TABLE DATA           �   COPY public.mpr_scheme_samabythi (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_beneficiaries_provided_benefit_till_date, till_date, location_code) FROM stdin;
    public          postgres    false    252   Q      B          0    45703    mpr_scheme_sikshas 
   TABLE DATA             COPY public.mpr_scheme_sikshas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, targetted_no_of_sc_st_student_under_sikshashree, no_of_students_getting_benefit_under_sikshashree, no_of_applications_uploaded_under_sikshashree, location_code) FROM stdin;
    public          postgres    false    254   n      D          0    45711    mpr_scheme_svskp 
   TABLE DATA           �   COPY public.mpr_scheme_svskp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_project_sponsored_under_svskp, no_of_project_sanctioned_under_svskp, location_code) FROM stdin;
    public          postgres    false    256   �      F          0    45719    mpr_scheme_yubas 
   TABLE DATA           �   COPY public.mpr_scheme_yubas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_unemployed_youth_registered_under_yubashree, no_of_unemployed_registered_youth_getting_monthly_assistance, location_code) FROM stdin;
    public          postgres    false    258   �      N          0    45747    mpr_semitrans_check_first_user 
   TABLE DATA           u   COPY public.mpr_semitrans_check_first_user (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    266   �      Q          0    45756 !   mpr_semitrans_dba_financial_range 
   TABLE DATA           y   COPY public.mpr_semitrans_dba_financial_range (dba_financial_range_table_id_pk, financial_year_range, month) FROM stdin;
    public          postgres    false    269   �      u          0    45879    mpr_semitrans_location_mapping 
   TABLE DATA           q   COPY public.mpr_semitrans_location_mapping (location_mapping_id_pk, user_type_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    305         /          0    45623    mpr_semitrans_login 
   TABLE DATA           �   COPY public.mpr_semitrans_login (username, password, user_type_id_fk, location_code, login_id_pk, active_status, dept_id_fk, office_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    235   �      w          0    45886    mpr_semitrans_privilege 
   TABLE DATA           �   COPY public.mpr_semitrans_privilege (privilege_id_pk, parent, link, "order", page_name, active_status, view_sidebar) FROM stdin;
    public          postgres    false    307   !      x          0    45894    mpr_semitrans_profile 
   TABLE DATA           �   COPY public.mpr_semitrans_profile (username, f_name, m_name, l_name, mobile, email, district, image, profile_id_pk, desig, office, dept) FROM stdin;
    public          postgres    false    308   	      y          0    45907    mpr_semitrans_user_privilege 
   TABLE DATA           x   COPY public.mpr_semitrans_user_privilege (user_priv_id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    309   5�      z          0    45911    mpr_semitrans_user_type 
   TABLE DATA           X   COPY public.mpr_semitrans_user_type (user_type_id_pk, desig, active_status) FROM stdin;
    public          postgres    false    310   �      L          0    45741    mpr_trans_audit_log 
   TABLE DATA           �   COPY public.mpr_trans_audit_log (section, action, request, comment, ip_addr, audit_id_pk, login_id_fk, "timestamp") FROM stdin;
    public          postgres    false    264   ��      ]          0    45793    mpr_trans_meeting_schedule 
   TABLE DATA           Y   COPY public.mpr_trans_meeting_schedule (meeting_id_pk, start_time, end_time) FROM stdin;
    public          postgres    false    281   ��      {          0    45918    mpr_trans_notification 
   TABLE DATA           �   COPY public.mpr_trans_notification (audience_id, notification_text, notification_id_pk, "timestamp", notification_head, active_status) FROM stdin;
    public          postgres    false    311   �      �           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    204            �           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    206            �           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    208            �           0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    210            �           0    0    ENROLLMENT_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ENROLLMENT_id_seq"', 1, false);
          public          postgres    false    212            �           0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    214            �           0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    216            �           0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    218            �           0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    220            �           0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    222            �           0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    224            �           0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    228            �           0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    KCC_id_pk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."KCC_id_pk_seq"', 6, true);
          public          postgres    false    232            �           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 1, true);
          public          postgres    false    236            �           0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    237            �           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    239            �           0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    241            �           0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    243            �           0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    245            �           0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    247            �           0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    249            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    251            �           0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    253            �           0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    255            �           0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    257            �           0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    259            �           0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 1, true);
          public          postgres    false    261            �           0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    263            �           0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 189, true);
          public          postgres    false    265            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    267            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    268            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE SET     k   SELECT pg_catalog.setval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq', 1, true);
          public          postgres    false    270            �           0    0    designation_desig_id_pk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.designation_desig_id_pk_seq', 1, false);
          public          postgres    false    272            �           0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    274            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.financial_year_master_financial_year_master_id_pk_seq', 1, false);
          public          postgres    false    276            �           0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 1, false);
          public          postgres    false    278            �           0    0     location_data_location_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.location_data_location_id_pk_seq', 1, false);
          public          postgres    false    280            �           0    0    meeting_schedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 1, true);
          public          postgres    false    282            �           0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    284            �           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_master_district_district_id_pk_seq', 1, false);
          public          postgres    false    289            �           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mpr_master_state_state_id_pk_seq', 1, false);
          public          postgres    false    294            �           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_master_subdiv_sub_div_id_pk_seq', 1, false);
          public          postgres    false    296            �           0    0    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.mpr_scheme_kcc_backup_id_pk_seq', 8, true);
          public          postgres    false    298            �           0    0    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.mpr_scheme_kcc_draft_id_pk_seq', 3, true);
          public          postgres    false    300            �           0    0 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_scheme_kishanm_backup_id_pk_seq', 1, false);
          public          postgres    false    302            �           0    0 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.mpr_scheme_kishanm_draft_id_pk_seq', 1, false);
          public          postgres    false    304            �           0    0 9   mpr_semitrans_location_mapping_location_mapping_id_pk_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.mpr_semitrans_location_mapping_location_mapping_id_pk_seq', 5, true);
          public          postgres    false    306            �           0    0    notifications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.notifications_id_seq', 8, true);
          public          postgres    false    312            �           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    313            �           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    314            �           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 7, true);
          public          postgres    false    315            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    316            �           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    317            �           0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    318            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    319            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    320            �           2606    45999    mpr_scheme_awcc AWCC_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    203            �           2606    46001 #   mpr_scheme_baitarani BAITARANI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    205            �           2606    46003    mpr_scheme_dog DOG_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    207            �           2606    46005    mpr_scheme_doptuhd DOPTUHD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    209            �           2606    46007 %   mpr_scheme_enrollment ENROLLMENT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    211            �           2606    46009    mpr_scheme_foodpro FOODPRO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    213            �           2606    46011 #   mpr_scheme_gitanjali GITANJALI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    215            �           2606    46013 '   mpr_scheme_immunisati IMMUNISATION_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 S   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    217            �           2606    46015    mpr_scheme_infantd INFANTD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    219            �           2606    46017 %   mpr_scheme_inspection INSPECTION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    221            �           2606    46019    mpr_scheme_instdel INSTDEL_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    223            �           2606    46021 !   mpr_scheme_jaldjalb JALDJALB_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 M   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    225            �           2606    46023    mpr_scheme_kanyas KANYAS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    227            �           2606    46025 %   mpr_scheme_karmatirth KARMATIRTH_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    229            �           2606    46027    mpr_scheme_kcc KCC_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    231            �           2606    46029    mpr_scheme_landpp LANDPP_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_pkey";
       public            postgres    false    233            �           2606    46031    mpr_semitrans_login Login_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (login_id_pk);
 J   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_pkey";
       public            postgres    false    235            �           2606    46033 0   mpr_semitrans_login Login_username_username1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    235    235            �           2606    46035 #   mpr_scheme_maternald MATERNALD_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    238            �           2606    46037    mpr_scheme_mci MCI_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    240                       2606    46039    mpr_scheme_mgnregs MGNREGS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    283            �           2606    46041 #   mpr_scheme_minoritys MINORITYS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    242            �           2606    46043    mpr_scheme_poe POE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_pkey";
       public            postgres    false    244            2           2606    46045 &   mpr_semitrans_privilege Privilege_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mpr_semitrans_privilege
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 R   ALTER TABLE ONLY public.mpr_semitrans_privilege DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    307            �           2606    46047 %   mpr_scheme_saboojshre SABOOJSHRE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    246            �           2606    46049    mpr_scheme_saboojs SABOOJS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    248            �           2606    46051 %   mpr_scheme_safedsavel SAFEDSAVEL_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    250            �           2606    46053 #   mpr_scheme_samabythi SAMABYTHI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    252            �           2606    46055    mpr_scheme_sikshas SIKSHAS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    254            �           2606    46057    mpr_scheme_svskp SVSKP_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    256            �           2606    46059    mpr_scheme_yubas YUBAS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    258            �           2606    46061    mpr_scheme_anand anand_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT anand_pkey;
       public            postgres    false    260            �           2606    46063 %   mpr_master_attri_table att_table_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (attri_id_pk);
 O   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    262            �           2606    46065 "   mpr_trans_audit_log audit_log_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id_pk);
 L   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    264            �           2606    46067 4   mpr_semitrans_check_first_user check_First_User_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 `   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    266                       2606    46069 -   mpr_master_dashboard_info dashboard_info_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.mpr_master_dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (dashboard_id_pk);
 W   ALTER TABLE ONLY public.mpr_master_dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    286            �           2606    46071 @   mpr_semitrans_dba_financial_range dba_financial_range_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range
    ADD CONSTRAINT dba_financial_range_table_pkey PRIMARY KEY (dba_financial_range_table_id_pk);
 j   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range DROP CONSTRAINT dba_financial_range_table_pkey;
       public            postgres    false    269            �           2606    46073 '   mpr_master_designation designation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (desig_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    271            �           2606    46075    mpr_scheme_doc doc_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 A   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT doc_pkey;
       public            postgres    false    273                       2606    46077 4   mpr_master_financial_year financial_year_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_financial_year
    ADD CONSTRAINT financial_year_master_pkey PRIMARY KEY (financial_year_master_id_pk);
 ^   ALTER TABLE ONLY public.mpr_master_financial_year DROP CONSTRAINT financial_year_master_pkey;
       public            postgres    false    275                       2606    46079    mpr_scheme_kishanm kishanm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    277                       2606    46081 +   mpr_master_location_data location_data_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id_pk);
 U   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    279                       2606    46083 0   mpr_trans_meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mpr_trans_meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (meeting_id_pk);
 Z   ALTER TABLE ONLY public.mpr_trans_meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    281                       2606    46085 3   mpr_master_block mpr_master_block_block_lg_code_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_block_lg_code_key UNIQUE (block_lg_code);
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_block_lg_code_key;
       public            postgres    false    285                       2606    46087 &   mpr_master_block mpr_master_block_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_pkey PRIMARY KEY (block_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_pkey;
       public            postgres    false    285                       2606    46089 8   mpr_master_district mpr_master_district_dist_lg_code_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_dist_lg_code_key UNIQUE (dist_lg_code);
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_dist_lg_code_key;
       public            postgres    false    288                       2606    46091 ,   mpr_master_district mpr_master_district_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_pkey PRIMARY KEY (district_id_pk);
 V   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_pkey;
       public            postgres    false    288            	           2606    46093 C   mpr_master_location_data mpr_master_location_data_location_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT mpr_master_location_data_location_code_key UNIQUE (location_code);
 m   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT mpr_master_location_data_location_code_key;
       public            postgres    false    279            "           2606    46095 &   mpr_master_state mpr_master_state_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_state
    ADD CONSTRAINT mpr_master_state_pkey PRIMARY KEY (state_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_state DROP CONSTRAINT mpr_master_state_pkey;
       public            postgres    false    293            $           2606    46097 (   mpr_master_subdiv mpr_master_subdiv_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_pkey PRIMARY KEY (sub_div_id_pk);
 R   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_pkey;
       public            postgres    false    295            &           2606    46099 4   mpr_master_subdiv mpr_master_subdiv_sub_div_code_key 
   CONSTRAINT     z   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_sub_div_code_key UNIQUE (sub_div_lg_code);
 ^   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_sub_div_code_key;
       public            postgres    false    295            0           2606    46101 B   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_pkey PRIMARY KEY (location_mapping_id_pk);
 l   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_pkey;
       public            postgres    false    305            4           2606    46103 8   mpr_semitrans_profile mpr_semitrans_profile_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_key;
       public            postgres    false    308            <           2606    46105 )   mpr_trans_notification notifications_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_notification
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id_pk);
 S   ALTER TABLE ONLY public.mpr_trans_notification DROP CONSTRAINT notifications_pkey;
       public            postgres    false    311                       2606    46107 &   mpr_master_department office_dept_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (dept_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_pkey;
       public            postgres    false    287                       2606    46109    mpr_master_office office_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpr_master_office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id_pk);
 G   ALTER TABLE ONLY public.mpr_master_office DROP CONSTRAINT office_pkey;
       public            postgres    false    290            (           2606    46111 .   mpr_scheme_kcc_backup pk_mpr_scheme_kcc_backup 
   CONSTRAINT     o   ALTER TABLE ONLY public.mpr_scheme_kcc_backup
    ADD CONSTRAINT pk_mpr_scheme_kcc_backup PRIMARY KEY (id_pk);
 X   ALTER TABLE ONLY public.mpr_scheme_kcc_backup DROP CONSTRAINT pk_mpr_scheme_kcc_backup;
       public            postgres    false    297            *           2606    46113 ,   mpr_scheme_kcc_draft pk_mpr_scheme_kcc_draft 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_scheme_kcc_draft
    ADD CONSTRAINT pk_mpr_scheme_kcc_draft PRIMARY KEY (id_pk);
 V   ALTER TABLE ONLY public.mpr_scheme_kcc_draft DROP CONSTRAINT pk_mpr_scheme_kcc_draft;
       public            postgres    false    299            ,           2606    46115 6   mpr_scheme_kishanm_backup pk_mpr_scheme_kishanm_backup 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup
    ADD CONSTRAINT pk_mpr_scheme_kishanm_backup PRIMARY KEY (id_pk);
 `   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup DROP CONSTRAINT pk_mpr_scheme_kishanm_backup;
       public            postgres    false    301            .           2606    46117 4   mpr_scheme_kishanm_draft pk_mpr_scheme_kishanm_draft 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft
    ADD CONSTRAINT pk_mpr_scheme_kishanm_draft PRIMARY KEY (id_pk);
 ^   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft DROP CONSTRAINT pk_mpr_scheme_kishanm_draft;
       public            postgres    false    303            6           2606    46119 "   mpr_semitrans_profile profile_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id_pk);
 L   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    308                       2606    46121 '   mpr_master_scheme_dept scheme_dept_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_pkey PRIMARY KEY (scheme_dept_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_pkey;
       public            postgres    false    291                        2606    46123 )   mpr_master_scheme_table scheme_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (scheme_id_pk);
 S   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    292            8           2606    46125 0   mpr_semitrans_user_privilege user_privilege_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (user_priv_id_pk);
 Z   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    309            :           2606    46127 &   mpr_semitrans_user_type user_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_semitrans_user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 P   ALTER TABLE ONLY public.mpr_semitrans_user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    310            �           1259    46128 	   idx_anand    INDEX     _   CREATE INDEX idx_anand ON public.mpr_scheme_anand USING btree (session, month, location_code);
    DROP INDEX public.idx_anand;
       public            postgres    false    260    260    260            �           1259    46129    idx_awcc    INDEX     ]   CREATE INDEX idx_awcc ON public.mpr_scheme_awcc USING btree (session, month, location_code);
    DROP INDEX public.idx_awcc;
       public            postgres    false    203    203    203            �           1259    46130    idx_baitarani    INDEX     g   CREATE INDEX idx_baitarani ON public.mpr_scheme_baitarani USING btree (session, month, location_code);
 !   DROP INDEX public.idx_baitarani;
       public            postgres    false    205    205    205                        1259    46131    idx_doc    INDEX     [   CREATE INDEX idx_doc ON public.mpr_scheme_doc USING btree (session, month, location_code);
    DROP INDEX public.idx_doc;
       public            postgres    false    273    273    273            �           1259    46132    idx_doptuhd    INDEX     c   CREATE INDEX idx_doptuhd ON public.mpr_scheme_doptuhd USING btree (session, month, location_code);
    DROP INDEX public.idx_doptuhd;
       public            postgres    false    209    209    209            �           1259    46133    idx_enrollment    INDEX     i   CREATE INDEX idx_enrollment ON public.mpr_scheme_enrollment USING btree (session, month, location_code);
 "   DROP INDEX public.idx_enrollment;
       public            postgres    false    211    211    211            �           1259    46134    idx_foodpro    INDEX     c   CREATE INDEX idx_foodpro ON public.mpr_scheme_foodpro USING btree (session, month, location_code);
    DROP INDEX public.idx_foodpro;
       public            postgres    false    213    213    213            �           1259    46135    idx_gitanjali    INDEX     g   CREATE INDEX idx_gitanjali ON public.mpr_scheme_gitanjali USING btree (session, month, location_code);
 !   DROP INDEX public.idx_gitanjali;
       public            postgres    false    215    215    215            �           1259    46136    idx_immunisati    INDEX     i   CREATE INDEX idx_immunisati ON public.mpr_scheme_immunisati USING btree (session, month, location_code);
 "   DROP INDEX public.idx_immunisati;
       public            postgres    false    217    217    217            �           1259    46137    idx_infantd    INDEX     c   CREATE INDEX idx_infantd ON public.mpr_scheme_infantd USING btree (session, month, location_code);
    DROP INDEX public.idx_infantd;
       public            postgres    false    219    219    219            �           1259    46138    idx_inspection    INDEX     i   CREATE INDEX idx_inspection ON public.mpr_scheme_inspection USING btree (session, month, location_code);
 "   DROP INDEX public.idx_inspection;
       public            postgres    false    221    221    221            �           1259    46139    idx_instdel    INDEX     c   CREATE INDEX idx_instdel ON public.mpr_scheme_instdel USING btree (session, month, location_code);
    DROP INDEX public.idx_instdel;
       public            postgres    false    223    223    223            �           1259    46140    idx_jaldjalb    INDEX     e   CREATE INDEX idx_jaldjalb ON public.mpr_scheme_jaldjalb USING btree (session, month, location_code);
     DROP INDEX public.idx_jaldjalb;
       public            postgres    false    225    225    225            �           1259    46141 
   idx_kanyas    INDEX     a   CREATE INDEX idx_kanyas ON public.mpr_scheme_kanyas USING btree (session, month, location_code);
    DROP INDEX public.idx_kanyas;
       public            postgres    false    227    227    227            �           1259    46142    idx_karmatirth    INDEX     i   CREATE INDEX idx_karmatirth ON public.mpr_scheme_karmatirth USING btree (session, month, location_code);
 "   DROP INDEX public.idx_karmatirth;
       public            postgres    false    229    229    229            �           1259    46143    idx_kcc    INDEX     [   CREATE INDEX idx_kcc ON public.mpr_scheme_kcc USING btree (session, month, location_code);
    DROP INDEX public.idx_kcc;
       public            postgres    false    231    231    231                       1259    46144    idx_kishanm    INDEX     c   CREATE INDEX idx_kishanm ON public.mpr_scheme_kishanm USING btree (session, month, location_code);
    DROP INDEX public.idx_kishanm;
       public            postgres    false    277    277    277            �           1259    46145 
   idx_landpp    INDEX     a   CREATE INDEX idx_landpp ON public.mpr_scheme_landpp USING btree (session, month, location_code);
    DROP INDEX public.idx_landpp;
       public            postgres    false    233    233    233            �           1259    46146    idx_maternald    INDEX     g   CREATE INDEX idx_maternald ON public.mpr_scheme_maternald USING btree (session, month, location_code);
 !   DROP INDEX public.idx_maternald;
       public            postgres    false    238    238    238            �           1259    46147    idx_mci    INDEX     [   CREATE INDEX idx_mci ON public.mpr_scheme_mci USING btree (session, month, location_code);
    DROP INDEX public.idx_mci;
       public            postgres    false    240    240    240                       1259    46148    idx_mgnregs    INDEX     c   CREATE INDEX idx_mgnregs ON public.mpr_scheme_mgnregs USING btree (session, month, location_code);
    DROP INDEX public.idx_mgnregs;
       public            postgres    false    283    283    283            �           1259    46149    idx_minoritys    INDEX     g   CREATE INDEX idx_minoritys ON public.mpr_scheme_minoritys USING btree (session, month, location_code);
 !   DROP INDEX public.idx_minoritys;
       public            postgres    false    242    242    242            �           1259    46150    idx_poe    INDEX     [   CREATE INDEX idx_poe ON public.mpr_scheme_poe USING btree (session, month, location_code);
    DROP INDEX public.idx_poe;
       public            postgres    false    244    244    244            �           1259    46151    idx_saboojs    INDEX     c   CREATE INDEX idx_saboojs ON public.mpr_scheme_saboojs USING btree (session, month, location_code);
    DROP INDEX public.idx_saboojs;
       public            postgres    false    248    248    248            �           1259    46152    idx_saboojshre    INDEX     i   CREATE INDEX idx_saboojshre ON public.mpr_scheme_saboojshre USING btree (session, month, location_code);
 "   DROP INDEX public.idx_saboojshre;
       public            postgres    false    246    246    246            �           1259    46153    idx_safedsavel    INDEX     i   CREATE INDEX idx_safedsavel ON public.mpr_scheme_safedsavel USING btree (session, month, location_code);
 "   DROP INDEX public.idx_safedsavel;
       public            postgres    false    250    250    250            �           1259    46154    idx_samabythi    INDEX     g   CREATE INDEX idx_samabythi ON public.mpr_scheme_samabythi USING btree (session, month, location_code);
 !   DROP INDEX public.idx_samabythi;
       public            postgres    false    252    252    252            �           1259    46155    idx_sikshas    INDEX     c   CREATE INDEX idx_sikshas ON public.mpr_scheme_sikshas USING btree (session, month, location_code);
    DROP INDEX public.idx_sikshas;
       public            postgres    false    254    254    254            �           1259    46156 	   idx_svskp    INDEX     _   CREATE INDEX idx_svskp ON public.mpr_scheme_svskp USING btree (session, month, location_code);
    DROP INDEX public.idx_svskp;
       public            postgres    false    256    256    256            �           1259    46157 	   idx_yubas    INDEX     _   CREATE INDEX idx_yubas ON public.mpr_scheme_yubas USING btree (session, month, location_code);
    DROP INDEX public.idx_yubas;
       public            postgres    false    258    258    258            u           2606    46158 '   mpr_scheme_anand ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    260    3277    235            =           2606    46163 %   mpr_scheme_awcc AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Q   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    235    203    3277            ?           2606    46168 /   mpr_scheme_baitarani BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    205    3277    235            {           2606    46173 #   mpr_scheme_doc DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    273    3277    235            A           2606    46178 #   mpr_scheme_dog DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    207    3277    235            B           2606    46183 +   mpr_scheme_doptuhd DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    209    235    3277            D           2606    46188 1   mpr_scheme_enrollment ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    211    235    3277            F           2606    46193 +   mpr_scheme_foodpro FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    213    235    3277            H           2606    46198 /   mpr_scheme_gitanjali GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    215    3277    235            J           2606    46203 1   mpr_scheme_immunisati IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    3277    235    217            L           2606    46208 +   mpr_scheme_infantd INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    3277    219    235            M           2606    46213 1   mpr_scheme_inspection INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    235    3277    221            O           2606    46218 +   mpr_scheme_instdel INSTDEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_login_id_fk_fkey";
       public          postgres    false    3277    235    223            Q           2606    46223 -   mpr_scheme_jaldjalb JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Y   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    225    3277    235            S           2606    46228 )   mpr_scheme_kanyas KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    227    3277    235            U           2606    46233 1   mpr_scheme_karmatirth KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    3277    235    229            W           2606    46238 #   mpr_scheme_kcc KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    231    235    3277            }           2606    46243 +   mpr_scheme_kishanm KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    235    277    3277            Y           2606    46248 )   mpr_scheme_landpp LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    3277    233    235            [           2606    46253 *   mpr_semitrans_login Login_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_desig_id_fk_fkey" FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 V   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_desig_id_fk_fkey";
       public          postgres    false    271    3325    235            \           2606    46258 0   mpr_semitrans_login Login_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_dept_id_fk_fkey" FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_dept_id_fk_fkey";
       public          postgres    false    235    287    3350            ]           2606    46263 +   mpr_semitrans_login Login_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_id_fk_fkey" FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 W   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_id_fk_fkey";
       public          postgres    false    290    235    3356            ^           2606    46268 .   mpr_semitrans_login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Z   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    310    3386    235            `           2606    46273 /   mpr_scheme_maternald MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    235    3277    238            b           2606    46278 #   mpr_scheme_mci MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    3277    240    235                       2606    46283 +   mpr_scheme_mgnregs MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    3277    283    235            d           2606    46288 /   mpr_scheme_minoritys MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    242    235    3277            f           2606    46293 #   mpr_scheme_poe POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    235    244    3277            g           2606    46298 1   mpr_scheme_saboojshre SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    246    235    3277            i           2606    46303 +   mpr_scheme_saboojs SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    3277    248    235            k           2606    46308 1   mpr_scheme_safedsavel SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    250    235    3277            m           2606    46313 /   mpr_scheme_samabythi SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    252    235    3277            o           2606    46318 +   mpr_scheme_sikshas SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    235    3277    254            q           2606    46323 '   mpr_scheme_svskp SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    235    3277    256            s           2606    46328 '   mpr_scheme_yubas YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    258    235    3277            x           2606    46333 .   mpr_trans_audit_log audit_log_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_login_id_fk_fkey FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 X   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_login_id_fk_fkey;
       public          postgres    false    3277    264    235            z           2606    46338 9   mpr_master_designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    287    271    3350            w           2606    46343 ?   mpr_master_attri_table mpr_master_attri_table_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey;
       public          postgres    false    292    262    3360            �           2606    46348 5   mpr_master_block mpr_master_block_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 _   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_location_id_fk_fkey;
       public          postgres    false    279    285    3335            �           2606    46353 3   mpr_master_block mpr_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.mpr_master_subdiv(sub_div_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_subdiv_id_fk_fkey;
       public          postgres    false    295    285    3364            �           2606    46358 8   mpr_master_district mpr_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.mpr_master_state(state_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_state_id_fk_fkey;
       public          postgres    false    288    3362    293            �           2606    46363 ?   mpr_master_scheme_dept mpr_master_scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    291    292    3360            �           2606    46368 @   mpr_master_scheme_table mpr_master_scheme_table_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) NOT VALID;
 j   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey;
       public          postgres    false    292    271    3325            �           2606    46373 I   mpr_master_scheme_table mpr_master_scheme_table_financial_year_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey FOREIGN KEY (financial_year_id_fk) REFERENCES public.mpr_master_financial_year(financial_year_master_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 s   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey;
       public          postgres    false    292    3330    275            �           2606    46378 3   mpr_master_subdiv mpr_master_subdiv_dist_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.mpr_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey;
       public          postgres    false    288    295    3354            v           2606    46383 &   mpr_scheme_anand mpr_scheme_anand_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT mpr_scheme_anand_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT mpr_scheme_anand_lcfk;
       public          postgres    false    260    3337    279            >           2606    46388 $   mpr_scheme_awcc mpr_scheme_awcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT mpr_scheme_awcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 N   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT mpr_scheme_awcc_lcfk;
       public          postgres    false    279    203    3337            @           2606    46393 .   mpr_scheme_baitarani mpr_scheme_baitarani_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT mpr_scheme_baitarani_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT mpr_scheme_baitarani_lcfk;
       public          postgres    false    3337    205    279            |           2606    46398 "   mpr_scheme_doc mpr_scheme_doc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT mpr_scheme_doc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT mpr_scheme_doc_lcfk;
       public          postgres    false    279    273    3337            C           2606    46403 *   mpr_scheme_doptuhd mpr_scheme_dopthud_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT mpr_scheme_dopthud_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT mpr_scheme_dopthud_lcfk;
       public          postgres    false    279    3337    209            E           2606    46408 0   mpr_scheme_enrollment mpr_scheme_enrollment_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT mpr_scheme_enrollment_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT mpr_scheme_enrollment_lcfk;
       public          postgres    false    3337    211    279            G           2606    46413 *   mpr_scheme_foodpro mpr_scheme_foodpro_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT mpr_scheme_foodpro_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT mpr_scheme_foodpro_lcfk;
       public          postgres    false    3337    213    279            I           2606    46418 .   mpr_scheme_gitanjali mpr_scheme_gitanjali_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT mpr_scheme_gitanjali_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT mpr_scheme_gitanjali_lcfk;
       public          postgres    false    279    3337    215            K           2606    46423 0   mpr_scheme_immunisati mpr_scheme_immunisati_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT mpr_scheme_immunisati_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT mpr_scheme_immunisati_lcfk;
       public          postgres    false    3337    279    217            N           2606    46428 0   mpr_scheme_inspection mpr_scheme_inspection_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT mpr_scheme_inspection_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT mpr_scheme_inspection_lcfk;
       public          postgres    false    3337    279    221            P           2606    46433 *   mpr_scheme_instdel mpr_scheme_instdel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT mpr_scheme_instdel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT mpr_scheme_instdel_lcfk;
       public          postgres    false    223    3337    279            R           2606    46438 ,   mpr_scheme_jaldjalb mpr_scheme_jaldjalb_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT mpr_scheme_jaldjalb_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 V   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT mpr_scheme_jaldjalb_lcfk;
       public          postgres    false    225    3337    279            T           2606    46443 (   mpr_scheme_kanyas mpr_scheme_kanyas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT mpr_scheme_kanyas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT mpr_scheme_kanyas_lcfk;
       public          postgres    false    227    279    3337            V           2606    46448 1   mpr_scheme_karmatirth mpr_scheme_karmatirtha_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT mpr_scheme_karmatirtha_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 [   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT mpr_scheme_karmatirtha_lcfk;
       public          postgres    false    229    279    3337            X           2606    46453 "   mpr_scheme_kcc mpr_scheme_kcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT mpr_scheme_kcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT mpr_scheme_kcc_lcfk;
       public          postgres    false    231    3337    279            ~           2606    46458 *   mpr_scheme_kishanm mpr_scheme_kishanm_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT mpr_scheme_kishanm_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT mpr_scheme_kishanm_lcfk;
       public          postgres    false    3337    279    277            Z           2606    46463 (   mpr_scheme_landpp mpr_scheme_landpp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT mpr_scheme_landpp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT mpr_scheme_landpp_lcfk;
       public          postgres    false    279    233    3337            a           2606    46468 .   mpr_scheme_maternald mpr_scheme_maternald_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT mpr_scheme_maternald_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT mpr_scheme_maternald_lcfk;
       public          postgres    false    238    3337    279            c           2606    46473 "   mpr_scheme_mci mpr_scheme_mci_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT mpr_scheme_mci_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT mpr_scheme_mci_lcfk;
       public          postgres    false    3337    240    279            �           2606    46478 *   mpr_scheme_mgnregs mpr_scheme_mgnregs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT mpr_scheme_mgnregs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT mpr_scheme_mgnregs_lcfk;
       public          postgres    false    3337    279    283            e           2606    46483 .   mpr_scheme_minoritys mpr_scheme_minoritys_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT mpr_scheme_minoritys_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT mpr_scheme_minoritys_lcfk;
       public          postgres    false    242    279    3337            j           2606    46488 *   mpr_scheme_saboojs mpr_scheme_saboojs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT mpr_scheme_saboojs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT mpr_scheme_saboojs_lcfk;
       public          postgres    false    248    279    3337            h           2606    46493 0   mpr_scheme_saboojshre mpr_scheme_saboojshre_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT mpr_scheme_saboojshre_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT mpr_scheme_saboojshre_lcfk;
       public          postgres    false    279    246    3337            l           2606    46498 0   mpr_scheme_safedsavel mpr_scheme_safedsavel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT mpr_scheme_safedsavel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT mpr_scheme_safedsavel_lcfk;
       public          postgres    false    279    250    3337            n           2606    46503 /   mpr_scheme_samabythi mpr_scheme_samaybythi_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT mpr_scheme_samaybythi_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Y   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT mpr_scheme_samaybythi_lcfk;
       public          postgres    false    252    279    3337            p           2606    46508 )   mpr_scheme_sikshas mpr_scheme_sikhas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT mpr_scheme_sikhas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 S   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT mpr_scheme_sikhas_lcfk;
       public          postgres    false    279    3337    254            r           2606    46513 &   mpr_scheme_svskp mpr_scheme_svskp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT mpr_scheme_svskp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT mpr_scheme_svskp_lcfk;
       public          postgres    false    256    279    3337            t           2606    46518 &   mpr_scheme_yubas mpr_scheme_yubas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT mpr_scheme_yubas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT mpr_scheme_yubas_lcfk;
       public          postgres    false    258    279    3337            �           2606    46523 Q   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_location_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 {   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_location_id_fk_fkey;
       public          postgres    false    305    279    3335            �           2606    46528 R   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_user_type_id_fk_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 |   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_user_type_id_fk_fkey;
       public          postgres    false    305    310    3386            _           2606    46533 :   mpr_semitrans_login mpr_semitrans_login_location_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT mpr_semitrans_login_location_code_fkey FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 d   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT mpr_semitrans_login_location_code_fkey;
       public          postgres    false    235    279    3337            �           2606    46538 9   mpr_semitrans_profile mpr_semitrans_profile_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_fkey FOREIGN KEY (username) REFERENCES public.mpr_semitrans_login(username) NOT VALID;
 c   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_fkey;
       public          postgres    false    3279    235    308            �           2606    46543 3   mpr_master_department office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 ]   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    287    290    3356            �           2606    46548 ,   mpr_semitrans_user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public.mpr_semitrans_privilege(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    307    3378    309            �           2606    46553 (   mpr_semitrans_profile profile_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_id_pk_fkey FOREIGN KEY (profile_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_id_pk_fkey;
       public          postgres    false    308    3277    235            �           2606    46558 9   mpr_master_scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk);
 c   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    3350    291    287            y           2606    46563 )   mpr_semitrans_check_first_user user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk);
 S   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT user_id_fk;
       public          postgres    false    235    3277    266            �           2606    46568 @   mpr_semitrans_user_privilege user_privilege_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 j   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_user_type_id_fk_fkey;
       public          postgres    false    3386    309    310            J   �  x��X�o�8~��
��=\/��y�u��6l+��0GI�8v`�����������:�Ǐ�ER�#����Mη�,��m�����d)��e��;���jAޒ�5�7l f�d� ����C�~�X�S�/���-��N���M�tߊ�(�BT-<�3���:��	QB)YWdi����y+�;�CS[��R�x�x�����bm�����3/��gj��#�����f����|��ф$�T]�k~R�VT�7�Uk��mՈ���5�!��H�����篷w�4����W8��|WwJ��rM���휙�+�(3��Q��!&��0s�s�EȈAeE4J@̓J�Wu��n�m΋��pD����1#cNF����n!���n��M�`W����8����w��E�G��n�BV�y)�=F�!`��0��QFf��n	�YoV��>���D4]b!�-�F���h��%�/˓��c�B��� B㈤/y��y�^�Ih��H/��<�M�Ӭ �6������D)
O12'���u~<6��3�NH�����;���@��t! ��#�$��	��e)��ߣ��`�ID�Bk���Wۀ�k�X�5��O�,ײ�Z��7��j �A�2 �C�$�+�d؝jk>t����u`h�\���l��B>H/(kU���cNZ ���dF���:��^V��PB!m!���� �L�tJ���ұ�0����UR��r��"֋�6{3�=~�N���ӔD}��(T�6Á����0�e읕�iF�a��ՆW-h�v7(� TA@g�+�;@mm��s�OV�t��t1��no
�y����8o����n&�k�;��U`V�&Fk/��W����	S�B_[*�e����ti�:@3�� �0���/�"�����0u��)�AY��:;��N1�P�m�Q;y����d�8����=��h���BW��5:��� FS��\�B��%2^z���yT{Gh1l�0�L�]~��i2�ַC/�yАoJ��+��d[���;�A�Q�lwE�2⑙L+�Q�hl�L����޶�UTX�1o�a�� ��(�@Eq�[�i�Xw]TPEŏ�?M�wL�oj��§�<��֏X����'�.έl�R���h�M� 3b��0�������N��D!Y�EC���Gh�9Pf��-��He�jHeSg@E�	�^`��
^T��%��U����R��n��}E���A��Y�N�%�^{����Y��/�s��~bWvS{�]%PROE��kw9�P�O�S��c�����6��9:�F-6�Qw�����ˡ�������9c��=V�ye:�pv��7p+ʦ���á-���cU��b���en��X׵�Dɢ_�S��2�/Y�Uh��
�PlnF��4�s7�n�h�Vu�����n�s�@0M�Rm��3��zu7���`�bo䕸bq4�]œ(}K����G�)���肩�� ����{[����:�z��1��P�����]��ӣ$�|tv��@�a�M�6bl�p��E�����K҉���꼹��H�p�{��6�w��!�����H_�j`���~l��{�oe=2���&�+t�i;J$p�x��h�5��E���0��-�/my�Bw��_�_�
��;c� \.����ض;��[�c.���i!�B$�e�����vka�C�^�5����Qo ?D��;��GV�N�r�A�ԭ����D%��Ӹ���MZ ~A\j ���F$�[yT^� �_�|��yX��ןn�"A��\B��/`�?I��[U?v��y)�R�����ZRw��M3�2C�A�g�H�6�5�S��]A���,�Y�Әi���I��+��#�؃��(�ƿ�?�n��������S�      a   �   x�E�A��0E��)��:M�vi
��4S�)�?v�`��_b�7>0C���E�!yA[8�5q��:a�U���	����9�1,�V���X=�=?�����*�����U5B��tjS����F�,��)�d����r�J[�-��
�����ʞdQ���OE�g.�W.�>�j�Q��鲆�0�&�Cq����:"��F�      b   K  x����j�0@����v��������8�o1I�b;�����e�R�^BIǒX
E�z���I���b��ýG����5���W���(�6�`E*�=x��u0r�����O(��6ag]KF�k�*����V:�d�ˉ�Ɗ6��R������O~�R8W$��?5.Dѭ_H"�u�߂J�b[� 0C��R٬���t�x���Pt��[�p]�n��
��ml���,aKA27u!3�5z�^5���*���~/Y��X�穕�?*�6�~�:y���x�m�XB��_#9��6Mc�)f�k����8u�l%w�8��p� <(H#      c     x�mT�n� }��H��{}�i0X�w�U_V����&U�V��w��lT����a`��`��l��.*VA�Cze{�Ԭ�<K����A+#�r߶Fj��^�M=����b+��h�q�.]�2k����<G�a01�t�Qm �h�~�:�D����^'�C"	�� N�;�@s�i"%�?b����ܝ��N�<�z�����������3�~��N��3����	j������|��巻�/\����Y�������'�ʜ
�M��:8��.9�d�eb"�mե��!+�z�8m�S��5:B;��X3���Ğ���W$*&V���]�]�Ib"��$b�骸
JByQ�k�c����#ǶE"(?`�B���@g̥��A���<���\a)�t�����y�j����u���	��J�ǌ3���a�<��6�ȱ�͑�c��To
7NM�\���r�-���:��Gc-���
��ĂU;���듙:�05�z���Q��ő��bϐ<���5{�Ґ�1^U<x�����#:��S�cv��{m������E��X/o��PĖի����?�%���"v3���(�G�N�0��A������8}���i�2{�;�!R�[
 $:�.�ŷ��xj�,�Nٔs�̓{+Z�$��h�9[��f�k��%��(g\G {f��k���/Tt/	2L�����7��Y�/CE�2T�a��]�H�{q|�{M9��n!N���c�۱���d�K��4t&�{��dDԧw���X�H�      S   N  x�uSˎ�0<�_�c{i#�y���kK�$gk������f��"g83�5x���*2����kn�4�RB��w-&ʯ\C�����q���+q�jXʅ��+q7���~@Ox��̾ʋ�?.�3�x�R�9�#�V�ѫ�dNm��ebk
e����������z^��!����]�7���>8��(5��i��y���9T[͂��
��8����۩W�+�!3�١�o$��x��}B}�0�.)��C #Lǻ�wAS�)����B�iGԧy-�F���3��T�|��	��*����hxI!�O�V�8V��'�!�A���,��Cs�;-1�0K|����'�c[k�m2�)O�����<St�T7D^��z���&�#�[�'X��V��z܉�{LKOe %�zŕ�=o��n����/N\�z�vɩy��AB����2ۡխ����d{@k�����F{Dk[���U�Lnƞ�v��ʑ��"�h��~��B�Fb&�6�t�J���`��g�@��#����[D�甠3h�~>�=X�r#�r]���$Y>�i
E�$�v6��A�ǿ�����      d       x�34���r��4��464�4����� <4      W   Q   x�3���KNU�%��y\F�n�y�yə�9
���E\ƜΉ9�y)�E�	�wFbQf��o~~^1+�&u��qqq 8��      [   �   x�M�Kn�0D��)z���_N� R*+�b�����Jl	Y�q�CR?~=4�(B�O���BHq��r�o��f,Nf/���d�P��\���YG}b�Ư%83��lqOM�ao��a�8xC#Ϗ���R�T��l/9~���H�W�I��N��t���0�`��槎X��,����8�[3��G��i�I��2�'�?h���gf��P6      f   '  x�]QIn�0<S����~d$�&�Ő�)��w��a;��4�L�K�l��M%V��96�Z�NF��c^��)���0r@�3�4�B�҃|ź�N`z&�Y6�MN������^��.0$/�6).�S���p�iinP����{�f.=�o�A�2G̯l�	KP*+vج��RXE[c�z>�}��=�0�e���G�T:՜���ի�ָM��Lߖ�ͬ�L��k�Qʗ6�O��r��$�XIen%����n1�`)UR����c�Ұ����j[�H\f�~wJ�?:l��      g   �   x��ۍ!��`N�r���8�%�v�T L��B!�8��(�>�ɇ�Ƃ#�@ C�fh�ܚi���>p.ヒ���14���\p����mRwӰ>��l(�G_�fjU9L]���˃��ZP��ai�Yڜn�ޭ�N���ɀ�ʁ�ɂ��<�}ˁ�C�A���3*�]���g��ƅ�V�.e��öñ�\�0���y���e�2�?����J�      h   ~  x�mT]o� }�_��IS���<�I�ei���6M�TC��`� �ʿ��I���!ܫ�����4�{�e��x(K�_�NIl!�$�p�%�Ӽb���旨�2NU�ܯ�?ܮ
�>��K�0XI��*d-�@L>��K��%Y�v] k�ݳE��G�����xeE8cg���*�uVv�+�<�pj�i����Tw��ц���������Cg$�_�Pv:tN�����<a�)���`k��i�HxN�(!�r/���Cҕ�h����b�s�<I���dӇک~�1剒�4�/����9��DN���d�Bl��T��;�+�i�^� �"F��P�q�č�a3�'<e	6Q��=�Iq��\,�&�'�z���	q}d���S�50�A8�M�+��j�|m�lFy"����?��?g3�%BU�y�j�p�+�%���;�-��oY�nb�s�%B���-~����mK�T�L c�$B)�����!eQX윍h��t�v����.A^�Ij%��CI6C*"2���?�c���צ9��(Ԉ�1�R¦4K�	��	�f��A~�o�٪��Y�K8�y���Ǧm��U����*|�L'�М������_�ʖ���+v{����ϔҿ�o��      i      x�3��wQpr�sw������ 0�2      k   1   x�3�vtq�425021�44�4�2��	ur�t�[����b���� ���            x������ � �      H      x������ � �            x������ � �            x������ � �      U      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      !      x������ � �      #      x������ � �      %      x������ � �      '      x������ � �      )      x������ � �      +   L   x�U��	� ���.�ܥX�����0��P�?�QX$f:O5�ƨS�'p;��$�����(μm%/vu3[gX      m   ~   x���A�0�5=��a���Y����m�j�E�y2 �;(���)�9G�"�j�J`ncF0 A&,�K�T�I��RO['�3��m��C�N�*]u�g���W��]]Q�����q�j֡~k�|�G�      o      x������ � �      Y      x������ � �      q      x������ � �      s      x������ � �      -      x������ � �      2      x������ � �      4      x������ � �      _      x������ � �      6      x������ � �      8      x������ � �      <      x������ � �      :      x������ � �      >      x������ � �      @      x������ � �      B      x������ � �      D      x������ � �      F      x������ � �      N      x�3�4�4������ �V      Q      x�3�4204�4����� %�      u   �   x����E1cQ̞������XH'�Y,���*y��X^a��|�­U��]�gl��۸����\!�6xB�q����qq�#�A�ƋV��M7�rDﺮ�c��5|����xPΐBnV((&g(*g(.g(2gLl��s���?7�(>      /   \   x�%�1
�@D�Z{�٬��.I#MP0���]�7���z~�8�E�˜c"2W =J�gm�9ʁ$�u{�3��0o��F���u�����~���      w   �   x�]��
�0���S�	lc��QDP
���6�ۦ���ݤֿ�tg�M�NvFB)�ʯd�9��NǨ�kT+��5I:�:��/UJY]�OJW*�l��e}�{ӿ^m�>��6~���z~��1n�__Nb���F�)��$�������N�B$޸�g�,&E=hu������U���i�Y���S�	�q	���@+���R�=fi�      x      x��ɶ���6ؾ��Ii0�5����ۀ�<}�9�Z{�}�=��{�8����P�!) ˋ���g���)��y�'��뿄l�/�bNFb8�_���(��ʚ�B��\����#��\��@�W�Hp v�E�~�+�H�?i��jQ���#��+}�%�������x 1�3�������+�?3??鯇�| ��~�9~<�_�j��W7aO�m����q"��܃:��w)�{&��*��*����E*��}��� _�
�x�5̧�֠M?_�j�oq��0�cd����/GW~����n�Ӽ��_���WZ��w��@� w�3M��]�k�_�2j��4R�nI���������� l\*��4d��P@�.'���%A��@u� j��*�N8Q��ɕ��!�s(s�/��/s�$`=N���8E�_'S�1G�)G�%4N ��_u���S����퉞ᐝT+ׂU�r����.Ky��CQ��0p������QE�I8��BZ:�S�b�ȭ��Յ�;�s8��L�9dF ��}��:�؊�J��Ѷ�WeI��)P[��5RwS��X`(Z��gK������SR����-.m)$1�Ƿ���a������5x��~p��~.��T�Q:dr�̈m��l[*!Q���:��*>�����_c��D2��5����ǉ����M\�O����K�z�<��&�M1^<7B�O���W_��n��jf0ne�Q�����ĕ5q
5���I����c�<��k����h�}����N+㔼*=}%7���
�Ń���e���5�^A!����!2�G�<O>Z0H�̪���(���+���a��ʜ�1��(҆�\�j�Ò�S+��� �q�y��iD��"C��l�h�囚����u']�-�]G�!d�깥��`I���g�_?s�e�8i�
Y5L�4
N��԰�x��(E=�d5
w�N�od��V6�2z7�j�����L�+����>i,7�#�;�E�ՌA]�Χ��H�M�� I��ޑ�E�k�P�2i�h[�5@S?S�[�L���g}��!|��{���{Dt��¨�f�vW�sJa}�v��y=��Ŀ�!������&y��\t�
8⚍�c�🁡�"�m��QV(.�O=�@у�;���uGg��|N��)%�H�#��<�L�G-�9��\�Y�9�$#�%T�"��^�;�j�B���n���s���X�.�R���2d���ɷW=c"ش=>�5�j�������:�����9���*I�]�݋�����m�NȬ5~^+��E1�G�/����`C�lH�֏x=��R<k�7�m�\�*���^�/r!��dj��5�3q"Q ��k��-��mپG�ݚ�A������[Y�'�v�-Fh7F��/�o�׫��V��M�CW(�)���Z(�hZ��(V�O���K����Vq��v�^��Xv���ܞ&�����r� �^����V�-�Fn[�Σx�[A�4!�}<O	�"XZZZ�q�F~���5d��ؓd|���8|�/;@�g�;�6<}W#�
Ų�-������_�j�T�D�7Ě�L�"�rW��`#�i,�f�WJv�Mv� ��5�}�[Zxiϖ��$^J�A%�]�
I�d���������G&��:�^�=^҈btŪ��U�y��t�y~�V����c��y���>̊��TN��O��PJ��*l�Tm�$�{B�rL��)�J&�����Yu�zzW}ȓH����U��NB�IW;GnO�����ۅ��W�����<�T�{��������Ius:�N۵-/�(��ce�xvE�kU���Y�T�e�X����`�MK`õ���bF�� �'���
�g'o���H��S�]�VP��t)7t9�
}Pt��p�x]��h
ۀ��� ��bYwQ��i3�QV/��S�=��X�Wk _�{:]��4�qy;����q�.G��\2��i�~�M�<����<ى�pI
Ǽ���H��-�J�d����H�H���F���4)�@�2&�Mx#mw���q!2����۲���3�;�q�cP��B��r�m���3+ٽ���aى�U����ȣ�6��G�9gg|��xϘ8�#�G%�8Tw'�Բ�+"B�L^/G���J,���;�ӫLH�)v}~�u7�C�N6\�*��_�����X�>�G5���5!��1�ozC�PP�N/҄L ��(􉿅�R���b��W�|�o�	�0X�v���~V9�,+�����)�rF�B�\0+lK���v�us-�괋��aX��[�����Ip�.>�;�B1�Xhy.�� �Z1�\qе�gb-���~n��5�Q���*whgSdO�<v��?Dou6�)'�5q�s��W�_���w��>N	���T�xa�pI>�!�������]Ï�t�P��7��lJPhP��-?��(��H�T�5ƍJ��&�/���;�5a�O�܊�-����[�k�7��'&�ol����)�˖����g
[X�S�4b�u�2��L��i!3G���9�.]�N,{�1�r���Bڏ�K�zO#��dA'�����=i�iQN���yi|�����8I��8��A��(�O���uG �Μ��*7f���m�gPf?V�<�
�K�V�L�������la����D�/D��FL����cy�#-Joy�
3�"=�pg}�[C*�s�_^Lu��.#��W��JT(D�%����ޯ��v���Z; w^�8�P��G�IX��,�9s#k�=V�����4sF��_͵��\X6�
J��AU<���-�����j����;ң��ޣ2��yE��������
������&©|_7z;����<�e�}[8��J7�������Ug=��n�H�ԯ�|x2���!_�O��B^5$n�B<7��a�0T�7����3��A��P^.5��b�����Ux|xz�>�����,&���:��WH���\���H���Zy���z�sv��
��ެF����
�~��͸+�{`�zo�T"��dwt�M�4��!�Lg�\��p��a�N��ۋį�|9C�ty���|Vi�l�{������x�9�wE�-�v�룄����J�%zAm���7*?�O�� ���c8�Қ�=��t/��9��[�_o�>cMP�h�~?M<*{��;���)OJ�H{���'��hT���/ϻ��2�#�|60�B�bE���C���共oz�t�{�*z�?C_���'')����f>X��0�p��l�5��S�O���W��\��et�R�h^�x�I锃���
A�M�5�?��:cc���zB��W�U�t�%�|��éz��+E�*h"�o�{e?�Y~78���e.�.1�듉h/H�֨�}��	(~ev�,}�(3�\daÞa�*�^�
��ޞ��:y��=In���l�6�Nw���x'�\N�)���O' ����x��^�kr�#"��h���5��y[����Y`ym�!�i���Ȫ2��Y���!�����뱈.�t�}������:��>3���{-�A������݉yE!0��7���s�l��}l�M(C7d���[NpJ�B���{rm�e�wV���i���숑D'�9|x��Sq��.�7��9C�{Q��W"��垞��:����ϕ��u=�);OU��)��+Gax��y������r�»�o���À�d/��A�W�k_ٍ[�["v.}��#�:�'"�rn�S�+o.#d�|Z$�A/B�7�6;ٵ1�嗫<��ž�F`1�Ĭ|�s	��ɔ��	�$�=����'��K���s�p���<Ie�FH{Ǻ�����Q	e�W6�=ӳM���r.*�~KK+�2��6M�a_��;T�pn�4�C��?t]����2M�NV�"�T|�-cf&�އ}L�}��g�y���[E�D����w��L�\ّ}r�Q��1ss��@P���F�]ᝃ֟�W�3y�H��,
�|P��w��}�LZW��h�j��;i��LV������\���j��UY��B�SM-�墠��_o�Y�8}�S��+*>�ۜ    �Ӊ��#"�/��'6����4��py��=�x�v���?��%}(�m�]�w@l��y��=N �N��	�[r���	[!=/�ww׫�������^C7t�5a�k����%qt�yR�����kу�'�;��ٽ��̙ƞ2l|���L�sF���G���|uӳꦲ{�3xe~rzJ�ZV�y!D폥��y�� �b&�
��0~�}>C�^<'D���%�v���wc1 ���7���W �� � t��m��'T����5���|�S^Pb��K=\�rA��t���i���߅��׊�_ 浸�K)�x	���^��bb��sb�Y����χp�+�]�!�O��u��>�|\�O����-'��o���ǿKs�R$��F�P�G>�Nqg������>�=������� �rh�� �)@q@�p�V�/����Oc/��s߰�.e�}-�&t�������~���������Cg��7�{E��_ �'�N�O�X����aY�.������^~����C��tἔ4��9��lKj�C���'��g���>��K��[;ᜋҟ� m?k�n�R��e�_{�GЕ��U��;�*��2�@��?N)�T��,�tܛ�3K�&�纜o���f9�օ䅘����yթ�&?̩���4���f_�{�B����%�r,q�����+�3F�t���i�b!�{3�\q��:�$��M���|(�&��,�q-��5$����C~�9��+!�w!i}B�|N�XN@�8U�}���>����K�#%,��%�k_G��8���� ?d� �M�c�A��%p?�r�y��	�zP��&�4�>`?~�72��Ti�0Q��_?�O=�O���z���/�<����'�����n:��/�t~��{:�y��}岯��u�������/9 �w�j�_�W�,|���o��w'���؛_��Mw�k�o�����<�؝_����S_�Ӿ��?��S��7㾆����G����ϣ9�.��t�@� ���ر4���_WMnp~��,��s~��'�?|����bn���_����篇�����;����	���r<į���6�p������ba�}�����e�_6�m�=��6=��}�R�#!B��G8��@�^���}J��~�~� ��W�q�|�_|ě2v�.'���@{�-�{*��!�������Kx>|�Ez�}XRŴ�����%�-��I�������y���<�5^���oȔ�c��`��}ܰ	�;���}�S"�o����ۤ��u,H�)���JZ�5�l߶��XӦ�6�rH�����}�ϵ� ���Y���%�<UsR��h���e��T�IN�>^O@�`����ŏ�/����o~��eSF�v�'�����mט���I���]�|C�C��_��[��_>(e���9�����_�`C�١��O�w����C�|��X���p��S�+H�����_����k�$0�'|��7�!�@8�@��G� �;�#�;� N�q�}Ý�+exUyPk<X5�t��:��Xmɭ}q�Y��U�g��ONp&]p(S�%r�%�T�� ������X�#�c��jpj}�w���((��X�уNܯ���pU8�t8�iq+o=q�:��1��m�}r Th���k	�����.���q��&�q+��5���q�`�n��~�Y�O��М#s7��6����HŘI��X-���g�|#���%��"�t�r(�k�`*G*R<b.�c���=�B���;��#nb�rA$mjcH�(��Eޜ���'�/|י�t��{��ꫢ�1�u�^�8��ܞz�c��&����;��[�l�B��E�W.�KNh��b,P����O���������W �G?�V�c�^���;}ȷ}n�h��4�����d��U�Mp*����<^�?1����O����t�߻:�9�Q3!Y��dB爞�����A.�g�ȸ���~=��%/a�k�D�*?�!�����,��VVAN��_ ��U;��fs֐�B���GwM���"��HaG^�L�3��DT[N����'8E��E\?W���*|��pUU�]J�Šf�Kr�ݾk.���.q���9%R+���H�m" �}�q֗w&h�v@�aZ&g���5҃r��j�u���Nq��/��jV��"�˺u���}��b��m)p1=�~6|�F9�Q
CQ��G�t!���l����L���KV��	�h���t�:�#=����zDwyf��]Ͼ��w
���m@wV9���lj �t~������􆣀Mj5���	��)З6�=�1��F޽��$�K��z$c؜Yl�ȋ�#�J��_��*۱K��$����P)�=Ϣ�`Y��-�*��Wzif&�']�w��C5V�Rj<B��t�.,3�w��<OSsN�ѕ��a��	h�֞��ԾdSـf��e�l�V�cN�K�X�\�(�I��tGtB�6��gr�1�FhI�D��_��[��{4R�G�q�-��:0=�� ��3�}���Y��6����t.�U�o�L!:N1�s=�Sl���Ͳ%�={�c��8NEaw:->�D��eF0d@��ew��.�S�)��!�#�H�PaQ��d�������b��ąfrڵ1'��Rq�ae
G���:�p�*���j�>��?���!1����|? xHjp�Oa�X�N���2����J4�a<8s��>�.�~.I-�g�������zV?�sn�!5��=Α{�"{�<!ڵ�r?���e�6hH��I�[��dݞm�5:��6OJ�	�s�QO�K'O�3�c5�P��ca��%���>�Ȏ,7�6�o���kO}P0#$$�M��&�g��e�X��I��Gқ����1r�.�}H�X����?ۯ��zڭ1ag��;eN+��N�`��yb\[r���u���z����ݒu#�7�V�5K�,v}Qt�Q�qD*�����(+?��b�c�7�Q�#���������*탥�ӈݐA�r]	�d��iI����������܎���� �7�Gx��~v}����ڼ�wE�7��n��o�F!D�D���,}����(&�����H+Zp�2(�'�'���\�#�J,3��b5�`�V3�P�yW��>�*y���y���ւ�[�_c�����)��6�!��f���r��Xp�D[ɣ�4T,7I/��ܗ,q�1o���b.ؾ�/dd�t+����kcnD���i�"L��Ⱥ�����ti�1c�C�����ԍ����A��v�Xy>��p��9_Oegb�4ZQ�L�jlR0����U'{��uByPq��dh��"s*���B����L��o���� �&y�y���* "�b~��$���yŀ�3�z�R�b�0��,Aq�}2����gӝ�<�O�*|_�Q��Mh�F�DT��:v�_�Н]�j�����ߏ|��i3�>ҧ.���W	�w�wc����/�x'�/����
�
7����=���+"{A�P���ǁ(��>Ƅ��u��D��{R�t!��l+���Q�Aw=b'�*?�J�(�\�W��j���md��Uf�V����G�Е�ݯ�2-�L,��dC%���C�I[�m3��*��!Ҍ�Zl��aKM�a׼��͇D{���ol�Y����WH�Ɛ-!�V��;�5k����L+��#�q�'���o$�<�<q_�sۣ�BA���$�΄�QlE[������p�������r��"�����/Q���� =��M���<�=&O����m�`f���)���m�z�w�˽b��<cŭ�c@������>�f�x����HYJ�2wv�f�ch��ه@����f\o#�-�2�V��o�����Xp��DQ���lO��C��������C��ya?Z��)9A� ok����a�\���:U�
!�����2-��z�� R��g�ؒV��<��<o��[3�a�4����[	�*Y�tp&)�ΉD���h[�����"���6��%���Ӷ�O��2�E�hg�C�    x~�>P�z	�-$���L\�k��j�M��pt�s��z���RN�@g�B��Je�lg�#��o_k����)��]���D��}�kT=��o�Vm|Vcn��6�d�xino+�_�Q�\��Ȇ�0j��^�p�R�si4(�k,*��'�XcJ��0�������?Q���tӥAb�r.�2An��>J�<�=�6Gl���=
u�ì�l�fSi�ݖ��dt̓�˄r%��O����7�����zH�`{{��C���6#-VC>U������*����'k���-��'�	<�ᅍ�NV��t�ן)t��.�7?�l�E1��j��3**yuҺCV4�%� �2��(�W#�}�޲L*�?;�͋�a�aU��z���7�^�u����̈jt�~B!X9��-��^���L�����#���-;b�wau��!&��m�;Ds��}RUP~<8a�TԳ���)~�sA<�5�M�'���N�hH���,W8DB�[�؎a���μ��-��}`��V1OF��Fa�9gf2���v�e�+���P�o�&���-l�XLy���r�'�3a�Smq^6��S���-+�6}N9��5��_��_v�b%�9>�b����"O�e#�XR��iS_���B��T�R'D)��7�|J�5^��ΰ�;3M��hG�'�O���t�몋\���.��7)c��$ ��=)��\�.l��	�����ה%Z��jx?Z�(��%�D��w�ٔ҆8E�TRhu5:���]o�����X���;������y��ȳ��o��Ƭ��4d�ά��C����<�H�r��r����W�
�lO��R�3-���%��༶��n"rs��Z�y��;�u1�?��|?}���s�����.�9���
�hRJ�3q#&/^ޯ��`-��#�0ytEs(��\�n�;������:ɖ#��5g�g��z۬���%����[l<Fd�ګ}z�i��a�u��"\o�q`)s�3�-�/@4���g;�z����0����h���*�ksbU1�2t���l�A�.JN�U'��i������i�qKZg),ؽM��<c�M�u�`��ٔ�,��½TWY��ŰG<�l�Sq"�5���vy&��ȵ�ߙ]�������X2�}|��W3�e]�.��B8p*�#.NK����O�;'q�M֋�dh��ɞ��%�$��`��m7�v3=���g\y�-6^����U�-wۿ�5K4�s��Y6�4�z�'�MΦ6m� ~���D���.���+�Z�yiq��<�ϓ~�(�wƹae��@��>=�yi�?k�6�P�x$����t���c��b���*����ϾM�2�������D��{Y�j �i�9��w ���kUZ9�_�o@�z�5���{��ʍ_�c�I4��/������w�~�i��q(������#7X� Z��K�95_�ީ�	�}��U������X���6#BL��>%�����o��w���f��~�	i�<<��IC��{����֊���S����U���X�qTmK�?(��w���H�i�6�G���c�v���}�H�U4��oz�t�ድ�w������΃�!�����
���j��jկ���f�����w��D���?�TNX���6dIK�KNj��d���ԷѪ����|p�+�C:�۹}A��,��sP�K�G��Y�08y��p���c�Lq�B�:q����{{��|�K%1x��>�GƧ|0�t�rp����'��3x���滌�6B"�N��G��l�Y�
�M�����K>�ɔ��x���7���e�d�Is�I�o�T���#k7Ui�\������I��~�~�Ѯ̶e�����O����m�ȡ�l�j,i�>�'��;$������`T�U�x�Fl��v)�W;^t�KYZ��a;�}��?Ra��!;Tr�#4�I7S s�w������H���ik6���\��iu?��wi��8�\f�	n۝L�L������֕\ߠ�6���� �:����ěCβoR"xgק�V�A�A}��k�;�h���� �,u��`�������`b�d�j��j�)��l�`�y�'���.3'�������^`
����{?�P�ݐ��Oժbz.�~�Cx�=<�C�$���[�}@�x
�c���Z�� ���Kc@��eQz:�Y���l���y�V�w6"����y��x������=�i�k��5?i$a�>߱/	1�{���?�^;�Q��1�8
ːŧ�߲%���s����?�ED���\���������ޞ�i�诼�����n7"�ǻyW!F���D�a'+
>�.��`��A�����5�cQ���T'P_��h���;�!<��!��\�z�|��K&��;P���~�IV%��}К<'8�o�V�&���r��/�_cJ����e���@���������]jK��-v+	b��W_���u���~8ß6��N���Y�1[PSo�ց8 1?r��w(SH�����%o{)�D)<�L��Xx~B8hsv�3�2��='R�$�OHÁ���2�ט�1�N�8������g�d% ����N��Q�:(O��_٩��_r�b�U���f�_�aG�s�������?�����9�s�����)��Uᚄ������~���������1�q��T���{��WE'��5 �|�r��JM݀�׿?M�u���]�k�m����v�.�z:v����/�G�����|�!��H��/��w�Is�w��+�}��R�XU��N�����+�U�>��!��1>l�?ҷ�3�&��/�����,9}�Ϸ_!��7=�v�t����mv��כ�?>��cQu�ؿ�w��z��.�x1��������
��W���k��G	5����� �X^��d�X����W��N7�7 �W��xi��\V0��W|�
�`�ګ���[���5d��͚��\�S��wyw�
|�^<���<  \���L
���:�D�x�c�8Y��	H�ր;����2��XKAQs��{^5G�W�c�����/�ux�h^jn�׀:��&P��B.�TЭ|��+�6��� �ưB
^D0�|.x��p||�Y�(/���t�O � ���@������8`�ǂ��l��c�U0�A�}`� [� _�� j� &�r�U���F`u���	X`Va�������@{�*��� �����/	8�����Ι�;�%9bܚ�k1.�)��<�SW�^r0����q9$�p��`�Y��;�Z!s}�0�:����jI��+��P=����"G�@�rq-� �d�z\�'�V.��7�E�X%�	w=�#���%$"W�����9�������\��ww��7�r2�{8� ��{��2���n�e
��a��pk}W�}�r96 ��2�Á�F�JJ���׀;��\'�q�7�D�*8�j��3�(��{eǷ�VU���j�F�%�F��y�VKМy�Q[p�P���z�n�5xӁ�ڎ�Tt"﬚���f�����>�#�e���x�pw����>񹣭`P���H0t|4�"_����z1M��K�/x��ѹt���O��O���e��_��/�_�΃)8��&��W�s�㫞���U��pZ�'XV�Y�x<��4xc<�<X���� �[ ����FHӂO"\cJ0{!X����,8�)��մ .
!0#�wB�
��:��I�ks�#��I;��T ܀��:�[��u�(<�5 z^�����:J�^m����8���C����@T��J7	Lm ��R"�=T�Z�W��8U�'�UTV���xq�2�g�X�:�v\h��]�'bb�'b��WNV��qGN^�|uwNIī㲜
�x
�Nb[{����Ci����(�jo�� *�w���������׾˙�H �8�Z���F���g"���R��3I����Ir\9O�4'    xp&Ρ�d����:���#.��o\�H��\,J����j�P�ZjA�p�#�@����V�F;�ҲF(WҶ�:W�%l�c��$r�[�ZH���ʑ��ƁD=@BI�5�����n�|q��kE�t��R�S�2׍�_�>�r��w7��7/T�'n����$n��<�Q��5���#?A6q/Q���Ľ(y�s��&y_�� ��2]��Vev�n

�[1E����&EY���Ԋ��'�U(��J��E%�ˌ��J��#G`J�GNJ�^E��ֹzܩP����@y:ׅce^�g�,*[]]��� ��c1����CV��T8��
�B=�������������,�Fx�P=И������,�iݼx���мrVp�x�R�������m�/�:97��'u�����m���J�m�[�����۵�:��;�&8�ǻ��8ݍ�
M����f��Mr��ˇ��}�G�����ǉv]��$�m��|�h����Y�=������������� �-4�>|Uk�3�|]_g����(���#Ʒ��^ߍ�G��tI�ǝ����~���]����#u��3����y>�a��g~/��2�ٸ�u��Bׯ7�.�
a`-tL�պRO�u}�p~�tǙ��`�S?�)��<	����<�`k�'G��K�Ӊ�ˇgj�]�E�<�xG�R���#g�u�t�n]M�3�Yk�O�A���$A����bAlOAFYo�����؂��܄Km��.蓱ֻ*��;{.X�A�}��@V�;@[��Pp'Su�Q�(�t0FT��-���&D���8!īY��&���k�2�|��&���II(&��T(��&'�2L��8�.�w�B��,����l�5�`��'W�k+^O���D�h� m	�� �Vx���Д��9��a5�Km1+Co���Y6Ֆ�s-|
[�ϸ��������@$v@Nv]#�p� �@'��A0���F/+�@+Il�Aq]�0^DNud�0��o��q9�!�F�D��G�P����D-p�Tw�er�����:zzf퐛0��l�	\�ѝ\u�����+�;�alb1<��&-b���+Kb��='b��M��|r�F�����҈��=s
ux�<��bSxʦ���FE�.��F��RW��!�*�"Ʃ�.��t�w���z)C��8vܗ�;o:#����䫛�w÷6S��9�	��9��o8�O�?�V/Ҙ?�+�w�Hd)��؋�&>�9���9����cu(I�u]I��q��b����A�y�t	����N[�ےY珒-�A9g�&�%�8�&�X躡%�Eo��Ս8)�n������r*ܚؖ�:���!Uj�4� �k$qI)ݒH�R�@乩'�c�l�$AT5�,����e���i�ir���#i>G4�o�{��vO'V��.}αŕ���q���Dqޔ�1���WO:��ý.S�&�jLlU'!X�nи�.h�x'ћ�<���6�,�I�6��I��.�f$��ʗs�p-/S�s�U���̵����u��Ӌ�}dJ]���N�ɱ�V�]�S1�7�NΰtޠQ.�ۆR�&�h�62�#��K3�r�en=�~̒�1�C����"?�lh����e{I�De���˚����.�2Vʟ"7���1'��9�	5Ϲ��s~s_>a�c[6����}�2�����e�(���
ʶ>�(lwSI,�m���#**Uܹ�M����@7Θ
��+��
��ũK��
�+J��%ʀ�3%r�|�OJb�mC$J��/� �B,w����X���a��B�9_/�)-u�ܓ���5�N�2`�G���>9�����1��,�6棼׊��P��J��e_+wc=_�tc?
�V͆x�	��Q��p�k��*�v>�K�������o��j��O�����\�\)$}s�a&S�-�P���-�h��oG��R�)Hd�ҮiW�2�iX���_����0/Q��fCQW�w�b�iV��Ţ�V*ý�g6�6��~Z�5�a[u̧�Z��|�G_B-�P0"'�D���F��ꠖ&q0��q
�іW�[�ǥ�:�X���~4�>C4r��"�5��"�6ɥ�"6��g"^6+��"�4pm�"�6�m�M�c����e)��Ih�ʶ-I:ڙ�!I!��rIW�w���v\���v��=��|�뤀ꊧLRdv#�/RR�L�)eG�]�-D�\a �j�\�[j�޽�B�>�b� &���L�Jk�cLrH;4<�ʓ.nP���pp�,��q�꜕Pb�|����)T�l�.N	�F�.}�1p�U���=�*�4�v��%q��++�x2�)kЈ�"���^m"��1����� �T2�*G�4��%'�t3C(��D� ���a�Vn�٨'Y�ҟ�:���z�ٜ{&�e�����;7��"�g����o�k_k(#�7�WPF�ooo������2�~�z��[��H~��5�d�X�!\��2	]��B�]��.Z��\E��Xm��\S�pY{�D]��+ٲ��QJs�l4W�c�mLP:smlW�c�k<Pfw[�7�,І\�Q�Ý�K9�]a\��ݳ�ZyQ{Q����t�B��D�)���y��x���,t�7������u��J{�7멺z�&t~nT���G�|�L�P����O�&�y4��f��f\-ˋo�Vm��dw�7����9r�(��TU{���7
��ͳj���mܚ���7����9z����`]%��L�R�o�VcU�t,C�Q(a��&�P�ڽ���q;�����퐚y��Ɲ4���1��
��Oi!��h�?�-��&���*���q�(��ɛXҦ������v
�T�N襰�[�ڗ�f��
_��������5�z��b�@}�s�?@w*Q�S4j*XM���ZW~�1u�@�MC��}���;#f;]��)���G�\lb{HOUj�J/8�bGC�4#����W�n�X�[|c����8v�߼�t�m�-vutD}��������	��{��lݠQ��0ip��bQ�Wb��5�lh#�77f�-�q��pZ�f���K2gшJr�����$|��H�F�N���K���^Ƙݍ�7��[
�7!g
J7�2��nr0^%X��0^��ق�b&���	�&;QvK��g�r�QL餾O�1U�z��j�o)%7m�6 �0}�N�mFO�o?��j4	�YX̣J�YGO}�f�1k���1}���we.HI�f@W��'�(�F�0φ�v�vJu�ޚo�=[#0��8S�艓�������Yɵ�]=����<f�#]�cY/s.f��C�b0ߴ~a%4��m�Or!oU�G�B�j��E�5�?�SZ��y,��<�cAR�:S�o:���6����k�m	�[�P	��H2}��[�6O��[ݶh�][�҉Wۤ�� Ԛ�-I*��I1��v�J��ovJKP;4v��t;����:4ivGʩ�(�d�S;�쥓��;�p�R۷�X��H��Ц��,��ڤ�`Ў9Ԥ
ܱ9����:B���;���m:����q�N�!�t\R]�vBO� dr�S��W��Nsh�ԝ�C��t���8�L�>���Y`��/��%&�^�.��dT.8�d��; o�9�2e�"]�~���]13��Y�'ECۺFf1��6i��~f��Gu#�Z<�s���=�pK�~�䶙�w�����r�~+�����y��U�}X�	��HN�颋�η3h��6p�z^o����{
�m;��ʽ`'�ɣ=7���3:��|��y_�"�[������� �*ɗ�������F��x��I��S�zi��V`�Y�!XPv���]���Z@¥��X�z��U��5�KZ8�5�X�v�]$x��V����Ȩ���O����/�����o�����ϸ�gן�x翦�Y1�/���
���Io��e�o�Oj	��"S>^����B�X��j�/��g�M�g�wA0eM��Ae�*�B�M+��EA�e���<�;�v�-�A�0��+t��D*�G��.V    ��b<�����Z*���'$�JQ9#jV��,ZR%!�;���)�X5"4L�
�$,�Z��p�vu�Kw8V���W�d5�(Gxxͣ����׶՚G5֐�1���[�7�G��o͑@����#�l��3��w��so��k����`�
���p��w�h��o�x��p������O���E�1zaC��S��f*�$G�S�1K>���X�Ǯ���ʏp�,�)M<Ү��M����Кz���ԛd8�2���x�m5�t�c7���4��/�W��a��⿕ש߈����g�Z����_����$R�|��K�i!>�'��UE`)��5�%��u���$�V�G���6�ǜ�����?��;Jvz�{"Mnm�}�L^��|�&yw;����E�)Gދ^S�:�$��x,���oUM]��H#휇'f��D.��K$1��+d-��k+ݪ|�~z�������ߵ��;���hSp���3����Z3т��}ej����L~���<�_>�E���eL�����";�'��0�I�|%y�{/VH��^_��ʿz!?2"{���)����y�_5�K����4
���f���V}�'�/|6y���k��V��a:���`F��qa��3{+�U�a�����{v?0���`=�	ή`���P=�%�P��$@D�Yd" �/���K+r��+j�,+h�+� �8"P�W�`�"���E ��A ��'�PfHǥ S��4��Q��.�i�N������ȃe�Ӌ(�6��@(�e=3&����fQ��/����/��E+��:[b���V>�fP��hrU	3ע�R�6�
�2^��f>}��m~�ʁ#�U����j�?������a�T�&hb�UH.�bUoY�Т�@D���^|8�]K����[��/����۰�֩-���UW�,�[w���O4�{�����
�.cɊ��p���,�LMn
z�Ԫ9>�B����F�՗xÍ	hr3�wiو�M�k�ʚ"׹��Bw0bh�،�����,0Ns!���U�ڌ.���ɖ�M5�����ĭb��Ď�)[��!��X1�����Hp��I���=L:�q��I��u�II5ګw,I��W�����D���Att�v��-#;�؅�G�M�%��=J��žwHA���b�ܵ�`�M�/������&����};4~H8wdQ��L�S�=s/l�z��:D��>Ҥ���9����-�����+����;<Σ��g ��o�[����r�D���v�c{܃~�E�2pyb'0H}�F�9�[FcP=8H�G04DL6c�ϐ���� sW¾Ø���:�dDX�u�D6�(z@R.�3%��_�1��B]v2s��Vb8ǎ�1�g���yL�
�r��Z��H]�r7.��+�x��kڈ�M���F$6����JlI�Kn���'en�ٹ&���&_Χ��`98����8���sO߸��d��m�匛f(�
N�x��b��m�力?����xV�}6�I�;~�婘�dN�	��s.�Y�'a�����l��3���d�J��3�K|+�7�E�����E�O����
�گ�Y^���Z��Ű��������+��ԷB6}Ƃ�`o�������|/}7e2������K�;�P��̇���"���f�E���y�c�]�_�p>gE��\�(E̗f��DB�ɾ�D1�����:,��_�Z0���F��1�+�r �$���5t~�v}\��v����<��5�a�k�#�Ik�#U7��A^�\���,X_��}��J ϯ�eQ~W�&����!(�n�ͩ1��A[$c��5Gp�=N�3����m��ʷ�v��y/����y�[C�~�N(ɩ쟙����U�	���i��l.�#؞�$�E������� ��[۷d�ĴC9}~�m���կ�@P���TN0�����
hM��)�6�G
��EԎ�flB��q`fU�-a�Tm�`�E��e�(��	�I�������!��:����;���T�>3�'��:���~���$�S�ߒ�rB��|�_�J��uR+��b����"���e;��n��H���z���
r���5�~��`Q]���؊�*/boT��o����n������[�����+���.(xw�^xqA�E���bS%�e�Q���SUA�b�+�<2c$�@���3�A~����>Fc�.l��Fhl�9S$h�:̪~!�vM� ���~L=�^�LX�v}���H�ua'��{�Q�mZ������~��������L)�s�u�DQ|`�����d�"�+��fG,6R��F�w�ɒ��i��ON��N~K�q]9	�j�F�|=��J���_��.���� �W}yC��H�J�ًD�W�䖆u���g�-���`3b�l����zL�JKC�sT �1gYT*z�F�	�������\��*�5@���[���P�ڢP�ĺ.���ܛq`��j��cB���M`ڻ�r��ܠ� _�⽻���*����ǆ��Vp���Šd��\��� �Ņ�ΨU��8l���D�툻�)�{O�	և^��O9>
�?�6|`�pX���������w������[��~oCYyz���Z�H�N��Q�]a�{r�x�����:ɾ�d�s`y�N�G��oW
@��q�H��C&�E���7��/�[�11(��3��BA�s�P�	4���P	��8�DH��]��ᆫ�6����O ۋ�$K��'�� ��1B�iEB�+6r�|�/,^ ���^Հ�����V}��6Fh�7&�Y�4�#p��ά.�jރ�S ��q, �YqE�Y����F	���,@1�A�3p\o�z�`R 6�N@�����|��������]^3��*SX�u�g)���pڠ8��ʂ��j(P�_Gg�ߞcR���i~�EA�W������5�W[��'�Q��]"m�#mӳ��}��~���?��e�M��%a迎!�e�{wH��`n����ו6-��O݆�����+M�H�K�3�K�?���[c�D�J��P����Z��`�o����__��ϐ����z��z������������u-�__����y�������E˙Ws���.�\љ@�m�O��C�*����g�#	1��5B�1.lYa���%�G�v�뺳�K�e��>��M��O�L��n��:�JÏ%V�Eȟ�V-xƭ�:�l[E%V��K�5.|4��;5Q��d���x_w���п5���i5�G�Ȋ8<ϥ=���?�Z~�̒w��te��H΄�/�a>%,��ߐvD�/b
�	{0l��e?N�Z�[����K�i����T|g\9_o�4�oj��+�(�N�xGV����	�!z^.HP���<�+��� W��`�Q�Wgn&��u�l>���n�啽����Z�2��dn)��|���=� �eC�����)YG����V7-1�����Lzz޾�M�L1��T�w�I��61�}v6�87�A2���* �APP��4.�>�A��</@��?Eu��w��L�;rkJ�MZ0���s�L�z��r��ެt�,��]��7��{�V�����|�lH��ɑ(��8[D�H������rϺ��^i�'ZV���yKK���)�1�_�� �����O�e�EZ��=I_&���w���r�"��*	<���(�$�?��:1�=��|� �A��r��\��n�s�C=@3���Q�H� ����umQF��A��tQ�_�)��ښyX�P�`���z��g�?�;y��>��5�w�H=I���j~�ݩ�)����Q(]Չ�6�����{��Y��Gӎ5=Q�(ޝ!�y�����l_O��kn��U���9�O��>�-Mp�w�+H&�3f\[Ҋ|Ҧ¾��}�VH�prFhY���;5Ë�
�#2([R,D\P%��Nrd��~�b?���3[����֬c\:���A�X �O�}0���Q2�dگ�l� h�O��x���~�������Ma&~�B�_�    -��%��0�����Z�����Ѕ�ad��_l��� �9��9��v�VX�<�4XSr8Q�(���O=!mL�u91�Y��߫4"�q䑷C1���q�ʄ��> ͥ�nn51� �=��ޡ�'l�%jM@��:��]uK�7B�t���y>�g>�c�k�[ H�����O�R��U�Ĝ��P5:1G��i��U���I]?Ҏ��������t�C���<9��Ĩ��,p��HOM>��ޤ��Hz�%l�Re'�3U��1~�1TBG�d�~�)���)6g��E������3?�ٔDh�fG���#mvm*p&��!j���t6�2��9  ~}cx�H�'��B��˼���,�����+3�+?wT�����6��ǼL�g��L_Wn�G?��Q��P�]�.#�Sg�O�Xl� ��Ş`����uڲ�F,��������������)���˚����P��W��;eZ�4�ì4q}Ff6c�K!!>�����u��_N4�Q�����F�푈� ���%��cJD�7LBM�&Ȇ�ς���֔3�����*��������p�o��������T�H�n�z�8�m�a��I=8�ӈ��轕�v �����p���P�{{�x$S�����ǸSQW�6Ӹ{Q��_^N<��/�ø��[�q�=�
����\Bc\�b�2�8�����ټU��I�)�To\��:j_U9�`�Hovݼ"^��[{��E���K}�;Q��%a�t��7��u(΅�2'�z̏<�a?�,�]��HA�,"��a�&��-(����T�[��!}��7w����٥��_OD��c����?���:J����}��R���[��@\f� ��ȰBr~�ߣoiڱOg3_�]�S�rx�ZLR��h���+�|�
s�x�?Y�}���J��s��4?��.�*�?��F1�P��i�	84�/�����H��r ۳��=�ʎ2�t�^��粡je(��JG�3���yOm�����Z,��x�Z���A� �bmnO��������Gw����# ��R����$s�;�� ����*��#�՝�s[	_�qc-3,�P����F�n�*�A&�P�8D�5 C�^
�*.��٬�'�����?b���Ss'&kѡ<��E-�d��$���2��ĚQ�B8'�jd�أ��Ҩ4gh�I�}R��L�ͯ7�Y�I�0f`]�*�K<�(�� ~�%[
� !��!�`����Jh��)}j���o~L�;�P+�˳����ǳ��M2}9��" ��˿�Hƕ�z��u�uBbF�*<�i�"&���D��@ ���X�A���ry/�#�K?aRVZ
4�z~�t�*��+�{�?N���+_cLi�z�	W"���s����)�Vq��-���u5�NK�X4������zɉ�K#��߱�Aa�J��P���!����;L݂8�0)InY��oq\fvȇO�P�����ה;��*Y��DKH77l�y_��r�$tp���/o�֚3��@~L�ah��ׯM���o��4����a�K���#��=�**i�9�@��1 ���Wqkӧ���O��բ==c��>?���9+A������w$=d�DR�ƷH����>���	h)��L|O,ņIlA�d�	�2�z EBw�!_e�
��N6�����n �M�P��Y�:ȭ^�ix��o�3/�)�h��9�1Vm�`30
[6e�'�XY�
jш����%��Ks�~��
��u�W��rPƼ�������[�U1����UmΠ��=�m<�X�_��a-6����T�a4I�g������G*�-�w\����"{�paG~h��z]�^�s}PVa�Z�aT�+�M��CǱ�|ttAPx$ ZO&�n���[��������a@q�ZP7V�|�������O(q�Z����9���\p3�dt�;�=ܘ~�gv����ห��c���汣~r�Y��.s�M����"�F�1�u
M�ǔ,J� nq��^.�-j/�j�"n׻�����m@�Y��i8f�^V������G��)��iP�u�;=�Q�ܞ�K�eK��������;y��;vV[G)��n��.вϹ��V=�R���b��,�h���4����DFQ����*s��-���
3�X:8���!�H{>�y������-b�K7�݂ ��(��Л�)��I!zCH{������5L@���/t}p��n��ɋ�����̫�Vc�8:ץ�j�����^�E1&��G�,��lrK��ǧvP�sI-+��d*����p鯳���q�"^L��-ȫ�+^�1MQý+>>_�@�����n���,�d²	#
�1��ʘ̼�P�d̝m)���ux=&%�n��1�°d���JTbWʛ���q�_�+1?�&���[��_��Ӳ�K�$�U�'2 �\�t_��������x��]�f�m��2��x)Vz����'�����6��}�EX� ���M 
~�Z�A�YUTX�Np�{�0}̂6��HԄm~~��Dqr�_6��=[��Ր �Fݞ�_��t*	����.���Ё���� ���t,��
P�%�F
�+�j@�Lg���ʞY�׍�xO�xY�&�H0��KV
�_5�2?�Jל/)f��1��R��|C�`k�������rAeYu��)��. ���K-��An�ܙо!�ǁ=P��/ͅ!�Y�Af�!I����(����q=3�{��e�	����Tk-)�2� v�I�p5n��7>,R�}�?�X3��c�_�P�;NrI��e�3��i��Q����NK�}[�{��`N��#A��_���=w^yɊ�%DDm�+�F�4�URmw�#1����5��P�ϋp��#G��B����!��X.�8{@��7��қ.I٠���(_`�
��F��t/�5(2�*ge��1�����;W�-���4C��5]Z%{J��'0�*�	���A�R�Wݢ�|Ps��<��(5����y��'S�&R]ԝj8�NY�V�&�	���c�K��^��W��1�@c�S)��۬P��s��-��`�>���EUS�MeX���7���3�6���_c뺌+��e�׺�u�?��`�.\��'f�F��ϲ��Ȑo��uFl�l��V@|в=6�z�� &Lu�R�ھ��o�%��`��l$v�`���ˍRF���d�&��R,ո���l��`������%�dw�J�O�qF�����+��Y��n�?	�%X���lr�;y��l��Bg�[~�Me������D:7�V-�	g�J�̾?����w�3�f]����W�LX(�<:ҋ�'�j�<h�����oN���/>m��z�s)i�� ��A?y_��?+q��9�K|�Ν�;�ׄ�z���55;ٷׁ�.�,t���R,ldM�0��|�6���s�Z�g�LS׹O�)qfJ�釅 �"�45��qg8�'|�4Zp�����HM˸9�'�7�Л��@�1��;�a�h��4Hi�Qz����Xj�l�&��[4#*g^[� x��v�h\����:d���`&�� 	��� ��4�#���˥���ŤT�<��?Z���?������xK���"�?l�)C�%�_�d����=|���b�<�Vc�J��`*V��=����j�|��CZ'���/M�;Cr��,t��[���"^>c<��S�z��#PA�xn�㮪�K��vnÊ'��oĆ�-k�,�Yx����f4^��,f����[����ε�Lll�$Kf�*20�����c6a�,��0�TM��	���G>,��x���Z�S�O�{gvp�����
�q�4���N�fxi�`����Z-5�pLĲ�H�o΢����`ɩ_�ߐT2G͕����VI�R q��*Z��A�����<s!�ى'�2ݟ�����n���(�z.u��cn؆��")�X�x��+ �nlz�������;�yHy�m��f\؍J�K��bK,�'d/bi�Aqc�    x~�\�-H2Nn��ɝ}�bf�+�@�\��2���}�s���9�ݠ�l�Dj���g�6	�銬�\�"��7n�@M�K�>��؊T]!�zđ�1�o���kxJnUt�w;�E �'c�h��
[|���!��DU�{��̹�����؃G�&����_�w�[��w�sҕ��������c8>7I��������F8=�s�kl�|��RtX~?�W�Eݠ3�J�j��@�s�[����*>Y('�x��q�u���ʘ%��`]�re�L���,ء4����NI%�����bz�u���Z�&^�!�Yź�xЎ���d类�d^�]Ȃn����EW�;[��|�>x+`ΔF��� �*����}�7����t�j�3�EF�}͇:�(dvE���?��d�e ���R�p�U��n�)�A�EH����w�/�*U�3m�J��X�O�̿B����m���5�P�`J��uV�n�b\��
�rq�����Aw���o�#Yk_xJŲ�J?�~&lr�d3��˲��?�e߻����w�H��wVI~7Z6��a��;���5Xpޫ=��+���9�X���"-zH"���Sb�e��B�׳��!~o��f~���=%w���l���)Gl�����*��HD���c�8&a�4�?|.Z�0��6O��6��_ �!��X���Z�1잡G%���ߍ�ѳ�)����Ϝ�v��t�>�� ���}����!�~'��[w*�8���E�c�gn����:S�3ʤ�b�3��1��gtoC	
���z|�×���}���D�o���f1��������N����t��'�w_������L-�O�ia�-�7��GסB[�W?0�\E-�w
m]�Q� :<Se<�]��t|̩�ml�)������E�*_�JR`�a�j��q��MS���+�L�����0��YL��ߪ̖'
g~҄P���0�U4/�=	Ҫ��P���۟ż�x�k�Y?c2�L�V�=�z���wY�W:9���ukj�������e��lDݍĦ!���4nW��oL��"I����x\!�A�3H�k���Z���(���
���;��(����o��J�����=�s�G�\5��8!�b�8~
�����I~�O�MěЯd�#���A4F>9%�A�j���*Q���#S�}��گ�<���;�ޮ� w���7uB��C�>��2��c��8���:_������~~k���13�|ι xc�5�������qR�IUB���+�at�<�#f$׽�Z�A'�H����c��K�+���^)=�x�c"PK�f=���&2���v�_�Y��^x����Ȅ5�X�K�@��F]B.�Yl�7j\���u�3��_R*D�m ������5z�>ົ!��U��C$���s�cS�jp��-�-*p*�JM���S��i�×� yUcS���8dV3���D՞�i#�Dg|�ysU2
��ە�2�rs"k�-r��'ZN�U���������
}�"I�߸u��r+C��SC��pٰ�N��t���Z��G�͜���"D#(��)*F]��p��������Z���v�"�2�g���ԇZT�Ә��ʜBG���xH�'#_���c��0i^1>L3�j�+���m��Z���B�o��v^t��=��.EO�"�_%|���+�ј���������,x~r��$>�#&2�#D�#�Ɓ�\�J�i�PyM�H���w�tׁ���jT��U��b|C��T�C�����ą7�Tו�]�K�q|����D���Ġ%��5�sj���%�e �TޠE���%�3D���~xm�?']�g��\jt�Y�R����w�.��Y)cʬ�ȃ"��&��veh-N=�j�@'����0s᫶�w��w���&��o�BJ����4dv�.2�([\K9��
�����"WM'v���Vt.,�(7u?�㡯��Ϳ�I�H��F�Y�va�޹�i��TS0����z��Ӡ�ִn��|cKU��@��6�M�ь���tA��=�#@��e��U�+l�>�1��I*X��ICН�x����#�U������S&�#�h�� �Ƶ9+#Jw�H�ɨd�e�V.#�Ez�Ū�p���G�WW�(fl6�d���.N�)W�9��I|�~�{���
�
 @�����h�K�n����}"�����O1�+�Z��7Bŉ�F���q(}���9O��3uc�"�y�b}�N�`;��U�j��=W##�t=Wa���3�/6Nr�a}]��n
��}��EU����h] �>
c#��s�='��T�m{c�w�n���b]��)�3rE*fя�����VVjl���}�(ӥ��[|���!8��ѓl���Ղ�_2�-l��H���x�M�7Z��Y�s� �nI���_fze\'�#�-�[X��M�D�lSgks��O��|0�b
��4A�'_��Æ#��˦ZJ�O��F������Δ}�a����Z"NG���;5�0JF( �q���?D�FƝ��*��C�=�9�D���V��p�y_v��,�+d��' +�ο�	dK��D�JX�#�q��p��ӨƦ���^C���=X�Xm��ڸP��Ӷ��)YXb�ְ:mkG�A��nX!�7H��Ly t�������`&F�4��a�0��7e:��+k�u#�_�2)s�a��>�H�Ӣ~��#m�(BH�o~��1��6<��֠aZ���P� ���62Z��l�)���#�a�"��,(=�ه��G�*�G�͓S��H[�0?��[��
����Uk�����%~gD���8���w]���#٤�&�ǐ3�?&��,,���s��X�iQMp�����Z�����	Z�!/���dOv��6/q�3^����������[#%���]iitf�y�Ɓ�QJ̐���0���$�[�d[���5œ"�	���������jT��C�z�Dbv<��������:��c,e����|��UPصg�'��D�,8�y���nj�������9�a�=����8v�["���ϓ�&!3f�R$�a�qgXU��<a��kPy~+hn?�hd�b��R�&Ds=�eK�r7����:���,�����HCN�Y�L�`�fC����~�����E���u�w�]N��y?w�_�6]�i���-��0��4i�w_Z|}�v���D%]-�6�����i�rjNlJ��4�y�Ϟzl$�Kw�fJŭ���?�dነ}ّ�٬N��78�9L%�� �jW�3r�n񅟆�.�6kM���3azŪ]���]R�r� �^��?� t���C#��O�h��<RQt5��'�O�oj�N��۫�6L���DC
�"U���(�����v�g��9�H��BF������d�s��ķ��ު�	�iɳ9�2�����{�p˛�7T�z����BR
 At������@��4p���;
�
�ȝ*�ШN�Y��{�ؽG[~J{�����Ր��;�����<�i�SZjE���L:�աM�>K���̩�f>	���j4إ]D<'�X=��L�x�D�"�Pû+�u�"�"�ۯ������[��!��u|]��M��=x�H%�C�J� �R5#�%�#�	{4��ڼ?4-�����fp$�4�h�º~�C~�<���hf'f��IHӏ��)�\�[�s߂ģ�M3h�BJ���F�s��#�b�SX�'7R��j�B��ތ�(��Fl?�T=u�s<߅:c�d��y������fF�Ϭ�Ƈ��,�n�3�>�|�E��w�#��[��!�Z= o�!.�0}W.�M1"��dv�}"��_6$pA�J��gâ�x=�Y�r]�Ix�ҫ��?���m��5'���½js��s��v��"�.� 2�	�ZpH� k�\~�X�֣�"�iYMM�I/29)!���(w�x#�U��EZ�\Υ�'��U�S>�>�9i?�e�oǠed1>t&����%�Q> ������z��.�(����9	� 8��T���SBvE�N���ȯ���!�.a,�<�� �
  M�;�	�%�YJ��S,��Bz8�ì�X��m��%�I��(m;|��a�.����j�c���ܓM#4�x �z���r�n����Ün{k������˳�>w-���.v���`���O�!
�(����豤��6jɨ!��x�*H¾��
Hb�J�g�r�\k"�U���n$��P].�͓��X����}>�o&I����3	�����L��������B�d�%�5�T͗�i|-�����x�
�6/�Eb�&#AJ�BT�r�qRf��.��sh)��
��	fz���ӊ�t�e�!I�����;�jN�Eq�v��GO7r�{��H�>TB�9���Ai��v��5ɿ��g*D�GG	��_De�VW�����D�<(S�n"�ʷ6AI�DtjV����2�7��Ұ���vfة�n������إ������f�����WMߦ�ctq:p�My�&��T��*������a2�{�I�����Y�d+�o�����7B�	�/Q�Ie��B��ɪ��n����N3'<&��~g��|OM�͞ />.�R�ӓ,,m�Ϟ����n�,?��"͚���FH�M�T�b�z�&<=��
Ɏ�lU6U�TR[$E��FCRp��"O3� 5�ky�k;?x�ߗp>|������x�u���b�w�r�� �����߿y�~TA�\f��e`,JS������ �f\�(�������G`|�y;pCn�dPkm�/��-YA�{�#Q�/#�HM�0*{��o�;Ș���ͣ�S�p�N2��t�Jtwo�x�����p��M��P`]0��吹�}׾����V��0e��T�Ws�b]4ۛ���4�gK�_�)
{��5`DAEd���5p�_�y������3diM����U�2��lV�{�,{��XͶ�mh0*��>Z#��oK�7�B����� �t��Ml���W��v�j�x�5]w/�R�!�H9[���.�Q7��eh�ɷ�Mѐv��d�N^E�'�Jg!��Y�\E���F 	���$��[�l�z?�kOYޥ$a�ul �h��t���#�X.K�Oh��b���V�
p���������	]+}��qˎ8z+��!&'|F�[,KM�@�믫�`dF�~q�4�ި/�`���<�w���v�#���o*�Ԩ� �����-Zw)Í�Lˆ���*3;��W7�x�������a,���Ozu�i�#{�"*ʤ��%fkl5�ƀ�q���I^�`6@ &�,���h͒���^��ՠܿ�Z�)Y���T�L`l��������%������F��u2TL��|���{|1î,�	s��<�
Ж(l�����/L����)*ix����?�A���cq>ȟ��������,>?��/�A<�R�båz�]h�[��V���G����7ǪDE[��kKJé�����>�Z&}�r�ᢼC��䩇������H��D��{�hf�����e�.����U �y�^���pӌb���.���w~4��!�lvj�`!�ix�Az0��˾���a��Z�J�"��0Lӏ��~�(���J0��3T�f�s�gꐓ:��5}	���B�2��7=n('�P.�s�l�m�c~_oxO�Z�a\��c&c���^�D~�E�lW<��%�u�����}��R��pDD�&N� T,^X��.2�U9}����LW����ShO���-��}]�������I�'�J����}�+�zxs�0LSʉ��W�cO��u8\����dd���x�%�WO�MST����uS&���e�x��K��� ���ځ_+]X@̨̨���.!⪦�����oH�0��Q��K���QM���i|<z�dU?�U�|�6"a?&�N��*����;�Q����v�.	�"�X߫���yQ_��Q�+jow&Q�\�K�i�k"��5Jb&�z�&.x=�ˌG���$ �p��������g��@��,����<M��{YE*:�U(̔w�v5&� 9F�0}t��I?�R|h�̀���5����V�F���/J(�D�YwZ�Z�+}K�Z|����2ʒ%���<z\�^�М(;�o �˨�)�i6��88cT��o�T�vtsHو�E���Z�����x�7XQxXƙ��t��4�0��3P�?FT���uΤş��f��x����OV%�!s�$�ᔷ�||uB��i���g]���9.���g��Ŗ��mUs�� m^��*U~��Ʉ,X��M:��8�������,�/659������f
��ֹ������;��~�j�����;��GjҮ_��~[j�m&�t�A����u�T����p�ϻp��ko��2�/��(U+{���w�M�����#�P1VC:K#�ʟ����>@'�]Z�l�WH||���B(L�0M#8�~O�()�	��%��l?�����,����Ϊ� �o ��:<��	νC���r)��L�/F��}?��.žo����W����l���6��Ph_�~�v���3�A�I���
���x'P���>z`_�B�Y�~���9[��"���,�
'�+oOdÀ�On���A+���X(��(�A�����"$��;l�]!h���>�AG;�ʊsd��u�u���S��+����`RFj��C��qP����l����������~�Y��DՓ�����ɞ*�Fz�?�����K��G������?���+/tA      y   �   x�%��D!�I1+�����_�z�z������\���T�R�e%ղ-}҃Kz���v�k
(X�P�0l H�J@��*n���
��x|�0=�N4����z	�- Џ�@��|�RsT�w�<O0V)F	�d+�O��OZ�7^O�s��3�j�H.L��V�'�0aҒ	����g'�����Yꟳ R�!b+ r+!�� ��3�\?�      z   �   x�m���0 g�+<TތEe�]YL�"�m��Կ')0 e�}'_{q\��G�Z��6�cٶ\k.�F/z���|L�r��NF0�l��؋=[��u���]n� !<q#�=q��̃�K+�^4�ic�F~](�ޑ+TC      L   �  x�͚K��0���+r�ŏ����v�J�UU�=UBِZ^"A�ϯ����ؐ��4_Ɠo�!ˮۛ�t����r�vӧ���j;o~������b�������ϣ���վ-��6�ڬz��.6�j}W�6��w#c��3�`�M���2c�0B��d���ET��<�C�ͺ�y��_T��f�����4�������>{����.�M�5�������v��i�j�d������}\�f���j�Pį���l^u�7���)Q�e�_beX���ׅ3/W�����D�f�����`��gIb.mX��(Kد����Y�& �r]]ڥ�Ws��'.�~]�[.Q��\��-�ܡ�u��8]���97R!	#:f���˄`�Q���������(��D�P(Lcw���"�v����BǦ��"lJ�z�)"N$ghV���n�O����T%�*#:4M�$�ф�I�#ɽT�r$�4C��9�>*�?�T��lcTC�!+��4AO�hL#��6�]͕m#��;�k#����A��͋�:u�l�^A�sa�l��=M��ID��-��C"�k)�H�k���҈D�G���4�]�݅�-!b_K΅�mO���F΅�-s�VRs)loYD����۞��{8r.�q`3��
���?yE+lm�M����fչd_�V�M6�I�v��D{��b�M��=p�g�=n��;p�ta�������﹒��5�8��1E��[�b��z��x�O{�GL�iϛ���°D�`���X�)��6W"bG^���k�<nH���U�/��{%����8��y�D�u�|4*�);�ƮƐ)��iʈFJD#}4�蹎�?��P�%W>.y��Ͽ�xض͡�z��k��o`���^�D-+/0�H6��]Q��Q�p)����y?�W�����+c=a�	�`��?wǮԿ��2��Ĭ��+����n��##|�P����Q�j�rq�sb�q�#�	e*J_DQ��ݍ��_�Q      ]   #   x�3�4202�50�54Q04�24E0����� ��      {      x������ � �     