PGDMP                          x            NIC9    12.3    12.3 )   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17500    NIC9    DATABASE     �   CREATE DATABASE "NIC9" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NIC9";
                postgres    false            �            1259    17501    mpr_master_table    TABLE     �  CREATE TABLE public.mpr_master_table (
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
       public         heap    postgres    false            �            1259    17506    mpr_scheme_awcc    TABLE     S  CREATE TABLE public.mpr_scheme_awcc (
    no_of_icds_cenetres_devoid_of_own_building numeric(10,0) NOT NULL,
    no_of_new_icds_building_constructed numeric(10,0) NOT NULL,
    no_of_icds_centres_running_in_open_space numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 #   DROP TABLE public.mpr_scheme_awcc;
       public         heap    postgres    false    202            �            1259    17512    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    203            �           0    0    AWCC_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public.mpr_scheme_awcc.id_pk;
          public          postgres    false    204            �            1259    17514    mpr_scheme_baitarani    TABLE     �   CREATE TABLE public.mpr_scheme_baitarani (
    no_of_burning_ghats_taken_up numeric(10,0) NOT NULL,
    completed_till_date date NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_baitarani;
       public         heap    postgres    false    202            �            1259    17520    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    205            �           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public.mpr_scheme_baitarani.id_pk;
          public          postgres    false    206            �            1259    17522    mpr_scheme_dog    TABLE     h  CREATE TABLE public.mpr_scheme_dog (
    target_for_distribution_of_goats numeric(10,0) NOT NULL,
    no_of_goats_actually_distributed numeric(10,0) NOT NULL,
    no_of_beneficiaries_selected numeric(10,0) NOT NULL,
    no_of_beneficiaries_approved numeric(10,0) NOT NULL,
    location_code character varying(10) NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_dog;
       public         heap    postgres    false    202            �            1259    17527 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    207            �           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public.mpr_scheme_dog.id_pk;
          public          postgres    false    208            �            1259    17529    mpr_scheme_doptuhd    TABLE     �   CREATE TABLE public.mpr_scheme_doptuhd (
    no_of_power_tiller_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_doptuhd;
       public         heap    postgres    false    202            �            1259    17535    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    209            �           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public.mpr_scheme_doptuhd.id_pk;
          public          postgres    false    210            �            1259    17537    mpr_scheme_enrollment    TABLE     }  CREATE TABLE public.mpr_scheme_enrollment (
    gross_enrolment_ratio_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_primary numeric(10,0) NOT NULL,
    gross_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_enrollment;
       public         heap    postgres    false    202            �            1259    17543    ENROLLMENT_id_seq    SEQUENCE     |   CREATE SEQUENCE public."ENROLLMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ENROLLMENT_id_seq";
       public          postgres    false    211            �           0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public.mpr_scheme_enrollment.id_pk;
          public          postgres    false    212            �            1259    17545    mpr_scheme_foodpro    TABLE     �   CREATE TABLE public.mpr_scheme_foodpro (
    status_of_pocurement numeric(10,0) NOT NULL,
    target_of_pocurement numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_foodpro;
       public         heap    postgres    false    202            �            1259    17551    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    213            �           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public.mpr_scheme_foodpro.id_pk;
          public          postgres    false    214            �            1259    17553    mpr_scheme_gitanjali    TABLE     I  CREATE TABLE public.mpr_scheme_gitanjali (
    no_of_case_sanctioned_under_gitanjali numeric(10,0) NOT NULL,
    date_of_inception character varying(15) NOT NULL,
    no_of_houses_constructed_under_gitanjali numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_gitanjali;
       public         heap    postgres    false    202            �            1259    17559    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    215            �           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public.mpr_scheme_gitanjali.id_pk;
          public          postgres    false    216            �            1259    17561    mpr_scheme_immunisati    TABLE     �   CREATE TABLE public.mpr_scheme_immunisati (
    per_of_fully_immunised_child numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_immunisati;
       public         heap    postgres    false    202            �            1259    17567    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    217            �           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public.mpr_scheme_immunisati.id_pk;
          public          postgres    false    218            �            1259    17569    mpr_scheme_infantd    TABLE     �   CREATE TABLE public.mpr_scheme_infantd (
    total_no_of_infant_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_infantd;
       public         heap    postgres    false    202            �            1259    17575    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    219            �           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public.mpr_scheme_infantd.id_pk;
          public          postgres    false    220            �            1259    17577    mpr_scheme_inspection    TABLE       CREATE TABLE public.mpr_scheme_inspection (
    no_of_homes_inspected_by_senior_officers numeric(10,0) NOT NULL,
    designation_of_officers character varying(5) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_inspection;
       public         heap    postgres    false    202            �            1259    17583    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    221            �           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public.mpr_scheme_inspection.id_pk;
          public          postgres    false    222            �            1259    17585    mpr_scheme_instdel    TABLE     �   CREATE TABLE public.mpr_scheme_instdel (
    per_of_institutional_delivery numeric(52,0) NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_instdel;
       public         heap    postgres    false    202            �            1259    17591    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    223            �           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public.mpr_scheme_instdel.id_pk;
          public          postgres    false    224            �            1259    17593    mpr_scheme_jaldjalb    TABLE     N  CREATE TABLE public.mpr_scheme_jaldjalb (
    date_of_inspection character varying(15) NOT NULL,
    no_of_ponds_excavated_under_jal_dharo_jal_bharo numeric(10,0) NOT NULL,
    no_of_ponds_fish_production_started numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 '   DROP TABLE public.mpr_scheme_jaldjalb;
       public         heap    postgres    false    202            �            1259    17599    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    225            �           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public.mpr_scheme_jaldjalb.id_pk;
          public          postgres    false    226            �            1259    17601    mpr_scheme_kanyas    TABLE       CREATE TABLE public.mpr_scheme_kanyas (
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
       public         heap    postgres    false    202            �            1259    17607    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    227            �           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public.mpr_scheme_kanyas.id_pk;
          public          postgres    false    228            �            1259    17609    mpr_scheme_karmatirth    TABLE     �  CREATE TABLE public.mpr_scheme_karmatirth (
    no_of_karmatirtha_sanctioned numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_started numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_completed numeric(10,0) NOT NULL,
    no_of_karmatirth_operationalised numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_karmatirth;
       public         heap    postgres    false    202            �            1259    17615    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    229            �           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public.mpr_scheme_karmatirth.id_pk;
          public          postgres    false    230            �            1259    17617    mpr_scheme_kcc    TABLE     �  CREATE TABLE public.mpr_scheme_kcc (
    no_of_agricultrural_families_in_the_district numeric(10,0) NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(6,3) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    CONSTRAINT percent_check CHECK (((kcc_coverage_percentage >= (0)::numeric) AND (kcc_coverage_percentage <= (100)::numeric)))
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_kcc;
       public         heap    postgres    false    202            �            1259    17624    KCC_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public."KCC_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KCC_id_pk_seq";
       public          postgres    false    231            �           0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public.mpr_scheme_kcc.id_pk;
          public          postgres    false    232            �            1259    17626    mpr_scheme_landpp    TABLE     �   CREATE TABLE public.mpr_scheme_landpp (
    no_of_land_permission_pending numeric(10,0) NOT NULL,
    projects_name character varying(30) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_landpp;
       public         heap    postgres    false    202            �            1259    17632    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    233            �           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public.mpr_scheme_landpp.id_pk;
          public          postgres    false    234            �            1259    17634    mpr_semitrans_login    TABLE       CREATE TABLE public.mpr_semitrans_login (
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
       public         heap    postgres    false            �            1259    17646    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    235            �           0    0    Login_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."Login_id_seq" OWNED BY public.mpr_semitrans_login.login_id_pk;
          public          postgres    false    236            �            1259    17648    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    235            �           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public.mpr_semitrans_login.user_type_id_fk;
          public          postgres    false    237            �            1259    17650    mpr_scheme_maternald    TABLE     �   CREATE TABLE public.mpr_scheme_maternald (
    total_no_of_maternal_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_maternald;
       public         heap    postgres    false    202            �            1259    17656    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    238            �           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public.mpr_scheme_maternald.id_pk;
          public          postgres    false    239            �            1259    17658    mpr_scheme_mci    TABLE     Z  CREATE TABLE public.mpr_scheme_mci (
    percentage_of_malnourished_child numeric(6,3) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    CONSTRAINT mci_percent_check CHECK (((percentage_of_malnourished_child >= (0)::numeric) AND (percentage_of_malnourished_child <= (100)::numeric)))
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_mci;
       public         heap    postgres    false    202            �            1259    17665 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    240            �           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public.mpr_scheme_mci.id_pk;
          public          postgres    false    241            �            1259    17667    mpr_scheme_minoritys    TABLE     n  CREATE TABLE public.mpr_scheme_minoritys (
    target_for_scholarship_distribution_aikyashree numeric(10,0) NOT NULL,
    no_of_students_distributed_scholarship numeric(10,0) NOT NULL,
    no_of_application_uploaded_under_aikyashree_scholarship numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_minoritys;
       public         heap    postgres    false    202            �            1259    17673    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    242            �           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public.mpr_scheme_minoritys.id_pk;
          public          postgres    false    243            �            1259    17675    mpr_scheme_poe    TABLE     �   CREATE TABLE public.mpr_scheme_poe (
    target numeric(10,0) NOT NULL,
    production numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_poe;
       public         heap    postgres    false    202            �            1259    17681 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    244            �           0    0 
   POE_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."POE_id_seq" OWNED BY public.mpr_scheme_poe.id_pk;
          public          postgres    false    245            �            1259    17683    mpr_scheme_saboojshre    TABLE     <  CREATE TABLE public.mpr_scheme_saboojshre (
    no_of_children_born_since_inception_of_the_project_in_the_dist numeric(10,0) NOT NULL,
    no_of_tree_sapling_handed_over_to_the_new_born_children numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_saboojshre;
       public         heap    postgres    false    202            �            1259    17689    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    246            �           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public.mpr_scheme_saboojshre.id_pk;
          public          postgres    false    247            �            1259    17691    mpr_scheme_saboojs    TABLE        CREATE TABLE public.mpr_scheme_saboojs (
    target_for_distribution_of_cycles numeric(10,0) NOT NULL,
    cycle_distributed_till_date numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_saboojs;
       public         heap    postgres    false    202            �            1259    17697    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    248            �           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public.mpr_scheme_saboojs.id_pk;
          public          postgres    false    249            �            1259    17699    mpr_scheme_safedsavel    TABLE       CREATE TABLE public.mpr_scheme_safedsavel (
    no_of_accidents numeric(10,0) NOT NULL,
    no_of_death numeric(10,0) NOT NULL,
    no_of_insured_person numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_safedsavel;
       public         heap    postgres    false    202            �            1259    17705    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    250            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public.mpr_scheme_safedsavel.id_pk;
          public          postgres    false    251            �            1259    17707    mpr_scheme_samabythi    TABLE       CREATE TABLE public.mpr_scheme_samabythi (
    no_of_beneficiaries_provided_benefit_till_date numeric(10,0) NOT NULL,
    till_date character varying(15) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_samabythi;
       public         heap    postgres    false    202            �            1259    17713    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    252            �           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public.mpr_scheme_samabythi.id_pk;
          public          postgres    false    253            �            1259    17715    mpr_scheme_sikshas    TABLE     m  CREATE TABLE public.mpr_scheme_sikshas (
    targetted_no_of_sc_st_student_under_sikshashree numeric(10,0) NOT NULL,
    no_of_students_getting_benefit_under_sikshashree numeric(10,0) NOT NULL,
    no_of_applications_uploaded_under_sikshashree numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_sikshas;
       public         heap    postgres    false    202            �            1259    17721    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    254            �           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public.mpr_scheme_sikshas.id_pk;
          public          postgres    false    255                        1259    17723    mpr_scheme_svskp    TABLE     	  CREATE TABLE public.mpr_scheme_svskp (
    no_of_project_sponsored_under_svskp numeric(10,0) NOT NULL,
    no_of_project_sanctioned_under_svskp numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_svskp;
       public         heap    postgres    false    202                       1259    17729    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    256            �           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public.mpr_scheme_svskp.id_pk;
          public          postgres    false    257                       1259    17731    mpr_scheme_yubas    TABLE     /  CREATE TABLE public.mpr_scheme_yubas (
    no_of_unemployed_youth_registered_under_yubashree numeric(10,0) NOT NULL,
    no_of_unemployed_registered_youth_getting_monthly_assistance numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_yubas;
       public         heap    postgres    false    202                       1259    17737    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    258            �           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public.mpr_scheme_yubas.id_pk;
          public          postgres    false    259                       1259    17739    mpr_scheme_anand    TABLE       CREATE TABLE public.mpr_scheme_anand (
    total_no_of_shgs_formed_in_the_district numeric(10,0) NOT NULL,
    total_no_of_shgs_got_credit_linkage numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_anand;
       public         heap    postgres    false    202                       1259    17745    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    260            �           0    0    anand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.anand_id_seq OWNED BY public.mpr_scheme_anand.id_pk;
          public          postgres    false    261                       1259    17747    mpr_master_attri_table    TABLE     �   CREATE TABLE public.mpr_master_attri_table (
    attri_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    attri_name character varying(100) NOT NULL,
    actual_name character varying(100) NOT NULL
);
 *   DROP TABLE public.mpr_master_attri_table;
       public         heap    postgres    false                       1259    17751    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    262            �           0    0    att_table_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.mpr_master_attri_table.attri_id_pk;
          public          postgres    false    263                       1259    17753    mpr_trans_audit_log    TABLE     �  CREATE TABLE public.mpr_trans_audit_log (
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
       public         heap    postgres    false            	           1259    17757    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    264            �           0    0    audit_log_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.mpr_trans_audit_log.audit_id_pk;
          public          postgres    false    265            
           1259    17759    mpr_semitrans_check_first_user    TABLE     u  CREATE TABLE public.mpr_semitrans_check_first_user (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer NOT NULL,
    CONSTRAINT check_first_user_check CHECK ((check_if_first_user = ANY (ARRAY[0, 1]))),
    CONSTRAINT check_profile_updated_once_check CHECK ((check_profile_updated_once = ANY (ARRAY[0, 1])))
);
 2   DROP TABLE public.mpr_semitrans_check_first_user;
       public         heap    postgres    false                       1259    17764 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    266            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public.mpr_semitrans_check_first_user.check_if_first_user;
          public          postgres    false    267                       1259    17766    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    266            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public.mpr_semitrans_check_first_user.user_id_pk;
          public          postgres    false    268                       1259    17768 !   mpr_semitrans_dba_financial_range    TABLE     %  CREATE TABLE public.mpr_semitrans_dba_financial_range (
    dba_financial_range_table_id_pk bigint NOT NULL,
    financial_year_range character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    CONSTRAINT dba_month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric)))
);
 5   DROP TABLE public.mpr_semitrans_dba_financial_range;
       public         heap    postgres    false                       1259    17772 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq;
       public          postgres    false    269            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.mpr_semitrans_dba_financial_range.dba_financial_range_table_id_pk;
          public          postgres    false    270                       1259    17774    mpr_master_designation    TABLE     �   CREATE TABLE public.mpr_master_designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_designation;
       public         heap    postgres    false                       1259    17777    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    271            �           0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.mpr_master_designation.desig_id_pk;
          public          postgres    false    272                       1259    17779    mpr_scheme_doc    TABLE       CREATE TABLE public.mpr_scheme_doc (
    target_for_distribution_of_poultry numeric(10,0) NOT NULL,
    no_of_poultry_actually_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_doc;
       public         heap    postgres    false    202                       1259    17785 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    273            �           0    0 
   doc_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.doc_id_seq OWNED BY public.mpr_scheme_doc.id_pk;
          public          postgres    false    274                       1259    17787    mpr_master_financial_year    TABLE     �   CREATE TABLE public.mpr_master_financial_year (
    financial_year_master_id_pk bigint NOT NULL,
    year_type character varying(50) NOT NULL
);
 -   DROP TABLE public.mpr_master_financial_year;
       public         heap    postgres    false                       1259    17790 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq;
       public          postgres    false    275            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq OWNED BY public.mpr_master_financial_year.financial_year_master_id_pk;
          public          postgres    false    276                       1259    17792    mpr_scheme_kishanm    TABLE     ,  CREATE TABLE public.mpr_scheme_kishanm (
    no_of_kishan_mandis_sanctioned numeric(10,0) NOT NULL,
    no_of_kishan_mandis_operational numeric(10,0) NOT NULL,
    operationality numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_kishanm;
       public         heap    postgres    false    202                       1259    17798    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    277            �           0    0    kishanm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public.mpr_scheme_kishanm.id_pk;
          public          postgres    false    278                       1259    17800    mpr_master_location_data    TABLE     �   CREATE TABLE public.mpr_master_location_data (
    location_area character varying(100) NOT NULL,
    location_code character varying(12) NOT NULL,
    location_id_pk bigint NOT NULL
);
 ,   DROP TABLE public.mpr_master_location_data;
       public         heap    postgres    false                       1259    17803     location_data_location_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.location_data_location_id_pk_seq;
       public          postgres    false    279            �           0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.mpr_master_location_data.location_id_pk;
          public          postgres    false    280                       1259    17805    mpr_trans_meeting_schedule    TABLE     �   CREATE TABLE public.mpr_trans_meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16) NOT NULL,
    end_time character varying(16) NOT NULL
);
 .   DROP TABLE public.mpr_trans_meeting_schedule;
       public         heap    postgres    false                       1259    17808    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    281            �           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.mpr_trans_meeting_schedule.meeting_id_pk;
          public          postgres    false    282                       1259    17810    mpr_scheme_mgnregs    TABLE     �  CREATE TABLE public.mpr_scheme_mgnregs (
    no_of_person_days_generated_under_mgnregs numeric(10,0) NOT NULL,
    average_no_of_persondays_generated_per_household numeric(10,0) NOT NULL,
    expenditure_of_the_session numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_mgnregs;
       public         heap    postgres    false    202                       1259    17816    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    283            �           0    0    mgnres_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public.mpr_scheme_mgnregs.id_pk;
          public          postgres    false    284                       1259    17818    mpr_master_block    TABLE     �   CREATE TABLE public.mpr_master_block (
    block_id_pk bigint NOT NULL,
    block_name character varying(50) NOT NULL,
    block_lg_code bigint NOT NULL,
    subdiv_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.mpr_master_block;
       public         heap    postgres    false                       1259    17823    mpr_master_dashboard_info    TABLE     �   CREATE TABLE public.mpr_master_dashboard_info (
    dashboard_id_pk bigint NOT NULL,
    sch_tab_name character varying(50) NOT NULL,
    attr_target character varying(100) NOT NULL,
    attri_progress character varying(100) NOT NULL
);
 -   DROP TABLE public.mpr_master_dashboard_info;
       public         heap    postgres    false                       1259    17826    mpr_master_department    TABLE     �   CREATE TABLE public.mpr_master_department (
    dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    short_name character varying(15) NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL
);
 )   DROP TABLE public.mpr_master_department;
       public         heap    postgres    false                        1259    17830    mpr_master_district    TABLE     �   CREATE TABLE public.mpr_master_district (
    district_id_pk bigint NOT NULL,
    district_name character varying(50) NOT NULL,
    state_id_fk bigint DEFAULT 0 NOT NULL,
    dist_lg_code bigint NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 '   DROP TABLE public.mpr_master_district;
       public         heap    postgres    false            !           1259    17835 &   mpr_master_district_district_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_district_district_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.mpr_master_district_district_id_pk_seq;
       public          postgres    false    288            �           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.mpr_master_district_district_id_pk_seq OWNED BY public.mpr_master_district.district_id_pk;
          public          postgres    false    289            "           1259    17837    mpr_master_office    TABLE     }   CREATE TABLE public.mpr_master_office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
 %   DROP TABLE public.mpr_master_office;
       public         heap    postgres    false            #           1259    17840    mpr_master_scheme_dept    TABLE     �   CREATE TABLE public.mpr_master_scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_scheme_dept;
       public         heap    postgres    false            $           1259    17844    mpr_master_scheme_table    TABLE     �   CREATE TABLE public.mpr_master_scheme_table (
    scheme_id_pk bigint NOT NULL,
    short_name character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    financial_year_id_fk bigint NOT NULL,
    desig_id_fk bigint NOT NULL
);
 +   DROP TABLE public.mpr_master_scheme_table;
       public         heap    postgres    false            %           1259    17847    mpr_master_state    TABLE     y   CREATE TABLE public.mpr_master_state (
    state_id_pk bigint NOT NULL,
    state_name character varying(50) NOT NULL
);
 $   DROP TABLE public.mpr_master_state;
       public         heap    postgres    false            &           1259    17850     mpr_master_state_state_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_state_state_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_master_state_state_id_pk_seq;
       public          postgres    false    293            �           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_master_state_state_id_pk_seq OWNED BY public.mpr_master_state.state_id_pk;
          public          postgres    false    294            '           1259    17852    mpr_master_subdiv    TABLE     �   CREATE TABLE public.mpr_master_subdiv (
    sub_div_id_pk bigint NOT NULL,
    sub_div_name character varying(50) NOT NULL,
    sub_div_lg_code bigint NOT NULL,
    district_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.mpr_master_subdiv;
       public         heap    postgres    false            (           1259    17857 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq;
       public          postgres    false    295            �           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq OWNED BY public.mpr_master_subdiv.sub_div_id_pk;
          public          postgres    false    296            )           1259    17859    mpr_scheme_kcc_backup    TABLE     
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
       public         heap    postgres    false            *           1259    17865    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq;
       public          postgres    false    297            �           0    0    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq OWNED BY public.mpr_scheme_kcc_backup.id_pk;
          public          postgres    false    298            +           1259    17867    mpr_scheme_kcc_draft    TABLE     	  CREATE TABLE public.mpr_scheme_kcc_draft (
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
       public         heap    postgres    false            ,           1259    17873    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq;
       public          postgres    false    299            �           0    0    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq OWNED BY public.mpr_scheme_kcc_draft.id_pk;
          public          postgres    false    300            -           1259    17875    mpr_scheme_kishanm_backup    TABLE     �  CREATE TABLE public.mpr_scheme_kishanm_backup (
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
       public         heap    postgres    false            .           1259    17881 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq;
       public          postgres    false    301            �           0    0 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq OWNED BY public.mpr_scheme_kishanm_backup.id_pk;
          public          postgres    false    302            /           1259    17883    mpr_scheme_kishanm_draft    TABLE     �  CREATE TABLE public.mpr_scheme_kishanm_draft (
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
       public         heap    postgres    false            0           1259    17889 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq;
       public          postgres    false    303            �           0    0 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq OWNED BY public.mpr_scheme_kishanm_draft.id_pk;
          public          postgres    false    304            1           1259    17891    mpr_scheme_mgnregs_backup    TABLE     H  CREATE TABLE public.mpr_scheme_mgnregs_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_person_days_generated_under_mgnregs numeric NOT NULL,
    average_no_of_persondays_generated_per_household numeric NOT NULL,
    expenditure_of_the_session numeric NOT NULL,
    per_of_labour_budget_achieved numeric NOT NULL,
    location_code character varying NOT NULL
);
 -   DROP TABLE public.mpr_scheme_mgnregs_backup;
       public         heap    postgres    false            2           1259    17897 #   mpr_scheme_mgnregs_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_mgnregs_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_scheme_mgnregs_backup_id_pk_seq;
       public          postgres    false    305            �           0    0 #   mpr_scheme_mgnregs_backup_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_scheme_mgnregs_backup_id_pk_seq OWNED BY public.mpr_scheme_mgnregs_backup.id_pk;
          public          postgres    false    306            3           1259    17899    mpr_scheme_mgnregs_draft    TABLE     G  CREATE TABLE public.mpr_scheme_mgnregs_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_person_days_generated_under_mgnregs numeric NOT NULL,
    average_no_of_persondays_generated_per_household numeric NOT NULL,
    expenditure_of_the_session numeric NOT NULL,
    per_of_labour_budget_achieved numeric NOT NULL,
    location_code character varying NOT NULL
);
 ,   DROP TABLE public.mpr_scheme_mgnregs_draft;
       public         heap    postgres    false            4           1259    17905 "   mpr_scheme_mgnregs_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_mgnregs_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.mpr_scheme_mgnregs_draft_id_pk_seq;
       public          postgres    false    307            �           0    0 "   mpr_scheme_mgnregs_draft_id_pk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.mpr_scheme_mgnregs_draft_id_pk_seq OWNED BY public.mpr_scheme_mgnregs_draft.id_pk;
          public          postgres    false    308            5           1259    17907    mpr_semitrans_location_mapping    TABLE     �   CREATE TABLE public.mpr_semitrans_location_mapping (
    location_mapping_id_pk bigint NOT NULL,
    user_type_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 2   DROP TABLE public.mpr_semitrans_location_mapping;
       public         heap    postgres    false            6           1259    17912 9   mpr_semitrans_location_mapping_location_mapping_id_pk_seq    SEQUENCE       ALTER TABLE public.mpr_semitrans_location_mapping ALTER COLUMN location_mapping_id_pk ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.mpr_semitrans_location_mapping_location_mapping_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    309            7           1259    17914    mpr_semitrans_privilege    TABLE       CREATE TABLE public.mpr_semitrans_privilege (
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
       public         heap    postgres    false            8           1259    17922    mpr_semitrans_profile    TABLE     �  CREATE TABLE public.mpr_semitrans_profile (
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
       public         heap    postgres    false            9           1259    17935    mpr_semitrans_user_privilege    TABLE     X  CREATE TABLE public.mpr_semitrans_user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT user_privilege_active_check CHECK ((((active_status)::numeric >= (0)::numeric) AND ((active_status)::numeric <= (1)::numeric)))
);
 0   DROP TABLE public.mpr_semitrans_user_privilege;
       public         heap    postgres    false            :           1259    17939    mpr_semitrans_user_type    TABLE       CREATE TABLE public.mpr_semitrans_user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(50) NOT NULL,
    active_status numeric NOT NULL,
    CONSTRAINT user_type_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 +   DROP TABLE public.mpr_semitrans_user_type;
       public         heap    postgres    false            ;           1259    17946    mpr_trans_fundalloc    TABLE       CREATE TABLE public.mpr_trans_fundalloc (
    fundalloc_id_pk bigint NOT NULL,
    location_id_fk bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    funds_allocated numeric(15,0) NOT NULL,
    funds_utilised numeric(15,0) NOT NULL,
    threshold numeric(6,3) NOT NULL
);
 '   DROP TABLE public.mpr_trans_fundalloc;
       public         heap    postgres    false            <           1259    17949 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq;
       public          postgres    false    315            �           0    0 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq OWNED BY public.mpr_trans_fundalloc.fundalloc_id_pk;
          public          postgres    false    316            E           1259    18617    mpr_trans_notification    TABLE     �  CREATE TABLE public.mpr_trans_notification (
    audience_id character varying(20) NOT NULL,
    notification_text text NOT NULL,
    notification_id_pk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    notification_head text NOT NULL,
    active_status integer NOT NULL,
    audience_desig bigint,
    audience_loc character varying(12),
    CONSTRAINT notification_active_check CHECK (((active_status >= 0) AND (active_status <= 1)))
);
 *   DROP TABLE public.mpr_trans_notification;
       public         heap    postgres    false            F           1259    18624    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    325            �           0    0    notifications_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.mpr_trans_notification.notification_id_pk;
          public          postgres    false    326            =           1259    17960    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    287            �           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.mpr_master_department.dept_id_pk;
          public          postgres    false    317            >           1259    17962    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    290            �           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.mpr_master_office.office_id_pk;
          public          postgres    false    318            ?           1259    17964    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    312            �           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.mpr_semitrans_profile.profile_id_pk;
          public          postgres    false    319            @           1259    17966 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    291            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     r   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.mpr_master_scheme_dept.scheme_dept_id_pk;
          public          postgres    false    320            A           1259    17968    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    292            �           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.mpr_master_scheme_table.scheme_id_pk;
          public          postgres    false    321            B           1259    17970    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            �           0    0    table_id_pk_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public.mpr_master_table.id_pk;
          public          postgres    false    322            C           1259    17972 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    313            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.privilege_id_fk;
          public          postgres    false    323            D           1259    17974 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    313            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.user_type_id_fk;
          public          postgres    false    324            x           2604    17976 "   mpr_master_attri_table attri_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_attri_table ALTER COLUMN attri_id_pk SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_attri_table ALTER COLUMN attri_id_pk DROP DEFAULT;
       public          postgres    false    263    262            �           2604    17977     mpr_master_department dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_department ALTER COLUMN dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 O   ALTER TABLE public.mpr_master_department ALTER COLUMN dept_id_pk DROP DEFAULT;
       public          postgres    false    317    287            �           2604    17978 "   mpr_master_designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    272    271            �           2604    17979 "   mpr_master_district district_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_district ALTER COLUMN district_id_pk SET DEFAULT nextval('public.mpr_master_district_district_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_district ALTER COLUMN district_id_pk DROP DEFAULT;
       public          postgres    false    289    288            �           2604    17980 5   mpr_master_financial_year financial_year_master_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk SET DEFAULT nextval('public.financial_year_master_financial_year_master_id_pk_seq'::regclass);
 d   ALTER TABLE public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk DROP DEFAULT;
       public          postgres    false    276    275            �           2604    17981 '   mpr_master_location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 V   ALTER TABLE public.mpr_master_location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    280    279            �           2604    17982    mpr_master_office office_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_master_office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    318    290            �           2604    17983 (   mpr_master_scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 W   ALTER TABLE public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    320    291            �           2604    17984 $   mpr_master_scheme_table scheme_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 S   ALTER TABLE public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    321    292            �           2604    17985    mpr_master_state state_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_state ALTER COLUMN state_id_pk SET DEFAULT nextval('public.mpr_master_state_state_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_master_state ALTER COLUMN state_id_pk DROP DEFAULT;
       public          postgres    false    294    293            �           2604    17986    mpr_master_subdiv sub_div_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk SET DEFAULT nextval('public.mpr_master_subdiv_sub_div_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk DROP DEFAULT;
       public          postgres    false    296    295            �           2604    17987    mpr_master_table id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_master_table ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 E   ALTER TABLE public.mpr_master_table ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    322    202            t           2604    17988    mpr_scheme_anand id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_anand ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 E   ALTER TABLE public.mpr_scheme_anand ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    261    260                        2604    17989    mpr_scheme_awcc id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_awcc ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 D   ALTER TABLE public.mpr_scheme_awcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    204    203                       2604    17990    mpr_scheme_baitarani id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_baitarani ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_baitarani ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    205    206            �           2604    17991    mpr_scheme_doc id_pk    DEFAULT     n   ALTER TABLE ONLY public.mpr_scheme_doc ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 C   ALTER TABLE public.mpr_scheme_doc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    273    274                       2604    17992    mpr_scheme_dog id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_dog ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_dog ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    208    207                       2604    17993    mpr_scheme_doptuhd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_doptuhd ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_doptuhd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    209    210                       2604    17994    mpr_scheme_enrollment id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_enrollment ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_enrollment ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    212    211                       2604    17995    mpr_scheme_foodpro id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_foodpro ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_foodpro ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    214    213                       2604    17996    mpr_scheme_gitanjali id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_gitanjali ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_gitanjali ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    215    216                       2604    17997    mpr_scheme_immunisati id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_immunisati ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    217    218                       2604    17998    mpr_scheme_infantd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_infantd ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_infantd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    220    219            #           2604    17999    mpr_scheme_inspection id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_inspection ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_inspection ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    222    221            '           2604    18000    mpr_scheme_instdel id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_instdel ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_instdel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    224    223            +           2604    18001    mpr_scheme_jaldjalb id_pk    DEFAULT     z   ALTER TABLE ONLY public.mpr_scheme_jaldjalb ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 H   ALTER TABLE public.mpr_scheme_jaldjalb ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    225    226            /           2604    18002    mpr_scheme_kanyas id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kanyas ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_kanyas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    227    228            3           2604    18003    mpr_scheme_karmatirth id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_karmatirth ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_karmatirth ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    229    230            7           2604    18004    mpr_scheme_kcc id_pk    DEFAULT     s   ALTER TABLE ONLY public.mpr_scheme_kcc ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_kcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    232    231            �           2604    18005    mpr_scheme_kcc_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kcc_backup_id_pk_seq'::regclass);
 J   ALTER TABLE public.mpr_scheme_kcc_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    298    297            �           2604    18006    mpr_scheme_kcc_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kcc_draft_id_pk_seq'::regclass);
 I   ALTER TABLE public.mpr_scheme_kcc_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    300    299            �           2604    18007    mpr_scheme_kishanm id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kishanm ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_kishanm ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    278    277            �           2604    18008    mpr_scheme_kishanm_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kishanm_backup_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_scheme_kishanm_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    302    301            �           2604    18009    mpr_scheme_kishanm_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kishanm_draft_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_scheme_kishanm_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    304    303            <           2604    18010    mpr_scheme_landpp id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_landpp ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_landpp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    233    234            G           2604    18011    mpr_scheme_maternald id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_maternald ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_maternald ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    238    239            K           2604    18012    mpr_scheme_mci id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_mci ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_mci ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    241    240            �           2604    18013    mpr_scheme_mgnregs id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_mgnregs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    284    283            �           2604    18014    mpr_scheme_mgnregs_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_mgnregs_backup_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_scheme_mgnregs_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    306    305            �           2604    18015    mpr_scheme_mgnregs_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_mgnregs_draft_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_scheme_mgnregs_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    308    307            P           2604    18016    mpr_scheme_minoritys id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_minoritys ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_minoritys ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    243    242            T           2604    18017    mpr_scheme_poe id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_poe ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_poe ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    244    245            \           2604    18018    mpr_scheme_saboojs id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_saboojs ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_saboojs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    249    248            X           2604    18019    mpr_scheme_saboojshre id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_saboojshre ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_saboojshre ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    247    246            `           2604    18020    mpr_scheme_safedsavel id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_safedsavel ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_safedsavel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    251    250            d           2604    18021    mpr_scheme_samabythi id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_samabythi ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_samabythi ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    253    252            h           2604    18022    mpr_scheme_sikshas id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_sikshas ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_sikshas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    254    255            l           2604    18023    mpr_scheme_svskp id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_svskp ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_svskp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    257            p           2604    18024    mpr_scheme_yubas id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_yubas ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_yubas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    259    258            {           2604    18025 )   mpr_semitrans_check_first_user user_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 X   ALTER TABLE public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    268    266            ~           2604    18026 A   mpr_semitrans_dba_financial_range dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 p   ALTER TABLE public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    270    269            D           2604    18027    mpr_semitrans_login login_id_pk    DEFAULT     }   ALTER TABLE ONLY public.mpr_semitrans_login ALTER COLUMN login_id_pk SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 N   ALTER TABLE public.mpr_semitrans_login ALTER COLUMN login_id_pk DROP DEFAULT;
       public          postgres    false    236    235            �           2604    18028 #   mpr_semitrans_profile profile_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_profile ALTER COLUMN profile_id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_semitrans_profile ALTER COLUMN profile_id_pk DROP DEFAULT;
       public          postgres    false    319    312            z           2604    18029    mpr_trans_audit_log audit_id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_trans_audit_log ALTER COLUMN audit_id_pk SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 N   ALTER TABLE public.mpr_trans_audit_log ALTER COLUMN audit_id_pk DROP DEFAULT;
       public          postgres    false    265    264            �           2604    18030 #   mpr_trans_fundalloc fundalloc_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_fundalloc ALTER COLUMN fundalloc_id_pk SET DEFAULT nextval('public.mpr_trans_fundalloc_fundalloc_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_trans_fundalloc ALTER COLUMN fundalloc_id_pk DROP DEFAULT;
       public          postgres    false    316    315            �           2604    18031 (   mpr_trans_meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 W   ALTER TABLE public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    282    281            �           2604    18626 )   mpr_trans_notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 X   ALTER TABLE public.mpr_trans_notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    326    325            i          0    17747    mpr_master_attri_table 
   TABLE DATA           d   COPY public.mpr_master_attri_table (attri_id_pk, scheme_id_fk, attri_name, actual_name) FROM stdin;
    public          postgres    false    262   
      �          0    17818    mpr_master_block 
   TABLE DATA           p   COPY public.mpr_master_block (block_id_pk, block_name, block_lg_code, subdiv_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    285   �      �          0    17823    mpr_master_dashboard_info 
   TABLE DATA           o   COPY public.mpr_master_dashboard_info (dashboard_id_pk, sch_tab_name, attr_target, attri_progress) FROM stdin;
    public          postgres    false    286   �      �          0    17826    mpr_master_department 
   TABLE DATA           `   COPY public.mpr_master_department (dept_id_pk, dept_name, short_name, office_id_fk) FROM stdin;
    public          postgres    false    287   Q      r          0    17774    mpr_master_designation 
   TABLE DATA           U   COPY public.mpr_master_designation (desig_id_pk, desig_name, dept_id_fk) FROM stdin;
    public          postgres    false    271   j      �          0    17830    mpr_master_district 
   TABLE DATA           w   COPY public.mpr_master_district (district_id_pk, district_name, state_id_fk, dist_lg_code, location_id_fk) FROM stdin;
    public          postgres    false    288   �      v          0    17787    mpr_master_financial_year 
   TABLE DATA           [   COPY public.mpr_master_financial_year (financial_year_master_id_pk, year_type) FROM stdin;
    public          postgres    false    275   )      z          0    17800    mpr_master_location_data 
   TABLE DATA           `   COPY public.mpr_master_location_data (location_area, location_code, location_id_pk) FROM stdin;
    public          postgres    false    279   �      �          0    17837    mpr_master_office 
   TABLE DATA           F   COPY public.mpr_master_office (office_id_pk, office_name) FROM stdin;
    public          postgres    false    290   d      �          0    17840    mpr_master_scheme_dept 
   TABLE DATA           ]   COPY public.mpr_master_scheme_dept (scheme_dept_id_pk, scheme_id_fk, dept_id_fk) FROM stdin;
    public          postgres    false    291   �      �          0    17844    mpr_master_scheme_table 
   TABLE DATA           t   COPY public.mpr_master_scheme_table (scheme_id_pk, short_name, name, financial_year_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    292   g       �          0    17847    mpr_master_state 
   TABLE DATA           C   COPY public.mpr_master_state (state_id_pk, state_name) FROM stdin;
    public          postgres    false    293   �"      �          0    17852    mpr_master_subdiv 
   TABLE DATA           y   COPY public.mpr_master_subdiv (sub_div_id_pk, sub_div_name, sub_div_lg_code, district_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    295   !#      -          0    17501    mpr_master_table 
   TABLE DATA           l   COPY public.mpr_master_table (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at) FROM stdin;
    public          postgres    false    202   b#      g          0    17739    mpr_scheme_anand 
   TABLE DATA           �   COPY public.mpr_scheme_anand (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_shgs_formed_in_the_district, total_no_of_shgs_got_credit_linkage, location_code) FROM stdin;
    public          postgres    false    260   #      .          0    17506    mpr_scheme_awcc 
   TABLE DATA           �   COPY public.mpr_scheme_awcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_icds_cenetres_devoid_of_own_building, no_of_new_icds_building_constructed, no_of_icds_centres_running_in_open_space, location_code) FROM stdin;
    public          postgres    false    203   �#      0          0    17514    mpr_scheme_baitarani 
   TABLE DATA           �   COPY public.mpr_scheme_baitarani (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_burning_ghats_taken_up, completed_till_date, location_code) FROM stdin;
    public          postgres    false    205   �#      t          0    17779    mpr_scheme_doc 
   TABLE DATA           �   COPY public.mpr_scheme_doc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_poultry, no_of_poultry_actually_distributed, location_code) FROM stdin;
    public          postgres    false    273   �#      2          0    17522    mpr_scheme_dog 
   TABLE DATA           �   COPY public.mpr_scheme_dog (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_goats, no_of_goats_actually_distributed, no_of_beneficiaries_selected, no_of_beneficiaries_approved, location_code) FROM stdin;
    public          postgres    false    207   �#      4          0    17529    mpr_scheme_doptuhd 
   TABLE DATA           �   COPY public.mpr_scheme_doptuhd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_power_tiller_distributed, location_code) FROM stdin;
    public          postgres    false    209   $      6          0    17537    mpr_scheme_enrollment 
   TABLE DATA             COPY public.mpr_scheme_enrollment (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, gross_enrolment_ratio_primary, net_enrolment_ratio_primary, gross_enrolment_ratio_upper_primary, net_enrolment_ratio_upper_primary, location_code) FROM stdin;
    public          postgres    false    211   -$      8          0    17545    mpr_scheme_foodpro 
   TABLE DATA           �   COPY public.mpr_scheme_foodpro (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, status_of_pocurement, target_of_pocurement, location_code) FROM stdin;
    public          postgres    false    213   J$      :          0    17553    mpr_scheme_gitanjali 
   TABLE DATA           �   COPY public.mpr_scheme_gitanjali (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_case_sanctioned_under_gitanjali, date_of_inception, no_of_houses_constructed_under_gitanjali, location_code) FROM stdin;
    public          postgres    false    215   g$      <          0    17561    mpr_scheme_immunisati 
   TABLE DATA           �   COPY public.mpr_scheme_immunisati (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_fully_immunised_child, location_code) FROM stdin;
    public          postgres    false    217   �$      >          0    17569    mpr_scheme_infantd 
   TABLE DATA           �   COPY public.mpr_scheme_infantd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_infant_death, location_code) FROM stdin;
    public          postgres    false    219   �$      @          0    17577    mpr_scheme_inspection 
   TABLE DATA           �   COPY public.mpr_scheme_inspection (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_homes_inspected_by_senior_officers, designation_of_officers, location_code) FROM stdin;
    public          postgres    false    221   �$      B          0    17585    mpr_scheme_instdel 
   TABLE DATA           �   COPY public.mpr_scheme_instdel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_institutional_delivery, location_code) FROM stdin;
    public          postgres    false    223   �$      D          0    17593    mpr_scheme_jaldjalb 
   TABLE DATA           �   COPY public.mpr_scheme_jaldjalb (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, date_of_inspection, no_of_ponds_excavated_under_jal_dharo_jal_bharo, no_of_ponds_fish_production_started, location_code) FROM stdin;
    public          postgres    false    225   �$      F          0    17601    mpr_scheme_kanyas 
   TABLE DATA           `  COPY public.mpr_scheme_kanyas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_k1_cases_application_received, no_of_k1_cases_application_sanctioned, no_of_k1_cases_application_disbursed, no_of_k2_cases_application_received, no_of_k2_cases_application_sanctioned, no_of_k2_cases_application_disbursed, location_code) FROM stdin;
    public          postgres    false    227   %      H          0    17609    mpr_scheme_karmatirth 
   TABLE DATA           &  COPY public.mpr_scheme_karmatirth (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_karmatirtha_sanctioned, no_of_karmatirtha_for_which_construction_started, no_of_karmatirtha_for_which_construction_completed, no_of_karmatirth_operationalised, location_code) FROM stdin;
    public          postgres    false    229   2%      J          0    17617    mpr_scheme_kcc 
   TABLE DATA           �   COPY public.mpr_scheme_kcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    231   O%      �          0    17859    mpr_scheme_kcc_backup 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    297   �&      �          0    17867    mpr_scheme_kcc_draft 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    299   z(      x          0    17792    mpr_scheme_kishanm 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    277   �(      �          0    17875    mpr_scheme_kishanm_backup 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    301   �)      �          0    17883    mpr_scheme_kishanm_draft 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    303   �*      L          0    17626    mpr_scheme_landpp 
   TABLE DATA           �   COPY public.mpr_scheme_landpp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_land_permission_pending, projects_name, location_code) FROM stdin;
    public          postgres    false    233   �*      Q          0    17650    mpr_scheme_maternald 
   TABLE DATA           �   COPY public.mpr_scheme_maternald (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_maternal_death, location_code) FROM stdin;
    public          postgres    false    238   �*      S          0    17658    mpr_scheme_mci 
   TABLE DATA           �   COPY public.mpr_scheme_mci (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, percentage_of_malnourished_child, location_code) FROM stdin;
    public          postgres    false    240   +      ~          0    17810    mpr_scheme_mgnregs 
   TABLE DATA             COPY public.mpr_scheme_mgnregs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    283   9+      �          0    17891    mpr_scheme_mgnregs_backup 
   TABLE DATA             COPY public.mpr_scheme_mgnregs_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    305   �+      �          0    17899    mpr_scheme_mgnregs_draft 
   TABLE DATA             COPY public.mpr_scheme_mgnregs_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    307   �+      U          0    17667    mpr_scheme_minoritys 
   TABLE DATA             COPY public.mpr_scheme_minoritys (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_scholarship_distribution_aikyashree, no_of_students_distributed_scholarship, no_of_application_uploaded_under_aikyashree_scholarship, location_code) FROM stdin;
    public          postgres    false    242   �+      W          0    17675    mpr_scheme_poe 
   TABLE DATA           �   COPY public.mpr_scheme_poe (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target, production, location_code) FROM stdin;
    public          postgres    false    244   	,      [          0    17691    mpr_scheme_saboojs 
   TABLE DATA           �   COPY public.mpr_scheme_saboojs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_cycles, cycle_distributed_till_date, location_code) FROM stdin;
    public          postgres    false    248   &,      Y          0    17683    mpr_scheme_saboojshre 
   TABLE DATA           �   COPY public.mpr_scheme_saboojshre (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_children_born_since_inception_of_the_project_in_the_dist, no_of_tree_sapling_handed_over_to_the_new_born_children, location_code) FROM stdin;
    public          postgres    false    246   C,      ]          0    17699    mpr_scheme_safedsavel 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_accidents, no_of_death, no_of_insured_person, location_code) FROM stdin;
    public          postgres    false    250   `,      _          0    17707    mpr_scheme_samabythi 
   TABLE DATA           �   COPY public.mpr_scheme_samabythi (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_beneficiaries_provided_benefit_till_date, till_date, location_code) FROM stdin;
    public          postgres    false    252   },      a          0    17715    mpr_scheme_sikshas 
   TABLE DATA             COPY public.mpr_scheme_sikshas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, targetted_no_of_sc_st_student_under_sikshashree, no_of_students_getting_benefit_under_sikshashree, no_of_applications_uploaded_under_sikshashree, location_code) FROM stdin;
    public          postgres    false    254   �,      c          0    17723    mpr_scheme_svskp 
   TABLE DATA           �   COPY public.mpr_scheme_svskp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_project_sponsored_under_svskp, no_of_project_sanctioned_under_svskp, location_code) FROM stdin;
    public          postgres    false    256   �,      e          0    17731    mpr_scheme_yubas 
   TABLE DATA           �   COPY public.mpr_scheme_yubas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_unemployed_youth_registered_under_yubashree, no_of_unemployed_registered_youth_getting_monthly_assistance, location_code) FROM stdin;
    public          postgres    false    258   �,      m          0    17759    mpr_semitrans_check_first_user 
   TABLE DATA           u   COPY public.mpr_semitrans_check_first_user (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    266   �,      p          0    17768 !   mpr_semitrans_dba_financial_range 
   TABLE DATA           y   COPY public.mpr_semitrans_dba_financial_range (dba_financial_range_table_id_pk, financial_year_range, month) FROM stdin;
    public          postgres    false    269   !-      �          0    17907    mpr_semitrans_location_mapping 
   TABLE DATA           q   COPY public.mpr_semitrans_location_mapping (location_mapping_id_pk, user_type_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    309   G-      N          0    17634    mpr_semitrans_login 
   TABLE DATA           �   COPY public.mpr_semitrans_login (username, password, user_type_id_fk, location_code, login_id_pk, active_status, dept_id_fk, office_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    235   �-      �          0    17914    mpr_semitrans_privilege 
   TABLE DATA           �   COPY public.mpr_semitrans_privilege (privilege_id_pk, parent, link, "order", page_name, active_status, view_sidebar) FROM stdin;
    public          postgres    false    311   �.      �          0    17922    mpr_semitrans_profile 
   TABLE DATA           �   COPY public.mpr_semitrans_profile (username, f_name, m_name, l_name, mobile, email, district, image, profile_id_pk, desig, office, dept) FROM stdin;
    public          postgres    false    312   w0      �          0    17935    mpr_semitrans_user_privilege 
   TABLE DATA           x   COPY public.mpr_semitrans_user_privilege (user_priv_id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    313   Cm      �          0    17939    mpr_semitrans_user_type 
   TABLE DATA           X   COPY public.mpr_semitrans_user_type (user_type_id_pk, desig, active_status) FROM stdin;
    public          postgres    false    314   �n      k          0    17753    mpr_trans_audit_log 
   TABLE DATA           �   COPY public.mpr_trans_audit_log (section, action, request, comment, ip_addr, audit_id_pk, login_id_fk, "timestamp") FROM stdin;
    public          postgres    false    264   !o      �          0    17946    mpr_trans_fundalloc 
   TABLE DATA           �   COPY public.mpr_trans_fundalloc (fundalloc_id_pk, location_id_fk, scheme_id_fk, funds_allocated, funds_utilised, threshold) FROM stdin;
    public          postgres    false    315   ��      |          0    17805    mpr_trans_meeting_schedule 
   TABLE DATA           Y   COPY public.mpr_trans_meeting_schedule (meeting_id_pk, start_time, end_time) FROM stdin;
    public          postgres    false    281    �      �          0    18617    mpr_trans_notification 
   TABLE DATA           �   COPY public.mpr_trans_notification (audience_id, notification_text, notification_id_pk, "timestamp", notification_head, active_status, audience_desig, audience_loc) FROM stdin;
    public          postgres    false    325   ɉ      �           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
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
          public          postgres    false    230            �           0    0    KCC_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KCC_id_pk_seq"', 25, true);
          public          postgres    false    232            �           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 6, true);
          public          postgres    false    236            �           0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    237            �           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    239                        0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    241                       0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    243                       0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    245                       0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    247                       0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    249                       0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    251                       0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    253                       0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    255                       0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    257            	           0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    259            
           0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 1, true);
          public          postgres    false    261                       0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    263                       0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 723, true);
          public          postgres    false    265                       0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    267                       0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    268                       0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE SET     k   SELECT pg_catalog.setval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq', 1, true);
          public          postgres    false    270                       0    0    designation_desig_id_pk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.designation_desig_id_pk_seq', 1, false);
          public          postgres    false    272                       0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    274                       0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.financial_year_master_financial_year_master_id_pk_seq', 1, false);
          public          postgres    false    276                       0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 18, true);
          public          postgres    false    278                       0    0     location_data_location_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.location_data_location_id_pk_seq', 1, false);
          public          postgres    false    280                       0    0    meeting_schedule_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 22, true);
          public          postgres    false    282                       0    0    mgnres_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, true);
          public          postgres    false    284                       0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_master_district_district_id_pk_seq', 1, false);
          public          postgres    false    289                       0    0     mpr_master_state_state_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mpr_master_state_state_id_pk_seq', 1, false);
          public          postgres    false    294                       0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_master_subdiv_sub_div_id_pk_seq', 1, false);
          public          postgres    false    296                       0    0    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.mpr_scheme_kcc_backup_id_pk_seq', 31, true);
          public          postgres    false    298                       0    0    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.mpr_scheme_kcc_draft_id_pk_seq', 24, true);
          public          postgres    false    300                       0    0 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_scheme_kishanm_backup_id_pk_seq', 17, true);
          public          postgres    false    302                       0    0 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.mpr_scheme_kishanm_draft_id_pk_seq', 17, true);
          public          postgres    false    304                       0    0 #   mpr_scheme_mgnregs_backup_id_pk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.mpr_scheme_mgnregs_backup_id_pk_seq', 1, true);
          public          postgres    false    306                       0    0 "   mpr_scheme_mgnregs_draft_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.mpr_scheme_mgnregs_draft_id_pk_seq', 1, true);
          public          postgres    false    308                        0    0 9   mpr_semitrans_location_mapping_location_mapping_id_pk_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.mpr_semitrans_location_mapping_location_mapping_id_pk_seq', 5, true);
          public          postgres    false    310            !           0    0 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_trans_fundalloc_fundalloc_id_pk_seq', 6, true);
          public          postgres    false    316            "           0    0    notifications_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notifications_id_seq', 89, true);
          public          postgres    false    326            #           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    317            $           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    318            %           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 7, true);
          public          postgres    false    319            &           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    320            '           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    321            (           0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    322            )           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    323            *           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    324            �           2606    18035    mpr_scheme_awcc AWCC_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    203            �           2606    18037 #   mpr_scheme_baitarani BAITARANI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    205            �           2606    18039    mpr_scheme_dog DOG_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    207            �           2606    18041    mpr_scheme_doptuhd DOPTUHD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    209            �           2606    18043 %   mpr_scheme_enrollment ENROLLMENT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    211            �           2606    18045    mpr_scheme_foodpro FOODPRO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    213            �           2606    18047 #   mpr_scheme_gitanjali GITANJALI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    215            �           2606    18049 '   mpr_scheme_immunisati IMMUNISATION_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 S   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    217            �           2606    18051    mpr_scheme_infantd INFANTD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    219            �           2606    18053 %   mpr_scheme_inspection INSPECTION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    221            �           2606    18055    mpr_scheme_instdel INSTDEL_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    223            �           2606    18057 !   mpr_scheme_jaldjalb JALDJALB_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 M   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    225            �           2606    18059    mpr_scheme_kanyas KANYAS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    227            �           2606    18061 %   mpr_scheme_karmatirth KARMATIRTH_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    229            �           2606    18063    mpr_scheme_kcc KCC_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    231            �           2606    18065    mpr_scheme_landpp LANDPP_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_pkey";
       public            postgres    false    233            �           2606    18067    mpr_semitrans_login Login_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (login_id_pk);
 J   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_pkey";
       public            postgres    false    235            �           2606    18069 0   mpr_semitrans_login Login_username_username1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    235    235            �           2606    18071 #   mpr_scheme_maternald MATERNALD_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    238            �           2606    18073    mpr_scheme_mci MCI_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    240            &           2606    18075    mpr_scheme_mgnregs MGNREGS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    283            �           2606    18077 #   mpr_scheme_minoritys MINORITYS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    242            �           2606    18079    mpr_scheme_poe POE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_pkey";
       public            postgres    false    244            O           2606    18081 &   mpr_semitrans_privilege Privilege_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mpr_semitrans_privilege
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 R   ALTER TABLE ONLY public.mpr_semitrans_privilege DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    311            �           2606    18083 %   mpr_scheme_saboojshre SABOOJSHRE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    246            �           2606    18085    mpr_scheme_saboojs SABOOJS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    248            �           2606    18087 %   mpr_scheme_safedsavel SAFEDSAVEL_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    250            �           2606    18089 #   mpr_scheme_samabythi SAMABYTHI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    252                       2606    18091    mpr_scheme_sikshas SIKSHAS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    254                       2606    18093    mpr_scheme_svskp SVSKP_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    256                       2606    18095    mpr_scheme_yubas YUBAS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    258                       2606    18097    mpr_scheme_anand anand_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT anand_pkey;
       public            postgres    false    260                       2606    18099 %   mpr_master_attri_table att_table_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (attri_id_pk);
 O   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    262                       2606    18101 "   mpr_trans_audit_log audit_log_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id_pk);
 L   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    264                       2606    18103 4   mpr_semitrans_check_first_user check_First_User_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 `   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    266            -           2606    18105 -   mpr_master_dashboard_info dashboard_info_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.mpr_master_dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (dashboard_id_pk);
 W   ALTER TABLE ONLY public.mpr_master_dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    286                       2606    18107 @   mpr_semitrans_dba_financial_range dba_financial_range_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range
    ADD CONSTRAINT dba_financial_range_table_pkey PRIMARY KEY (dba_financial_range_table_id_pk);
 j   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range DROP CONSTRAINT dba_financial_range_table_pkey;
       public            postgres    false    269                       2606    18109 '   mpr_master_designation designation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (desig_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    271                       2606    18111    mpr_scheme_doc doc_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 A   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT doc_pkey;
       public            postgres    false    273                       2606    18113 4   mpr_master_financial_year financial_year_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_financial_year
    ADD CONSTRAINT financial_year_master_pkey PRIMARY KEY (financial_year_master_id_pk);
 ^   ALTER TABLE ONLY public.mpr_master_financial_year DROP CONSTRAINT financial_year_master_pkey;
       public            postgres    false    275                       2606    18115    mpr_scheme_kishanm kishanm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    277                        2606    18117 +   mpr_master_location_data location_data_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id_pk);
 U   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    279            $           2606    18119 0   mpr_trans_meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mpr_trans_meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (meeting_id_pk);
 Z   ALTER TABLE ONLY public.mpr_trans_meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    281            )           2606    18121 3   mpr_master_block mpr_master_block_block_lg_code_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_block_lg_code_key UNIQUE (block_lg_code);
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_block_lg_code_key;
       public            postgres    false    285            +           2606    18123 &   mpr_master_block mpr_master_block_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_pkey PRIMARY KEY (block_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_pkey;
       public            postgres    false    285            1           2606    18125 8   mpr_master_district mpr_master_district_dist_lg_code_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_dist_lg_code_key UNIQUE (dist_lg_code);
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_dist_lg_code_key;
       public            postgres    false    288            3           2606    18127 ,   mpr_master_district mpr_master_district_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_pkey PRIMARY KEY (district_id_pk);
 V   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_pkey;
       public            postgres    false    288            "           2606    18129 C   mpr_master_location_data mpr_master_location_data_location_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT mpr_master_location_data_location_code_key UNIQUE (location_code);
 m   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT mpr_master_location_data_location_code_key;
       public            postgres    false    279            ;           2606    18131 &   mpr_master_state mpr_master_state_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_state
    ADD CONSTRAINT mpr_master_state_pkey PRIMARY KEY (state_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_state DROP CONSTRAINT mpr_master_state_pkey;
       public            postgres    false    293            =           2606    18133 (   mpr_master_subdiv mpr_master_subdiv_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_pkey PRIMARY KEY (sub_div_id_pk);
 R   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_pkey;
       public            postgres    false    295            ?           2606    18135 4   mpr_master_subdiv mpr_master_subdiv_sub_div_code_key 
   CONSTRAINT     z   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_sub_div_code_key UNIQUE (sub_div_lg_code);
 ^   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_sub_div_code_key;
       public            postgres    false    295            M           2606    18137 B   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_pkey PRIMARY KEY (location_mapping_id_pk);
 l   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_pkey;
       public            postgres    false    309            Q           2606    18139 8   mpr_semitrans_profile mpr_semitrans_profile_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_key;
       public            postgres    false    312            Y           2606    18141 ,   mpr_trans_fundalloc mpr_trans_fundalloc_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_fundalloc
    ADD CONSTRAINT mpr_trans_fundalloc_pkey PRIMARY KEY (fundalloc_id_pk);
 V   ALTER TABLE ONLY public.mpr_trans_fundalloc DROP CONSTRAINT mpr_trans_fundalloc_pkey;
       public            postgres    false    315            [           2606    18628 )   mpr_trans_notification notifications_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_notification
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id_pk);
 S   ALTER TABLE ONLY public.mpr_trans_notification DROP CONSTRAINT notifications_pkey;
       public            postgres    false    325            /           2606    18145 &   mpr_master_department office_dept_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (dept_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_pkey;
       public            postgres    false    287            5           2606    18147    mpr_master_office office_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpr_master_office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id_pk);
 G   ALTER TABLE ONLY public.mpr_master_office DROP CONSTRAINT office_pkey;
       public            postgres    false    290            A           2606    18149 .   mpr_scheme_kcc_backup pk_mpr_scheme_kcc_backup 
   CONSTRAINT     o   ALTER TABLE ONLY public.mpr_scheme_kcc_backup
    ADD CONSTRAINT pk_mpr_scheme_kcc_backup PRIMARY KEY (id_pk);
 X   ALTER TABLE ONLY public.mpr_scheme_kcc_backup DROP CONSTRAINT pk_mpr_scheme_kcc_backup;
       public            postgres    false    297            C           2606    18151 ,   mpr_scheme_kcc_draft pk_mpr_scheme_kcc_draft 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_scheme_kcc_draft
    ADD CONSTRAINT pk_mpr_scheme_kcc_draft PRIMARY KEY (id_pk);
 V   ALTER TABLE ONLY public.mpr_scheme_kcc_draft DROP CONSTRAINT pk_mpr_scheme_kcc_draft;
       public            postgres    false    299            E           2606    18153 6   mpr_scheme_kishanm_backup pk_mpr_scheme_kishanm_backup 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup
    ADD CONSTRAINT pk_mpr_scheme_kishanm_backup PRIMARY KEY (id_pk);
 `   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup DROP CONSTRAINT pk_mpr_scheme_kishanm_backup;
       public            postgres    false    301            G           2606    18155 4   mpr_scheme_kishanm_draft pk_mpr_scheme_kishanm_draft 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft
    ADD CONSTRAINT pk_mpr_scheme_kishanm_draft PRIMARY KEY (id_pk);
 ^   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft DROP CONSTRAINT pk_mpr_scheme_kishanm_draft;
       public            postgres    false    303            I           2606    18157 6   mpr_scheme_mgnregs_backup pk_mpr_scheme_mgnregs_backup 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_scheme_mgnregs_backup
    ADD CONSTRAINT pk_mpr_scheme_mgnregs_backup PRIMARY KEY (id_pk);
 `   ALTER TABLE ONLY public.mpr_scheme_mgnregs_backup DROP CONSTRAINT pk_mpr_scheme_mgnregs_backup;
       public            postgres    false    305            K           2606    18159 4   mpr_scheme_mgnregs_draft pk_mpr_scheme_mgnregs_draft 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs_draft
    ADD CONSTRAINT pk_mpr_scheme_mgnregs_draft PRIMARY KEY (id_pk);
 ^   ALTER TABLE ONLY public.mpr_scheme_mgnregs_draft DROP CONSTRAINT pk_mpr_scheme_mgnregs_draft;
       public            postgres    false    307            S           2606    18161 "   mpr_semitrans_profile profile_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id_pk);
 L   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    312            7           2606    18163 '   mpr_master_scheme_dept scheme_dept_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_pkey PRIMARY KEY (scheme_dept_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_pkey;
       public            postgres    false    291            9           2606    18165 )   mpr_master_scheme_table scheme_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (scheme_id_pk);
 S   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    292            U           2606    18167 0   mpr_semitrans_user_privilege user_privilege_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (user_priv_id_pk);
 Z   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    313            W           2606    18169 &   mpr_semitrans_user_type user_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_semitrans_user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 P   ALTER TABLE ONLY public.mpr_semitrans_user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    314                       1259    18170 	   idx_anand    INDEX     _   CREATE INDEX idx_anand ON public.mpr_scheme_anand USING btree (session, month, location_code);
    DROP INDEX public.idx_anand;
       public            postgres    false    260    260    260            �           1259    18171    idx_awcc    INDEX     ]   CREATE INDEX idx_awcc ON public.mpr_scheme_awcc USING btree (session, month, location_code);
    DROP INDEX public.idx_awcc;
       public            postgres    false    203    203    203            �           1259    18172    idx_baitarani    INDEX     g   CREATE INDEX idx_baitarani ON public.mpr_scheme_baitarani USING btree (session, month, location_code);
 !   DROP INDEX public.idx_baitarani;
       public            postgres    false    205    205    205                       1259    18173    idx_doc    INDEX     [   CREATE INDEX idx_doc ON public.mpr_scheme_doc USING btree (session, month, location_code);
    DROP INDEX public.idx_doc;
       public            postgres    false    273    273    273            �           1259    18174    idx_doptuhd    INDEX     c   CREATE INDEX idx_doptuhd ON public.mpr_scheme_doptuhd USING btree (session, month, location_code);
    DROP INDEX public.idx_doptuhd;
       public            postgres    false    209    209    209            �           1259    18175    idx_enrollment    INDEX     i   CREATE INDEX idx_enrollment ON public.mpr_scheme_enrollment USING btree (session, month, location_code);
 "   DROP INDEX public.idx_enrollment;
       public            postgres    false    211    211    211            �           1259    18176    idx_foodpro    INDEX     c   CREATE INDEX idx_foodpro ON public.mpr_scheme_foodpro USING btree (session, month, location_code);
    DROP INDEX public.idx_foodpro;
       public            postgres    false    213    213    213            �           1259    18177    idx_gitanjali    INDEX     g   CREATE INDEX idx_gitanjali ON public.mpr_scheme_gitanjali USING btree (session, month, location_code);
 !   DROP INDEX public.idx_gitanjali;
       public            postgres    false    215    215    215            �           1259    18178    idx_immunisati    INDEX     i   CREATE INDEX idx_immunisati ON public.mpr_scheme_immunisati USING btree (session, month, location_code);
 "   DROP INDEX public.idx_immunisati;
       public            postgres    false    217    217    217            �           1259    18179    idx_infantd    INDEX     c   CREATE INDEX idx_infantd ON public.mpr_scheme_infantd USING btree (session, month, location_code);
    DROP INDEX public.idx_infantd;
       public            postgres    false    219    219    219            �           1259    18180    idx_inspection    INDEX     i   CREATE INDEX idx_inspection ON public.mpr_scheme_inspection USING btree (session, month, location_code);
 "   DROP INDEX public.idx_inspection;
       public            postgres    false    221    221    221            �           1259    18181    idx_instdel    INDEX     c   CREATE INDEX idx_instdel ON public.mpr_scheme_instdel USING btree (session, month, location_code);
    DROP INDEX public.idx_instdel;
       public            postgres    false    223    223    223            �           1259    18182    idx_jaldjalb    INDEX     e   CREATE INDEX idx_jaldjalb ON public.mpr_scheme_jaldjalb USING btree (session, month, location_code);
     DROP INDEX public.idx_jaldjalb;
       public            postgres    false    225    225    225            �           1259    18183 
   idx_kanyas    INDEX     a   CREATE INDEX idx_kanyas ON public.mpr_scheme_kanyas USING btree (session, month, location_code);
    DROP INDEX public.idx_kanyas;
       public            postgres    false    227    227    227            �           1259    18184    idx_karmatirth    INDEX     i   CREATE INDEX idx_karmatirth ON public.mpr_scheme_karmatirth USING btree (session, month, location_code);
 "   DROP INDEX public.idx_karmatirth;
       public            postgres    false    229    229    229            �           1259    18185    idx_kcc    INDEX     [   CREATE INDEX idx_kcc ON public.mpr_scheme_kcc USING btree (session, month, location_code);
    DROP INDEX public.idx_kcc;
       public            postgres    false    231    231    231                       1259    18186    idx_kishanm    INDEX     c   CREATE INDEX idx_kishanm ON public.mpr_scheme_kishanm USING btree (session, month, location_code);
    DROP INDEX public.idx_kishanm;
       public            postgres    false    277    277    277            �           1259    18187 
   idx_landpp    INDEX     a   CREATE INDEX idx_landpp ON public.mpr_scheme_landpp USING btree (session, month, location_code);
    DROP INDEX public.idx_landpp;
       public            postgres    false    233    233    233            �           1259    18188    idx_maternald    INDEX     g   CREATE INDEX idx_maternald ON public.mpr_scheme_maternald USING btree (session, month, location_code);
 !   DROP INDEX public.idx_maternald;
       public            postgres    false    238    238    238            �           1259    18189    idx_mci    INDEX     [   CREATE INDEX idx_mci ON public.mpr_scheme_mci USING btree (session, month, location_code);
    DROP INDEX public.idx_mci;
       public            postgres    false    240    240    240            '           1259    18190    idx_mgnregs    INDEX     c   CREATE INDEX idx_mgnregs ON public.mpr_scheme_mgnregs USING btree (session, month, location_code);
    DROP INDEX public.idx_mgnregs;
       public            postgres    false    283    283    283            �           1259    18191    idx_minoritys    INDEX     g   CREATE INDEX idx_minoritys ON public.mpr_scheme_minoritys USING btree (session, month, location_code);
 !   DROP INDEX public.idx_minoritys;
       public            postgres    false    242    242    242            �           1259    18192    idx_poe    INDEX     [   CREATE INDEX idx_poe ON public.mpr_scheme_poe USING btree (session, month, location_code);
    DROP INDEX public.idx_poe;
       public            postgres    false    244    244    244            �           1259    18193    idx_saboojs    INDEX     c   CREATE INDEX idx_saboojs ON public.mpr_scheme_saboojs USING btree (session, month, location_code);
    DROP INDEX public.idx_saboojs;
       public            postgres    false    248    248    248            �           1259    18194    idx_saboojshre    INDEX     i   CREATE INDEX idx_saboojshre ON public.mpr_scheme_saboojshre USING btree (session, month, location_code);
 "   DROP INDEX public.idx_saboojshre;
       public            postgres    false    246    246    246            �           1259    18195    idx_safedsavel    INDEX     i   CREATE INDEX idx_safedsavel ON public.mpr_scheme_safedsavel USING btree (session, month, location_code);
 "   DROP INDEX public.idx_safedsavel;
       public            postgres    false    250    250    250                        1259    18196    idx_samabythi    INDEX     g   CREATE INDEX idx_samabythi ON public.mpr_scheme_samabythi USING btree (session, month, location_code);
 !   DROP INDEX public.idx_samabythi;
       public            postgres    false    252    252    252                       1259    18197    idx_sikshas    INDEX     c   CREATE INDEX idx_sikshas ON public.mpr_scheme_sikshas USING btree (session, month, location_code);
    DROP INDEX public.idx_sikshas;
       public            postgres    false    254    254    254                       1259    18198 	   idx_svskp    INDEX     _   CREATE INDEX idx_svskp ON public.mpr_scheme_svskp USING btree (session, month, location_code);
    DROP INDEX public.idx_svskp;
       public            postgres    false    256    256    256            	           1259    18199 	   idx_yubas    INDEX     _   CREATE INDEX idx_yubas ON public.mpr_scheme_yubas USING btree (session, month, location_code);
    DROP INDEX public.idx_yubas;
       public            postgres    false    258    258    258            �           2606    18200 '   mpr_scheme_anand ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    235    260    3302            \           2606    18205 %   mpr_scheme_awcc AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Q   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    3302    235    203            ^           2606    18210 /   mpr_scheme_baitarani BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    3302    235    205            �           2606    18215 #   mpr_scheme_doc DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    3302    235    273            `           2606    18220 #   mpr_scheme_dog DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    207    235    3302            a           2606    18225 +   mpr_scheme_doptuhd DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    209    235    3302            c           2606    18230 1   mpr_scheme_enrollment ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    211    235    3302            e           2606    18235 +   mpr_scheme_foodpro FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    213    235    3302            g           2606    18240 /   mpr_scheme_gitanjali GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    215    235    3302            i           2606    18245 1   mpr_scheme_immunisati IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    217    235    3302            k           2606    18250 +   mpr_scheme_infantd INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    219    235    3302            l           2606    18255 1   mpr_scheme_inspection INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    221    3302    235            n           2606    18260 +   mpr_scheme_instdel INSTDEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_login_id_fk_fkey";
       public          postgres    false    235    3302    223            p           2606    18265 -   mpr_scheme_jaldjalb JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Y   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    225    235    3302            r           2606    18270 )   mpr_scheme_kanyas KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    3302    227    235            t           2606    18275 1   mpr_scheme_karmatirth KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    229    235    3302            v           2606    18280 #   mpr_scheme_kcc KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    3302    235    231            �           2606    18285 +   mpr_scheme_kishanm KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    277    3302    235            x           2606    18290 )   mpr_scheme_landpp LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    233    235    3302            z           2606    18295 *   mpr_semitrans_login Login_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_desig_id_fk_fkey" FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 V   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_desig_id_fk_fkey";
       public          postgres    false    235    3350    271            {           2606    18300 0   mpr_semitrans_login Login_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_dept_id_fk_fkey" FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_dept_id_fk_fkey";
       public          postgres    false    3375    235    287            |           2606    18305 +   mpr_semitrans_login Login_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_id_fk_fkey" FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 W   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_id_fk_fkey";
       public          postgres    false    290    235    3381            }           2606    18310 .   mpr_semitrans_login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Z   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    235    314    3415                       2606    18315 /   mpr_scheme_maternald MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    235    3302    238            �           2606    18320 #   mpr_scheme_mci MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    240    3302    235            �           2606    18325 +   mpr_scheme_mgnregs MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    283    3302    235            �           2606    18330 /   mpr_scheme_minoritys MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    242    3302    235            �           2606    18335 #   mpr_scheme_poe POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    244    3302    235            �           2606    18340 1   mpr_scheme_saboojshre SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    246    3302    235            �           2606    18345 +   mpr_scheme_saboojs SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    3302    248    235            �           2606    18350 1   mpr_scheme_safedsavel SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    235    250    3302            �           2606    18355 /   mpr_scheme_samabythi SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    3302    235    252            �           2606    18360 +   mpr_scheme_sikshas SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    254    3302    235            �           2606    18365 '   mpr_scheme_svskp SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    256    235    3302            �           2606    18370 '   mpr_scheme_yubas YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    235    3302    258            �           2606    18375 .   mpr_trans_audit_log audit_log_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_login_id_fk_fkey FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 X   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_login_id_fk_fkey;
       public          postgres    false    3302    235    264            �           2606    18380 9   mpr_master_designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    3375    271    287            �           2606    18385 ?   mpr_master_attri_table mpr_master_attri_table_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey;
       public          postgres    false    262    3385    292            �           2606    18390 5   mpr_master_block mpr_master_block_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 _   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_location_id_fk_fkey;
       public          postgres    false    3360    279    285            �           2606    18395 3   mpr_master_block mpr_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.mpr_master_subdiv(sub_div_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_subdiv_id_fk_fkey;
       public          postgres    false    285    3389    295            �           2606    18400 8   mpr_master_district mpr_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.mpr_master_state(state_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_state_id_fk_fkey;
       public          postgres    false    293    3387    288            �           2606    18405 ?   mpr_master_scheme_dept mpr_master_scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    3385    292    291            �           2606    18410 @   mpr_master_scheme_table mpr_master_scheme_table_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) NOT VALID;
 j   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey;
       public          postgres    false    271    292    3350            �           2606    18415 I   mpr_master_scheme_table mpr_master_scheme_table_financial_year_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey FOREIGN KEY (financial_year_id_fk) REFERENCES public.mpr_master_financial_year(financial_year_master_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 s   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey;
       public          postgres    false    275    292    3355            �           2606    18420 3   mpr_master_subdiv mpr_master_subdiv_dist_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.mpr_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey;
       public          postgres    false    3379    295    288            �           2606    18425 &   mpr_scheme_anand mpr_scheme_anand_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT mpr_scheme_anand_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT mpr_scheme_anand_lcfk;
       public          postgres    false    279    3362    260            ]           2606    18430 $   mpr_scheme_awcc mpr_scheme_awcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT mpr_scheme_awcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 N   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT mpr_scheme_awcc_lcfk;
       public          postgres    false    3362    279    203            _           2606    18435 .   mpr_scheme_baitarani mpr_scheme_baitarani_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT mpr_scheme_baitarani_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT mpr_scheme_baitarani_lcfk;
       public          postgres    false    279    3362    205            �           2606    18440 "   mpr_scheme_doc mpr_scheme_doc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT mpr_scheme_doc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT mpr_scheme_doc_lcfk;
       public          postgres    false    3362    273    279            b           2606    18445 *   mpr_scheme_doptuhd mpr_scheme_dopthud_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT mpr_scheme_dopthud_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT mpr_scheme_dopthud_lcfk;
       public          postgres    false    279    3362    209            d           2606    18450 0   mpr_scheme_enrollment mpr_scheme_enrollment_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT mpr_scheme_enrollment_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT mpr_scheme_enrollment_lcfk;
       public          postgres    false    3362    211    279            f           2606    18455 *   mpr_scheme_foodpro mpr_scheme_foodpro_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT mpr_scheme_foodpro_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT mpr_scheme_foodpro_lcfk;
       public          postgres    false    279    3362    213            h           2606    18460 .   mpr_scheme_gitanjali mpr_scheme_gitanjali_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT mpr_scheme_gitanjali_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT mpr_scheme_gitanjali_lcfk;
       public          postgres    false    215    3362    279            j           2606    18465 0   mpr_scheme_immunisati mpr_scheme_immunisati_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT mpr_scheme_immunisati_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT mpr_scheme_immunisati_lcfk;
       public          postgres    false    279    3362    217            m           2606    18470 0   mpr_scheme_inspection mpr_scheme_inspection_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT mpr_scheme_inspection_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT mpr_scheme_inspection_lcfk;
       public          postgres    false    221    3362    279            o           2606    18475 *   mpr_scheme_instdel mpr_scheme_instdel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT mpr_scheme_instdel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT mpr_scheme_instdel_lcfk;
       public          postgres    false    223    3362    279            q           2606    18480 ,   mpr_scheme_jaldjalb mpr_scheme_jaldjalb_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT mpr_scheme_jaldjalb_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 V   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT mpr_scheme_jaldjalb_lcfk;
       public          postgres    false    3362    279    225            s           2606    18485 (   mpr_scheme_kanyas mpr_scheme_kanyas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT mpr_scheme_kanyas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT mpr_scheme_kanyas_lcfk;
       public          postgres    false    279    3362    227            u           2606    18490 1   mpr_scheme_karmatirth mpr_scheme_karmatirtha_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT mpr_scheme_karmatirtha_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 [   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT mpr_scheme_karmatirtha_lcfk;
       public          postgres    false    3362    229    279            w           2606    18495 "   mpr_scheme_kcc mpr_scheme_kcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT mpr_scheme_kcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT mpr_scheme_kcc_lcfk;
       public          postgres    false    279    231    3362            �           2606    18500 *   mpr_scheme_kishanm mpr_scheme_kishanm_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT mpr_scheme_kishanm_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT mpr_scheme_kishanm_lcfk;
       public          postgres    false    3362    277    279            y           2606    18505 (   mpr_scheme_landpp mpr_scheme_landpp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT mpr_scheme_landpp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT mpr_scheme_landpp_lcfk;
       public          postgres    false    233    3362    279            �           2606    18510 .   mpr_scheme_maternald mpr_scheme_maternald_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT mpr_scheme_maternald_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT mpr_scheme_maternald_lcfk;
       public          postgres    false    238    279    3362            �           2606    18515 "   mpr_scheme_mci mpr_scheme_mci_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT mpr_scheme_mci_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT mpr_scheme_mci_lcfk;
       public          postgres    false    240    279    3362            �           2606    18520 *   mpr_scheme_mgnregs mpr_scheme_mgnregs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT mpr_scheme_mgnregs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT mpr_scheme_mgnregs_lcfk;
       public          postgres    false    283    3362    279            �           2606    18525 .   mpr_scheme_minoritys mpr_scheme_minoritys_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT mpr_scheme_minoritys_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT mpr_scheme_minoritys_lcfk;
       public          postgres    false    3362    242    279            �           2606    18530 *   mpr_scheme_saboojs mpr_scheme_saboojs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT mpr_scheme_saboojs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT mpr_scheme_saboojs_lcfk;
       public          postgres    false    248    3362    279            �           2606    18535 0   mpr_scheme_saboojshre mpr_scheme_saboojshre_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT mpr_scheme_saboojshre_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT mpr_scheme_saboojshre_lcfk;
       public          postgres    false    246    279    3362            �           2606    18540 0   mpr_scheme_safedsavel mpr_scheme_safedsavel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT mpr_scheme_safedsavel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT mpr_scheme_safedsavel_lcfk;
       public          postgres    false    3362    250    279            �           2606    18545 /   mpr_scheme_samabythi mpr_scheme_samaybythi_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT mpr_scheme_samaybythi_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Y   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT mpr_scheme_samaybythi_lcfk;
       public          postgres    false    252    279    3362            �           2606    18550 )   mpr_scheme_sikshas mpr_scheme_sikhas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT mpr_scheme_sikhas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 S   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT mpr_scheme_sikhas_lcfk;
       public          postgres    false    254    279    3362            �           2606    18555 &   mpr_scheme_svskp mpr_scheme_svskp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT mpr_scheme_svskp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT mpr_scheme_svskp_lcfk;
       public          postgres    false    3362    256    279            �           2606    18560 &   mpr_scheme_yubas mpr_scheme_yubas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT mpr_scheme_yubas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT mpr_scheme_yubas_lcfk;
       public          postgres    false    3362    279    258            �           2606    18565 Q   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_location_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 {   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_location_id_fk_fkey;
       public          postgres    false    309    3360    279            �           2606    18570 R   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_user_type_id_fk_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 |   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_user_type_id_fk_fkey;
       public          postgres    false    3415    309    314            ~           2606    18575 :   mpr_semitrans_login mpr_semitrans_login_location_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT mpr_semitrans_login_location_code_fkey FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 d   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT mpr_semitrans_login_location_code_fkey;
       public          postgres    false    279    235    3362            �           2606    18580 9   mpr_semitrans_profile mpr_semitrans_profile_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_fkey FOREIGN KEY (username) REFERENCES public.mpr_semitrans_login(username) NOT VALID;
 c   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_fkey;
       public          postgres    false    3304    312    235            �           2606    18585 3   mpr_master_department office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 ]   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    287    3381    290            �           2606    18590 ,   mpr_semitrans_user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public.mpr_semitrans_privilege(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    3407    313    311            �           2606    18595 (   mpr_semitrans_profile profile_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_id_pk_fkey FOREIGN KEY (profile_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_id_pk_fkey;
       public          postgres    false    312    3302    235            �           2606    18600 9   mpr_master_scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk);
 c   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    291    287    3375            �           2606    18605 )   mpr_semitrans_check_first_user user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk);
 S   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT user_id_fk;
       public          postgres    false    3302    266    235            �           2606    18610 @   mpr_semitrans_user_privilege user_privilege_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 j   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_user_type_id_fk_fkey;
       public          postgres    false    3415    313    314            i   �  x��X�o�8~��
��=\/��y�u��6l+��0GI�8v`�����������:�Ǐ�ER�#����Mη�,��m�����d)��e��;���jAޒ�5�7l f�d� ����C�~�X�S�/���-��N���M�tߊ�(�BT-<�3���:��	QB)YWdi����y+�;�CS[��R�x�x�����bm�����3/��gj��#�����f����|��ф$�T]�k~R�VT�7�Uk��mՈ���5�!��H�����篷w�4����W8��|WwJ��rM���휙�+�(3��Q��!&��0s�s�EȈAeE4J@̓J�Wu��n�m΋��pD����1#cNF����n!���n��M�`W����8����w��E�G��n�BV�y)�=F�!`��0��QFf��n	�YoV��>���D4]b!�-�F���h��%�/˓��c�B��� B㈤/y��y�^�Ih��H/��<�M�Ӭ �6������D)
O12'���u~<6��3�NH�����;���@��t! ��#�$��	��e)��ߣ��`�ID�Bk���Wۀ�k�X�5��O�,ײ�Z��7��j �A�2 �C�$�+�d؝jk>t����u`h�\���l��B>H/(kU���cNZ ���dF���:��^V��PB!m!���� �L�tJ���ұ�0����UR��r��"֋�6{3�=~�N���ӔD}��(T�6Á����0�e읕�iF�a��ՆW-h�v7(� TA@g�+�;@mm��s�OV�t��t1��no
�y����8o����n&�k�;��U`V�&Fk/��W����	S�B_[*�e����ti�:@3�� �0���/�"�����0u��)�AY��:;��N1�P�m�Q;y����d�8����=��h���BW��5:��� FS��\�B��%2^z���yT{Gh1l�0�L�]~��i2�ַC/�yАoJ��+��d[���;�A�Q�lwE�2⑙L+�Q�hl�L����޶�UTX�1o�a�� ��(�@Eq�[�i�Xw]TPEŏ�?M�wL�oj��§�<��֏X����'�.έl�R���h�M� 3b��0�������N��D!Y�EC���Gh�9Pf��-��He�jHeSg@E�	�^`��
^T��%��U����R��n��}E���A��Y�N�%�^{����Y��/�s��~bWvS{�]%PROE��kw9�P�O�S��c�����6��9:�F-6�Qw�����ˡ�������9c��=V�ye:�pv��7p+ʦ���á-���cU��b���en��X׵�Dɢ_�S��2�/Y�Uh��
�PlnF��4�s7�n�h�Vu�����n�s�@0M�Rm��3��zu7���`�bo䕸bq4�]œ(}K����G�)���肩�� ����{[����:�z��1��P�����]��ӣ$�|tv��@�a�M�6bl�p��E�����K҉���꼹��H�p�{��6�w��!�����H_�j`���~l��{�oe=2���&�+t�i;J$p�x��h�5��E���0��-�/my�Bw��_�_�
��;c� \.����ض;��[�c.���i!�B$�e�����vka�C�^�5����Qo ?D��;��GV�N�r�A�ԭ����D%��Ӹ���MZ ~A\j ���F$�[yT^� �_�|��yX��ןn�"A��\B��/`�?I��[U?v��y)�R�����ZRw��M3�2C�A�g�H�6�5�S��]A���,�Y�Әi���I��+��#�؃��(�ƿ�?�n��������S�      �   �   x�E�A��0E��)��:M�vi
��4S�)�?v�`��_b�7>0C���E�!yA[8�5q��:a�U���	����9�1,�V���X=�=?�����*�����U5B��tjS����F�,��)�d����r�J[�-��
�����ʞdQ���OE�g.�W.�>�j�Q��鲆�0�&�Cq����:"��F�      �   �  x��V�r�(}���ػ��TQ-`*.�������=��<������q
<
�F���5Ćn*Р���_��B�N���$Iɲɵ�QioeSVд��x��'���)�~�cЛ��ة7n��00V7p�]L!D��~���d"�K%{X�d22Q#e����P������LqK��rAQEN�d��d��A	enG�wu"9Q>J��ٽ��L��^�K�v���Y�Q�ڧ�%�#��M�Ҥ\��� �0?���G��B.�&�����,(�?
X�\��	�S{�w���E�}9{���њS�#ϓ�$Q��$ιi�ԦS� AtJT=�}1�k�����56�B���.�h���ŷ��U�Y���L2'��X�oU�|0i��B�-���TG s����d��j��-^��t
�U��ㄪ��^�{:��J��&p0��+Y��I�l�E-�U�-��~����-��j�Z@�)��/__�g]5��%j��h�$r�ȥ&&J9֛���R��]���c\7ʚ�[ڌ��|(e]5�s�	�N����3�>'b����E�����Iw5�c�.ip��H��&Ȁ15���A��~r?��h���e�{�3h�vI����} �d��ϴ�]�� �q˲L�f�pl8I�P�\a���/��Y<�qX�a�G��w̮�!�Gܛ).w9f��ꬫ��'A wD����0����G���GUsL��å0���'�G$�m�Lf�3��
HW�_+���,�;��Q�0�}��+��c){j��_��x�؝�0�m��v�
'�����̿�N�6*�i�Ĭ"�+	����
72�wp^�OPg���x���� ��h�Y�~ ��A���k���UDA�Twk�C,7���Q>�>q߀*��{��-]��/'��r/+�1e*�s�_j��#�����}��O^m.L��K�دo��� �U`      �   	  x�mT�n�0</��?��<�HJbC�I�uы�m�4)Ҵ@��Kʉ��[�ᒻ;�� 삑�MS�C�*�}H�l�S��ՀA�ߒ-A�F�|��H�ܷ�����hSr�=��
�0Z�K������a�6�~L��;`��a@g:��b�N�#�By���I�H��`;�����)��A�HI�X1� �<w��Ǉ�=���_�q������w�NO����\�]�� 5zn���tz>������ο���?ʮx~�}����TeO���{�v�KN/��A��H�D����:d�Z���8U?Z�#��+�5KhM��̿"Q1���e��ZMi&&HW�UP���p���8L:rl[4!����-4(ot�\Z���m�,��C^߁��2y�A�>l�,��p�Zg���@�Ԑz�8�+���conc���)>�\M��p��D��%��!ׁزjQˠف4�"1�Z� ~A,X��)Q�|>���SC��O]��/�ɃرZ\�G/�}�%PŃ�j���9��=19fG*��֏oG@�A�\D����1ElY���o�C9ba/b�13[�Rx��DÐ�t���!��a�ӗ���+�7y_'"e߱� rA�[�rX|+���qˢ�M9��<���cI�kG3��j�}7�\�78�-a$G9�:�3���x�>b�M�|F��|Y*m���hi�D�aFj�����5e���p���=�)����x�HƼdzMSAg��hMF���,$���D|z��OH�      r     x�uT�r�0<_�c{iŇd����D"5$�T3���((;�:�4#��H	�-kل���%&A���u*kr Q��s�P��0SzuŇ����{���|-�L��|�`�'l��%N��}�����.���pz�\�ي>���4�T}W�"�S@j<�X�|]�.�4x�d��~ـe�b��A��B)�������U댎�2�PO�by���`�(|o��Di ���+���ՠlw,p�n� A�Qv{N�k�/���Aq����ه�<KA�@>q���yc,�&�cF�!��܍cT,��"gբ��}�_07/S���BQ
i��S9Q��G�wf՝������ �:T�Sk���䆘������{/��6*{FZ׵��Mq�?���~�V�b��vߠ�����eZs�#	���Ĭ��e�׏a��kϬc ٢n �bY��g�y���mP��I����P�]��N�%��Q�P�9{ki�%��gԦ�\p�[�AԎ���ݷ)Sz#&�_+\��~�Pǧ;X���� ��	�Z_��D�Q%0
���CɂF�;�#`���_�y����j	;@߃i�(�R�:���觩Nh��<�i��n�t�_����h��]��i�m�Ŀ��PM%,      �       x�34���r��4��464�4����� <4      v   Q   x�3���KNU�%��y\F�n�y�yə�9
���E\ƜΉ9�y)�E�	�wFbQf��o~~^1+�&u��qqq 8��      z   �   x�M�Kn�0D��)z���_N� R*+�b�����Jl	Y�q�CR?~=4�(B�O���BHq��r�o��f,Nf/���d�P��\���YG}b�Ư%83��lqOM�ao��a�8xC#Ϗ���R�T��l/9~���H�W�I��N��t���0�`��槎X��,����8�[3��G��i�I��2�'�?h���gf��P6      �   '  x�]QIn�0<S����~d$�&�Ő�)��w��a;��4�L�K�l��M%V��96�Z�NF��c^��)���0r@�3�4�B�҃|ź�N`z&�Y6�MN������^��.0$/�6).�S���p�iinP����{�f.=�o�A�2G̯l�	KP*+vج��RXE[c�z>�}��=�0�e���G�T:՜���ի�ָM��Lߖ�ͬ�L��k�Qʗ6�O��r��$�XIen%����n1�`)UR����c�Ұ����j[�H\f�~wJ�?:l��      �   �  x�%�э1������k����7XB�(Q�;yOK=�M��ee�}ٲ�۶��}z;�~�Z��0J�a9<4#�<4e�5���T�ۨ��*��c�硑�jz��S#�ӤΦ��j�<�T��(}��*OMUmO�X�k�J��Tq}���O�Z>5�{���:j����2@?r@���^C蜲!� �� �!XmB�[�����7\\�h�6$.���p,\  2��2���2� ���6�wkpw���5��G�yP�$B��A٠'6����,l ���`���� �$6������R��a8� .6w`l �`b(�1�.���Ɇ�G6��P�dC��p A:�$��|@��V'���@�C�N����6p��
��ۡ�vhD��o�F����{;4"��ȷ���vp��n�ہ�Ž�������W      �   ~  x�mT]o� }�_��IS���<�I�ei���6M�TC��`� �ʿ��I���!ܫ�����4�{�e��x(K�_�NIl!�$�p�%�Ӽb���旨�2NU�ܯ�?ܮ
�>��K�0XI��*d-�@L>��K��%Y�v] k�ݳE��G�����xeE8cg���*�uVv�+�<�pj�i����Tw��ц���������Cg$�_�Pv:tN�����<a�)���`k��i�HxN�(!�r/���Cҕ�h����b�s�<I���dӇک~�1剒�4�/����9��DN���d�Bl��T��;�+�i�^� �"F��P�q�č�a3�'<e	6Q��=�Iq��\,�&�'�z���	q}d���S�50�A8�M�+��j�|m�lFy"����?��?g3�%BU�y�j�p�+�%���;�-��oY�nb�s�%B���-~����mK�T�L c�$B)�����!eQX윍h��t�v����.A^�Ij%��CI6C*"2���?�c���צ9��(Ԉ�1�R¦4K�	��	�f��A~�o�٪��Y�K8�y���Ǧm��U����*|�L'�М������_�ʖ���+v{����ϔҿ�o��      �      x�3��wQpr�sw������ 0�2      �   1   x�3�vtq�425021�44�4�2��	ur�t�[����b���� ���      -      x������ � �      g      x������ � �      .      x������ � �      0      x������ � �      t      x������ � �      2      x������ � �      4      x������ � �      6      x������ � �      8      x������ � �      :      x������ � �      <      x������ � �      >      x������ � �      @      x������ � �      B      x������ � �      D      x������ � �      F      x������ � �      H      x������ � �      J   Y  x���a�� ��)z�i ����ϱ`g�:ٱIm��/�O5Q2#32&�ʋq#2$����!�ѿ��@f�N���h�Q ���7�/�����Ϸ7L�"���'�!:�*��]N���RMj��-�X�(f \���s /�]O�@4b����Q��2
x3��cF��!>�
��lܒ��a
�� W�6@�]S��������Sjwe︮aʑ�ѭ*�n����',G���l�*f����+���	f�U�f�(8��s�]�WAX���.�f�U����3�W���q�#��a���C�2�*�op��\�lԬ����L����A�ׯ/w1I�
�� �X~��      �   �  x���ɍ�0гT��AR��2��1�;�'0'@�.�:t"�vt����c�$T	�!@{juX�ӂEʓ�*�Kŕ
�'����Ri�X���4��?W��VX��U�`C@kP� 3�T�]�Pi'ڠ���7�U���#���ɒ��XfW���3�Y��QH�t�#=K&QL�}�tL=�N�]�=�(B�kr���`����K��	�*���!z�m�/�9�n8���O�5u��b���d�gH�.�&(�~ƹ���K��"�z0�]B[�	��S��5iہ+�V�)DY�u1_S+>�`�2��̞�!��c�
��E|	�ÈlsX=}ć/��������=����r����]��/���L��l֨���M��{b���J���,`UHj�9l�̔@'�N���fo?����*      �   9   x�%ű� �Z�"������sP���[H�4����h�dsA��UЖ⌈��	M      x   �   x����mD!�o\E��3�u-鿎��HY�F ��:�l
J�R��P�_z<���q\ �{������ū�M�DjR��1j--k�i��Ui��P<��k�ET/}��z.��,;|w�z��z�g��<OV�ڳy���z_�dNvk���˄f� ���� ��$d6��d(�%fB�s�Yq��	=�S<������̈́�c/u�fm����s�35CpX�qb��/���_쳝W      �   �   x���ۍ1�oS�6�\l졖�_G`b)QfeK~|!�J��.���{�=�?>]̹a.�:r�a�0�A ]�:\z��qþ+�5k�ZK�Zh�t��ƙ7)N��5��v�Vz��zF}�4:�u���u�yͲ�<oV�\�<�jq��R)g��5�zM&�ꡓ�lhw�{�B�JL@D��L$��$�C�돊��$��Q����Qq���c/ugn�I6�A�A���"��x`.|�� ���z      �      x������ � �      L      x������ � �      Q      x������ � �      S      x������ � �      ~   ;   x�3�4䴲2�FFPJ��L��X������������ (�5b#NCKCC�=... :�	�      �   ;   x�3�4䴲2�FFPJ��L��X������������ (�5b#NCKCC�=... :�	�      �      x������ � �      U      x������ � �      W      x������ � �      [      x������ � �      Y      x������ � �      ]      x������ � �      _      x������ � �      a      x������ � �      c      x������ � �      e      x������ � �      m       x�3�4�4�2��`�L��I30���� d��      p      x�3�4204�4����� ��      �   �   x����E1cQ̞������XH'�Y,���*y��X^a��|�­U��]�gl��۸����\!�6xB�q����qq�#�A�ƋV��M7�rDﺮ�c��5|����xPΐBnV((&g(*g(.g(2gLl��s���?7�(>      N   �   x���;�0Dk�0��F]�F8������!E�fw�7�x�ϼ����X8ϝ�<�s9F�����)�"�E�<b$t?��h��g�%I<@B���@�����7$��({��68�Գ�yڶ.���%��n��[s.�i^��|>D��O�Ѷ.�pA�1�����-Y�'���QZ"��?c��{��� c�a      �   �  x�uR�N�0}n�"_@�ux�@$$��k�6�K�$ݴ��I�.�8�s���x�Ѳ�l���赬1ʢ���������@��w�URy����I��	�t�X��Bvl���w\���� �QH�%�Wd_����c�M�!��>�k�˶AçbCc�]ĺ�#n�HDbe�چ��p�XJ�8�U�*K�5���.C�i��������o	�R3�����ȷ�+��G��#��Y偽�����5 ����D\@9�8���B�������� *V��{�M�<�f�S� �B�.�t�1'�_G����Q�w��!
�s�����tm�;=w)��S^�l����kYtz�.'a ��1b���`��!-b�[�}�Ϻ$���;X�د�jZw��,LV��;[�4�f��E�?��      �      x���Ƕ���-��Ϸ�Z�������_��\{�����UXSf�>z��4���O���W6~��MΤ�������8I<A��I�?���>'��4o�tvD����^�_~>�;��xsL���o{߿Қ����+�{8��RDt�^�0�G����)'Np���N�|~o�g�Ҹ��	T!��~R���}���F`NI�>T"���k$^�>�j�\
����dW�{?��-��B���S�n���x��x��s( ��`�0n�N�^��G��X�aF��pU��O�ݓ��MS�E����3���1Ǚ������6��6�����96�5�![AТ��Wx��-����8�U�d�L�
ʣ7ɜ��ւ)�0����c��ZK��O�����(�#���+J~�T(1����[�t�X�2�3"84b�5 ����#�|P]����aO��ZLs��`�w���t�DLo�FRО����!�O�-�"�ޚ�M/�N�.�U��ጹ��[N��B+�;̵�A|���W3�Rh(Ɍ�ϓ����SA^���?���������C�^9����R�O�Q�n{fLd��&�ct�jW�S�$���`%{]]��J����/l]:�ͳJ�o�Ԥi�h��c����c7�50=��
�#���;>�&)��!�4&4��k��R�yȬ9�B��U�,zOf�թ�Si�d��>᪾�g�F6Q��wBHY^[c	̰�Z)�H5��Mk��E���J^� �9<e��bp3w��li��&R���@R8U_�û\�*Z�)���;��ٮ��/��YA��3�8���\��&R�D�tن&"�^�pw���My�ٜ�=x�E����l3��Y[�c|�m�	�e|f���ZI�`D��pCr��"���ru����af`RS�g���<�%����Ǽ�BI�F����|?�y���΁@�5����M��	ȽI�o�/Ƨ�W�T`"�䆤�_�՟c����wۏ�>��1����ȇn_�'�I:�j���N��6�����2ƹ���
߰	��h*S�s�*�
F��';2n]�q6Jh�	� �|���`���s�-��0�q�v�����Ԫ�#��g5��U�;bWRc8�Ť�F'$A�i&�z�l��~�*a<�$P^ZP���V �����E����|���dƍ,��ڎȱ�E����Gn��)/탦���أc}3���ƪLE�%�0�}�����]9�)_���0�gap[y��e+U�����Zr�8��8>��d�zdA���x㎏*�>|j���Bu����m�#�ٙ�c�lSg;��M%V_&���IJ���RT��#t���/��%��cCaH9����¬��ƫ�bs�c��PbC��|�2�]!��m���)E4��*7$��d^�Lv!q�o����>��X�~�!b�Y�|��� ��A��0�e3��l�3�i���d|�yc�f������#5�g�у�6��-�=��Ra~f��.�^��!� b�ﳳ�lm�2Ŷ���#e?n���1���͔`�Aeq�fV�����S���=����F�?P��@�!ϭ�����N�E�ا�'Ό�lS��I�g".LC"���wp��6G` c���a���b�w�px�uV>*W��Y�ƃxJZ�[� ��p��V�����h�@~��b*���|��/{��f)�Ry�ϊ�L�����﹭���5l2b�V	�c��u�JͨuŁ�4���Ap�B�
���(2!jMAͷކ�{�=���i�w�>��1�� ��K���� ��FiC��c姯�����.s������H4�!�t0�.�SɺҼ@��;_����V��9���Z����h�ǭ���p	��sNT\�+�� �α?�G4ļ&���#���c�sR�X��5"�^ �wOaF6���!�����	��ߘ_ �dI�~�7�
�������u���sy�ir1V��(���s���3��m�Jm�g(��xY��9&=ڰfX��^�z��:}�u=k�I0M�p���
']6<�ű��`���O��71��?���&����'Ie�˘����C��H�
��l�\�їs��*`i��gkr�6�iʤܻ}�������ʔ�h����vV�o5�(\�kT,�0��p'�U�<C �Z�Lr<�R��Dyw�*���ֵ�$j8��^�;��Su�� &�E�P�����+�r[�oY�7�2/��	�m6�|�t��-\�۞h�I���#N/_-�PL�K+:(�J6b���oz=L�ܩ�?/�Q>6~���_70p
[��+�Ò	b@�t����"�g}L2)��^0��eQzpOY������)$�y�c��������;F�?���'bQC��	>���KJ ����/H<��;��S)�n�7N�� �Be$���R����1��H|�_�8Bķ��o�S6�'��d%����Lli���!O$fJ��4T�e�qA�	��1:/�=����Rv~]�JcC�^O�2Cѣ�Z�vy��F~��M��^{�l��(>D�@�5���b�y��x8�!9���Z�#}���-����0u��_=f��q��7x
����1|MPG֨�q����>j�E��^♙�k�������g_C�R?�J���|y�$���7�>6RJ�h�&j@�H��%}>�:����@#���W�4�����������/����W&O�ݡpҭ��ɐ(@DE�M�p눣��?��s������S'B���۝�W�XN�)zB�<�@�a����+�R�.���Y��&@~��Twܭ�E�E�s�(p��aC���5�5B:�oA�B��mE�s3��wص�< r��vdNILa�������%M+,�����+T���*W�K��Y �ښD�c}��T'Mf
���oa�D�8�����[���)EJǆ�۠��\"z�^]���\�0dO�Sk3Qj-v�4C��E/��:��">���׭qSV�K|eR�b�8����/���w�W˥/z^3'r��G��e2w����*�/��Wl
�����B#�okR��D'@���(d��}-����E�ч|��e'ݕw�(v��]��OɰНW%�YʹpA��-`0�ܩ�+%�A�jܺ�U�\��-�]e`=@��t%@����$X�N�nW��x��Q:�DE�2���'u!�a��i���ExF:����"J����ҕ��)�D�8v߬Tp�K	>��!0|-tu)�`iv�����{��#�MaUYD[��k�,ܔ=lϣ%6�{ww�ŇdT�}Sj��<��,
i2j��;��jj:C_�de�?#8�wL���Z����qO�z��ˍ<Q�ɯ!�m�@6:�����2I0,���'��C]{(�D�NA�O/��n��Ra�x4�K]����$?����;m�q;p+��5ۚq�:����ǰt�������p�x�����,�qq��?��m�$L�ǟ�yQB�<I����j?K��YP搵��V�`cP\����$����@���D�!��i_1���w��q8�Ǆ�w�sPYƁ�t�RV�Pv�r�e��oҎF��Tq�!B�7ѭ ,��?�]�.M�-eh������6�>��t����.Y�E����1��2�K䎉���P�|.@a^fq��4[�� ^���x������7ȌG#�$+�����P��c�Oh)���f����}s�N��Jq��s�g�Y{J1A��t��9+��9�K;Y&��m^m���\W����c�N׆s\�$0Ŧ����B��9�?���M(�\!Ea6�"ΊU��bs��Y¶���t"�{����A��ݽ���N�g -�	�_�Y�𞤋߽	Kd�5�S�g������1�j��?+��~��H��z��I'Xd��@�l��ꅎ�b��K��[ÿ���p�w����>�/"�Y���tTi�j�E:��O�|����(C�C�O}M�q���'2f���ggQ�.ԣ��)7ߠH�&�R"��*@u�S���]fk�ߧ��M    ��I�'ΉC�w �t6빱��DD��9��i%��q�G�.L��� �KmfJM�q�/ؙ����F!չ�-�8��_��
�G���U"<�_n��{�2Za�Wo$S�5á��n�LY��(�W�\*�GBB�ѻ��נ}�`tE�$5u���
�:u��$Ʒ��'��E&����ٽz��3c����0��%
�"�+4eW	�0`{)�G�<@#b�֕���w`5n��g���q�ׁL=T���@+���e��o�@��������#�����#}lhO���=����n���鿂I��R�<�J�y��f�M-ʆ�\�,$�D�K�ݞ�ZK��]�L�,��+��]}�C���6%J*��|&�8C޹��,dNdf�&��to�b��p��lz�98�n�����*\�S�8J�o<!�'�Ym��Z�$�".�k�����W��%�]�X[��c4��=����ǎ���}�þk�O٢�(c<���W�?��H:[�^���ga�;����}�ay��E$�0��!����.��~ҙt�&�A��[�-MG�� g�p��Oz��}�cJ\�c.{��0~��q/Dq?m�5����%��cI����<t^S�0�ۇZ�:c�(�}�����
�e�as߼�[������ϋ��� ��ǎ{�{3������*o��22�X��7�Ӧ�+Z�W�&��LUKy��m� ^Z%Ά�����_�$i ?d��ӧ�L��wߛP������Uw��eax���q,�RY燐��oϤ��s�.���+��Kо�f�`<���2L���P�&�ͅ؎~o�W>����U�\�)��P�S>xVS(��cW��;���>��$(j�{�ւ�8�j�+x�!��g�)hVѿ<������ʗ�7�"|�"`�bM�ݧQ�Y2���`�)����M�XL��H�=9e����_��x�8��<ݸ�٩H��F�m�Hy�eT>X�)W�)����4����o���&���~��E��4e������p�v�Qr�N:F2�n��d;%��1:W$T�a�Ɔ�$��e[_�j��4c8�j��n��#���}P�2����}'c� �,��{J��JP�tuI�&	Vib-J�!��ױ�"%���u�I:�pc������Β�6]�A��q�b���~�MC��
�=�����r��Rt3�7D���ꈫ8O2j�$N�Y��G�Ҿ�_)�X��d�2y��'>H�?�L�:���<u;��T~��K>	�@_�A�;�^l�I�%���S))�u�Sze	%Wn����K��x�� ����k���j���jjZ�Ew������^���7�<ڕD(��$��2L�pK����~����g�{̍������eOP��COO�Pg�����]���e{y}�8sf?�
)��2���3����"���]�o�i0�J%�S�%@q�9i���z�Q�T�CAB4 p��L�[*"_o�BF�~j:�+i�o(��g�-�3��=Ck��!�g� ,�=1��:��JJф���6��@�s�ﮖ�t).
��^Ά7Ɔ���v��)��gF}���OW}��d�#��_�-$�4*0t6���i|��9��BpD�W��f��}��q��������E���s{����΄�ڸ�\���
���VqMD9����U�'��(��_6���f�0Oq����t�_i�E�Y��}��_��A���gf�����IO���UC�#�s�O���W�rg���Na�²~t*���oS�T8��b�5��١@=�J�϶Y8^F�;���r�
#fM��u��`]�/�r6��v�\�@&Y���ў	�z}��}�����������+Y�������]���Ę������=O98t�8�}d���o�1"��%}��YR�Ҙ>��i� ͮp�
l�cK�� q�5=�gJ	�D�1��/��ݎ��0���R���K���PT �3���B��SC����H�o dW��C%�j���^�~�Ӕ�-.��6�\d�o��ʋW�����-ZH0�1BB���N������{�OzTTq�
��{V��:�N:�Z<��9
0:���z���Q%�i���6 mL����Y����1�l]���~r���Qi�I�`؁}��M �k4A��eK�[�ʉ�6{隖���^�,�4�L���D���gݯ�U�$ʋ5y�k��� �%��X� �C�q���S�7❹�J ������u��w��}0���ػys��Mɚ�v����6s�~2N���7����������T8��.b�q0��j���`�z��2�w�ŜmTH&����__��� ����/ȇ�#*���2,�)e=,S���*< J��3��(�ߏQ>э?�e����o�_����'U����j.3���F�Nb�T�@��Ⴋ}n]�(��� A��{��>Jh��;�4�t֌��(�య�~/��{]o
z�m�΁����?9!�x�9Ҡ�Ú��!7�ە� ����mz�:�۴�m���"��#)�����_�d�Jg�8Q���أ�i�����Y�p����ɸ����� �*a�ɀ<�.�@?���5���謺�>�0����`C��:}���. $�5��W%�������٫o�B�U*�����_��W����Pwh�W�r-��3סv�F4V4�)q��Y9��ŉN��`2�H�����gd�aFp�]\�4������C>�hq�T��k+�b߿�����aw���k��,��Ok����Ow90�z���	 "��h��9�R�1g+2���?;����I���x�y|�����EQ�1r�<.N����v=:_�N��ʿIL1bDx����pv�O�}��������/���"A���4|���Ϸ���j��yE(�\��Ge����/���d������p��z=�hyw	>�tP�Ͽkh���'˒�ߟ;�4��I��Ӷ��4�7�G�E�+M��E�誗]�4@�q��/�5�v�[6is�U�������Ԝˁ����7~���&:us�ge���'(���� 
{uUUFoX),�Ī��83�t�Ճ��j��Ϫ��K>w_"�B
�؀3� R�	x��o��3 ,�2ގ):(@�?σ�����7�ǯ�>	�ع���s��zE}%�!��s/'#Vh�Y<���~�}�˥e����s!
rNw��m�5=Aq�10�����/{�DS�&�.S��Dfk\i��)��I�@���2�of<!]��r�h�+�p����z���'�Þժ�o�} z=T���7�-s�x$�sߗZ�ζ���T���������Wx��PF^!��bO�=i�0�^'�qQ�+>J̶}G�U��u���lO޻��<��z�N���	(\O<
���9����4>Q��cFau�� ]�z
3LmE�z��R���#��E˾������?5>�(F�#��L�݂4�8 �J~qu-Ҏ��o[��Q�ڹ�+��Ԫ+Y6�^�׃�m��b@�H6bA*�O����-?V)@κ���رp��t�g|S�?A�� ���hk�8ξ�\M�>b���Q^k�=�(S�5r;�n|&���bϦ(ao�=�W~���:�p~�vG(�/���ទ����[s\-�P��wd�ah�]gkg�\L�q�h���f�,����F�_}X2�?}H_��7z� �#�Ѽw8�XY�?�d��O���
b��&`�6ȆP���Wpl�l�7�6�}S�v��R�!�ǡz�'���̖�T�v�^v�U?��ؠ�$�_V ͗@��b�Oo�"r� �����Lm{�%�YԜo�P� �Yغ��L��U�ǣq�ؚE~�v�1@P����Ƈ����ܸ�J>�2���'���`x<0��lm�X���O�1F6ѿG�)3Y2�q��Ip��,T�e"
Z�@f�����ӛNϱ��OXK*����J�C��u��(���le��AI\�"�.���&�|�R*
���O��w��Xn��>���< �    Y�����kR�0��o���^\�=�����q��wEo��#�D�1�?x!8�Ў}��8�U���Y�G��\J蠃8�׭���òc*����M�� ������Hmk���yW���~��x�뱿�dQ�"���>1��X�U�)*#�1m��}��F&�b4�mU��o����"�?��+��5U#��K�"�%E.�sx����
v�Ѥ���%�dp}���뒝�ט��<�g�&#��d, u���b��7��n�)4e����=Q{f8�9z�c�SN��Ce���i�b�|����W�0�5�^X'H�a�3�n��`�y`Q��v�2|�^�.%��Sw���W~��S����U��pw��k�1��}x��:�������>N�9��d�aZ�X���	&�A�ٷ63�&%iT{�E�����ij	,:��,�o7퉔r~2�Ϊ�2{|}6��4y<yN��w�vS]�<hg�X�E�\��G�N"?��P��6	���`�,�A����w]��b�D��+p���Dwe�=���z}5K��1���/ �6������|vs��AkY<`��,6�}2Di���4��u`��������~�t����?��^�9 ryW����k��4P���J:#�9��s�`�{z�p�S���O0
��C}�5AFz[���>'��o�dέ�C�x�cϙ�G��j���{7���fc�}�ɶ��f�{��c��{����mo�>����[�%����|M�L����X�Й�>�|MUPÔ]x��9�0�T�Ǵ��v ���d�@������0\q��i�F0E���	 ']����L;�C����u^����ϗ�sK"`oV���WZrN�+r�V�&)8�0hr?Ϯ7`�.�������ţ��]��7����S�Jg��6M�\�f]������p~i|.Y��)Vu/H�����GX"�Xr����8������(���� ��J�Y���1 ��q9�>�v�}Ew:�Kf���6��~���k�����x��7���H�ΌN��R�+��mvھ��?]��@7Z��ً.��=�
k�2�X��C`ǭ�q�F��\L��-ڐS_ǃrxcapO�������Y������H1�}�}�7����Y3����[K�֟�y9��o�:��EY�������$!�[�3Z��-Z��=s�}~b���g��b]�K,�W o��@0r�Vٽ���=��#�a#��?�[�iŌ���Sa��xiØ��0���3M)� ����>u���Rs?��j�Ɖ�H�����jr�]H����_��GV���^��AA��(���9��:�P�,N�T=]�����Ć��C`�1� ��rC��Ug9����t�b�`�d���(�&��~���ڋT^�y�C���|�P�`1􉪬�6�R�zヺ��|�p5����}����b�n���w��=����a���C���ltR���)	�ZГT6:����r�!R�^��"�d���W���{�X7ŋ̗��p�k)K֑֣Ⱥ�����~q�b���Ƌ���儰��ѧD�\h_����4�]�y��%���2�3�~�x�$��g�[�cP�#�Xd�J���a����=V��Y&ټ���������@/�m3��3���L��z���������3��y>1r�9`+R�?�V��[?��w����t���E44fT���nB��A.��_�+%��T��:
� J�� ���,�h�X�2]����;�c�l��ak���Ƀ`FB_�З�z�����(�n=6Ls����q�8:�){���A�ŊV��ag�D[Rj���fH�	&r�s�-��٣Y6lǹ��PgSW]�����ۖ�䏼S��� x�Pg�3��U�Y�\�3���D�4����`��^7h��cjH<W�Huh��y}
�8��y��a�ߤ�_Jf�n�N��gr,[;b�ş�\��'s̤��(�|�A��M=��h�nS��i�Dϧ����	�rk��ݣ� ]�1(/*���6OfPIW�(y�!GN�f�N���+�}����Cw1TĶ�"�ǜ�p>�G����1�6>n�1?�9i��&=��xS�����9-�m�(�+++>:Y����ԏ����(&�vR��|�R�>��ϙ�T�Q���lt7��U4������0�*aө4�랚�J�:��B�L?�e6Qtde�l�W�W�n7��uz`w���]brf�m�Ȑ�?&b-�q��^9*	b\��� �K;�\2G��X�P��JHH�>%�'8"�^.@@h����CV~1�A;v��M�*;�P���|,�����<�&�*[Hg����R��.�ݳ�����{��%�f�ҳ�EG�:S���i�P�1 W`%G����}��{�k��G�����Q�k���`���kr �\:���Kdq9�:�Ō8��4Y���=�_����EO=��)tT��h��D
�?�搕�s��:s����Qms˳??ֹ5��!�ڣ��C���-��5*��V36� �J�F���xf9a�[�=,�����-�N���Pq�e.�\\����O4�����o[~��9/�I��[����FY�M4Β�+�������-W�K��Y�.���Z�ם�7r�5N�D�q�:�g��Z����7`[��`���W@���}��i���.�H)���+T���[:AKB��1��c��5�2:ü��~�sF`&�O+��{
��OD�[+�>��m�XS�a�����\>�%������:Ӈ�Te��3�}X]ャ��$1�����9���N��(`@"Oq[#y﬜5�Z</�x� WA�B��V���)L�Сծ�h��� �A���Z� ʔE�����ʖ/�5�՜^@�:{圮�K��|������}��D���q��K�]�_sύB�1��{�	O��H���_�6/,��H!��v�;�gȵ閌��ݯ7dpArXu��~��ת��g>��ܬ��~n��6x�a�-�j`�T��Ӏ�vk]��՟_t� ���k��ݞ�������g�e�n��7��2�O���V����$ٛbf��?��'�O���??'uN�h	t��(]�\������$��Yd�����������x+�ܴ�m���3����dhP��d�$?�;��1���ͳ�.���U��Oq�#燦@��v��z�q';�=�_��Q�c���$���5�	�&J����|� �>�̣�W���"���Bf8ЏW}�yH�^��o$��q��|��{�f�h�pb�Qo�;uOi���U�*���3��L��0tEb�ζ�� ��M�LaK�v���E�{�����*�is���Y� i���>T���(Gb@�bZ	�1�F�w��k!��#�_���/F]��?���:��~��Y~w%�"pFs!�Ǭ��U�;b��vC�+zF&9����I�*�¹��-Gd/M��
�9�Ie���z��4�M��.4� 5�q�y�L��6��u� $e���~�$P+P �sH7H�~�ݢ�g�cB�DB.@E�쾀~�o�G�( ����R2���Ҳ��;�X��{#�߹���C��� �H�rȱ�	x�ڂ�P?����T{�3�d��tP��j��n��^���s�g�<���������ja�C��K�/tK�%�}]�K*%N/Gǆ@Š���{�g[��&(���ܿBX<Pߝ�o�ܑ��`�pR5~������\֘�#��ҙջ80��s{��v�g����j���{�Wx�h��x�~3���0�U����`���ީ����f�-�}޸t͚�����x� ?�Ɓq �w���`sE���j�W�Y�痛o��˪;ǜW���ۀ���Sޮ�k�C)���{�"�?��97�}O:�[�T �w;!��M�Ͷz��O?	�%�c��z̀�7"��I�2��}߶��g!	���U�͝za�ʜuq?σ�r��,C��,��ˠ�{_]`i�(1�C�j��4;����K&���uk���<�m�t%�Bˊ[3�(4Wx^�5����)��'E�-�ʴ �  ��`��
�b���!�c7ٙ�����u��1�z�)H�>>�Y0�E�@��+ƫl�q^$% ?]aP��WA�Hjp��[��R- ���	��	�>é��34��lLk�o�1&m�s��~Te��T*��͓�j��l:#|E��p�a\?������P�>��X'!kb)�����C���.7���d8�p�[�T��L�OYC���ߪ���g�t�
ѽ����Ӫ�:�i�KÊ�c�+Zl�yM��-1� ������QtN�ǽ�4�U���~y�s��}A�� Ǖm&�SzQ��6�M�n�����1�ܶ��ia�_��Cs;rY63PF�h<�mm���xÿ��0������D!���$ҿ�nyr��.s��w����q���J�^fx�����闠<���(�щGoQ�n��o�	򰭛|��f������kLaF."?��8����;��悷Ͳ�2�0�?�G�k�N��Z彿9��V�����:=/R]����V��r�#A,��7)ϡ�q�7���oN���x��5
�V2>�_J�c�C�Z�ս�^	(��q����ݤCd0[�q⽦��z�gn+Y�@'7oj�/�3���^��ǔ^�"���}

#;x��@����{ۂ�]�w��h0����RR��W��j�Lj�$���f�'	��L"��l���],;�M�,����Э����xb	�/%&�\��J/L��DSJ���^�WKQ%_�xHN�d۩E��a	��Ƨ�$a�ӆ�~�J�����Zo������qB���kc�l/a�q�6R�`L\ ��&F���Z�A���{���;. ;Gm|�\"+O���c(v!p��l(�Dc���zI�
X�Ǘ���p=�'V!ڀ�z�M�����������u�q�������Q��|X�S������zC���ྮI� ���h��j�G?r|iX��p��;�Q��GJ���~�+��9���w�i2�~д��;��_[ez�cl��}O����8(B��\ y��!i{�l���G;��x����
W���Bs��_�h���~��/�����2ywE����Z���X����.�;
,)H���f)@��ע�d��04�Ȟ���>Հ��h�h"�~v��.��o�I&rSs/�$ɥ(�� �?}?-�U��[����[J딣9z����~/�V��o�c`h�(�Sr=�hfI�F2�Q1b9�ýFlW[�jh8u�� ���T�^��|-e/���ֶ��Hu��	
��R�lC�|o�tN�_������K��1�Ԭ΁Տ@��{��9 �|�d"J(����D�*���|"����/���јCo�;�dm�q�f��(L�
�����!p��G�R��S�Ex>�����׫[��h������K��s�Yh��QY�L���x���3���2���������}�6¥Z�3hF}�d���	�ֿ�s���;��(���S(�7�dOVʵ:W�H)}A�2�DWb9������o��b�k�0HiE���G�G�o]A`87��2��Z�g������&������	1��Z�>,�z��v#�'��f�"{et��&���y�S@��i�H�K���üut�[^%m\�T�5ﯳ��Dz��!�d}����~��#�hd7	�t��rSƀ�����0��W�fY h�^1��t��Q���$ᷞ�撱���wD�y�giG0�7��v�P�&`Gd` ̑=b��U: /���]�z/�#����;J���n�~N�w��1����/e��v�>����	?N*���`��������h���-��-_���l��C��r�a?��	����b0%��,��[������i�J�E���u'bRD�(*
�c�E�dQYR��ObU�5�ѷ9%�/��E�|�"���d�眭���]���q�|c��|:�µ�Še��y��R� �s�BઑX�<�1�'�ʩ3ʵ�ѧ{a���^}TΣ��`��K�M{X���"�����+?�_��qzSw��o���ʥF�+ޒI�G�RY\�P�7c��� ��䱢��WJ$RC��(���.OО��F̪?l�Y$�ʀ��^�fB{G#��$KM��zy.ZmA°<�V,�*�v��:%{|��أ$�v�J��LjW�(i=ߡ�2�n�#�V�z��: W4�*t����?�')�X�}��=���N���7)ICQ�aMё��G�\>���_�f���S6���<e.��Ms�9�����2D;94[jZU�n�`h��~.��
E(��0߰�?ra�S��L���B�\������M��V˻�*'�S��u!�J�e�mT��ȣ�U���L*�����e�g��u��a6�j�䶼n6��Br6��#� D���[�;<hu��j�i:]�-��?�W�$���Df�mJ��F�����_�²�XM�Ƌ�5j�j��`ݓ�>B��z|K�Ь>4 �Iڼ�Z�09�uG��� �\<����Y��Gӹ��CTd
B�0@Žw��$00��;���̏
�G��uUۋ(l�SF���P�*���qkSrI�n�-<�+�g��a_xO^6���bP�4w�}�$��)��c)�f Y�I���8��KvAL#�24��\�G3�zgk�3��;�<��M�䈊��:+h�n��~�S����S��{֋R�n�v�x����*G�NN���0�:�Y�.u���A��|�R:+���&�3 q�U���J�$5O<0�p�򑲒cO�I箆�4��Z�X�~���_[ʍ�P�Z2G�}����T�n@�����e���@ D%�h����P
q�
{�X�G�?�{N��0���~��R*$?'>|����k�S�������e�G��p��ӊf�'�\,���.�HP�`�k��ֻ�6d�Ҍwae���lC&�=�k��Z�ǫ�S��YS]{���)H��Zk{A%$��[�NX���%Ԕ�1s��'į��N��Sb�[��K��K�O�>E���2:���ߴ�5	;�!k� 	��c�#�7�^>Є���L���Өi/0b��|����-�E\��2��L�5�6�aB�F�e|�' ٵ��V�=��&�t.$샰��5��3��\�r�ya�xa�P5q�.Ɏ�j�N�{��SWMtj�ӿA��a��c�̌������}Y���?�z{{�g�      �   3  x�%�ّ� ��`�8t@.��ZԔ�.FjY��i���|���E=_*^�"K�(��&����  �fR����#h�U@�� ���.Z"\�"\.@�� �[�ʼ��Zx�!@���f���7����IA甠s��ԇ���i�M����3B�7B�B��^V��X��k��1��TM[٠��H%�B5o�C=�����B]�����t|`N��4�yk�5��=u�ؙ��&*�/�����ׄ��WL7a���\a}D	a��0ׁ�|!�g@�τ��Y�����}��%b0      �   �   x�m�=�0���9EFX��?��Ȣ�Qc�*q�s�B,��G�|�,���a�'���\4&��8s�	Uj���d�T�	韛F�P^��7���Ϟ�%<����>f�f/ϸL��odk��&�g+����Z{�?;����@B      k      x�͝]o�ƒ���_1W{��Ir��'�gq��#,��0��I�i���e7ǶXU��&���#;�����_�v}:�o���o77��o��㧷���ݿ~|�������wß�^���?/��_�]��w���j���߯o7�������]���B5�B]�F7o�F���[[����Ob����
F�(��kզ"���py��v��������������vw��v{�����տ��7���nsؽY��������v����is�[}�=��j)]�l�G޶KE����˫�aC�D��Ul������n�}O������Uץ(]������Ԙd�o%�u�u��%�J�������pЕ$��.��~xug�jYu���}�e�]\d��ˮUu�j����*�1Wj+�6~��`D@f���c��8� �AM��"��~톆�4j��3�d����e�����Y7�AS���a5cErB����������~RU�U��Z��LC�IsS���"U�j#M�Y¤md(U.9���H�00�%�ܒ7�H5IN
��X��6��j�a�r���V~m�|�%Taf���B�o-�w�@��0����e1�����SH�	K�Jj0��^�J����Ƭu���żԤg!�_&���y��.��aE���uaz�vVj�r�ަc���������_'�_���J�Q"�?��ǣ��sEq]x��cow����c��kU��qxt�&k�������*��a��n�fh��=t՞����A����ed����3��vx�t�g��ͅ���`s���"�~$��pa9`¯�c����zOP��Kf.�	·���u�'�ޭ�J�m���j�5��iƮ�x��4t-��[�J�ed̟+��x�M��:?|Lu��m(5��j�UX��6���/Q����1�
�1�[)��@�
y�}i����e2v�I�?�v��ٓ��cY�&mK�4d�V��mt��*�d������Z���t�?Pu�ŶKcWZ�����S����4��y���P-?՗�d�1�F0�sT��tF��zJ�M�%��[�r���q�ZٵL��z*b��n~ľyQ�Uӆ)�LD����![���5���oo7���><��������|'���8�)=����Ui��V3��<�Z�<��=#�kNhQ��dv����p�%�1�j���Z}x�n���|s��{�;�1fs��J���B-�J��Dz�n0��/���a�x���v��O��燋�b[��B~(�kBသ�f1���Ƌ�L���� ��8� �)�n 7�0t4e�����������QO�^h��
�;�2N�N�tȞ
��3�yR�j�N���GWj^�ܞ�4'}9

΅�0�H�
_B�������n�����/�c5������?�������������?�V}�kL�C\d�]���ax/qh�z:���V�?��U|���b�z���K�a��SP�Af�Vp�Շ�R�lᄮ�)C[��J+8��YNbw���;��_H�Rj�o}�cJw��j>�q��$���_mn.�8�?.��W?�߯�����i�*�S���zB��p�uU:$�?��k`њ��g�����;$7˥ai��2���J���� �����qw�����o�ԇ���1+�;���U�I��S���SK������R'�XS��PR�맚i�Q��K����3�!��2�^k~eN��-�W����]�j�G���/sz��d��9�5\X�nm�]��T�H��{� j1��D-��m�`��5F]�}�Q�b��p�Y��0u��*�5���l���r�����-�
�6��<f�+�c�y<�HgV���<����\;���?��o�y��kX0�8�Z�Z�c�y�t�+���<^��,P0���ek�r<v�ǎ�\�Z��1�Y����cDr�U����qN�ry�1��8��|{��g`�Ӟ�c�"�cO�x��O��"x|N�R��?�C=O��/�@,�|-�c���<n	{F>dy��ۜd-&�[��-c�j>�[���,�[|�D�9��q�,��B��������-�~*�㶧��\� �|]3O_Yw�R�>�/��N�J��Wt�ь���<�,1=#�LG�X�e!�;��&kE��/�U(����Ey�<��^���!���,��IkT���<��y먄���1tn�xtz�m>��'k�X?�����j�CW���/���߫���@!x��#�c�!�-J�-�|zɸ����@٨"��X����F%�l�[ ��]�u�<6��6F�~���^�Q������@k����}%�i/�U(�{ƅP��c�`��e��(�c���<V�Ǌs�_��
�X	\�a��O��i��|C�^���P��;�<?6Ф�b���Y�����D<JZ�jj�"�⍺�&��@/�Q߲C�r�4�yyw7Ai����4�Ł����i��.��,sԂ��1��eC��T��kg�h�u��`��/�Z�)�\��Ȼc���o١I9C��(/��j�G𘣯,���oTQ<7���ۜZ�LC�����Җ��<�&�1���"��滣�e��<��� �����f��������eW��ƚ:gsHa�k���,���oT���(�c��;*���@��1�,��C�����jg��eU�C�@{\]E?th�;�;NB�\�����Z����?,�I�U�8���QIƮ4s�
=uc'wc��v���Ϟ6�.t�e�����i�#�7�c�(X�Z@�����3q���Z��p�t\}ey�vG�=�� x�s\&LCO�G����v�1b�r�4`�]��.t�Y簯�qt
�����9�͍���)��|�9���z�F�=��� x�2�%�� 6GI��@���MT�'~�AN��}�0�]�}�0��!�HsF���l�H	���\p�J#�����Q��#���Wvd <xF`����Ǧ�)n��1a�3��= �0ȅBvէ��1nЕ�"�c���U�9!�pKu
a�3y[Ţ<&|s����1��^y�Nx�B��
�c�u7(I�"syL��8�����0���#�[���P���U'O�ϛ?�6O��{*ta`h[�uO��MC�N?u~����8�#�d�TL=/&���Y�O?�vwM�6��0�mA�X�:��~��S1ݲ��n��� 梇oɘE�r�������������]8(�*1��S�����%G5X��d'�EV�"���S�,��"��/���0�^�aC6V&gov`�[�gw�,�ɈnYČ��'ex,�1�<x;/��[˪�T�����煮�E����T#��ZQ��Y�I]���c�� "�\آ,}xn5�[�#�\j�)J�������P&^џ\,���������q��"���k���1�����a̢�pgυ�״�eIL�K
U��N�b87dc��5�z'�(&�2k��+�v9���ڂ̪	�����Z�v��*]OGz��������-�
�1�a��1۲+ ZPخT����ڂ����;ӕv�(j�h���O�X�e$|ʵ��4*��)Jg'NL��q&Ub�V�2���� t���B_�FY��)A6GE�$aT1��wk���x
��?��N��B ;�=[�i�~m5�ė*�~�\~�m/��o�V��m�������xM��o�1�]���l��!p��#�8��t��r��7%gQ���n�3N_�9#����l��RO��0l��n����;�̋��Y{2DyRH3{\Ή�u�i]X���w����8˿x�=��ܭ����?�O��[�!͂�Q�b�<�A~�a9}��Л�P�Ծ�zȼ>/r���P��1�˱���/q���r����!@y&�f�p�A�2�͞t*<�����C GEi���Ig<7�N:�"�X`7mll#H�A�g,��X��:֐��Cm=�{�Y���h=�� +�Y'�\-Ay��R�~�)���=�E��U�Ĕ��1�h
�8U�s�VZ��t��q�m�pD��dN#z*T�ptN(@8vצ�u$��(] m	  ů?�-@V8�MӴ]CEL������sUW�f;ȗ����8a�����;Fn����ξzDGF�~`�y�ˇA%�tZ�-1�2Kڮ#��-t=Q0K�o���,�\��
�Q�E�l�#���em=�pb�mrf,�Xf?��|��2��S(ϻ�~�@�ù�W� 舓)��G�Z��Z*T���4������p�dp9�?հ�^�[�M���z��M��ܴ��W5����V#���^z)�J�T#0�v�bE����43��@�.&�����F�
ծ��#��/�>�4K�W�P�h�F퉹S�hQW�TM�[U�h���BNAB���t���^� �bDN�VvWS�BaL`��
��k�4?�ǡT�AE��N�R��w(��ܦ� ��)@�PJ�sc܌��
#�Vd��ۗNkJW�N ����f��;/ĢP����X��y�!�H>�޵K�9u��Z	b2��BBj @m8�ʩ�%�����&*f����Υd^���u��{������uq�X|g j]�.X���`�^l��CAB�0E���P�8�F��v��ͭ���ƚH�;�)5Z S��J1r�e|j���eų� dj��������B�RO�:2F5�j��/đ�����{1�-�9=�š��{��ڜ`dϨG#�3	Fj$vEdd�m�/���娫�q�s��QMz�R0����;�3K�̒s�2V7q2;�PՓs�kI]�dסP�.:��)ד�$��78�cpN(E�J���	��P"_��8�����Cu�:��򠝇p���!/�vä����aw�r���f����4A�EM���hzx��9t���Ob�8��K�q�Ӻ źXA�1��+��s���{�o��.��h��d �b���\Y8ꪴ�B\�j$��Z��.�ɬ4�o!QC4�l1GY����`��Z0�κZ�S�1f_Bj0Eu_��`����Zj0rM�����u{��ZÙm��,6N�@�à���F��)��"�0"-��j��E�ate��I�H]��i{�<]��0?���{�&頫~�E��tUo���<taβt�P��(炕�u=�5딲h�c�;�gf�IP�	��u���C�t���ƌu<[��M���T�Uh�5���q�o�j�\u��-�,�`�]s�T9]aU�e0"��*V�M��?��U�����*VfLA����< �� ��ܐN���^�:1��� .���<�lӭt35�6}0)}3�zE���+��X􊠨���WE-��,2�`�ͱ�,�"XhKc��?A>W?-�+H�>V|^|���9��,�
����g��j.��s��:ꪎ	;ꪽ(��8[�H�א�}�=O���7��vU`�!�G]�ݺ^Cڟ�.L{���i�=-�`{5����93c!5�5�h�膘7��Hb�7�9�1��C�X3��dQ�!@l���E��,t �\/�� �9���!�|�J��P\��s�=YG]�Q_М5�ʡ�Ps��蒙@�VPc=�D@�fn�ͩ%�Uk�Ɉ�u�^���~�nը�;���uT$�8+��E.��О5�J��)�l��_.硗먫���r�lS������х);�?eE��sх!������?w���KS��*�r5<2~�g���������f��h�>��؇Lc���$�&�?���,�����#;Y��"����NCq΅��6OO�?^����zw����i�s���u�><o�C�~|����=)[V����&�'
C�q���S+�?�����y��%Y&�O�\�m�^�}�����ÐjjЊ�4瓗�OZQ�Th~����|�ʉ\U�&,.<R�r��ӝ��.����P�P����@
˹MvA�v1�8���{��7��,�5�L��̂vK5L�R_5dMskP���
��Mjx�wa(�3���^��X+"��l
L-S_"��^�[W�~jOi�[P%5hsZ�����4�>��0�X�2y�i�|�f���5�^I��|a͕U�%��=���z֍%|��W��F��g�M�r<����p���^��SҨ�7�+�������&���8疅?���g�8�봔K��[�w�SWR�`9����P;5}	����?�K=�����~�`>�|ɹ
[
�d��d���;-S2�5J��ր��ܪ}�@dRt��[��@n�pIv�����M��NHQ�:n1����x�R8G�,X}��;M�h��I���ա�Pއ�u���VA��l�5C�Ê<T�+}�/������ZA��?^t���Ґ��ڭ-��ΖI��[KI�$v��)ןN+� �
Ҩ���j5���-�g/Z[!��b��k֐�Q
�R��d��g��r�AzFE����~������      �   M   x�E��	�0��s���.��j�A�qj [Ua�BG��\��6����&#�Fa�ʏ$N��+Q����3D�w�      |   �   x���A��u�"З��,��9�%V��>#A^`���%��G��È�CI�a^A&�.�(gcZO��8��!ƴ ä��0�S/��=ڛ��$M${��Mao9�
7Mь`gR��Q�g\�#�ĥ#]�oۙ
�t��W�!MT�v	��'�{�E�&��@:�������;�u����Qȏ�      �   �  x����n�@����� ���.�Tj���Ro�z���QkG�<}g�	f��[5�$�c~���.˫ϟ.o�/��C�-��H�r:�z�a�sꩃjM����-Oh��_ ]B��
N��d�c���lA�1#54�f[GJ2��Æ����uz*a�(ͩ�!���$�>�$3Ф<5�p oAW_�t�0�Uׇ��eB���p�#V�(� ca#"s�.�(�2ҋ��z��	��BEH砦l�t��S� 3�=�N*�i
$z�a�m�$��t���)+Ѓ(X��3��AGJ���3��D���N᥁���� L�H��z�ڿ��A۔R�9�~n����]�n��^Q�Kp�<��i}�ਸ� ����<S�zJ��n�S��RO��Xjx
;�y��5I0�Oâ�C����e����{J�i~��f��M�,Ǖ�b��NA\T3J��1&E�W�h4�ؔ41d4۸1�GJ��[,����þ%O!����TEC��P��G��M(ɶ&��5s��=D))꒬[�[o6$���p�5`i�����2��ݡ����rZ���T��ܾ��zԫ��1��w��̴�9�9�J������\�=_N��0�zz9��1�'����4�zbk� n	~��FQ�M����=�*��}�j�'7�#�>}���f �	|7     