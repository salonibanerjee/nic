PGDMP                         x            NIC_1504    12.2    12.2 �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    30244    NIC_1504    DATABASE     �   CREATE DATABASE "NIC_1504" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NIC_1504";
                postgres    false            �            1259    30245    table    TABLE     �  CREATE TABLE public."table" (
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
    DROP TABLE public."table";
       public         heap    postgres    false            �            1259    30249    ANAND    TABLE     �   CREATE TABLE public."ANAND" (
    "Total_No_of_SHGs_formed_in_the_district" numeric(10,0) NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."ANAND";
       public         heap    postgres    false    202            �            1259    30254    AWCC    TABLE     ?  CREATE TABLE public."AWCC" (
    "No_of_ICDS_Cenetres_devoid_of_own_building" numeric(10,0) NOT NULL,
    "No_of_new_ICDS_building_constructed" numeric(10,0) NOT NULL,
    "No_of_ICDS_Centres_running_in_open_space" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."AWCC";
       public         heap    postgres    false    202            �            1259    30259    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    204                       0    0    AWCC_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public."AWCC".id_pk;
          public          postgres    false    205            �            1259    30261 	   BAITARANI    TABLE     �   CREATE TABLE public."BAITARANI" (
    "No_of_burning_ghats_taken_up" numeric(10,0) NOT NULL,
    "Completed_till_date" date NOT NULL,
    schcd character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."BAITARANI";
       public         heap    postgres    false    202            �            1259    30266    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    206                       0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public."BAITARANI".id_pk;
          public          postgres    false    207            �            1259    30268    DOC    TABLE     �   CREATE TABLE public."DOC" (
    "Target_for_distribution_of_poultry" numeric(10,0) NOT NULL,
    "No_of_poultry_actually_distributed" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."DOC";
       public         heap    postgres    false    202            �            1259    30275    DOG    TABLE     h  CREATE TABLE public."DOG" (
    "Target_for_distribution_of_goats" numeric(10,0) NOT NULL,
    "No_of_goats_actually_distributed" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_selected" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_approved" character varying(10) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."DOG";
       public         heap    postgres    false    202            �            1259    30280 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    209                       0    0 
   DOG_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public."DOG".id_pk;
          public          postgres    false    210            �            1259    30282    DOPTUHD    TABLE     �   CREATE TABLE public."DOPTUHD" (
    "No_of_Power_tiller_distributed" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."DOPTUHD";
       public         heap    postgres    false    202            �            1259    30287    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    211                       0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public."DOPTUHD".id_pk;
          public          postgres    false    212            �            1259    30289 
   ENROLLMENT    TABLE     k  CREATE TABLE public."ENROLLMENT" (
    "Gross_Enrolment_Ratio_primary" numeric(10,0) NOT NULL,
    "Net_Enrolment_Ratio_primary" numeric(10,0) NOT NULL,
    "Gross_Enrolment_Ratio_Upper_primary" numeric(10,0) NOT NULL,
    "Net_Enrolment_Ratio_Upper_primary" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
     DROP TABLE public."ENROLLMENT";
       public         heap    postgres    false    202            �            1259    30294    ENROLLMENT_id_seq    SEQUENCE     |   CREATE SEQUENCE public."ENROLLMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ENROLLMENT_id_seq";
       public          postgres    false    213                        0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public."ENROLLMENT".id_pk;
          public          postgres    false    214            �            1259    30296    FOODPRO    TABLE     �   CREATE TABLE public."FOODPRO" (
    "Status_of_pocurement" numeric(10,0) NOT NULL,
    "Target_of_pocurement" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."FOODPRO";
       public         heap    postgres    false    202            �            1259    30301    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    215            !           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public."FOODPRO".id_pk;
          public          postgres    false    216            �            1259    30303 	   GITANJALI    TABLE     5  CREATE TABLE public."GITANJALI" (
    "No_of_case_sanctioned_under_Gitanjali" numeric(10,0) NOT NULL,
    "Date_of_Inception" character varying(10) NOT NULL,
    "No_of_houses_constructed_under_Gitanjali" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."GITANJALI";
       public         heap    postgres    false    202            �            1259    30308    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    217            "           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public."GITANJALI".id_pk;
          public          postgres    false    218            �            1259    30310 
   IMMUNISATI    TABLE     �   CREATE TABLE public."IMMUNISATI" (
    "Per_of_Fully_immunised_child" numeric(52,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
     DROP TABLE public."IMMUNISATI";
       public         heap    postgres    false    202            �            1259    30315    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    219            #           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public."IMMUNISATI".id_pk;
          public          postgres    false    220            �            1259    30317    INFANTD    TABLE     �   CREATE TABLE public."INFANTD" (
    "Total_No_of_Infant_Death" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."INFANTD";
       public         heap    postgres    false    202            �            1259    30322    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    221            $           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public."INFANTD".id_pk;
          public          postgres    false    222            �            1259    30324 
   INSPECTION    TABLE     �   CREATE TABLE public."INSPECTION" (
    "No_of_homes_inspected_by_Senior_Officers" numeric(10,0) NOT NULL,
    "Designation_of_officers" character varying(5) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
     DROP TABLE public."INSPECTION";
       public         heap    postgres    false    202            �            1259    30329    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    223            %           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public."INSPECTION".id_pk;
          public          postgres    false    224            �            1259    30331    INSTDEL    TABLE     �   CREATE TABLE public."INSTDEL" (
    "Per_of_Institutional_Delivery" numeric(52,0) NOT NULL,
    schcd character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."INSTDEL";
       public         heap    postgres    false    202            �            1259    30336    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    225            &           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public."INSTDEL".id_pk;
          public          postgres    false    226            �            1259    30338    JALDJALB    TABLE     :  CREATE TABLE public."JALDJALB" (
    "Date_of_Inspection" character varying(10) NOT NULL,
    "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo" numeric(10,0) NOT NULL,
    "No_of_ponds_fish_production_started" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."JALDJALB";
       public         heap    postgres    false    202            �            1259    30343    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    227            '           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public."JALDJALB".id_pk;
          public          postgres    false    228            �            1259    30345    KANYAS    TABLE       CREATE TABLE public."KANYAS" (
    "No_of_K-1_cases_application_received" numeric(10,0) NOT NULL,
    "No_of_K-1_cases_application_sanctioned" numeric(10,0) NOT NULL,
    "No_of_K-1_cases_application_disbursed" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_received" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_sanctioned" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_disbursed" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."KANYAS";
       public         heap    postgres    false    202            �            1259    30350    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    229            (           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public."KANYAS".id_pk;
          public          postgres    false    230            �            1259    30352 
   KARMATIRTH    TABLE     �  CREATE TABLE public."KARMATIRTH" (
    "No_of_Karmatirtha_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_started" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_completed" numeric(10,0) NOT NULL,
    "No_of_Karmatirth_operationalised" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
     DROP TABLE public."KARMATIRTH";
       public         heap    postgres    false    202            �            1259    30357    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    231            )           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public."KARMATIRTH".id_pk;
          public          postgres    false    232            �            1259    30359    KCC    TABLE     4  CREATE TABLE public."KCC" (
    "No_of_agricultrural_families_in_the_district" numeric(10,0) NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(52,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."KCC";
       public         heap    postgres    false    202            �            1259    30380    KCC_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public."KCC_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KCC_id_pk_seq";
       public          postgres    false    233            *           0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public."KCC".id_pk;
          public          postgres    false    234            �            1259    30382    KishanM    TABLE       CREATE TABLE public."KishanM" (
    "No_of_Kishan_Mandis_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Kishan_Mandis_operational" numeric(10,0) NOT NULL,
    "Operationality" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."KishanM";
       public         heap    postgres    false    202            �            1259    30387    LANDPP    TABLE     �   CREATE TABLE public."LANDPP" (
    "No_of_land_permission_pending" numeric(10,0) NOT NULL,
    "PROJECTS_NAME" character varying(12) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."LANDPP";
       public         heap    postgres    false    202            �            1259    30392    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    236            +           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public."LANDPP".id_pk;
          public          postgres    false    237            �            1259    30394    Login    TABLE        CREATE TABLE public."Login" (
    username character varying(50) NOT NULL,
    password text NOT NULL,
    user_type_id_fk bigint DEFAULT 0 NOT NULL,
    schcd character varying(10) NOT NULL,
    "Login_id_pk" bigint NOT NULL,
    active_status numeric(1,0) NOT NULL,
    dept_id_fk bigint DEFAULT 0 NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL,
    desig_id_fk bigint DEFAULT 0 NOT NULL,
    CONSTRAINT login_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
    DROP TABLE public."Login";
       public         heap    postgres    false            �            1259    30400    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    238            ,           0    0    Login_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."Login_id_seq" OWNED BY public."Login"."Login_id_pk";
          public          postgres    false    239            �            1259    30402    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    238            -           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public."Login".user_type_id_fk;
          public          postgres    false    240            �            1259    30404 	   MATERNALD    TABLE     �   CREATE TABLE public."MATERNALD" (
    "Total_No_of_Maternal_Death" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."MATERNALD";
       public         heap    postgres    false    202            �            1259    30409    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    241            .           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public."MATERNALD".id_pk;
          public          postgres    false    242            �            1259    30411    MCI    TABLE     �   CREATE TABLE public."MCI" (
    "Percentage_of_malnourished_child" numeric(52,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."MCI";
       public         heap    postgres    false    202            �            1259    30416 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    243            /           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public."MCI".id_pk;
          public          postgres    false    244            �            1259    30418    MGNREGS    TABLE     z  CREATE TABLE public."MGNREGS" (
    "No_of_Person_days_generated_under_MGNREGS" numeric(10,0) NOT NULL,
    "Average_No_of_Persondays_generated_per_household" numeric(10,0) NOT NULL,
    "Expenditure_of_the_session" numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(52,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."MGNREGS";
       public         heap    postgres    false    202            �            1259    30423 	   MINORITYS    TABLE     Z  CREATE TABLE public."MINORITYS" (
    "Target_for_Scholarship_distribution_Aikyashree" numeric(10,0) NOT NULL,
    "No_of_students_distributed_scholarship" numeric(10,0) NOT NULL,
    "No_of_Aaplication_uploaded_under_Aikyashree_scholarship" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."MINORITYS";
       public         heap    postgres    false    202            �            1259    30428    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    246            0           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public."MINORITYS".id_pk;
          public          postgres    false    247            �            1259    30430    POE    TABLE     �   CREATE TABLE public."POE" (
    "Target" numeric(10,0) NOT NULL,
    "Production" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."POE";
       public         heap    postgres    false    202            �            1259    30435 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    248            1           0    0 
   POE_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."POE_id_seq" OWNED BY public."POE".id_pk;
          public          postgres    false    249            '           1259    31034 	   Privilege    TABLE       CREATE TABLE public."Privilege" (
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
    DROP TABLE public."Privilege";
       public         heap    postgres    false            �            1259    30443    SABOOJS    TABLE     �   CREATE TABLE public."SABOOJS" (
    "Target_for_distribution_of_cycles" numeric(10,0) NOT NULL,
    "Cycle_distributed_till_date" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."SABOOJS";
       public         heap    postgres    false    202            �            1259    30448 
   SABOOJSHRE    TABLE     &  CREATE TABLE public."SABOOJSHRE" (
    "No_of_children_born_since_inception_of_the_project_in_the_dist" numeric(10,0) NOT NULL,
    "No_of_tree_sapling_handed_over_to_the_new_born_children" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
     DROP TABLE public."SABOOJSHRE";
       public         heap    postgres    false    202            �            1259    30453    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    251            2           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public."SABOOJSHRE".id_pk;
          public          postgres    false    252            �            1259    30455    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    250            3           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public."SABOOJS".id_pk;
          public          postgres    false    253            �            1259    30457 
   SAFEDSAVEL    TABLE     �   CREATE TABLE public."SAFEDSAVEL" (
    "No_of_accidents" numeric(10,0) NOT NULL,
    "No_of_death" numeric(10,0) NOT NULL,
    "No_of_insured_person" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
     DROP TABLE public."SAFEDSAVEL";
       public         heap    postgres    false    202            �            1259    30462    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    254            4           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public."SAFEDSAVEL".id_pk;
          public          postgres    false    255                        1259    30464 	   SAMABYTHI    TABLE     �   CREATE TABLE public."SAMABYTHI" (
    "No_of_beneficiaries_provided_benefit_till_date" numeric(10,0) NOT NULL,
    "Till_date" date NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."SAMABYTHI";
       public         heap    postgres    false    202                       1259    30469    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    256            5           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public."SAMABYTHI".id_pk;
          public          postgres    false    257                       1259    30471    SIKSHAS    TABLE     Y  CREATE TABLE public."SIKSHAS" (
    "Targetted_No_Of_SC/ST_Student_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Students_getting_benefit_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Applications_uploaded_under_Sikshashree" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."SIKSHAS";
       public         heap    postgres    false    202                       1259    30476    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    258            6           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public."SIKSHAS".id_pk;
          public          postgres    false    259                       1259    30478    SVSKP    TABLE     �   CREATE TABLE public."SVSKP" (
    "No_of_project_Sponsored_under_SVSKP" numeric(10,0) NOT NULL,
    "No_of_project_sanctioned_under_SVSKP" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."SVSKP";
       public         heap    postgres    false    202                       1259    30483    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    260            7           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public."SVSKP".id_pk;
          public          postgres    false    261                       1259    30485    YUBAS    TABLE       CREATE TABLE public."YUBAS" (
    "No_of_unemployed_Youth_registered_under_Yubashree" numeric(10,0) NOT NULL,
    "No_of_unemployed_registered_Youth_getting_monthly_assistance" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public."table");
    DROP TABLE public."YUBAS";
       public         heap    postgres    false    202                       1259    30490    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    262            8           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public."YUBAS".id_pk;
          public          postgres    false    263                       1259    30492    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    203            9           0    0    anand_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.anand_id_seq OWNED BY public."ANAND".id_pk;
          public          postgres    false    264            #           1259    30948    attri_table    TABLE     �   CREATE TABLE public.attri_table (
    attri_id_pk bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    attri_name character varying(100) NOT NULL,
    actual_name character varying(100) NOT NULL
);
    DROP TABLE public.attri_table;
       public         heap    postgres    false            $           1259    30954    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    291            :           0    0    att_table_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.attri_table.attri_id_pk;
          public          postgres    false    292            	           1259    30502 	   audit_log    TABLE     �  CREATE TABLE public.audit_log (
    section character varying(100) NOT NULL,
    action character varying(50) NOT NULL,
    request character varying(100) NOT NULL,
    comment character varying(200) DEFAULT 'NA'::character varying NOT NULL,
    ip_addr character varying(20) NOT NULL,
    audit_id_pk bigint NOT NULL,
    login_id_fk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL
);
    DROP TABLE public.audit_log;
       public         heap    postgres    false            
           1259    30508    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    265            ;           0    0    audit_log_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.audit_id_pk;
          public          postgres    false    266                       1259    30510    check_First_User    TABLE     i  CREATE TABLE public."check_First_User" (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer NOT NULL,
    CONSTRAINT check_first_user_check CHECK ((check_if_first_user = ANY (ARRAY[0, 1]))),
    CONSTRAINT check_profile_updated_once_check CHECK ((check_profile_updated_once = ANY (ARRAY[0, 1])))
);
 &   DROP TABLE public."check_First_User";
       public         heap    postgres    false                       1259    30513 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    267            <           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public."check_First_User".check_if_first_user;
          public          postgres    false    268                       1259    30515    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    267            =           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public."check_First_User".user_id_pk;
          public          postgres    false    269                       1259    30517    dashboard_info    TABLE     G  CREATE TABLE public.dashboard_info (
    id bigint NOT NULL,
    s_name character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    a_target character varying(50) NOT NULL,
    target character varying(50) NOT NULL,
    a_progress character varying(50) NOT NULL,
    progress character varying(50) NOT NULL
);
 "   DROP TABLE public.dashboard_info;
       public         heap    postgres    false                       1259    30520    dba_financial_range_table    TABLE       CREATE TABLE public.dba_financial_range_table (
    dba_financial_range_table_id_pk bigint NOT NULL,
    financial_year_range character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    CONSTRAINT dba_month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric)))
);
 -   DROP TABLE public.dba_financial_range_table;
       public         heap    postgres    false                       1259    30523 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq;
       public          postgres    false    271            >           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.dba_financial_range_table.dba_financial_range_table_id_pk;
          public          postgres    false    272            .           1259    31076 
   department    TABLE     �   CREATE TABLE public.department (
    dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    short_name character varying(15) NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL
);
    DROP TABLE public.department;
       public         heap    postgres    false            0           1259    31114    designation    TABLE     �   CREATE TABLE public.designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    dept_id_fk bigint NOT NULL
);
    DROP TABLE public.designation;
       public         heap    postgres    false            /           1259    31112    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    304            ?           0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.designation.desig_id_pk;
          public          postgres    false    303                       1259    30525 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    208            @           0    0 
   doc_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.doc_id_seq OWNED BY public."DOC".id_pk;
          public          postgres    false    273            2           1259    31156    financial_year_master    TABLE     �  CREATE TABLE public.financial_year_master (
    financial_year_master_id_pk bigint NOT NULL,
    "scheme_table_id_fk " bigint NOT NULL,
    start_month numeric(2,0) NOT NULL,
    end_month numeric(2,0) NOT NULL,
    CONSTRAINT end_month_check CHECK (((end_month > (0)::numeric) AND (end_month < (13)::numeric))),
    CONSTRAINT start_month_check CHECK (((start_month > (0)::numeric) AND (start_month < (13)::numeric)))
);
 )   DROP TABLE public.financial_year_master;
       public         heap    postgres    false            1           1259    31154 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq;
       public          postgres    false    306            A           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq OWNED BY public.financial_year_master.financial_year_master_id_pk;
          public          postgres    false    305                       1259    30527    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    235            B           0    0    kishanm_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public."KishanM".id_pk;
          public          postgres    false    274                       1259    30529    location_data    TABLE     �   CREATE TABLE public.location_data (
    location_area character varying(100) NOT NULL,
    location_schcd character varying(12) NOT NULL,
    location_id_pk bigint NOT NULL
);
 !   DROP TABLE public.location_data;
       public         heap    postgres    false                       1259    30532     location_data_location_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.location_data_location_id_pk_seq;
       public          postgres    false    275            C           0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.location_data.location_id_pk;
          public          postgres    false    276                       1259    30549    location_master_block    TABLE     Y  CREATE TABLE public.location_master_block (
    district_id_fk integer NOT NULL,
    subdiv_id_fk integer NOT NULL,
    block_name character varying(150) NOT NULL,
    schcd character(6) NOT NULL,
    clucd character(5) NOT NULL,
    block_id_pk bigint NOT NULL,
    block_mun_corp_flag character(2) NOT NULL,
    block_kol_flag character(2)
);
 )   DROP TABLE public.location_master_block;
       public         heap    postgres    false                       1259    30552    location_master_district    TABLE     �   CREATE TABLE public.location_master_district (
    district_id_pk bigint NOT NULL,
    state_id_fk integer NOT NULL,
    district_name character varying(100) NOT NULL,
    schcd character(4) NOT NULL
);
 ,   DROP TABLE public.location_master_district;
       public         heap    postgres    false                       1259    30555    location_master_gp    TABLE       CREATE TABLE public.location_master_gp (
    schcd character varying(12) NOT NULL,
    schname character varying(100) NOT NULL,
    parent_id character varying(12) NOT NULL,
    gp_ward_flag character varying(2) NOT NULL,
    block_id_fk integer,
    gp_id_pk bigint NOT NULL
);
 &   DROP TABLE public.location_master_gp;
       public         heap    postgres    false                       1259    30558    location_master_state    TABLE     �   CREATE TABLE public.location_master_state (
    state_id_pk integer NOT NULL,
    state_name character varying(30) NOT NULL,
    active_status smallint NOT NULL
);
 )   DROP TABLE public.location_master_state;
       public         heap    postgres    false                       1259    30561    location_master_subdiv    TABLE     �   CREATE TABLE public.location_master_subdiv (
    district_id_fk integer NOT NULL,
    subdiv_name character(100) NOT NULL,
    schcd character(10) NOT NULL,
    subdiv_id_pk bigint NOT NULL
);
 *   DROP TABLE public.location_master_subdiv;
       public         heap    postgres    false                       1259    30534    meeting_schedule    TABLE     �   CREATE TABLE public.meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16) NOT NULL,
    end_time character varying(16) NOT NULL
);
 $   DROP TABLE public.meeting_schedule;
       public         heap    postgres    false                       1259    30537    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    277            D           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.meeting_schedule.meeting_id_pk;
          public          postgres    false    278                       1259    30539    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    245            E           0    0    mgnres_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public."MGNREGS".id_pk;
          public          postgres    false    279            %           1259    30999    notification    TABLE     �  CREATE TABLE public.notification (
    audience_id character varying(10) NOT NULL,
    notification_text character varying(50) NOT NULL,
    notification_id_pk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    notification_head text NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT notification_active_check CHECK (((active_status >= 0) AND (active_status <= 1)))
);
     DROP TABLE public.notification;
       public         heap    postgres    false            &           1259    31002    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    293            F           0    0    notifications_id_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notification.notification_id_pk;
          public          postgres    false    294            ,           1259    31068    office    TABLE     r   CREATE TABLE public.office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
    DROP TABLE public.office;
       public         heap    postgres    false            -           1259    31074    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    302            G           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.department.dept_id_pk;
          public          postgres    false    301            +           1259    31066    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    300            H           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.office.office_id_pk;
          public          postgres    false    299                       1259    30541    profile    TABLE     �  CREATE TABLE public.profile (
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
    DROP TABLE public.profile;
       public         heap    postgres    false                       1259    30547    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    280            I           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.profile.profile_id_pk;
          public          postgres    false    281            4           1259    31169    scheme_dept    TABLE     �   CREATE TABLE public.scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    office_dept_id_fk bigint NOT NULL
);
    DROP TABLE public.scheme_dept;
       public         heap    postgres    false            3           1259    31167 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    308            J           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.scheme_dept.scheme_dept_id_pk;
          public          postgres    false    307                       1259    30564    scheme_table    TABLE     �   CREATE TABLE public.scheme_table (
    scheme_id_pk bigint NOT NULL,
    short_name character varying(10) NOT NULL,
    name character varying(50) NOT NULL
);
     DROP TABLE public.scheme_table;
       public         heap    postgres    false                        1259    30567    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    287            K           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.scheme_table.scheme_id_pk;
          public          postgres    false    288            !           1259    30569    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            L           0    0    table_id_pk_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public."table".id_pk;
          public          postgres    false    289            (           1259    31042    user_privilege    TABLE     4  CREATE TABLE public.user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status numeric NOT NULL,
    CONSTRAINT user_privilege_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 "   DROP TABLE public.user_privilege;
       public         heap    postgres    false            )           1259    31048 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    296            M           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.user_privilege.privilege_id_fk;
          public          postgres    false    297            *           1259    31050 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    296            N           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.user_privilege.user_type_id_fk;
          public          postgres    false    298            "           1259    30581 	   user_type    TABLE     
  CREATE TABLE public.user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(20) NOT NULL,
    active_status numeric NOT NULL,
    CONSTRAINT user_type_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
    DROP TABLE public.user_type;
       public         heap    postgres    false            �           2604    30587    ANAND id_pk    DEFAULT     i   ALTER TABLE ONLY public."ANAND" ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 <   ALTER TABLE public."ANAND" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    264    203            �           2604    30589 
   AWCC id_pk    DEFAULT     i   ALTER TABLE ONLY public."AWCC" ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 ;   ALTER TABLE public."AWCC" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    204    205            �           2604    30591    BAITARANI id_pk    DEFAULT     s   ALTER TABLE ONLY public."BAITARANI" ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 @   ALTER TABLE public."BAITARANI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    207    206            �           2604    30593 	   DOC id_pk    DEFAULT     e   ALTER TABLE ONLY public."DOC" ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 :   ALTER TABLE public."DOC" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    273    208            �           2604    30595 	   DOG id_pk    DEFAULT     g   ALTER TABLE ONLY public."DOG" ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 :   ALTER TABLE public."DOG" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    210    209            �           2604    30597    DOPTUHD id_pk    DEFAULT     o   ALTER TABLE ONLY public."DOPTUHD" ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 >   ALTER TABLE public."DOPTUHD" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    211    212            �           2604    30599    ENROLLMENT id_pk    DEFAULT     u   ALTER TABLE ONLY public."ENROLLMENT" ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 A   ALTER TABLE public."ENROLLMENT" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    213    214            �           2604    30601    FOODPRO id_pk    DEFAULT     o   ALTER TABLE ONLY public."FOODPRO" ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 >   ALTER TABLE public."FOODPRO" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    216    215            �           2604    30603    GITANJALI id_pk    DEFAULT     s   ALTER TABLE ONLY public."GITANJALI" ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 @   ALTER TABLE public."GITANJALI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    217    218            �           2604    30605    IMMUNISATI id_pk    DEFAULT     w   ALTER TABLE ONLY public."IMMUNISATI" ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 A   ALTER TABLE public."IMMUNISATI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    219    220            �           2604    30607    INFANTD id_pk    DEFAULT     o   ALTER TABLE ONLY public."INFANTD" ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 >   ALTER TABLE public."INFANTD" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    221    222            �           2604    30609    INSPECTION id_pk    DEFAULT     u   ALTER TABLE ONLY public."INSPECTION" ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 A   ALTER TABLE public."INSPECTION" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    224    223            �           2604    30611    INSTDEL id_pk    DEFAULT     o   ALTER TABLE ONLY public."INSTDEL" ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 >   ALTER TABLE public."INSTDEL" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    226    225            �           2604    30613    JALDJALB id_pk    DEFAULT     q   ALTER TABLE ONLY public."JALDJALB" ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 ?   ALTER TABLE public."JALDJALB" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    227    228                       2604    30615    KANYAS id_pk    DEFAULT     m   ALTER TABLE ONLY public."KANYAS" ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 =   ALTER TABLE public."KANYAS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    230    229                       2604    30617    KARMATIRTH id_pk    DEFAULT     v   ALTER TABLE ONLY public."KARMATIRTH" ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 A   ALTER TABLE public."KARMATIRTH" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    231    232            	           2604    30619 	   KCC id_pk    DEFAULT     j   ALTER TABLE ONLY public."KCC" ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 :   ALTER TABLE public."KCC" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    234    233                       2604    30623    KishanM id_pk    DEFAULT     m   ALTER TABLE ONLY public."KishanM" ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 >   ALTER TABLE public."KishanM" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    235    274                       2604    30625    LANDPP id_pk    DEFAULT     m   ALTER TABLE ONLY public."LANDPP" ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 =   ALTER TABLE public."LANDPP" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    237    236                       2604    30628    Login Login_id_pk    DEFAULT     s   ALTER TABLE ONLY public."Login" ALTER COLUMN "Login_id_pk" SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 D   ALTER TABLE public."Login" ALTER COLUMN "Login_id_pk" DROP DEFAULT;
       public          postgres    false    239    238                       2604    30629    MATERNALD id_pk    DEFAULT     s   ALTER TABLE ONLY public."MATERNALD" ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 @   ALTER TABLE public."MATERNALD" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    242    241                       2604    30631 	   MCI id_pk    DEFAULT     g   ALTER TABLE ONLY public."MCI" ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 :   ALTER TABLE public."MCI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    244    243            #           2604    30633    MGNREGS id_pk    DEFAULT     l   ALTER TABLE ONLY public."MGNREGS" ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 >   ALTER TABLE public."MGNREGS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    279    245            '           2604    30635    MINORITYS id_pk    DEFAULT     s   ALTER TABLE ONLY public."MINORITYS" ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 @   ALTER TABLE public."MINORITYS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    246    247            +           2604    30637 	   POE id_pk    DEFAULT     g   ALTER TABLE ONLY public."POE" ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 :   ALTER TABLE public."POE" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    249    248            /           2604    30639    SABOOJS id_pk    DEFAULT     o   ALTER TABLE ONLY public."SABOOJS" ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 >   ALTER TABLE public."SABOOJS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    253    250            3           2604    30641    SABOOJSHRE id_pk    DEFAULT     v   ALTER TABLE ONLY public."SABOOJSHRE" ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 A   ALTER TABLE public."SABOOJSHRE" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    251    252            7           2604    30643    SAFEDSAVEL id_pk    DEFAULT     u   ALTER TABLE ONLY public."SAFEDSAVEL" ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 A   ALTER TABLE public."SAFEDSAVEL" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    255    254            ;           2604    30645    SAMABYTHI id_pk    DEFAULT     s   ALTER TABLE ONLY public."SAMABYTHI" ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 @   ALTER TABLE public."SAMABYTHI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    257            ?           2604    30647    SIKSHAS id_pk    DEFAULT     o   ALTER TABLE ONLY public."SIKSHAS" ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 >   ALTER TABLE public."SIKSHAS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    258    259            C           2604    30649    SVSKP id_pk    DEFAULT     k   ALTER TABLE ONLY public."SVSKP" ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 <   ALTER TABLE public."SVSKP" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    260    261            G           2604    30651    YUBAS id_pk    DEFAULT     k   ALTER TABLE ONLY public."YUBAS" ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 <   ALTER TABLE public."YUBAS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    263    262            ]           2604    30956    attri_table attri_id_pk    DEFAULT     w   ALTER TABLE ONLY public.attri_table ALTER COLUMN attri_id_pk SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 F   ALTER TABLE public.attri_table ALTER COLUMN attri_id_pk DROP DEFAULT;
       public          postgres    false    292    291            K           2604    30654    audit_log audit_id_pk    DEFAULT     u   ALTER TABLE ONLY public.audit_log ALTER COLUMN audit_id_pk SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 D   ALTER TABLE public.audit_log ALTER COLUMN audit_id_pk DROP DEFAULT;
       public          postgres    false    266    265            L           2604    30655    check_First_User user_id_pk    DEFAULT     �   ALTER TABLE ONLY public."check_First_User" ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 L   ALTER TABLE public."check_First_User" ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    269    267            O           2604    30657 9   dba_financial_range_table dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.dba_financial_range_table ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 h   ALTER TABLE public.dba_financial_range_table ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    272    271            d           2604    31079    department dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.department ALTER COLUMN dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 D   ALTER TABLE public.department ALTER COLUMN dept_id_pk DROP DEFAULT;
       public          postgres    false    302    301    302            f           2604    31117    designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 F   ALTER TABLE public.designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    303    304    304            g           2604    31159 1   financial_year_master financial_year_master_id_pk    DEFAULT     �   ALTER TABLE ONLY public.financial_year_master ALTER COLUMN financial_year_master_id_pk SET DEFAULT nextval('public.financial_year_master_financial_year_master_id_pk_seq'::regclass);
 `   ALTER TABLE public.financial_year_master ALTER COLUMN financial_year_master_id_pk DROP DEFAULT;
       public          postgres    false    306    305    306            Q           2604    30658    location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 K   ALTER TABLE public.location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    276    275            R           2604    30659    meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 M   ALTER TABLE public.meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    278    277            ^           2604    31004    notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 N   ALTER TABLE public.notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    294    293            c           2604    31071    office office_id_pk    DEFAULT     z   ALTER TABLE ONLY public.office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 B   ALTER TABLE public.office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    299    300    300            Z           2604    30660    profile profile_id_pk    DEFAULT     v   ALTER TABLE ONLY public.profile ALTER COLUMN profile_id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 D   ALTER TABLE public.profile ALTER COLUMN profile_id_pk DROP DEFAULT;
       public          postgres    false    281    280            j           2604    31172    scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 L   ALTER TABLE public.scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    308    307    308            [           2604    30661    scheme_table scheme_id_pk    DEFAULT     |   ALTER TABLE ONLY public.scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 H   ALTER TABLE public.scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    288    287            �           2604    30662    table id_pk    DEFAULT     l   ALTER TABLE ONLY public."table" ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 <   ALTER TABLE public."table" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    289    202            �          0    30249    ANAND 
   TABLE DATA           �   COPY public."ANAND" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", schcd) FROM stdin;
    public          postgres    false    203   �G      �          0    30254    AWCC 
   TABLE DATA           �   COPY public."AWCC" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_ICDS_Cenetres_devoid_of_own_building", "No_of_new_ICDS_building_constructed", "No_of_ICDS_Centres_running_in_open_space", schcd) FROM stdin;
    public          postgres    false    204   �G      �          0    30261 	   BAITARANI 
   TABLE DATA           �   COPY public."BAITARANI" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_burning_ghats_taken_up", "Completed_till_date", schcd) FROM stdin;
    public          postgres    false    206   H      �          0    30268    DOC 
   TABLE DATA           �   COPY public."DOC" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Target_for_distribution_of_poultry", "No_of_poultry_actually_distributed", schcd) FROM stdin;
    public          postgres    false    208   (H      �          0    30275    DOG 
   TABLE DATA           �   COPY public."DOG" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Target_for_distribution_of_goats", "No_of_goats_actually_distributed", "No_of_beneficiaries_selected", "No_of_beneficiaries_approved", schcd) FROM stdin;
    public          postgres    false    209   EH      �          0    30282    DOPTUHD 
   TABLE DATA           �   COPY public."DOPTUHD" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_Power_tiller_distributed", schcd) FROM stdin;
    public          postgres    false    211   bH      �          0    30289 
   ENROLLMENT 
   TABLE DATA           �   COPY public."ENROLLMENT" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Gross_Enrolment_Ratio_primary", "Net_Enrolment_Ratio_primary", "Gross_Enrolment_Ratio_Upper_primary", "Net_Enrolment_Ratio_Upper_primary", schcd) FROM stdin;
    public          postgres    false    213   H      �          0    30296    FOODPRO 
   TABLE DATA           �   COPY public."FOODPRO" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Status_of_pocurement", "Target_of_pocurement", schcd) FROM stdin;
    public          postgres    false    215   �H      �          0    30303 	   GITANJALI 
   TABLE DATA           �   COPY public."GITANJALI" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_case_sanctioned_under_Gitanjali", "Date_of_Inception", "No_of_houses_constructed_under_Gitanjali", schcd) FROM stdin;
    public          postgres    false    217   �H      �          0    30310 
   IMMUNISATI 
   TABLE DATA           �   COPY public."IMMUNISATI" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Per_of_Fully_immunised_child", schcd) FROM stdin;
    public          postgres    false    219   �H      �          0    30317    INFANTD 
   TABLE DATA           �   COPY public."INFANTD" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Total_No_of_Infant_Death", schcd) FROM stdin;
    public          postgres    false    221   �H      �          0    30324 
   INSPECTION 
   TABLE DATA           �   COPY public."INSPECTION" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_homes_inspected_by_Senior_Officers", "Designation_of_officers", schcd) FROM stdin;
    public          postgres    false    223   I      �          0    30331    INSTDEL 
   TABLE DATA           �   COPY public."INSTDEL" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Per_of_Institutional_Delivery", schcd) FROM stdin;
    public          postgres    false    225   -I      �          0    30338    JALDJALB 
   TABLE DATA           �   COPY public."JALDJALB" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Date_of_Inspection", "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo", "No_of_ponds_fish_production_started", schcd) FROM stdin;
    public          postgres    false    227   JI      �          0    30345    KANYAS 
   TABLE DATA           a  COPY public."KANYAS" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_K-1_cases_application_received", "No_of_K-1_cases_application_sanctioned", "No_of_K-1_cases_application_disbursed", "No_of_K-2_cases_application_received", "No_of_K-2_cases_application_sanctioned", "No_of_K-2_cases_application_disbursed", schcd) FROM stdin;
    public          postgres    false    229   gI      �          0    30352 
   KARMATIRTH 
   TABLE DATA             COPY public."KARMATIRTH" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_Karmatirtha_sanctioned", "No_of_Karmatirtha_for_which_construction_started", "No_of_Karmatirtha_for_which_construction_completed", "No_of_Karmatirth_operationalised", schcd) FROM stdin;
    public          postgres    false    231   �I      �          0    30359    KCC 
   TABLE DATA           �   COPY public."KCC" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, schcd) FROM stdin;
    public          postgres    false    233   �I      �          0    30382    KishanM 
   TABLE DATA           �   COPY public."KishanM" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_Kishan_Mandis_sanctioned", "No_of_Kishan_Mandis_operational", "Operationality", schcd) FROM stdin;
    public          postgres    false    235   �I      �          0    30387    LANDPP 
   TABLE DATA           �   COPY public."LANDPP" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_land_permission_pending", "PROJECTS_NAME", schcd) FROM stdin;
    public          postgres    false    236   �I      �          0    30394    Login 
   TABLE DATA           �   COPY public."Login" (username, password, user_type_id_fk, schcd, "Login_id_pk", active_status, dept_id_fk, office_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    238   �I      �          0    30404 	   MATERNALD 
   TABLE DATA           �   COPY public."MATERNALD" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Total_No_of_Maternal_Death", schcd) FROM stdin;
    public          postgres    false    241   J      �          0    30411    MCI 
   TABLE DATA           �   COPY public."MCI" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Percentage_of_malnourished_child", schcd) FROM stdin;
    public          postgres    false    243   2J      �          0    30418    MGNREGS 
   TABLE DATA           
  COPY public."MGNREGS" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_Person_days_generated_under_MGNREGS", "Average_No_of_Persondays_generated_per_household", "Expenditure_of_the_session", per_of_labour_budget_achieved, schcd) FROM stdin;
    public          postgres    false    245   OJ      �          0    30423 	   MINORITYS 
   TABLE DATA             COPY public."MINORITYS" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Target_for_Scholarship_distribution_Aikyashree", "No_of_students_distributed_scholarship", "No_of_Aaplication_uploaded_under_Aikyashree_scholarship", schcd) FROM stdin;
    public          postgres    false    246   lJ      �          0    30430    POE 
   TABLE DATA           �   COPY public."POE" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Target", "Production", schcd) FROM stdin;
    public          postgres    false    248   �J                0    31034 	   Privilege 
   TABLE DATA           u   COPY public."Privilege" (privilege_id_pk, parent, link, "order", page_name, active_status, view_sidebar) FROM stdin;
    public          postgres    false    295   �J      �          0    30443    SABOOJS 
   TABLE DATA           �   COPY public."SABOOJS" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Target_for_distribution_of_cycles", "Cycle_distributed_till_date", schcd) FROM stdin;
    public          postgres    false    250   �K      �          0    30448 
   SABOOJSHRE 
   TABLE DATA           �   COPY public."SABOOJSHRE" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_children_born_since_inception_of_the_project_in_the_dist", "No_of_tree_sapling_handed_over_to_the_new_born_children", schcd) FROM stdin;
    public          postgres    false    251   �K      �          0    30457 
   SAFEDSAVEL 
   TABLE DATA           �   COPY public."SAFEDSAVEL" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_accidents", "No_of_death", "No_of_insured_person", schcd) FROM stdin;
    public          postgres    false    254   �K      �          0    30464 	   SAMABYTHI 
   TABLE DATA           �   COPY public."SAMABYTHI" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_beneficiaries_provided_benefit_till_date", "Till_date", schcd) FROM stdin;
    public          postgres    false    256   �K      �          0    30471    SIKSHAS 
   TABLE DATA             COPY public."SIKSHAS" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "Targetted_No_Of_SC/ST_Student_under_Sikshashree", "No_of_Students_getting_benefit_under_Sikshashree", "No_of_Applications_uploaded_under_Sikshashree", schcd) FROM stdin;
    public          postgres    false    258   	L      �          0    30478    SVSKP 
   TABLE DATA           �   COPY public."SVSKP" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_project_Sponsored_under_SVSKP", "No_of_project_sanctioned_under_SVSKP", schcd) FROM stdin;
    public          postgres    false    260   &L      �          0    30485    YUBAS 
   TABLE DATA           �   COPY public."YUBAS" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, "No_of_unemployed_Youth_registered_under_Yubashree", "No_of_unemployed_registered_Youth_getting_monthly_assistance", schcd) FROM stdin;
    public          postgres    false    262   CL                0    30948    attri_table 
   TABLE DATA           Y   COPY public.attri_table (attri_id_pk, scheme_id_fk, attri_name, actual_name) FROM stdin;
    public          postgres    false    291   `L      �          0    30502 	   audit_log 
   TABLE DATA           v   COPY public.audit_log (section, action, request, comment, ip_addr, audit_id_pk, login_id_fk, "timestamp") FROM stdin;
    public          postgres    false    265   �S      �          0    30510    check_First_User 
   TABLE DATA           i   COPY public."check_First_User" (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    267   	T      �          0    30517    dashboard_info 
   TABLE DATA           b   COPY public.dashboard_info (id, s_name, name, a_target, target, a_progress, progress) FROM stdin;
    public          postgres    false    270   &T      �          0    30520    dba_financial_range_table 
   TABLE DATA           q   COPY public.dba_financial_range_table (dba_financial_range_table_id_pk, financial_year_range, month) FROM stdin;
    public          postgres    false    271   oU                0    31076 
   department 
   TABLE DATA           U   COPY public.department (dept_id_pk, dept_name, short_name, office_id_fk) FROM stdin;
    public          postgres    false    302   �U                0    31114    designation 
   TABLE DATA           J   COPY public.designation (desig_id_pk, desig_name, dept_id_fk) FROM stdin;
    public          postgres    false    304   �X                0    31156    financial_year_master 
   TABLE DATA           {   COPY public.financial_year_master (financial_year_master_id_pk, "scheme_table_id_fk ", start_month, end_month) FROM stdin;
    public          postgres    false    306   �Z      �          0    30529    location_data 
   TABLE DATA           V   COPY public.location_data (location_area, location_schcd, location_id_pk) FROM stdin;
    public          postgres    false    275   �Z      �          0    30549    location_master_block 
   TABLE DATA           �   COPY public.location_master_block (district_id_fk, subdiv_id_fk, block_name, schcd, clucd, block_id_pk, block_mun_corp_flag, block_kol_flag) FROM stdin;
    public          postgres    false    282   �[      �          0    30552    location_master_district 
   TABLE DATA           e   COPY public.location_master_district (district_id_pk, state_id_fk, district_name, schcd) FROM stdin;
    public          postgres    false    283   s      �          0    30555    location_master_gp 
   TABLE DATA           l   COPY public.location_master_gp (schcd, schname, parent_id, gp_ward_flag, block_id_fk, gp_id_pk) FROM stdin;
    public          postgres    false    284   Et      �          0    30558    location_master_state 
   TABLE DATA           W   COPY public.location_master_state (state_id_pk, state_name, active_status) FROM stdin;
    public          postgres    false    285   5c      �          0    30561    location_master_subdiv 
   TABLE DATA           b   COPY public.location_master_subdiv (district_id_fk, subdiv_name, schcd, subdiv_id_pk) FROM stdin;
    public          postgres    false    286   cc      �          0    30534    meeting_schedule 
   TABLE DATA           O   COPY public.meeting_schedule (meeting_id_pk, start_time, end_time) FROM stdin;
    public          postgres    false    277   g                0    30999    notification 
   TABLE DATA           �   COPY public.notification (audience_id, notification_text, notification_id_pk, "timestamp", notification_head, active_status) FROM stdin;
    public          postgres    false    293   9g                0    31068    office 
   TABLE DATA           ;   COPY public.office (office_id_pk, office_name) FROM stdin;
    public          postgres    false    300   Vg      �          0    30541    profile 
   TABLE DATA           �   COPY public.profile (username, f_name, m_name, l_name, mobile, email, district, image, profile_id_pk, desig_id_fk, dept_id_fk, office_id_fk) FROM stdin;
    public          postgres    false    280   �h                0    31169    scheme_dept 
   TABLE DATA           Y   COPY public.scheme_dept (scheme_dept_id_pk, scheme_id_fk, office_dept_id_fk) FROM stdin;
    public          postgres    false    308   �h                 0    30564    scheme_table 
   TABLE DATA           F   COPY public.scheme_table (scheme_id_pk, short_name, name) FROM stdin;
    public          postgres    false    287   4i      �          0    30245    table 
   TABLE DATA           c   COPY public."table" (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at) FROM stdin;
    public          postgres    false    202   �k      	          0    31042    user_privilege 
   TABLE DATA           j   COPY public.user_privilege (user_priv_id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    296   �k                0    30581 	   user_type 
   TABLE DATA           J   COPY public.user_type (user_type_id_pk, desig, active_status) FROM stdin;
    public          postgres    false    290   �l      O           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    205            P           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    207            Q           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    210            R           0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    212            S           0    0    ENROLLMENT_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ENROLLMENT_id_seq"', 1, false);
          public          postgres    false    214            T           0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    216            U           0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    218            V           0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    220            W           0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    222            X           0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    224            Y           0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    226            Z           0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    228            [           0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    230            \           0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    232            ]           0    0    KCC_id_pk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."KCC_id_pk_seq"', 4, true);
          public          postgres    false    234            ^           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    237            _           0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 1, true);
          public          postgres    false    239            `           0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    240            a           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    242            b           0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    244            c           0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    247            d           0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    249            e           0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    252            f           0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    253            g           0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    255            h           0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    257            i           0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    259            j           0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    261            k           0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    263            l           0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 1, true);
          public          postgres    false    264            m           0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    292            n           0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 103, true);
          public          postgres    false    266            o           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    268            p           0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    269            q           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE SET     l   SELECT pg_catalog.setval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq', 1, false);
          public          postgres    false    272            r           0    0    designation_desig_id_pk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.designation_desig_id_pk_seq', 1, false);
          public          postgres    false    303            s           0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    273            t           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.financial_year_master_financial_year_master_id_pk_seq', 1, false);
          public          postgres    false    305            u           0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 1, false);
          public          postgres    false    274            v           0    0     location_data_location_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.location_data_location_id_pk_seq', 1, false);
          public          postgres    false    276            w           0    0    meeting_schedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 1, true);
          public          postgres    false    278            x           0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    279            y           0    0    notifications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.notifications_id_seq', 8, true);
          public          postgres    false    294            z           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    301            {           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    299            |           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 3, true);
          public          postgres    false    281            }           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    307            ~           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    288                       0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    289            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    297            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    298            o           2606    30667    AWCC AWCC_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."AWCC"
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 <   ALTER TABLE ONLY public."AWCC" DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    204            r           2606    30669    BAITARANI BAITARANI_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."BAITARANI"
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."BAITARANI" DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    206            x           2606    30671    DOG DOG_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."DOG"
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 :   ALTER TABLE ONLY public."DOG" DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    209            {           2606    30673    DOPTUHD DOPTUHD_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."DOPTUHD"
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."DOPTUHD" DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    211            ~           2606    30675    ENROLLMENT ENROLLMENT_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."ENROLLMENT"
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."ENROLLMENT" DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    213            �           2606    30677    FOODPRO FOODPRO_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."FOODPRO"
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."FOODPRO" DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    215            �           2606    30679    GITANJALI GITANJALI_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."GITANJALI"
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."GITANJALI" DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    217            �           2606    30681    IMMUNISATI IMMUNISATION_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."IMMUNISATI"
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 J   ALTER TABLE ONLY public."IMMUNISATI" DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    219            �           2606    30683    INFANTD INFANTD_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."INFANTD"
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."INFANTD" DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    221            �           2606    30685    INSPECTION INSPECTION_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."INSPECTION"
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."INSPECTION" DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    223            �           2606    30687    INSTDEL INSTDEL_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."INSTDEL"
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."INSTDEL" DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    225            �           2606    30689    JALDJALB JALDJALB_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."JALDJALB"
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 D   ALTER TABLE ONLY public."JALDJALB" DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    227            �           2606    30691    KANYAS KANYAS_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."KANYAS"
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 @   ALTER TABLE ONLY public."KANYAS" DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    229            �           2606    30693    KARMATIRTH KARMATIRTH_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."KARMATIRTH"
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."KARMATIRTH" DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    231            �           2606    30695    KCC KCC_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."KCC"
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 :   ALTER TABLE ONLY public."KCC" DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    233            �           2606    31008    LANDPP LANDPP_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."LANDPP"
    ADD CONSTRAINT "LANDPP_pkey" PRIMARY KEY (id_pk);
 @   ALTER TABLE ONLY public."LANDPP" DROP CONSTRAINT "LANDPP_pkey";
       public            postgres    false    236            �           2606    30697    Login Login_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY ("Login_id_pk");
 >   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_pkey";
       public            postgres    false    238            �           2606    31234 "   Login Login_username_username1_key 
   CONSTRAINT     x   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 P   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    238    238            �           2606    30701    MATERNALD MATERNALD_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."MATERNALD"
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."MATERNALD" DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    241            �           2606    30703    MCI MCI_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."MCI"
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 :   ALTER TABLE ONLY public."MCI" DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    243            �           2606    30705    MGNREGS MGNREGS_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."MGNREGS"
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."MGNREGS" DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    245            �           2606    30707    MINORITYS MINORITYS_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."MINORITYS"
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."MINORITYS" DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    246            �           2606    30709    POE POE_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."POE"
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 :   ALTER TABLE ONLY public."POE" DROP CONSTRAINT "POE_pkey";
       public            postgres    false    248            �           2606    31041    Privilege Privilege_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Privilege"
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 F   ALTER TABLE ONLY public."Privilege" DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    295            �           2606    30713    SABOOJSHRE SABOOJSHRE_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."SABOOJSHRE"
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."SABOOJSHRE" DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    251            �           2606    30715    SABOOJS SABOOJS_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."SABOOJS"
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."SABOOJS" DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    250            �           2606    30717    SAFEDSAVEL SAFEDSAVEL_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."SAFEDSAVEL"
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."SAFEDSAVEL" DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    254            �           2606    30719    SAMABYTHI SAMABYTHI_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."SAMABYTHI"
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."SAMABYTHI" DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    256            �           2606    30721    SIKSHAS SIKSHAS_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."SIKSHAS"
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."SIKSHAS" DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    258            �           2606    30723    SVSKP SVSKP_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."SVSKP"
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 >   ALTER TABLE ONLY public."SVSKP" DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    260            �           2606    30725    YUBAS YUBAS_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."YUBAS"
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 >   ALTER TABLE ONLY public."YUBAS" DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    262            l           2606    30727    ANAND anand_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."ANAND"
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 <   ALTER TABLE ONLY public."ANAND" DROP CONSTRAINT anand_pkey;
       public            postgres    false    203            �           2606    30958    attri_table att_table_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (attri_id_pk);
 D   ALTER TABLE ONLY public.attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    291            �           2606    31106    audit_log audit_log_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id_pk);
 B   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    265            �           2606    30733 &   check_First_User check_First_User_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."check_First_User"
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 T   ALTER TABLE ONLY public."check_First_User" DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    267            �           2606    30735 "   dashboard_info dashboard_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    270            �           2606    30737 8   dba_financial_range_table dba_financial_range_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dba_financial_range_table
    ADD CONSTRAINT dba_financial_range_table_pkey PRIMARY KEY (dba_financial_range_table_id_pk);
 b   ALTER TABLE ONLY public.dba_financial_range_table DROP CONSTRAINT dba_financial_range_table_pkey;
       public            postgres    false    271            �           2606    31119    designation designation_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (desig_id_pk);
 F   ALTER TABLE ONLY public.designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    304            u           2606    30739    DOC doc_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public."DOC"
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 8   ALTER TABLE ONLY public."DOC" DROP CONSTRAINT doc_pkey;
       public            postgres    false    208            �           2606    31161 0   financial_year_master financial_year_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.financial_year_master
    ADD CONSTRAINT financial_year_master_pkey PRIMARY KEY (financial_year_master_id_pk);
 Z   ALTER TABLE ONLY public.financial_year_master DROP CONSTRAINT financial_year_master_pkey;
       public            postgres    false    306            �           2606    30741    KishanM kishanm_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."KishanM"
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id_pk);
 @   ALTER TABLE ONLY public."KishanM" DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    235            �           2606    30743     location_data location_data_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id_pk);
 J   ALTER TABLE ONLY public.location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    275            �           2606    30745 &   meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (meeting_id_pk);
 P   ALTER TABLE ONLY public.meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    277            �           2606    31006    notification notifications_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id_pk);
 I   ALTER TABLE ONLY public.notification DROP CONSTRAINT notifications_pkey;
       public            postgres    false    293            �           2606    31081    department office_dept_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.department
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (dept_id_pk);
 E   ALTER TABLE ONLY public.department DROP CONSTRAINT office_dept_pkey;
       public            postgres    false    302            �           2606    31073    office office_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id_pk);
 <   ALTER TABLE ONLY public.office DROP CONSTRAINT office_pkey;
       public            postgres    false    300            �           2606    30751    profile profile_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id_pk);
 >   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    280            �           2606    30967 3   location_master_block rp_location_master_block_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.location_master_block
    ADD CONSTRAINT rp_location_master_block_pkey PRIMARY KEY (block_id_pk);
 ]   ALTER TABLE ONLY public.location_master_block DROP CONSTRAINT rp_location_master_block_pkey;
       public            postgres    false    282            �           2606    30976 9   location_master_district rp_location_master_district_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.location_master_district
    ADD CONSTRAINT rp_location_master_district_pkey PRIMARY KEY (district_id_pk);
 c   ALTER TABLE ONLY public.location_master_district DROP CONSTRAINT rp_location_master_district_pkey;
       public            postgres    false    283            �           2606    30969 -   location_master_gp rp_location_master_gp_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.location_master_gp
    ADD CONSTRAINT rp_location_master_gp_pkey PRIMARY KEY (gp_id_pk);
 W   ALTER TABLE ONLY public.location_master_gp DROP CONSTRAINT rp_location_master_gp_pkey;
       public            postgres    false    284            �           2606    30753 3   location_master_state rp_location_master_state_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.location_master_state
    ADD CONSTRAINT rp_location_master_state_pkey PRIMARY KEY (state_id_pk);
 ]   ALTER TABLE ONLY public.location_master_state DROP CONSTRAINT rp_location_master_state_pkey;
       public            postgres    false    285            �           2606    30978 5   location_master_subdiv rp_location_master_subdiv_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.location_master_subdiv
    ADD CONSTRAINT rp_location_master_subdiv_pkey PRIMARY KEY (subdiv_id_pk);
 _   ALTER TABLE ONLY public.location_master_subdiv DROP CONSTRAINT rp_location_master_subdiv_pkey;
       public            postgres    false    286            �           2606    31174    scheme_dept scheme_dept_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.scheme_dept
    ADD CONSTRAINT scheme_dept_pkey PRIMARY KEY (scheme_dept_id_pk);
 F   ALTER TABLE ONLY public.scheme_dept DROP CONSTRAINT scheme_dept_pkey;
       public            postgres    false    308            �           2606    30755    scheme_table scheme_table_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (scheme_id_pk);
 H   ALTER TABLE ONLY public.scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    287            �           2606    31055 "   user_privilege user_privilege_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (user_priv_id_pk);
 L   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    296            �           2606    30761    user_type user_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 B   ALTER TABLE ONLY public.user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    290            m           1259    31268 	   idx_anand    INDEX     N   CREATE INDEX idx_anand ON public."ANAND" USING btree (session, month, schcd);
    DROP INDEX public.idx_anand;
       public            postgres    false    203    203    203            p           1259    31269    idx_awcc    INDEX     L   CREATE INDEX idx_awcc ON public."AWCC" USING btree (session, month, schcd);
    DROP INDEX public.idx_awcc;
       public            postgres    false    204    204    204            s           1259    31270    idx_baitarani    INDEX     V   CREATE INDEX idx_baitarani ON public."BAITARANI" USING btree (session, month, schcd);
 !   DROP INDEX public.idx_baitarani;
       public            postgres    false    206    206    206            v           1259    31271    idx_doc    INDEX     J   CREATE INDEX idx_doc ON public."DOC" USING btree (session, month, schcd);
    DROP INDEX public.idx_doc;
       public            postgres    false    208    208    208            y           1259    31272    idx_dog    INDEX     J   CREATE INDEX idx_dog ON public."DOG" USING btree (session, month, schcd);
    DROP INDEX public.idx_dog;
       public            postgres    false    209    209    209            |           1259    31273    idx_doptuhd    INDEX     R   CREATE INDEX idx_doptuhd ON public."DOPTUHD" USING btree (session, month, schcd);
    DROP INDEX public.idx_doptuhd;
       public            postgres    false    211    211    211                       1259    31274    idx_enrollment    INDEX     X   CREATE INDEX idx_enrollment ON public."ENROLLMENT" USING btree (session, month, schcd);
 "   DROP INDEX public.idx_enrollment;
       public            postgres    false    213    213    213            �           1259    31275    idx_foodpro    INDEX     R   CREATE INDEX idx_foodpro ON public."FOODPRO" USING btree (session, month, schcd);
    DROP INDEX public.idx_foodpro;
       public            postgres    false    215    215    215            �           1259    31276    idx_gitanjali    INDEX     V   CREATE INDEX idx_gitanjali ON public."GITANJALI" USING btree (session, month, schcd);
 !   DROP INDEX public.idx_gitanjali;
       public            postgres    false    217    217    217            �           1259    31277    idx_immunisati    INDEX     X   CREATE INDEX idx_immunisati ON public."IMMUNISATI" USING btree (session, month, schcd);
 "   DROP INDEX public.idx_immunisati;
       public            postgres    false    219    219    219            �           1259    31278    idx_infantd    INDEX     R   CREATE INDEX idx_infantd ON public."INFANTD" USING btree (session, month, schcd);
    DROP INDEX public.idx_infantd;
       public            postgres    false    221    221    221            �           1259    31279    idx_inspection    INDEX     X   CREATE INDEX idx_inspection ON public."INSPECTION" USING btree (session, month, schcd);
 "   DROP INDEX public.idx_inspection;
       public            postgres    false    223    223    223            �           1259    31280    idx_instdel    INDEX     R   CREATE INDEX idx_instdel ON public."INSTDEL" USING btree (session, month, schcd);
    DROP INDEX public.idx_instdel;
       public            postgres    false    225    225    225            �           1259    31281    idx_jaldjalb    INDEX     T   CREATE INDEX idx_jaldjalb ON public."JALDJALB" USING btree (session, month, schcd);
     DROP INDEX public.idx_jaldjalb;
       public            postgres    false    227    227    227            �           1259    31282 
   idx_kanyas    INDEX     P   CREATE INDEX idx_kanyas ON public."KANYAS" USING btree (session, month, schcd);
    DROP INDEX public.idx_kanyas;
       public            postgres    false    229    229    229            �           1259    31283    idx_karmatirth    INDEX     X   CREATE INDEX idx_karmatirth ON public."KARMATIRTH" USING btree (session, month, schcd);
 "   DROP INDEX public.idx_karmatirth;
       public            postgres    false    231    231    231            �           1259    31284    idx_kcc    INDEX     J   CREATE INDEX idx_kcc ON public."KCC" USING btree (session, month, schcd);
    DROP INDEX public.idx_kcc;
       public            postgres    false    233    233    233            �           1259    31285    idx_kishanm    INDEX     R   CREATE INDEX idx_kishanm ON public."KishanM" USING btree (session, month, schcd);
    DROP INDEX public.idx_kishanm;
       public            postgres    false    235    235    235            �           1259    31286 
   idx_landpp    INDEX     P   CREATE INDEX idx_landpp ON public."LANDPP" USING btree (session, month, schcd);
    DROP INDEX public.idx_landpp;
       public            postgres    false    236    236    236            �           1259    31287    idx_maternald    INDEX     V   CREATE INDEX idx_maternald ON public."MATERNALD" USING btree (session, month, schcd);
 !   DROP INDEX public.idx_maternald;
       public            postgres    false    241    241    241            �           1259    31288    idx_mci    INDEX     J   CREATE INDEX idx_mci ON public."MCI" USING btree (session, month, schcd);
    DROP INDEX public.idx_mci;
       public            postgres    false    243    243    243            �           1259    31289    idx_mgnregs    INDEX     R   CREATE INDEX idx_mgnregs ON public."MGNREGS" USING btree (session, month, schcd);
    DROP INDEX public.idx_mgnregs;
       public            postgres    false    245    245    245            �           1259    31290    idx_minoritys    INDEX     V   CREATE INDEX idx_minoritys ON public."MINORITYS" USING btree (session, month, schcd);
 !   DROP INDEX public.idx_minoritys;
       public            postgres    false    246    246    246            �           1259    31291    idx_poe    INDEX     J   CREATE INDEX idx_poe ON public."POE" USING btree (session, month, schcd);
    DROP INDEX public.idx_poe;
       public            postgres    false    248    248    248            �           1259    31292    idx_saboojs    INDEX     R   CREATE INDEX idx_saboojs ON public."SABOOJS" USING btree (session, month, schcd);
    DROP INDEX public.idx_saboojs;
       public            postgres    false    250    250    250            �           1259    31293    idx_saboojshre    INDEX     X   CREATE INDEX idx_saboojshre ON public."SABOOJSHRE" USING btree (session, month, schcd);
 "   DROP INDEX public.idx_saboojshre;
       public            postgres    false    251    251    251            �           1259    31294    idx_safedsavel    INDEX     X   CREATE INDEX idx_safedsavel ON public."SAFEDSAVEL" USING btree (session, month, schcd);
 "   DROP INDEX public.idx_safedsavel;
       public            postgres    false    254    254    254            �           1259    31295    idx_samabythi    INDEX     V   CREATE INDEX idx_samabythi ON public."SAMABYTHI" USING btree (session, month, schcd);
 !   DROP INDEX public.idx_samabythi;
       public            postgres    false    256    256    256            �           1259    31296    idx_sikshas    INDEX     R   CREATE INDEX idx_sikshas ON public."SIKSHAS" USING btree (session, month, schcd);
    DROP INDEX public.idx_sikshas;
       public            postgres    false    258    258    258            �           1259    31297 	   idx_svskp    INDEX     N   CREATE INDEX idx_svskp ON public."SVSKP" USING btree (session, month, schcd);
    DROP INDEX public.idx_svskp;
       public            postgres    false    260    260    260            �           1259    31298 	   idx_yubas    INDEX     N   CREATE INDEX idx_yubas ON public."YUBAS" USING btree (session, month, schcd);
    DROP INDEX public.idx_yubas;
       public            postgres    false    262    262    262            �           2606    30762    ANAND ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ANAND"
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 J   ALTER TABLE ONLY public."ANAND" DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    203    238    3237            �           2606    30767    AWCC AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AWCC"
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 H   ALTER TABLE ONLY public."AWCC" DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    204    238    3237            �           2606    30772 $   BAITARANI BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."BAITARANI"
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."BAITARANI" DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    206    238    3237            �           2606    30777    DOC DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DOC"
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."DOC" DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    208    238    3237            �           2606    30782    DOG DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DOG"
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."DOG" DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    209    238    3237            �           2606    30787     DOPTUHD DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DOPTUHD"
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."DOPTUHD" DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    211    238    3237                        2606    30792 &   ENROLLMENT ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ENROLLMENT"
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."ENROLLMENT" DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    213    238    3237                       2606    30797     FOODPRO FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FOODPRO"
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."FOODPRO" DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    215    238    3237                       2606    30802 $   GITANJALI GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GITANJALI"
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."GITANJALI" DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    217    238    3237                       2606    30807 &   IMMUNISATI IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."IMMUNISATI"
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."IMMUNISATI" DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    3237    219    238                       2606    30812     INFANTD INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."INFANTD"
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."INFANTD" DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    238    221    3237                       2606    30817 &   INSPECTION INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."INSPECTION"
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."INSPECTION" DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    238    223    3237                       2606    31009     INSTDEL INSTDEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."INSTDEL"
    ADD CONSTRAINT "INSTDEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."INSTDEL" DROP CONSTRAINT "INSTDEL_login_id_fk_fkey";
       public          postgres    false    238    225    3237                       2606    30827 "   JALDJALB JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."JALDJALB"
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 P   ALTER TABLE ONLY public."JALDJALB" DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    238    227    3237                       2606    30832    KANYAS KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KANYAS"
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 L   ALTER TABLE ONLY public."KANYAS" DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    238    229    3237            	           2606    30837 &   KARMATIRTH KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KARMATIRTH"
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."KARMATIRTH" DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    238    231    3237            
           2606    30842    KCC KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KCC"
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."KCC" DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    238    233    3237                       2606    30847     KishanM KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KishanM"
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."KishanM" DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    238    235    3237                       2606    30852    LANDPP LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."LANDPP"
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 L   ALTER TABLE ONLY public."LANDPP" DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    238    236    3237                       2606    31125    Login Login_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_desig_id_fk_fkey" FOREIGN KEY (desig_id_fk) REFERENCES public.designation(desig_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 J   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_desig_id_fk_fkey";
       public          postgres    false    304    238    3317                       2606    31095 "   Login Login_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_office_dept_id_fk_fkey" FOREIGN KEY (dept_id_fk) REFERENCES public.department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 P   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_office_dept_id_fk_fkey";
       public          postgres    false    302    238    3315                       2606    31100    Login Login_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_office_id_fk_fkey" FOREIGN KEY (office_id_fk) REFERENCES public.office(office_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 K   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_office_id_fk_fkey";
       public          postgres    false    3313    238    300                       2606    31061     Login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    238    290    3303                       2606    30862 $   MATERNALD MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MATERNALD"
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."MATERNALD" DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    3237    241    238                       2606    30867    MCI MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MCI"
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."MCI" DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    243    238    3237                       2606    30872     MGNREGS MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MGNREGS"
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."MGNREGS" DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    3237    245    238                       2606    30877 $   MINORITYS MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MINORITYS"
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."MINORITYS" DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    238    246    3237                       2606    30882    POE POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."POE"
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."POE" DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    238    248    3237                       2606    30887 &   SABOOJSHRE SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SABOOJSHRE"
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."SABOOJSHRE" DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    238    251    3237                       2606    30892     SABOOJS SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SABOOJS"
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."SABOOJS" DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    238    250    3237                       2606    30897 &   SAFEDSAVEL SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SAFEDSAVEL"
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."SAFEDSAVEL" DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    238    254    3237                       2606    30902 $   SAMABYTHI SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SAMABYTHI"
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."SAMABYTHI" DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    238    256    3237                       2606    30907     SIKSHAS SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SIKSHAS"
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."SIKSHAS" DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    238    258    3237                       2606    30912    SVSKP SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SVSKP"
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 J   ALTER TABLE ONLY public."SVSKP" DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    238    260    3237                       2606    30917    YUBAS YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."YUBAS"
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 J   ALTER TABLE ONLY public."YUBAS" DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    238    262    3237            %           2606    31220 )   attri_table attri_table_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attri_table
    ADD CONSTRAINT attri_table_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.scheme_table(scheme_id_pk) NOT VALID;
 S   ALTER TABLE ONLY public.attri_table DROP CONSTRAINT attri_table_scheme_id_fk_fkey;
       public          postgres    false    291    287    3301                       2606    31107 $   audit_log audit_log_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_login_id_fk_fkey FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 N   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_login_id_fk_fkey;
       public          postgres    false    3237    265    238            )           2606    31120 .   designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    302    304    3315            *           2606    31162 D   financial_year_master financial_year_master_scheme_table_id_fk _fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.financial_year_master
    ADD CONSTRAINT "financial_year_master_scheme_table_id_fk _fkey" FOREIGN KEY ("scheme_table_id_fk ") REFERENCES public.scheme_table(scheme_id_pk);
 p   ALTER TABLE ONLY public.financial_year_master DROP CONSTRAINT "financial_year_master_scheme_table_id_fk _fkey";
       public          postgres    false    3301    306    287            (           2606    31082 (   department office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.department
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 R   ALTER TABLE ONLY public.department DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    300    302    3313            &           2606    31056    user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public."Privilege"(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    3309    296    295                       2606    30959    profile profile_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_id_pk_fkey FOREIGN KEY (profile_id_pk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 D   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_id_pk_fkey;
       public          postgres    false    280    238    3237            !           2606    30994 B   location_master_block rp_location_master_block_district_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_block
    ADD CONSTRAINT rp_location_master_block_district_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.location_master_district(district_id_pk) NOT VALID;
 l   ALTER TABLE ONLY public.location_master_block DROP CONSTRAINT rp_location_master_block_district_id_fk_fkey;
       public          postgres    false    283    282    3293                        2606    30989 @   location_master_block rp_location_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_block
    ADD CONSTRAINT rp_location_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.location_master_subdiv(subdiv_id_pk) NOT VALID;
 j   ALTER TABLE ONLY public.location_master_block DROP CONSTRAINT rp_location_master_block_subdiv_id_fk_fkey;
       public          postgres    false    286    282    3299            "           2606    30984 E   location_master_district rp_location_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_district
    ADD CONSTRAINT rp_location_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.location_master_state(state_id_pk) NOT VALID;
 o   ALTER TABLE ONLY public.location_master_district DROP CONSTRAINT rp_location_master_district_state_id_fk_fkey;
       public          postgres    false    285    283    3297            #           2606    30970 9   location_master_gp rp_location_master_gp_block_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_gp
    ADD CONSTRAINT rp_location_master_gp_block_id_fk_fkey FOREIGN KEY (block_id_fk) REFERENCES public.location_master_block(block_id_pk) NOT VALID;
 c   ALTER TABLE ONLY public.location_master_gp DROP CONSTRAINT rp_location_master_gp_block_id_fk_fkey;
       public          postgres    false    282    284    3291            $           2606    30979 D   location_master_subdiv rp_location_master_subdiv_district_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_subdiv
    ADD CONSTRAINT rp_location_master_subdiv_district_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.location_master_district(district_id_pk) NOT VALID;
 n   ALTER TABLE ONLY public.location_master_subdiv DROP CONSTRAINT rp_location_master_subdiv_district_id_fk_fkey;
       public          postgres    false    283    286    3293            ,           2606    31180 .   scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (office_dept_id_fk) REFERENCES public.department(dept_id_pk);
 X   ALTER TABLE ONLY public.scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    308    302    3315            +           2606    31175 )   scheme_dept scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.scheme_dept
    ADD CONSTRAINT scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.scheme_table(scheme_id_pk);
 S   ALTER TABLE ONLY public.scheme_dept DROP CONSTRAINT scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    308    287    3301                       2606    30937    check_First_User user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."check_First_User"
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public."Login"("Login_id_pk");
 G   ALTER TABLE ONLY public."check_First_User" DROP CONSTRAINT user_id_fk;
       public          postgres    false    238    3237    267            '           2606    31130 2   user_privilege user_privilege_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT user_privilege_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 \   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT user_privilege_user_type_id_fk_fkey;
       public          postgres    false    3303    296    290            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �         �   x�]O�n�0<���_PpH��X����HH=E����1���݅��^�3��+P�M���$������J� ��Q����-���DB�j�X�6�=��=Maom7�ÀcnM���Mr�96c���uy��'�G%�Qqb;���^��Ƶ�LJN��Qcmpm��4�tw�ɒ�lq�ӿ��wv%�yM���&������WA,T<K�e� k�L��� ��b�k�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �         |  x��XKo�8>���.t&kI~��l��ѝ��]`�FflNd�У3��[ŇHي3{����+>�U�J�4�^�ꙋm���l�%{U*�p�y��|���-��z�<���E�9����	Ϳ	�B^d-ZUiQ:B++�HΖ�q���x�i�'׿pl+�5� ��ql�VjB�G-���F�r���
�+ *@������u�8Ŷ�%١�id��\b1�F8Kg�4y�Z�X;�����\�{���������67���n����y�R�\�9!b�b�aX�Lfɣ����y��<u���}�贏BS�B�²4�_��V�m. �2��3\m'����y��@`Y��<��>�B�����,�@^Ȳ���p��_o�{!����-���l�Cu��
Zp�ɲU�t��W��V���Gl�`Ń��Y�rZ���7����S�F�-/*��.Z5b�0�1aX��d��F�Ƶם�ć��7U�� 
�������$�$x�
�ѝE��(u���F;�L � ��E���������S�^�B�pH����{|����a0������{����Ŧ��1�;��.�z���7��1�h���=��U�QF��&�%��_���wZ5���F<F��z
|���}�c�\��<IsO�}�M%��,qG0�����M�I�a��~�Em����
���m6���9��vO5����v��J���1���c���m��[�;��5����fWK�Dz������`���,'+.�Xe϶��n�ۘ�W�8G�L���p��e%6�����h��1`�RPq,Jy1Y�͉���Q�f��S��8��$c3��e<�u������:�t�^��c3����	8�OȆ�M.��f�V��A�t[�Dzl��S��?1Y��������w���Yp�1�����9[�&�h�7M��㣠rNv�Z�����ꜭG���?��_ȃI�4b��a�y�mj�&N�o���8��� k�4�As�����/	���چ˿
�K�	|���ue��I_~k	=����"B�/�g�թ�g��t����M+�PkXf�@��ðE�`ŷnE�5���Bz�1�Z
?�!|�cD(�8h����Q�k7�r�k@�xdS��N�=ހ#��U��0�n�����tO��4�h@�p��k��b�Rd��Qw_�v��N�37J#F#s־��N�2[�c�|^��|���H��8�/V���^w��_??�����Q�X�w�����ST��K?��T�Ö-�5>�b��~!�U��羐	�3��ث?	:���X똺z���N+^$�qo�
��1X���o�j�����y���O�2Z�lX=�����E?Ζ+��1mo�&����Zj�s�i|Lۛ����,�{�<�|%К�D�7`'4m;>��T��1�f��Z�b��ڙiMj�z`������s�^8�^�-�1�{�u���B�m|�W	���C�XW�$Ƿя�/�7�k����m��[���VK\/�5����i@�3FRRpR�ʓ����23������1�E�o��z��~���>w��:��yr�y)��aC�[��Iz��f�C2�2�2��<}�J�J��_����#x�j���_u�f�7�W��rм���j�oBW�.TSy�u�`�4�$���v�����L��-0X��]]5��uUR�?�-����Z�>bz<X[f���aoY�0_p������YԳ��S��ͨC���a�nS�N|PW������dv�M��G��E��9���g���?n�־-b�p�ƳY�"�֚�KQ`�p�C�gH��܀�0β�.�Ijtl0D��=R��x���bF����q"��\��v��ϲ�ߚ�%���1�?B��"      �      x������ � �      �      x������ � �      �   9  x���Mj�0F��)��� 8�B��h��a"˶�"I.���,�:qI�ʶ�}����N���~|L�Xi�֘�p8��Ɉ���U��P�<��f��ۋt�����'�+�ɨp�R
rS15N�^�;�X�Yi%=*����B��;���K�^<]��?hU�a�r]n��D����1�{>޷k��1u/5pPZ�5$2�@�`s���P�@�LG�\vE2#�_��P�\{��~]�Jt��52$�Q0�΋M��H�Tw��/$z���S8�� L��=���Rx�9�*�Ȏ��#����s�9�6+.�      �      x������ � �           x�mT�n�:]��?��\�HJbC�I������H�"M��;C;q]X>sfH�[v����9ڂ��!�7�9B-j�h�o)��{g[9X�4z��iK���sz=��
�0�p옯F��Z�a
���0.%FaҰ��tk?�G�D�@�nao��nD"	FPJ� ��{�Hg��%z��VB-��A������Ӄ�?��k�}x�����"��������c�]%�3���|z9�����giο�O�˩t~�u����6�L�]�6�v�(%	��`\ʔ�L��9�m�L�!I�I�~��&h/"��PKh]�)T�ߐ��ZA��Kޭ�5f���@m���i��P>������L�Ct�(�m��&Ȧ[hP���R{LI�o�Z��������MY`�m�C_8O���p<bꣵ�S 6!|H�{����ٹ���1W��8Ph1�Ș���%��rIA�[��H��K=Jlzw��S�Ȫ5�a������v	��+?n43���ԯ6+������fj=��y�r�H�A�
�q���L�Ի�G����ĀF�c�h�^g"^9P;Q��C)hG_��j]�J���n����#�R��8��>L�_9]l٣�ݿ�VԔ�inh^%m�G�p"._����/g�c�5�y�6FALn��LT�ko�5[�1x�5����f��}AR�K��\0i�Z�4n�x���'H׀vb���;S�v�6����]�=�9����LȀ�0AE�R�oYb̏Ր��2�V2&���B�?|@OO         '  x�uR͒� >����^� ��Qٰk�p����?G��M��كg<H��I��y��t!��)Kr��X�L��,%���~�b`��N5�A���2�v_�0�(�R.]^�(�p��@��z(��*�H�cC!8�#'m�5�q��j=Ot�H橠�8}alM�xʁ
�N����}]���W���|��B)�>P/'r���{���c��3�S�}X�Cű��9�`�)�:H��|Ǹb��N�������_$��P�S��[��h�t�	�4��r�(��1df;
uڐk�o82����$c��{vBs �d)z/�������4�i��bn�wy�r�4B�W�7g��7���3��)N�~q=���o��ԧ<�gg������b�y�<�ѕ�47��D~l��`�����n��c����ʞ�Gɷ:��i�[���q[?�Ų�A��A�r^.c��������t¨V��|_�9������Fsƴ�)8�+ߌ9	ӵǁ"5o���Y��vM��Lxor��Ê���`v�egA1�й��-��5%���K�����            x������ � �      �   �   x�e�M�� F��)z��b�t�Q�%�0#��������B<�gK��X�� �'vۅ@��~�u�7 �ā��+_x��R	Nv���&�Ne��5���ZCz�����(un.��W����e顋*��X�Dz���;�4Z�Xǫ�&U�@�a}V*��@q2x����~ˊ���J0�B���:�LJ�&n�b��EP{�̢j�~�`�q`��.�x|�&X�(��O}�_8      �      x�}\˒�^+O��E�/�-�cɖ%�dMO�̼�k@� i�U��| IwBQUQ��6�7�t��yy̋{�T�N5��?��
�d�R���BU��M�m[��M���p���Elg<Igk��l�R����~{\�ex�(�j��.*X.P��M�Ƕ�6��i�,�]\E�E�7wwK�Ϸ�����хnKO��}����^^�PÉ�O�u�� [�����ǍG��e:�c��+��oJ ���M'7M�2/�W�Z�)L��ma��g�qӛ�:c�O�g�)Nn���;x�,2e|Y\�����;�:, ����8�+�O 7؄�+��mq���ݧ�B��������
X��7����u�1�]�m��0��Z%̻�������;�``W���/�~�n��Mdo"��3_�������w�:���#�.��{���]1;��B!'����h� rU�����`���2
D��eX{��wS%��E�R����gx����d��-���a�<�-K4� �o� ��rWV+�),�@���8��y�l��LȤ�+�>���x�e�.�uL�AP�~ �0�+��C]�r�w�T���bh��	��-k?�Pjm*;��y<���J�Wm�.��@g�P�������� :qB;��К�T^U�+�]�:����J�4��:[����=ò����*%�9��4e�i�t['7��y|���n�����M����Z�U[	8�#¶sx�����PN�2�.�-�xmP �i|���� b,���o���;2�J�-��~���5}�$q��Y��ū��ݝ�_w��ۡ���ζ�n��M�y�����8��Dnx�MFy������IڌN�ֿCa�����w�*R���ؿ��=v�Pq��l~{n�@��ZP��)r�A��c�\jG�ؗf�\j=`V���*-�$r�??�m/G��1�����a�I/��f�K���gM�|;Z'��4{~�|����N�0eX���px#�d���eFt�O�y���Y&⤴�<aqWt+�˞�h�|��h�}Dy�C$��1����3Z�6쓔L��x��v�����Iq2���GleE˫H��'J�A���>��>uYf��Y��4:���(zwܳ
�*�ϭ�9<ݾ�46��^�����"��J�F�����ܓL�Q:SǬ&q��q8��H�Z��<�	k��k���y�:$���F.�&�N]l�����()P5�F����{^�=�+I�P��KI(4��BI�]T���������qK���!M1�|y짽������*�ϟ=���&2Uz�+�]C+)��՝��@P=C����w�Xʮ�"*J�) �:�{�_���?�m��<���^ ��~��J	���U���2"�=A��[{��9輩��b�Z�ٿ+h&H�X����˔�l�{���i�y'�A��Xp)�I�,�7O��^JT^A@#��	����4��А��0M���Ϸ~�O~�fHĕ2 �2n�e�^*�}!�5\�r�O�����*\�Z��u�Gw��� @��B��	D���P�`h�$�֘g���D{mFWn���$t�p��r����-���z�f��ѝ2/O�d$�9x۝e:�i3��!��R2E�Q��%Tb;�4�H��𐗇�����ǁɳK��~ �6Y@���p-��ˮ*��e�cG�
����p��0��-����Jt�����	�_�F˥�&�Z�i	�WQ�Zi2���QN��@�6A��o���ɔ|&ֶuFpw=�8��~֖2O�dD��t9��T������i�������$K����^�]���p��O M��T�i��A�֑1�B[��;Rt 9�|p��%�ݸ_��b�k:�Mlm��s~ɵJ3j�B1��2m��2m_B=�������迗֔�[��R*MI+��&��B�л�>���x�\���e�4�	�W\X����p�?�.o-kCGձ��CX�-X�Gն�����	ퟓ@��|�E�d��+�@��On�����Ò�P�c���P3�m[��ΙJ*b��J)��2�9����ൈ�O����z� �6�F�>t"on�ݠ*ᘐ`-���#B� 1e�B��0��2�.5��xI_C�����Q`X��4 ���+4��iՌ2�� kfw��@�&T1�s԰ D�j�@�ե���;L`i=aդ��Cǜ�(�((0>�9��[�땉���@�d�xK��@PGN�<~v�R�@���Z+��f�_�	�%g�2nYUm�>q�88��� �S<a�Fx���§{��:^���g��c�k���X?��Z�JԯmS�m[��<�*n�t�&�n0�l��:]fЅ�֟p@A+�r�����ˏ��)�x���3���#+~�
��a�>,�j��)q�@Wm�ǈ���l|]�{CPn"�U	"I��;ygX6�2����O�d'g3ԍ�t�D]�z�S����P`��yòjv9B���e!Ҭh!�����Z������K�s�9�vӄ��@�U�.�*3�e^����K�c����fU}XN��R)+Ȏѐ`r�;l�ݢ�L��m�N�ZF��v���l�����;''&U59b�1���� �E�Y��Gs(g�߯�j,���ED<�ͫ�NU˵�Ry�;�#1���tQ(m�v-&���32:A}<�(VcvQ�[76�m'�;������|��ʰ+���]OQ-S�<C��goc�G�K�]�wZ!�n`�>�,Eê���8b����4lL6�c�-Kǰ�S��t�̧�R���`
#J�J���s�9<�����r�yņ�$�*tw�	|�_P�1d����!�V��ż� -����s�����D�#��G�ȇ���-���&O��q��Q5��e
>������ʚ=!θ$�Й=Pk6e˹O��C���L�����^�6��!^��ث��ʮ��x?&)�F&=i�����u��:@�۾{����*K-$�@��@�8X�ZL1i� '��7^��r>����h"H֭�@�ű��OA�s8օ��ly]@^�^��ٶ��"	k��X��ޛ$�nSId�y��lĨ��y��t$�i)I�*�I0q(�1�1.r�V`�\z��	�.�A�$�&���_X(͆c�}׉�J�=N��1��uf��x�G�ud�T)(��&��F*lz{B���d�U������R^7��v��>���ߡ�OpS��S�ů���?+H0�xJ.G�}v�ρ�|e�����a�8ψ<5'���k�+�Z|,7W<掹s��Ҥ�d,���ZKɲ5�sY�嗢��v�I��yê,��3�B��V�i�NC�#��?#�U�4�؋,��H����Y�Y9�݁2
�J��/;�vt:\h�<*�T�)>��6,g�xO}�+�9r�Q��Ȣ�2����M��	��P����ŪM�A�sϽ��5SRP:��C�K��&�T6���Q�H?����'�&Wj{&�	����[��J
��n��\�7I���L(Ad?cR���'KR��v�������-~d�6?!w�x7.%�R�[�
�CUsLS)�����Y�H_�?����SV�If<(vH-_��r6�3�G+���G�Ѐ��dX�ؔem��=�A-�_�Z*�%�����k�`I �~n��HC8���O������QK�����<1�bw��/)��	&�
c����}�N	��3G�#����5,oŭ.`�����t�g�g�h���(����FJDv������#����F��b��4���QZw��u1)���K���>�������ne��7�i7GϦM1lA�h]��m�?�	ˡ�t���!,޲ʏ�8��
0�1V�s
���~>�?ߟ������Y�f~�%��3�t8�0���]=��ޅ3+5;םs�1����~�3=���݈�o1<?x�XXVjiyX����ɘ�����I��W*$]-���Uz� |����q�̏+ �   �hZ�Yk�#ص����Mra�>,��ƺ�r������2�f���l`��۪{?_{
O���Vg�BV4bu�3nK|_��V��*~G!D�md�pj2��=��{&�x��p<�H0Y��`<Z�a�d�D��+��ƝN��?�Ɵ�����v:��\��"5��0�qb����ʑ�HJ"t@M��"��λ:��n9� �"�x�c��х�׈����t�㈠⇻<=���Ԛ��Z]�(�����[��'d��k�ΐq"أ8�ӵ�PXe���e]�u�L��
��#yQ`߯eN�:����ig?�	�p/����5�'mT�z`1�<�y���P�6�m��O�f��#m��fX�o�3#5{��m�?��8q�يq��~��!�^�mr�@]g���ׂ>�#�y�掹�̊/op�y��$}nּ&%}����T����89�{C<�ٹ鼃�=H���������L����k�N;���eG���:��C)���On�lT0(qDFg�;$��̈́b��0�< �����cꃯ]7_��"���z�i�����8��!>��˘����6�=^Hm���ɕU�vs�+@�R6#�P��$��W2U�w�A �w��� �ꄗ%�`6[�F
ߦ��M/=Br	`l���#-�v0�Y�ɖ���ӏ��r�J�u y\N�Tg��i��`�)1�� ����
8��.��;�!�9���M�yM�@�w[à׎:�ly���1�BWZ�I�(_2��šl
���UɤD��(pba�*���}��V�X����/'�2��VI9�#���4ֈ,�N y]NH9C6��s߅�bY���0��{���T���J�F�c�-ul�23�C9,�Dnrv�` lB�^۵)�GI;y��z���em�A&�0T�q�g�^�ᩌwg�/�H~1��n2�L����~�W֧?q`X189.�O{������?+vz6g5���یO���?"���=��Ytݰ�~��O���$d{�� ���һm>"�Ec�7�]�b>���0x��	(�#�@w�i��-���CR�[~	Ś%��:��<�K�y�}u�9&�-�����a_|��R�҂��4�N9a�>at���𽕧�)Eg���h��g.���[��!�&�UަL,�64�)�ߍ��$�%�Q�j2 1$%�&�'vɡ�jw�;-��ϯ��ֻ0B������Y�n�+�W\ ��e��Y�_�'��L(��u����.�f�& @Ĺ�R��LS&��+�\||�SD�.�02B�޸6,�& �M���G��Woa8���>���wd��2��o��D�u��צ�~�h�����F�����l��<Ô�6�_�|��KdȖ^�����(���1�G�ur�I�Yum�!R����Nt62tq�E���C(
X��ɝ��ܲ����m�Cp���S��^�e���Q&������{��iI�U������&<�%�f`����=��W�krR�8>j��{lS���u�C��C!.�V!Cj*���u�°�G�7�&�*�`� ���|��yl#wc�c� �Ҝ�%u	��K^�C��?��E�.��7%��im��6T�Ҽ钊+��R��6-�dx�WHF�G�%	���2�f!���gEX�Fq7�G@���D��yَ�ӛ����sL�/�a�'	`�-C)B�(9'T���VjR����Q�|����ד�f�/{�'R����%�V|����ORZr�]����*��,A+�s��+*��],w��������kC�U      �   "  x�e�Mn�0���Sp�
����!#	
D�H��9jgԪ�.���١�V��%'wñ&h����Tx=rR�B+��vZޔ:Qv����=�Z�$N��w��\�l�0
lK�5 ��ÖS!�&�!ٻgA-`�BW�CB�W����l������Qs���&g��n�P({��\ ��E��UFށ4�&���aQ�<�[��iI��P���?q2���A����oJ-�k�BL�����ȁO��@��1��@M`�g*7����O%�J���>ޕ൴�����|7!|} �7�mp      �      x�|�]��8��}�o�@vH��t)�]�l�^!K�{e����#@�i2;�����SH� ���Tc��p���~Z��C�sh���?�?�����3.M9����s���<��c�hA��p��˧���UJ���8��_�C����{,��5���������C�����\x�k�щ��t���Ё�;��@��1�ߦ�0���϶���c|��q>���-���?m�>��؞��v��%PA��۶=�}�?��vYL�����zۖ�0 ��2.���F,�u�O�������?�����kAu�����^����y,����+@?��:��hLFT�ۙj������P����r.F�"Y��k�7��y������5����ï��~|�dђ�j�hʁ��v�?X���.�
����z����-�̰!`��Ŀ�iz�����_��;���xޖo��U�X�~\M����4~�aXN?�ާ��@����ƙ>�ȃ��S>����Õ�+�5c,}�Cy��G��y��'�� m�Awh�����tY�S�G{k=`[�:���������m_�	���<9�&�#$����#��y���6�����Q ZZ>��Z�4Ԥ=�~���/���/߀h�����#���c�����X�]^�g|TD:,?6Y���(��q�W�O��~ifL��p��m�����A��u�u��,D���2�@��ş/��(��O�u���1x%?�h!%��6Q������r>F������}�=��e�=���?w�sT�G���C���~)x���^��ϭ�s�>����b�tC���iZ��g�?�Ȱ#ߌtA�y������oD����oM�NDE�zZ�������y=j�8 �O��o"���X?b^�y�"����P��^z���=����j�^��>��y�:f�~�*����)O�K��Jr[^M�@8�@��_?V.�z���e�p~?�^�С	d ���C8Q�	f��+8�T�נ�]#e\�˹��^k��ƚ�0�7��^���Q�MT�}���3@����g����!z��&T�����?ۜ6$��9����>����֬!0���f��h���Cu��5 cz0~��������_ ��Y�[ ���<@��{3A�{|������y<��2 /5�Q�~���ߟۺ^��;@�����8���&d,7^*dؽ�G\ai����"��0@f �Ҋ�$k6+#�)ЦB�x�z-�g��ϧq)0��3x���~?q��=���+8���|�$sx�, �ӽu��o0��6G��1��}���"o��:�@�3�o �Y�P}�N��Σ��ƞ*��S�;L�yۓ���v��T�h���S�U�<�����m�?5� ����'�"�9П����wʁ�)U`0w {��v)���i��F�@H鏕/SR������9JDݳ�_���d����.�x�9���޽J��h��&�����H@���ޏ%j��qh�;��˚��9ǾI�i�ő��������p�.�
P7xA��`��h��O�_�H^�&
���8��1~�k�Ͱ�3�E���P0�&�o���y�ٙ����v_�o�b����C�:��������l@F�4�\T�7��ܼ�ؼ�J�d@��%�A�_�)aCf���'Z062%$�'���=�X�ǶބSa�Xϱ�;E��<�g\D���eM���V��i�J8���q��1is��oy��/_���'��č������6KRz����1�(9���'�V{���p<��{��M#��� # )9���$l �%��ከ��P^�u%����_�~�D*iJfِd����o��q�7���g ,KJ��a����4����Q-��f�wͧ�`
�"z�#��F�g�#�M�4 ��������Y�_K�d�/�rt�6�/�� ���6��XAe�tXk��"E����CXm��>_���������V��G�p����]\x�����dU�p���܁8F:�@����F�h�*����}sk�����G:<�����0������+���8
�3N��کG(n[���biE����ӎ��{^���[�.l8�ʨ�W:ߏ��Ty��jv�O�u�Mp]�_X��9P�	+A,��2E)&����:P�p/����G����q9����8�.��>iv(8��C�ڐ -2?��U�"J� =��D��A]��!ޯ���I^�������+��nR&�E�-�
߄A�yZ��L�Tp��k��@���W��,�����\J}a�i����\��c-0�٧*������A�oH$�����q�c�'l������?~6�di~cX�����?c"��s�h�̗���Q�TJ�ݝ̾��������S{����0J#"N+G>�4����"J�&-��5��ë������I�6��+��d4�2��jE���&�En����q`�a��lhL���y$#�������p�1�ǆ���)VpJ��z���T+�S�Z���~�{�z���Nh�����0�񯣀��v~:)P�`I:�^��G��W���I�����3;�ǟ��c1�`�ˮE3���;�jx��
����Q@���&[� D��+<�7�u	 ��n�O�re���8|�T24��o��������`%'���O�/3�= "&��4�C�A�l;h�!c���	��i���zL� (�������A�*1,ʠҖdw��(�m���/mu���*�(������q.:��R�C�.x
�A��ڡ����"�1�'�kR��48M[�d����J���5cD�������[�!��5
�i�s^HA^��Z���+� -��mŮhN�xT��Y�-c��	����@[��1T>�*�'X�I�7s�|7ũ��*9~�%ᓺ����GXB9PΛ�b�d��r�1D�BZ	����hE�����^y d�*ިk�ъ�3~�b�t-ZǗ�X6�@���zW�^y��&C[�W)�r��T��������7�K	��������Q��yF�,cz0��m.�!~m�=�����	ѱ�=���ճ��;}�D�\ * ���s��=�k~+�9NskA	c�PzE��a1;Β�b~��Ӝ��9�'����xޢV͠�ڡ��A���g�l��������3E�K�x���<O��N���s��� tޱ�{,c4�ӆ�([1h���Y�)S����c��e���#x��0����������^�S� Z�r��8��Q@	;���i?�η��M����zS�i�Q���O㹠({X��c��Ldnx��a����`�1`1�hK ;'?�_���|�g���v��Y��|n�Y3�E�|�:%cz0�<o$�[�V2l f)1x��ɣ�m���?c�����?�y<�,,Hҏ�iפ|h�����֒�AH�|]��=KgC�ZY@$՗_w�ğ������]�	��QvOF��`he�U��t����8����u�N�d/�_#hF�1�WѶj��_~Q�Dz�r���(�|"ɠ�e�j`֋�q[�)�@�'��y����(y�ňI(J'T�u�(�N��l�$C{| �{��}4 �J��׫֔n@iJ�9�:Ș������涎��km�n�٣�C�H3���3��[�������/���^�i�r���k<n�,X	l'�rxz{����ZkPHe������/�O3n G��LK�1�}�*т�D�W1釞���IH�R�52H��pHNP��\���Oe�I��oj޵FB9P��`��D�$H��	H�GH��,1�UYB�zJ�qh�kK��F����\�p��=�î�UQ@z?>�����p� \��2��,��1u�<���IFG��:@�_�����P��i��	4 �ż�Y_��1N�HX����j��@X��LC( }ؤ|����aؐb%'��i�L	b���ۈ:!ZT׭: $��|�ǧ��}6J�m=4 ��8��cJu(J    {�v͕B- �����K!�)��Y(>T:A���xs����;��R�$�6�r�V�.XC�����ڱa�`%���!��.��Ӂ�.�6�m��;e�{�Ei5����z�~����څ��_�8O��Z@}��O�2
%�s?��)�������N��wƹ���5��N��:�@%�]����P<x��Ptފ��;m=�M��B'�����0-��^^�^�-��"���H<�(�
!����ޡ�2�(p�8�aA��C�[v��V{��K��;�&)�`nfT*��ښ*�����LӀ�����dQ�	&�%,=��UTKX	\�!Ȋ[	�'�4 txTd	c����Ҍb�~l�3&h�6�#�S�����9i����8�^qV���uW�⳶6��}IM�eڌ�5
 a�H�#���Wm��ܸ<�K�B��~[�Y=o(n%9{-��u�e m?gw��D����L�V�k��.�������M�oښ���Ƞʹ��6����]�
���=kmi ��r��,cR��k[�Y�u[�,MƉA��-%Ձ��)N���b�VH|�`����?�G�������ὸ��J´`tJ��m��(�h���+�����W�E�; �7BV	&��|��庽��t��zq� �y�Q�'�ho�;O���Ć����1��r ���5PM�.%l��ڰ�mьR��>8�K@�����Swc@��*�(z�{�sE�&J�E�� z�&�\8h��������O����] ��*����st";2�ES�F��1
��}�f�Ù���_j`S&��8m:nKf�D���>�١�
�N#�v=2���2�֛����p@��@9�ɝh'����IT'�7bz�
�Q�����^"�S����B�R7>�I�"��Đ�x���r�I�g�W�C��Hh�s�Z>�ʧ��U�c�(�����R�S��_7j��g	G�6e^p��%��߫}g�����2�=O�y��HذI%�b�_{���jM0�YN�i�A�M�w�aM��:~�m^ט�WW���S�D�=��s���@���)��(�H2]apWZS@u�f�1�9���<$���F��ҝQ��ˉ7?*O���P����y}��Gx]�h��`�cm���{�h{#���� [r�A�$� ��B?�Ӑ�rJ%Y 14�Z@����M�R~�B��ŷ���q���֚1 ��}�NpS��=����H�Ψ���V~{�t����sZ���]�H��/�pM���~��syܰ"Ơ��gJ���m�3��ؒm~�����ċ��M ۖӚb�"�%^��1 ��]$\�!e��Ƨ$���iY�#*Ĳ�>�L�h�t�����f@O%���'l+cY�q�iь�Q��R���
��B�ͺ+��1`l(�0>k�E��3�Bz����
ҁ��5]RH�4�����-������L��i�@ GQ+�#�R���h[«��s߮��N�F�}I���ɨ�c
�J����'�19[�q��`�~�0�,(�P%怅s��3��s|��>�6�XɅ�P-���J�B[�)��F-�Ղr|�����
�W���a��w7^�� >����G�2ʀ���\�c� ?�M��"��q`�ȔP�G�1�q�3O�-L�$�����)3��<�WܿKqTW!x/�*ӂ��I��\}%�-S��3J�:����=$��1�J?��_mC������3a,���d~�{�RF:���8�Bu�(ػޒL���B���LL������=H*�7}�⬶=���Z�B�p��9k		�߂p�#kK���<���\F��<+b���ӆ�\���l�R~&�q�80�1��{1)#b�]�bm��<���X�_",�U�P3��R"|>�;�'o��Hc�Z>f����3��C[�4��� ����r���C��}�'���$K�����鱯�	� �_��0Q�#;=��8a nv��y�^�ĵl9��������!R�{�O�(�8�_����������s�)`~���9M�i?w���&oZ���f����c;A,:��7�RƁ��i�$�:P]��6������͵�0�U<U����R��[\�r���:�<�^6��W��E�VNpx%��a
X�L��{ns��(��s/��d�	55sր�t���*�d�B�̺�I�qQ-��Z>��`_Z?V�w�s����{����ǅ�SA� ��;��6��^�<S&��K��E; 䇗H��N�y��4(P=��YKB̚���L�XN����,o�-E�+a����q@��r���v7HL�ñ7ڡ�S�7C)~���8��s�&�v������{���j���&�0:K�����B�7	�u׶)#2W!��/"�s!������,8߿��vv���U�R(:�C�C�Qϧ`�Nv�z�ȕ+���� ����\p.0�e�勎��%�����^�DˌR��7�~8J]�%�@Ki�P����a@�2�V�c)c�p��'n�g�đ�m,��I�3�a��\cDδ�G�O��E����t�*Z
S�[���$ѫ�Q`�v|_�q�<PDM�8�T�5c���<���*�D���P܉�.��B[V{LTz�-�G���/>M���A���߾��hS�b�*^�zE~P�Ȁf�#�]fN
����$UP���2-N:������s{N�����=�R8�����c;{Ϩ ,� X��!Ȑf�f�ȹe��Mw�ǲ;���۠�!��
M&�vƌ͔2(�s�j}�<ʴ`�(�/WZ()����������ڍ�]3ʀ#��6c���ɿ�
F�5�~C]�^�aΏf����X|V>�<�y`s���q�A�X��*�����ߴ����&y���8����y[�Ji�!Ƅ�`��^�T1��B��Z�I�Y`&�JN$�5�����?�Va���d;0�5qy�@���;ʘ����5�"�BV��Tr-(Z-��;��	�+ƈ�E?ҜAK�۲wY@����`1!�)I��3�:q:��,�e�IC��/p�3�B����	 �@^��<��^�5�@�=|���ޙ�ΗQ,�+�ZP:�JL#�xM>=a4r%�(s��������, ��B� �3JD�xI|Mo!BL۵��@p�4�����SI ��9��R
C#X��\�W%P�o� �@��Y��E�@�˂#b�Pvn��S��� �i�����B���u���k�ʐ�"�>�-�(6]�@yΏ��'>'o����ȹ�t����ʇe�������3�4(��~��X��⦟[���w�$�DДK�f�;�C�I;������L���:|ՙ����̄���C5!Z\l�k�A
�ۡ�Ҡ��,KS�8w1�N��ȱ������+2������Iw��ʓ ��$��4��GM���ZC�n�4�y��'����֯����t8N1�ef� ��W��@�)~Y6>�[R"q+Q��e���K4�6^���&W�}B��i9� =�p|���
L�����d�j@����ea2�ȧ/�$�8��.�
,H�#O#%��	*�P}FE��, ^���\iȁ��8�A�!�	���eH����D%����0�+�n�8 %ӂ�yKe��ČQ�%�*X�Iq�A��WZ�4_d��a=��0L�r�Zu�u��~�˨���/� ���g�ѐ�2(�P%:�+��0Bq�Sl�����)�'��� �Õ��)  ��.e�4��  �U��v*ߴ���15(�z@�y�� ���N/�짐���Lc���X�;����%:��N���6�@e}���V"��:����ƅJ(���a�������^gl��ec��x�潾ƣ�g,����ey���".��~���
i�A�Rqil��`�5]�V�U����J�>3g/e5��.nߊ=x���7���r>V�����WFI8 ��cL�I���_�Cz8���    ��DJX7�!��z�ћ"�i83�,������/�!�����[8+&��4(��IZ�<+,C�pi]�`/#}D�����D��`��`�Mu��zq�IR3��h���C6i$ʗ�>�O�}�.f$�4��>���T�6�Z�pH8�/����aQ�!k�-@��X�$��ݰM�Uc}�+�ՃpB�H��=�TW?߫O�¡��,��
Jֹ�r��G�������ʧ�#_��*P�L�k|��0 ��ĺL�җP�ʊ{A��Pn�꽲W�t`,�w��U{�`Ǳ�)1���`~�L߈�������Ԓp�Vj5�p,u.�l߳L�� t~�.�D�t����'R;�w�F��;S��Oш��7/��_�7-��xǥ��{�'o4 �H9ݷ��)�F)�9�{����Gl���M������4���|���C*�F7�MU(
�s��*c�>9�I�>� *st���H����9�?�O`���;ψ����,��RH�\� �I����*�C"_���L�����U`9�+{��A�p��H��Z���A"�A��5��Ab�z�ԄRP��d�u��4ǚ�Q��`]�UE :�+J�=C�����AߢŒ0
D�6�}|�?��^���s����ɓv�
��8vGQ�8 =���m�!͇bO�$�h�F�k����ٿ����Tr}�_���Z�C��j�%� �%d`I��¥{����jz�l�!T�~T�b��F���?�Zb�xc�r�T$FI0YC!�x�fP���;;|����Ń��ǉeB��W,����þQ��1b�O��	����o�.Q��Ћ���4Ӹn�(��|��CO�!�ܿ��"�@��*D%^"gy<(Wd��C_FW����?K�D.�X��Q������(\����=�3=���]�OI�R�C��"����r�����)т�3F�	�3sي� (�y���> ך����������_� O��W�B@����p7P��ϻ�RU
��c��m?��R�ݞi%/%˳�L��\�RٔƷ���BQֽ7�~�KH��{����+E��ɢ�l��$<B����ў~U��鷴&U���H��!�M4 "�IRAR����*O��y��F��ޝH!�B	
��ڵ	��pX<U;�z�cF�t.�� �`�,ȚK	���+�q��P�#e�R�A�'�䶦� ��[���8����P��O/���X�#��Vӣ�#*:��%�1����ƀ��l���MND)��G*��T� �*�TG9[�舦� �g3U4�g�4_8A���&��QQ���u�B�&@�s�&t�Q�4e��������*)�E��n���N�|-�C�گ���3��x���*H��`�Ұ��$Zw��i��A��1.���8����$�kq�=T!��o�DMɃ��:��MH��y� ���'Q�9eA�+��&�� @�\�j%�^@�u�Q��������3�����V�8 �Þ�y�V���E~f�W�Ec��.�b����{VND�k�f�g{�bWQ�&�6�#"s2�_�?��y�H1�q`��P��|�j���˰��u�_�|^Dt�՟�Ϡ�J��q�GA���7b9����ր�]�BW</�(�P%f�q��$����9��O�������aUϑHv�k�6�鹦8rw3Ȉ�C�Ȟ����<��Vk�G���7� �k���xh=�4��U�!�(
���m<��)�=a-���-P���j�0�s�Cs�@�'��tN�M)���	79� ��'���T�j�-zA�E�̖�A'���-c�DJ� ���'p3�+@��7�?��/D�@�ڡ�rx\G�m�J;�^���(�ܘ��7�ք@R���f�k����Dδ`T���  �˩�(�ڤ�2r�f�j���@ i>�8O��t�N�� �p��:ZK��[��7���L�%R��8���GtH�q�0֣SZ�]>�O����^�X���\�f\	*�G�dGpsR�t�.��'� :��-�#
���gW-�ԑ�KªmA哆]�u�n۹��]�>mp�ފW�s���:ov(�R�X���|���R[��m�Y�5�.�؋�C�)�m��Qi4�u���"͡,�f�uVpq�%/�&e������Mڊ�R9��	Ї��,��Z{|ϧw�$�xBF�h��1.f;�@ 
D�s��k������X���Xi��9�͉��2�i��?2��Ёr!�.���G��}�4 �!���ՠ�����>lzN%��}�W��s>]�2��)5VZ�48�G�_�)d�}a���M�u
Y@_�d_�f��x]�P>�y�㺅M�/X�!�d��X�aOj��X3W1�b�/�R�=�3m��[-~��|^k�6c�( ����MB��8�+S���#��-��c�X T_�ԍ��d�|:�7��C�BG�J�Zޥ�+��і9p��s��ic�R�'�Ȥ&P޲���V[�nX|\IL��i�ZR���e�2O�I�?V�*�)g��Z�h�������C7���94F����E_J/�]�A�]-�b	Y¤��*�����/j@ct����*<ަ�6����D�_>wD�خ2�E�m���
�v��A�f��
�-��~�Ѩ=ׂ��~���)��9&��3=�F4����!�/0�%��t��>vR..�6b��ySk5�T��H)D���JH����㖏Py9��JKc !�({8�CB�aAH��I��0��{�+��(�v��r��y��ˋ�
�����}��{���#@���*tc���drϻ=���?�`r<�T�b�
9�A�Pa��;�(GW�-�� ���W��1V��׎�	5||��Ic�v���N��!'w^'�3zi_����;�}(�1�H�^᮷r#�"��5�UW��_��ޒ[JD�p�{ك�9&�jS�TlZ��n � 	6�m�j����l�n\����PI�r�
rڨ�V�%T��B��Z��!��&F}J�xm)��(�B] ["Q�a�e��\�@�|������25�|�L�d�I�(l�v\�A�T����NQҴ�*/$2�Pt(��{s]X&h����RI��,����y���H���y%��Mէj4��<z��V�:+�I�`�ĕ8e����b9�/����7������G[�{� ��T�e����ޱ!Z�C�T�����`�	&�0�ԋ:�$Z��-��ʔh���ޘ�#Mycd8K�za_���5��:@-m@�Q>�9�:��=h�<�l�O�R!�t��sW�;�6#L��~��;X8@Â�)@����w�o��Mq�2��h�(9΄�'����_��~`�?��B:�KF�a;��1�у�4��Ǳs ����r��	�6�L�U�\����$ǿ�4)y~��)!�P�1^3�Q2�,A��ͣݷ�1�%X�s�Z�A�B %$c��`��u$'B�K��t��s+w�i�D��6�Ҁ%�-o��dJP1�i+�)�&d�й��_{�������
�Μ�RO������t��*�_�S	V�:p�.�ǒ�AP�e��{�Vn��N¼����%�qfL�;|�v��Oʧ���t mP��%+�ީ���z���c�ti��/HD߄0|2�2ʁ2{}�/�����᤭��$׷)��eA�ؑN��km�{�YLUt��~M|f?�i}��{����8�|V�D7r�4���Z":f�+�������"�r��+�I��W�y2^Ӧ,(u���>�@x��2_^�S�c�gP(Է�y�eCo���k�!��s{����&��V&u""�UH��X�A޾�������8Ü���m�T�C��V���!�����O�����h"�O̩���+�СY.{���V(9�7أA�4X�8 �=g���/���v��bG�����6�F�(�l���]���op�z��7�2Ơ��=�����V��!A�x��o�c�=��B~d�y�r�ӳ^����\������N����g��֩    �u�}�)F�s�{BqB����V!TBAJ�h d�ϣ^�� ����3V ����q�*�(�bk���P�ro�\���4Ճ��B1Βc0�ܸ�����r.�Ǌ�t����'�[䐈���E�gy��9��ы��c3)c�L'wL� h����C*B|a�k��u�ڃĦ�������
9�4��ǘ#C�
RaZ0|q�̵� {�%X���礟�WB�=V����n)��EJ7���m
��%�+=�Ǿ�:�&G��/�Ɨ��S�1�6�P�Ő|�h���x��Ǝ���B��v�d�"g[�l��� M1�=�T��ΐ�&��Ͼ�@��NoQY+Pt���}!�Z���W�'K��B>t戂~���?|2қ;�4˺����U���$g��h��'=~BA����?k��(gz�|���_�R}���ѭtQ/{�/N�� b��t}6@��R��8�h<���bX����c��\�U���u���{;����(������_��k����hh��Kk(�S%��	����_D���v����������a��Bvb�-g���_T�T�D|����-.�{*��β
1I�+�^�_*N�L%(�tQQR�d`�d�#A2L�����G�0�R���~f�=��o5)� �S!���T���&��1�����wH/���Xtf�[7s�krT�	�FV�%ف�,�#��3�_?����s���~�/6��gy�KٜA�h
R}����i�TΣ��A�!��}_��<W��(�G.C����{���RhG�;
C_f
8y�9l�p��H�?�R���>���o`\^�����k�V�U�C� ��E���/ˑ���օJsP]|����Ԓm�b/w^�Z��q�2oҶ�����/k���V�Rڸph��x���f��Y�0l]�:|�d��`
���gv u�Ǔ3=s�.��E )��]��;�L	�`��&�[9����K���%&�S����Q��X4�Z��q�@p�E���0jS���d�u��9`t�t��s�Ê���`Х�Rp�iQj�B�c��&��qț��
�5Q�C��I�+W��	V�826�ښc�M�
g��{sO�HFYP�NU���������Q��&;��&�̥�s��� q=8�š��g���������F�"�M08ܤD8�
��lvx��R����7�b�!���$��������&�6�p�s�8���c�n>�s�
s��Lh��8ߜ�G�.}����JJ{p>��旜�]݃V��U�2�w�py��ZL!q�9[�����~j.�Zp6�*�H׶.0xSB��x��ge�F���"����$���c�`�8����~j�F����{ȍL�^	9��%��������!�~�������s�/#+�t�%�Ҫ1_�B���٦����r���a����ީ
f��� ץڔc�T����.u4^2J:���eF U�R44��x�m�����vP��w)�`I� �X�g��6aKW�ٯ��L�%T�`�d��}���`IJ'���J�@��%����e�) t�%ު�A
�@��퍦�[��MB��@I2�ty�&hxߡ�琢4�����h����3>'�1�#e��Į%с7��s��`(G�(� 9���ʗ�����D��@z�;K�-%AS�mW����4�X��o�X�J��ϴg��d���t 9/�7�2�荳I��!"sŧ18�����[�.vD�ے.q�[�^��+��yJ�XU�Qh�-�qArqNiP\��L�d	@>�>�S΂���C��/Lz�r&ê�GUC�#m�h�9��V�ڃ�`=0.���!oJ�ɺ��N]��jM����iz[ƴ`� ��VkF�C�%����Ot�e���5�HIu�JL|e�Y}��-	\������E����r����j���~♚����q��]y'w��)����|4��˯	o����
�l�SC�)����y˃��z�|a
��Z{3��9������ J�|%eA9�v�ͥ�r��J��-Z��;�D�=ܷ��r�*P�̸�z�1���%!���P�6�����/�������sF׸HhV���1��N�\7�E���,�BY���� [:�1J��/��|��ʹ�%Ձ"��<��Ճ���g��5��4��2.eS}�N�*[�[@�j��T{�<�Z����a6d<�"v#rZ_�XO(J�A���A�&��V��px��7�c���@�D}�����_���XrA+�>4 H�t�k���铚m9%<�K�$����_�bk�;�%ƀ�X��ԓ��r"dNB�����8�RΡ=�|�*\r8�
����tJ��_��$�t95�r�%&i�$U�Sk�7W�#(�YW-��M�����Z'(����F��N9�&��8"�U�FXa�x%�f:�t7	�%|ĵ(�:`�����j[= o��������� .��h�ס�k�Jj 笄D���t������M�fi�G�;b5��p}�p�l�1.�, }�/�w	8 t��]��LF�>��9كt��_� ����'D�d5G�8>+T���R-�LR��*�m]��.��� )il	!�2Bq}�_�Z[m��M�_�����P	���@����/�Fat�H�+� ����z鱷�����S�E{V��BfL�/#�VG�(0�d��aUe�B��3����kΌ�ZY��$���Y@�c����׏���p6��4ց���}�Ψ���x|��̔1�P�*�h�T�JjzW�>�>�(`�Ὗe�IQ����͠(s:���D��AQ�tiM�g
Aޜ7�ڇKʈ�����弍�����X̫o��m���u�Q��{TF	gp\�m��҇)|���䠈��i�̬���`	7��K���h�g��)S�o�<�Ea�}��H$��YE���־N�S��e,�K�$�R�È�*'J�(F��|>O%�A�:X95�Cu�q��Q������ƅ�NKBD�M�>d��(Ni+;�Wl#�� ��U��j#��)�8�֫�q)����"Y�9â6��H�S�#�a��ܿq-3�o��&��]�t�d����̕v�^9J��P��r�9уp�F�
�%4�����F��H)��;�&����T^�)�iQ-(
[Do.g��k9��<=%h��(]���*�e@�p��҈�����P��6}*����@9�p̡���������zPl�}p~/�@��-%!i8����S\�2���O�{y�3=�0�z+�Z�E�snj�3b�Ө�7��T�~*ī�i�l�C��~�����Q<�[���Tʅ4'q�3f �}�˲�.�[YqH��ο�K	߯l�@B�Ad��s>GJ��w�(�!J�
$tc� ��K�� (J��:|V������2=���]��(oB$s���r���k�#��i\��^�ZP�$E���(���)/Z>���g�|� d�0.dh��xʠ l��,T��K��.%3ZqF����Dw:U�׃�J̙_7�V]F�L�ϭ�N���gigL�otz���|)�E����"U(��I�-��tp��� Q�|���-Do�"@�y�	#�pFr;fd���^��g�N����B�1~~����@ZڝF#)1� q�C$�t�\��R>H� �����l��l��>��m&�q�4
N%�l©��c9f�9���ZNEi��z��9�� �ɜ+@����ȉ�aW��=.��Oɚ�9�M���OɴI��nX��d(���)�D���Q�����Ak��g�~%(�8�i)_�s����>)����Μ
��s�m^ӑ�+ܤ��i�T�Ć>��T}S�ÑKQ6�S�4�?MkqF:���!=���m[�")wH����@��ҭib{�F��ǅ.��^>�ˏ��~V>E���l1���!m6��:4��s?�1�"g;�t�A�G���T�7{��x{��_    �ƒ�M;���PM�[)e���>*т��fǟ���o���>isW?g4��ި�1��Y7�r�"��\�#�6=O5ցe�i���a s5n��;��%�t(�4���꾝+X�tM�B��:CW�]�#'hw�s��ħ�P �a�j�#��O
��n:�o���;eW�K�	7Y��Y��6l=nK逰�>���9�����@�BGA��UBI�#�Vf�#"j E���k�}�r�l~s��͆��x�+`JT9aَ��'\���Yp]pz�p{PI�D�P�")Ӂ���>�SBV^�\$�?R����p;�� �%�"	24@�8ي�-EZ t�ŏc�H/YV��?UH�C�u$� {X��t.	�Qݹ=��2"s)��ߙ`�6�2�Ň�E��B��@4�5��;�96 3�����\� p�퇒�GI��1�%��nG���&����T.F�O��@��.Q�0xU���,�(����b{�~~�Ot@Õ���P�ғm9��+ަ�X�� h��1[��m ���Ӿ��T#���g\�Ƶ�ґ��� �X7��R2�l�).
)c������H<܆<��k;�\�Cr�K)���A뒮�pJ,�����{`�T��j���Q"���O;ѬIzI)4�������M�w���dn��y���aF��t�X��dՔ���b�u�Z\R�_摓=^��œ�93���N�,FX62*����l���*��C- W,��9� �h�dD�3|�� MRqZN���-���,���
7'�Zj<R*H�v��6�/�3�����P0OJ�f~I�yF�tPp8ޚC- ��;ܲ��( =���B�9����Ɛ\���!����6�̿`d��8S��A�#oY�/��`K����dE��R���x���Ri�E����G��J#6Z��[ѧT��a�R�g�t�-��rF��R�$��y{��L%����d+G,d��k�t��b���L��u�5��x�x<�E8���9����J)Qǽ�ආ��n��v�R��b�Q_����Gof<��>�RX���4W�3x�P�����- �Y���q`,'l5txsxm+��o$2�CC���Ұt�ft�'n�)��������P�@O��s>�ZP\:���e#UB���#9c�����$'Rrʂ"�|��3E-�1կ�nx�^�Y�b(���2�z V���97�����X0}���+_��_���?0���s��ߒQ`BI�U޲E��ܼ����7}~�+<\�**-�z�_P��xxJXd��S��G�#R�W�W����O��(B�hDN��$�J̝��^$������9q�h;�`[���u�I�#sH:k _j\��%��_�R��W��Z+�Mq��V�m��H�6�CST<b�Ra,��wɾ�����ϸ�P��3�ic���fD�pQ�5��4�}Go�3r(t���O[
��iG���?rH�#�9d �+�5�~il�Yp<�QaJz?#H>!�e�t@B,r���������]I4�E<�Z}�$��[��I�m�rG����SD�zG�M�#��|0�3� a{a����`B��#u��{ݿw�;0�n)g��}J��)�ʦ��HN"4T(h�-��ǯT�C3��������o�o��|G��������gs�xՂ�O��R��(Xw���*���~m?�J�o>r�o����u;��=r6�=���/�v�4�oӷ[��J��C�J�dqR��r�;x�.$J��7�zp:�*� � �Y0p��u��9Ղ���ʷ���b�jC�\ɋ��������-�p{�f�����rC�e�!���/z>h�Q|��q���s)ez0:$��[[8���ܲ�a�p)k\{�5��S=P��KHr(��.��=�2�.U�%���D��f��y�
L3ů&ʌ�K>}���TŦ�E{dh,Ia�sh�+�PX�����x>�m�x4��<�Nh����R�A3����ʷ�-�p�}I��A0���*���XI�n���O�)��M)�J&��H��jKQ�:R%���oU>�m��<6Q�Tal'���E��d��8�񼝦�Q`��g�Fq�sL㡴�lsͨs"w-��2N�t��zR�N���NoyX%��P��;��3�DE��[�Q=އ;fK�����Dc~)%n6��m������^�-�"
��p�h����4�ϐ�:/J���G���:O��Q�3�:1aMs��n���U�Dc%czѬ$��u�՝���pdi�^���2,�܄995��v@ε�:)������V~�r�+�4�!�*��*��	=w+&T�+X���ȩ��cpR�)g��~�y9�.�?�o�A:��.4� �KL.��q�������>4��O�dN�B�VH� �S��x�!�#W��c���`:M�L2�W���XL��_����
�t�҈4���������X��|�9��W>�oP+��t>���I9�KN�%�1e�^��������-���ɥ��
�.eT��t��w��gyj0�lC�t	���ɷ���N)馾�	w�R1Nd/�܀M�g���=y'�E���mT�T"��%�!/s)��A�p��k�[�+��;�R6�40:�<_�s�5(ʥ��ŕ�,���ܸ\l�����N*��,:����-@)%�"���t����d�����	��x�̚5�K����^%��iT�ϼ����q�#�JD9Ѧw B<��h�J������~������m��(9k���/�����S�(D-�^��IǤ�M��[*�HV��@���x%{z����n j>�V��nAPi���bXQ���D�>��>C!�L��6 zT�N�c�Qt�B+����K�Dq����_+m����a��y�b	ū
�4��^#)������N&�3�O:S�F#���Z�Z���0�`.��S��&er΁�7O��v������	.h�yݯ!ι�|i��W{�m ���XڹP����%�*,�=g�c�'륕�8y:�~J4"I���GJYP�Mm%�o��_{b�O���JRʅ)r�x9rѫC������g���Y[�CP��7gZ0LRx��}eX����a*��8������4�����9��}�oȱX؉|]q5Ǣ�I<O��5B�Kp]ʕ`p�{I��l{�����Մ��H{ϟ�|�M�8���(�����>��҆�7���Wa�-���9��0���p���a��H�O�!#-g�#���7o�]�^�\z��tD�x��Kl,ĩ,)p�CY����Oq�)��7�[ʴ�r����	�\G�مḯg)&=`�Y�5�1k�4Gѓ���j��nA[���-N�tF�:4����I�(�n��s�={0�%�j�6 s���q��;(�7��S݀`�R�ٵ@c�|gC��|��6#��E���Eo�S`��d���Jn�:Q����k���W-Ρ1ή;��M�� i���?K*����ʕ�92 ��Y��;4�����q�������I��և�EGYq��<ڟ�Y�Qe/��҉.�	�}*a���/1i(�,8�r���u;R���wu�iy�~&2�G���ƪ z��;<�K\�׽���>�JN|o��� 1�7���J5����
��t`*�Ƴ���ϒ�3�sj���w���Z�Z<����BA�d���I�i���b�8^R�EI�ޮ��_��#t��L鳎�EG�L�F���t��ښ4(t�
�'�v��I��v��D�}/�����2�q�����%��蔳�(�$:�E9���/E: ��4�9Ez ֯���Vg� ƅ�Z!�t����
�b��C�`�M��A|�6ffۣ)�粞�Ţ֢צ\� 9d:oRN%� }Ȕm�t��:�eQ=��r�63 ҹ{�B&�O&1$+b0�lV���;��a"��w�Ot�[2���T�(�t���ſ�X3�2y~BN9<�M1�,)сPi�}��`l�`��0�P�D�u�=*��    �B�!@�[R)Ղ�D���Ҏ�W�&�r"W�՚%EΕ��B�j�Q�*��Mp�IsN:��}�sb�r�D�����SA� �O1I<c0�n��1q��p}�����d�fx���I�z�(0|ّ��˱�5h�ʰ��z��O�e�!V������̆^Q�ų-�9|K$E�D�.�J��U�qͭLnsK�b��Ǖ�96 ���޹yN��`SƊo����u��O�a-0�v�.�w�ˢ|�%f���>�߱�iNI/�&�����she���������sDq��#δ�M8����G�L�`P�AR�@����P�S��PӍo����O�±��{y].%� �7&yKm����S5Ho�oW�5�#���B����YKs�o��s��艐ɳk�BO���f�f�t)�x6 G��PX^tA:u�kV��7���w�Mvq�Rh�j��Rh����� Hs�=B�QQ�������:y�}�G�r���k�ɰ�W?�:$]�[�^[���G���Z�t�� �n��X�^��x���\E�ܫ)��W�2�_��)c�'�;�`�>����ǵ�9� s��V!:IVEII��4L��v}�%7?���دW�/0q���|��^θ�	���ʛa
|[��ķV�S&G�aD�3�ĕ4�,(������s�H�P��������W���/�)��`�o��Iptt��g�¶Z�zL<kEQ��,Z�c�(�Zp*�3g�Ko�MW��V�3�ҘC���O�0�[d� L���>��B����|Aa��Dv u����h���_׋�?��쾧�8�J�?�
,�&��VR���U�S��W�����r���k� ޷���;����,����rMU]D	:�x[kz�%�>�X���S2Hz�<�nb��	�ޝ"f C^��9�A���M��o�W���o*?j�#n�=~�H9����%���)��Y�隺�h r>�W��&Vk��!��U;�!��y<y� �cMGPH*�^:O?͏��>�Ѐ�I{Lpʇ&Բ''�N$��қ�|hB5��U@���ǫ�9�r�h3�B�HT�c-ϭBZ�-�5���4���Ǵ�p�/�A���$�2�]��&�m���P�tċ��L%6 �ak�5�����w��k�:*�K/e-L�h|'��s�sʠ!w�����
c�Px���Rn%�@��z>ߪ/�s�� U(�u���sR�0�dU�w"r�!?��4H!{�k�H�ǟ�sH��$��� ��ׇR� �)Gȏ�d���7�\t �%A�(�� Q&H��po��jo6 5_h�����η`<������`�>��+�g�kz�	���>*$�d�{���t��3P��PB�n�]��?�EB���C=����i4�P(ǵ�H��>�ߏ�����d��|����������ឤ������~�
�Pg�T ۜ���.�a߇bk1?=�8�r��!�2��R��l��︧�dX�&X�����F	�ՀD
 ;N'�F�n�Z��}���i�r��Na�K�N�І��v��@JU�(��F(�H� �oFZG�� N��3���S/켛�0���K�Eu�W��S�=�;��K��钤)*��=~`j?(yQX��AeD�D��j����6���p-8A��TB
��.�=W���
+�ԅ���Q�P9f`Dz��ԏ������Pb���j��ϢcL����H'���$�D{�~�MTzi=�8ἕ� X��Hn��0� �	V�Zp|f:-M�s
�(V�Y�ڜ��XI��6a���*��d�����7�6�!��O�²�4�t��ݭd8�mH��H���� ��OeR�͐����)��Q������~�8�H�ʩU�SssH���r��fFiP�����V���%���PXԌ&Ƃ��T �l}����
فl3�{����@"a�`W��+Y�%Ӏ�;U�D�᪌�c[!���"H�|C�����9�q|n���2Bqz��d�����r��͝���pTn���z����A�����+�d�p��h򐾧����Ԝ5�ɒS��@�<�*�(@]���o�B�y���m����wT��	�Rd.(Ė3	�?�ϩҐ�����U%���x˜�.��Z+� ��e��&�a�\)?V'�|��K���he?�|9� 9����%���ܸ�5��(��NU$�GRpz�u�D<f\ms���a��47��f�艌�A�=q�f� ���6٤��U�_��B� �
�g�m���=����9�AQ�c=U� qe0����؎ (?�CP���AsgT�۩
��#K�'5)3n ��3�!��y���z����{����/9��!�o4,��~C�
+�.���JD��i�Ԍ��!�h�z(�l�5ڷs����/�p�m�u�
�}�ܖ�'�c=0-���_N���������w2����ɯ����D�Z����D��f4�Y^�/ץ�`}�_Z4w�X0R�by�%� �p�u�Y҇�e�P��?�c����?%"�ox-�ˈ��M�j@d�ۋ���D�@
��������>�40�$��K[���b�L԰�bq�d��pH��$��9�#a�5ԃ��v�ľɠD���$..�8o�S�lrF��p�H��ö������#�>�T"�=�oP���C2��(�#C����9&����K+B: \k�712��#T�P�W}��S6���R�������3��[y'�Y�pe[�*��WL��[�9��(vG��i���D�o�ͬ�J�A�:\6�5 0:����,7@e@���L��]�!s#�Q�|�;�%��	ޮ,�U|TݰӲ&�`
��W 9�Y�����h�0��K��̪�K�ߤs��@XEC��)���)�^��t�	U��)DL�v�H����@�|c]:D�1x�=R&��)��#-R�rA|N(�V>F����5~w��9���D�LS�ra�!kN�L.s��<Q"f���c,�).�w��%Ӄ���$(\�E}rr I볷�ĝ� � ���+�g�L���K�w���ٲ-i?JC �i��R�g\ܓ3Q��ۇX���$��6���/W��l#	#¦�\
JF��x����lQ�z�`�t�Xiȵ@z�H����4���@���E��s���ByS�@u�<_e��T�s`��􌟕 ���'
s������N�ߓ�;7����������*�Ե�h�_^�sH
U2��\ �)r�8`� �>N�W!�ND�5��u�jD9PRb|�ۦs*Ȼ��(N�+N{��r�vA�t����8"����n �x���9�7�h�j��*#Z]E�����9�ȥ�� �M#�_�W%���_%d �*)����WA�H���U�ĈY������R���.��"2��*�G�n_i����<U�o�-(�hG�����s���I�%��nd���5|1��Y�A2X@�C�x�)���m%��LCĦn��wؐC��E����p��by�M`�m���B�I[%&c���$����G�����  ��n���]M��;#.aD�������m9�O��n:̑.��'�nDy,C��>(���W<G)�H� q@J���[���|�(0|�9�9�������1G��c�3_A���H����u[k%a:0Tiy� $��)
-����B��_�(ՠ?��<�sp�PՂ��n��|�E����3�W1&�+5���H!a	{%(�s_�jZNp�>{�L(�pt4lpfV�8��]沎�ZSP�\���@	�M@��g�c��:�o[�Vt�V���6?��X�Vh����ViH�Z�,a@���DT�����):�?x��z�w��b�eeϊˡ�]�W�Y:���[�?a�[Ɏ��^�-l`��"W�!���FN�2G���ʳ���;(�PAz&�
���I#���D����b?Oi��=B�"Ǐb�#�ֈ�m�s�    8�~N����:L�E�9 �����U�ӟ;*�����H�vb�0\�cd�=QC	5��D���( ��%�D7�?�?8H��� �W��m^q�������������CR6���
�k����4�}�T��F�"7W�G���e����t���UذO��zA#E�r��鏕�㰦��c���b�]���U�Si8����2�B55��~��놉B�S�G�1��`Q0�"to	�{��)�O��L����{�*��<̗7J�+��"\O}�Ue���//?UP�l����uF����k�����}x�}˷_���(&��>L��(H��*�>3�����v�����*B7t�����s��E�s9A{��nAH�R��L:��Aw��^gL#���>)�o��:�~�Ϗ��Ӌ,C4��s����ëe�0�P~�˂HZ�&�̛����=ol��i������އ�9:����M�����	Qop42#���W ��c_U�;j��t��b��Xgb_�C	��5O��	�Û�����k�	M1N��R�NCy�3�\��z4P��?���`��x�:��W!#��C�ǯ���ojk��U���P���ᧅ�@Iue�$X���eqƲ`�ȩ��*jL�&����a���q�mD��݆3쐓H�M�ӄ�L,��ᶌ ���t��[4���Q'(
�����ť�Pd��sB� M1����4&����\-����""]h��>�V^r}ȍ��$��~^|�%��E����~H?�������1A3���P(�,z�<[$
B�iNI�����oWKio= �MڏUN6�@��|xyrLj83c*��Cʱ�~1�/m���j����:���z����}6{y�܎K�G�8Tu�q)�;}R�rfP�1%GW(��cR��>��]ϥwdʽ��[���a��E�F���N�	%��~;�
�������U�H7@��*6�2Gᕝ�26}��4���*�v��֋�����-�
|�t(+��R��_.{�!*C��Aq@�W���F�^ʫ"x���3�0��|�yQ�c�*����7���;��4)>�y
�չ
ސ*���P�n��mL�.[�R�t�Kk��T�褞)��_Xau�vbȟN|��.����jR;�[��X��ѫ��Eش�90u�Ȇw�#l��V�7�R~F�6R?���%i�o6B�����!�	h�G���o�L�����@,������?F��E��Q�w�g��@�f�M���k��7��p��g��X|�6R����*=�
�5�د	[�iH8rf�Q )��jG���R��xVܻ'f���"�6IY���{����G8��)�2��h}�����($9޿�o��������r�׳�u��hj�yy��'��!p��~!܉���g+��K#����w=��zG,oκzy�|���ZB�!Α}�g����(`�q�"�]�م��R���~=v�OLU���R��#���19����;���8��<]�dD�A,��/�r;�"AI�9x��@����	Zʜm���k�F�����<��}����g"6!"�#5��p{�Y�#�R?�ȡ�P�p㧌�	��β��0Õ��2U�y�U�^J��"��{r�,��}eփ,�
EGw�S�"E�fMw��5��p�
Ƿ+��|8�&��)�ɣe��^M{.G=�J�Ur��[4���ro�Rܪ,�ϑ�`��{4���^y�t��ݣXv�9�& �}|��O��uIz�;{��~��ޣ^����	��Oj0
X'�!��T�����,.jT�z�Y����y@�šR��#��p�xg5q۵G�ۓ6�{�k�U�v��o�-�������k����O;5��V3�D�IiҪ2�����|ǣ�|ۡ��L�} 1�����?����� �������_o�����߆�9a������~�i���-co��<@Z�����7�G��:�}��?R)�r'�}|yy��uצ�y��X��}Bz���Mq3��&��7]���lB�iP��Ƿ��}Qsat�C9�JvWΏ���r�/���Gɕ�/��9���Ǿs���r���t�3��*��%���s���X�������VyJ����kO��x5�&Į՞��M��/y���ST���`�~#E�<(DE�)�q� v����<�*¦�>�,��ٔ��ݾ�<��p�!q�r�>�/7�rů'fy�@2�4Qrˬ#~��v�m�u��2�F3������^�M�gZ�=5}��ܡZ.>q�q��Jk���q���2�󤾅��BNT�p�T��*��'
��vo��\��_���C��*��a�����}��Q�B�Na^o��C����,��o��	-lh���#.�/��1�+1k�_�W����߬7�>~�k5�\��������e�Y
wo�iN�wf�qݯW�|��U���:���"�'u�]3�0=��w}�]c�D�q}<;̆�	��d��S�
���
�k��!>�᫭���"�)���q�wX%�M��GQ=Z����3.�^(9p��5�LC9���$����#x�O�����\-^F�ϴ���B���o��l�d�X,~�	l���z� ���f���K���g�l�q�o�yH��P�7h�~�<|���v�Ң]�'	�#%�|��%
M1;�
H�v}�x�����L��A�����k+�n�5��m�^Aગ�Wu�u�6����	���З�3Rx� p�����3/�M�[��"t��QȾ��x�H��S6�i?cC%y�Ry��l3�
Ek�G��*B��r�*OF���·��ܿC��J���;e�yyB��eC�Zei��3TX�"���qL��A��3�Lf���/�(3���@u�I�7����Zb�`ld�T�p/i0�;�M���[ϐzT��1����W[�é����}��7~p͎���& EǪ���w��}O�o:L_����p���f׌�4�_^�o&�k_/���`Y:�A_�.��Z�D�Bƞy�hMH$��^��}�D��B����;n2��
�G�cj-Q�������q�Z��D��3�H~�W�>Y%:?���\��(cYɞS&���ˬ���5���E�h��FwKV/�alX�)h�7���y[��UÏ3x����pf��z߻!��0hh[���Y��m� �����|��)3�l���?i0�	��K��--��%C��'�G�'��,H/>�x��D�B��K��"�Q��bH�.�n�~�殧ʿ����s�Ӱ�7aSOs��6'g�	ئ�c\�n6�#����]�|8�Ap�~���ۻ.z4�Q�xBv�K�>ލ�q't�^�,�u>��57TD+^}`0CE:�:\�L�3V��0�+��&}����o?���`k��.�PY��t$2CAz*���HQ�������H�5c�|��sw�xOc��ђC��sn��Zh�w>��:�
�i���t45
R[�
5�+L��	E���#�i�da,T�z�VN@�/*��4����{:R���gz�d�����a�uZ7�$Ԧ(�e�F��X�6��Wf<
���)�xڡ"}�S$)[Q]U�h��SClB�)���i�p�H<ρl� |��^��� �oFd�j[�p��/�$�|�-���Ϙ<�� oZO}�#4���q~�e��-T)�~�"A35�N]�~�]�(ېy/��C	�c�PX[��~���L;��GA��95Ҁ����M#Q�^T�?|/����I�m2�ۤ�ˉZ��0I5$5U�Wiz{�Dv3T���.y���@q�d��ZÂ����ʷ�����2��e�&�	H�ǝ>^���`���=Hdw*8G@��	�c���掐�Ӓ�aTa;qY���^��Vahqv}���?p`���{��.0�U�h����I�S���%l���	j�}��c��L�=���C��� ��l��+w,N6x��P	:<I��M�e��ɔO�;��(	p�	9(5az=	��a�����>1�t��)WK4!h���Ŋ�(*.�[��9�^�eƮD�ڙo?�th�����(�����b1	ҳ=^�}�pYs(�xij��|    ����8�Ls�x�O?k�F'-w/�z������jO���j�M��zu�&D�D�x3�o�Dc�(=A���J)����E��p���'(	T9Tj�����21r�]��]�U�ل;�	+�m���>a�>_�&����}�p��X���s����Q������7���y���O��??1A�H��]%�o�(XR��%��u�'Y۟����4gA)����ۘ�g�)7��F-4��{�T�q�u�=]�F3���F��ֻڄ�aT?���k��k�
>kh�>��N����i�>���%/RXo��P۸"������N��4js����/���Ԇ�x��������	�3먈���ď�+J,N\.�z��5�Ta��R�	���迮�]�	��������1�m�}�qg�+V���F7�+<��cv������I�jn���XO�{.����������v�h;\��h"x���b�"=����=sU8���%�{�6�2>�Tj�c`ܗ����j�:C�1���}�y�/��a�������4��
=��O��!sr"%�ߋ��B�*D��_�U�R�z$�� R���M�8�*_-ӄI=�����Yj[�ʜ'�"�� k"�L�Ѳ���T�ceKB�^�������rY��S��O�*\��T\'b��r}_n\�9QU����_ʰ5�	{���R�̐x�M/�C������-Bt�T~GA������A=���@��`.ɂ$S��D�B�%�a��D�h���n��!iڧ��z��F�ԮC��n�@�2�ȳk�	Bk����J5a۲�(��E�F� ��;����P�8��ǫ�cI���W��%U{��3&�W� �����yO7j�H�m�M��H�����[�(8�]	��߽t��V�6��PE^x���:Y�>E�Յ�s{ߏ/�a�Iɟ�B��U����Wq14���%3�	�ˍS��:L����0c]ٷ�^��C����ۭWҠ}�7y{R"U���m�����6�z���4yb2�gZ!�>����U�
ySͶ^��� ���i�y���2^3Ye��mt2��
��ZV�b�~b��t!���U�g��ASC�4�/?Q�b��D��8��K�z����/�)�j(HG���u^����	�F�N��d�������	�b���}�>#��l���Ҵ���G﷊�u8c��;B?)��CA䔺�3 ��!��ֺiw$�=�E��x(W3A�~eC�S�S�/�+}����<Q��[?c�"����X���x��d��V�h�<����"H���8)�	����wY
��&��<>^�z��k������ۨ2j]
�q��&�B����gS�ᐪ��x�K�J K=��ʜ%������o�f�P�i�̷������>a�5vzh�^Ǆ�v���߲��璩�t���G6���Oه�C�T�V�x�;�ox��ȳ��aq�����c{*�vE�)@�$��RH�|BK%��z��9|<� qLwtn����~|��8.W�D%�z�_|�t�t���a��=A�H*?��R��*�Kk�q�p����i?�o�(������Q�l!�im�}}�H������Ł7�����V?�����0�j��r�/��SV����~��|��E��GHw5D1b����b)V�L���!e�ؓ��:t{���g�q]����6�-���`e�X���ʍOj#_��p��~*���;[�tt�L��=�<�ht�ԁ�i��u��L�&��	�M�P�d\��rت$] �m�p���;]���QЉ��v�����(�>vs��P���j�$L��E��c�OS#$�מ��Ml8��Ǖ�6¡C_�3�/�'�J��@-A����������(���:h������z{��2�Rp�=.Sz���&�B8�>�r��Y��$)5��.�����\aۡ���kp3w�����|ovw=�Uu���"�p���:����ծ��'v�k��[��9O}���"hǞƾ�������œU�h��0��������.��8�.#Q"�{ǵ��_�Y��ƞq�Rt-
��C��EiU��W~(�G�O64�eh�p��u|�Ql���y}:,���;݆iK��v�J��SGC�\���� �c����~q�C��W,���B�N��w|F6A�@�	�K�]���}�!{�5���D��Œ��J��i�)�2t4��k��E����$P��h�j,�z��C������^/�}�:V��s�˾O������針�ړ�ӑ���t�;�ʙhBЮ�/^�MD�9�ߥ,��)z��Z9�6O�E�Nx��@�5|�>B����m�s@�8wHN��x,�Pg���5��)��Ib�z�鱺�W+��������~�=�ڗe�~^=$�)ܧf��"��.Ot��鋥�ӌ��?��.G���R����.��*����>U�"�l_hczƪ`y�]�}e�M����=�[�b`t���űϹ���(E��8�#�q�s^8����ݥ��bRw�Ǝ�x�J�I�0�V>Ŗ�fw)S�\�8���P�E�'de���ק�����L����3������`�ik|~�{:��������F)��4>��$��\p'�@�\��7F�>鿎X�<���h�"H?��x�}FKA��ү^)��N�S屲�5O[���L��l	u����c��Ad��g��o|8�y����c��z�?�*��촉q����q,����=�<Gg����	�'>���-�J}�������B�����`�繻�Eu#� �.�.�}�֯��z9��f8\n� ˿o2�����o>.��0D��Ĺ|�C�v&��ҧ�=���P_^߮cMLOd����"�>�{�Wc|T�q}�����i��I�o>������E��&T:(k�ї��4���!j�������6�A�\����wپ��(L����}ޏ}����cN�kT>��}3��X,��*P�d�~��*B�+���F��*�J7�aL�&T�9�'GҞ�&L��?���s�8�Z�{2�`� T;(��9y~��Ĉ�9RI2���	ѓ5�Kz�۷��,8�9�������)%I�����X^T
_M���������I_$���_^WM�.{��Q���f�탏:-��,�b��ݣNK�;ۧ���룥��X앚����[Y�t�|�YV5I�i����Oį��*��9s�y�M����J�=�ՐMȊO3��Q�%ҧ�A'���`��J�d�$P��Mɂl��K�Yh�����n� Q�P����������C�b�oI��0�������k�e�IO|s����*-=���~7_�j(D���D�f�0�b_k<;H$R��W�i�=l��&f��#Z�{�3�ͥ8�����5�'p��Hk���9�,��'�!)�гw�"��Q�`g��=��\)�lэ�))���2ĽI��y#�펡��nK��B��j���ݠ�۝�{rL~��;�Y#w���Cc;���M�\EL#P+F5����m�D���X�=����5٦B��&P@`���@��~c(&-������[3�!���!vN[w�x��2ܭ������hf�0���$�cfV������FF�c
n9b�<e+��pp��\}�)e�:�M�U�����	��݇,�����|pEQ`t�j�ڶ^4���g(�sܰs§�|TpGEv�������r�*�Wꓑ�&:�~�)��م�l���+���ys�ʛǣ2��K+$ξϛ#���M/2�'J���������Iފ>�*�uz�5nF���
@+�����P������nַ�{lAkY�#E'��x�GDӸ����ڄ�e���-���e��L_H�F�o�<�^-�z��\��3�aб'y���rN?�CQ�0%�3��%�����ϖBf<rL�~$#'i�7��vD2�
���������Ц�M�zJ�g���7.-�t��]E����R�}n���k_����s�8�l��(TT����B_O=�D�3��3hI�	�xʏ�qy[o
�2    ���ߏ��V��Ȟ�<f���^����ёj�Iv���y<�J��rs�05����nhr��k�^�o�K�Vؒt$%����`�O�`������\cӷƯ��/�r�綼Ud�Ӄ���Y�lU~*���y��r�L�*�;g�:�G���ף�H���T|VK�A��<Y�7H�N�~߹DX����抪ea8����@����H�p`QaW��h_J�q�M�����h��0?��,�P����լy������x���(�H1�1ꋠ�~Z�(,Y:I:̩�!��[�~<���0,E�ȡ�8�="��˳�/�pB{ƍ���_(��k_v�6�/d״̈́u�b�"]Օ�+�'����PQ~�V���8��$9�>���0|�>�!�������w�i�"G�s��Y�����c����j��oF!M�!y0Ƨt��h�l)9b�	�Q������e�0I�)3T��¼^PZ!Y�~4�>b�ff���P��c�O�h�
�UM�oO���ܛ�t=�D��`��[9<Q��*g4B���ڿ�ϗ��.���PT����'
A�#{)��H7�_^_ܧ�����I��;���[DG���\�e�'�̳0���Q��C�i�����m� 0\��{ƕ�+�|��W�D{�����QG���},�}�MCI :H{�?��j(D����i|6O�^ywGr�8�"�e;�-,�xy�AzK���C�Jŕ7�貽<먹B��(*�O����XQۏ+Pf��LK9�By���9��z��ø�33���T���T��{7/?���gF�~�9���,���Q<7w��a�>�=��a����Hs�F�6���8CM~����^ޤ����Q)t�g%?bE���B�Bl�y��w~kT
�6S��K�L��lwO����/r,QZ��J/}c��˻�Ht�~���h�KM_�t�qw�}{y<j�jzH|���@�m����
AM �3�U�匌J�#���Q�S3A���f;�Pt��ˣ� ��6Ƥ�F���b�)�9�hq49��$�WA�4��`��߼z�~ux��K���#�n��{J��!7!�L:h����E#�*��	�ݪ(�2|8O��R?ݼ�ۿ�7t�Ж~fB"^I��]{�1E={f���X����t)���R��=�Jjf=��T�����ш��$�a�����lM�4��/�i�0\2�zOX���/�P����>AI�� �D�`���~����#o߈���+� �����?]��YGh�����U��c�����ǋCmB�7?.��+��wb�F�Ņ2�F�X�"rҦ�o�?l� �/:�M��L1�O�^8FlB���/|8����<��5$ g���ڨ����\���@Ph�|<�|=�]�C���		z�(=[!��уQ.��⇒��&@?��-��&(�˲�~��0M5�*�@^���u^IV��x��FQ;��Ȼ�M7�>��  �Zi?.`$��^v��n�0�L����u�.]~��G���%B���K:����%��۾���t$+\$��m҈vd��|���GO�*&�4i��t��@��8nb"��;�vj�/�!B�:�/���C��eQ��f�clP0���Ø��[�n���I���V	�gp�	������)�TΏ�Z���f����P(�O�w���P(���6��� ��� ��<�âp��xԾ�GR��������,��2}�K��Z�����"s#%"]Ӽ�g�F��4,�ЕN�9N*������S�Du�����r;��"��j�n������^˸G;U�c��O,zgl�����$��3ֵQzRx���]w�f����pp0���ކ��r�=�S��[�e��+^`��9��͖�ac_9�u��i��%�`K�_?C�@\`��嗋����|}yҖQtw���B�]�\K����0ƕrȖQ5t���·y^�p9Q| [Ʊ-ű���g��PA�nW9�Ufw���(�z�w��:����������Q�u7/��@���aD4�Э�����AJP��	CE��C�*f+�z�6���|\��k%@����_�?����ǰ\��l�Z�E
v�����~�~o�w	�Ia��0&'8�����[�U�u�w
n�@~F8߱��^A���Qo�(��Q8��vFj��8YJ�(�@e���[s���D��5o���q���.G���������n�ݦ���%Yh~I��̖̚	�+�LV&�UFRc�s��j���i%�Wd��?w2����Ϣ�b�,�a"C�Zѩ��S��M��%~~h���G�cB�	], |��5	5�#Dw,��NV�#2��A�d����Z�P�$�P-Z! Ϧ4�	'DG �U��*ڷj�U���Zt�G��Y�'[��Vۈ�^u��˾øs�ñs�T�d�L4���,2N�d�q1u�ON}tW)��A���8�6�e>ṤOn;�O�D5PI�t��
��֋P}�l�;V"QT A�B4T�s}��ʠ�P�R�����@�@��*�"P1��
T� mmg(@��_�tL]�氲�/�7krH��ߺ\�FTu�0M������#MUPg%iju֒�xr�A$F����}��Ql(�_���5����Ep�g��M�����rL����wJ�D����f�����S�Q凨���Ǉh�rw|^�f9�$�NV�����g�����C�橠�l�
J��Ʃ��l�
Z�MSA�yQPt�@�:O 
j����2Dn'wEA�vrW� �`��!� �#��1G�M�#��8����/��tX|;,�Ͱx����7��Շ?Z�_1�W''.`�z+>=vWLDjq�t0�	Q��*v�4�PLFj��t9j��6OFfz[�����GhF-���m��sV�sV9TsXD�Q��P�A+���ㅓ�>|ҡ�d-lT"N���P�ZFX}�:C9�ύ��e(w����ЅUE9>Շ*�&�W�|Z�J=����O�6��'?u��Ⓔ��C4=���1و\����n��c�8�DV�ަ�&7��s��Wj@=V��-'��@�P��u '4�Wo_`B�Љޒ�=(:&O�1����f�\�{��4Y��v]�����AG�;>�4t燴O٠#��P��5QMBE��j�J�v�D;\�����7�&�Ô�9�3��o0v:\q�e��7�ʌehh�T�>�<
�8}i�;�� P�\����Ij��^�1%�Q����lA�rJ��Q��
pU�j��*�Z���Yp��,84����4�JQ鋠��dW��Q1����[c�͋H�`����f�e��L�L��I�Y�df�e
����2La�XfӘi�i�D�O��a��3,�h�!���V>r��^ѾW��#�'Z�D�9�G��r�ם�����~�q ��yHy�qB��
!�Ad�����D��yY�J#����隘vX�(�KCm��ǚZ ���f�ݯۧ��ߎ6��I.SpCf�������|�|�|�-�-��_-�Z��/�/�g��������f����YI��XOq	�6�o�����6}Շ�7^��G+C�t�j��؎Ƿ=��ұX�D!��iY���epl+X��Pfp�+X�� ���m��z�z�k�|�>������%k�+�jt�6:o{�ֱ�`�w�`��k��c�_V��0HMoJ�_���h=T��y��.�ŵ����TS���T�րT�E+�r�ԛM���4:f�Y�4:f�Y���e�fY0j�ce�ZY�����hU\�bg-�5\���h8YWh89NV�N�U�ب����ɞ�H�Hr��5��?��8v�[�~Ǐ�����o������*S [f��q���$�&���=H�4x;g�Us�݁T��n��;��[��H���l;�U\��Ŧ�1��˱s74�1�9%e��p������)��y���7���@���|s��}������i���W �rR�&\?-WУ����զç�݆WQ;�W+��WQ��t�    ����N�>�.3���� ^Z�B|zo�k'�:	]+���_HH����)���CV�i"�0�C?���~m�w�`8���8�b��q$=����Q\7�fB�mw�V��xV/�fB�g�f�hg.9o�&�&�Vi�㒝�b��z�lM��:�é�I���4���9�2�vzO�`2�5�5�L�d&ɚIGQ��Pq�t�sM�|>��~�I�}$k)���O�2��F5�z�K�cg����f!�q�5p��U\^�s��5�u�S���ǆnc�n�v���]{b��K�;{ȡ����Q���8���C �k*�ԡ�59ܡ����aOW&.tvb`�T�c�إ���p��Kx<s����wƦ�[���Xwe��U���GĚ�.�8OV#^�B$ݥx4���`���g�s�Z�Ǯ��˞e�%i9�bVκ?��,�Cx���vi��3���#�����)k�6�gB�&���z�C*�~q�=�e^�߇z��iu�c�2abS�&vN�8(�Εw|�O��<��C!��0�������Ј�x�%�j^d~�1�:uw(d�����Iyѿ���D�tN'ph��&J9M	�W�:��x���ӥ�]߰�T��ݧy��׸U�7����K�HTCg�1w6JD��o�7VD�h�2�A���,�����b]�K:����t&��CR�Y�������R]��$�������x�-y#vϊ�5@��PY@��, I@a�P$a��� 	�,ʀ$��Zh$a���
 	�l:�T�;��ǷN���*��s�<y�b�t7�=����O�i#v'�
��nO��F+� �b:Ƹ�Sp�	F��`*��dz�p�`v���Љ��E��}� Ó%���<$!�3}'
�'�����y?]��cF�}ڠ���	U��1׭�B�@e�?k�P����?AK�۶Xh̭�a�_�K����5�'N6>�V^b3~-Yf3O��)`��j��D(|2�MK���IR����C6��Y�ێض���b�q��R�ޞ��,�n�(n\�EG7�-��K��eT}�˴xZ-���Ue��
N-8��
8uN�Y�
��1���P-���u@�����	M�z�`�y�&P�s�/������[���1M��sݤ}�˨��eͭ����,W�)!f�Up�j4���V���Z��F��<��\�q}�h��u�c��њ��P��5�Іg��:<���G�� 2W���hng�@s��ōz�q
���C$x/���Ep�E4����\g_Ds+8kК+�Ak������5h�5p�VW��R�P��9B#�,�A�ě5�x���R�g4�gK2�Z�Y��\g�Fs8k4�k��(n[�Y��\ g�Fs�5�%p�h4�ũ�x	Ʃ睄t̂c�7C��=�����3�	� M3�5@zivڍX �5�q�PhZt�L���S�bj�e���� ��W�[q� �i�;3�ƝHrX�7+�AN�'���8��g���a��!F���D�%>�ѡ!�-��LRC+��Ij� :����@'��fV�f��D���fV�f�Y����O��d}R�f �i�kf���3�Qɔ⮆"�Y���N�6@'�PtR����|�ܬX�D0�b5���S�.y�߻<�a���s��Op+wFW��*�	-@�}�Z���'tj��Nhj�ft�~N���8�AH'�F�6��BYN��	���P�
e٠�	]ٻ-'��'�'����N$eo.�d>�d.��H�i1�N�PSt�"ӟ;�*�IHHi4u��FW���h�)�V���{Mn =��d�Y�"��g%� =+��'�J4	=�V�I�ɵM�p@��?Ϸ����kp8	��tp��EXŕ^=�Cs�u:'���9��y��u�iݫ���Xg�[h��{pj|-<hIe��a�, ��+���l���Ղ`Q`1`] VV�M�͂<V��cЂ�ῲY'����'2���t�\Aj��X��R+��LV�Z;c:���VϘM'������&ٯ�V�X�Ld �ir�$T�.��d"�#��'*rl}�!��'
rl}�Ǆ'�Y���@;��k��ѓ<[�c���� �;�h2�tl}"H��'2�tl}"W���Md�X�DV���M�q:3���Q�3qnˡ!g� 4������9X�Џ7k���`B;�O�Xs��cq�-c�l�t��	�t�kM6��t�Ȱ���VM��Ԫ�қZ5�@zS�&3���n\:�@g��g� ���B=�|���x��r�kC��D`е!M&��i2��>��\Az6��ҳ!MV���p����5��!W��o�3�IG����q2x���|=o��h�����A`G,Ö�0�v���h~}�0��k���__3�9(B3��W�������4�Hd�&.fc??��D׷�ۧ����s�qGT䖌�Yo��w>[��4�hP���+l^��Ӥ�Is��6��`7���7���Gjh��������h_/׹ŷ���GC�����m�49ԝI9/�&�H�����6���߶Ŋ�m��HA��7q�T�i��|�&�4�rr��Ӣ����O�\���?=)�?d���s�h�j��i�j>�@ؾh�� ���$+�����~f\3�t����"_G�����SR�5D_I��*�!�Z��T�5�����__M ��R{��&�o��h�zm�m[�hQ�Ώ4�~�ME��̧m�I*�f�8-Z��}�mAWȟ����F�od�� ���O�	 ���tt�av��T˕�X�ͷ43nIL)��H�����U`�NwJۀ��)�	�ζ�z��L]S+���j�L�R�������`�q�����S�-���l�Р#�������BZ(�:����i۲�;]�:qC�9�x�#�-H�u�Xz�p��|��ep��p'P�W7O��oÝ�
ΊOs8+>�!��|n��r�/��8��|���A�L�'A�sd�@mQ��	�!�}>��!ı�/	i��{<�~K��� _|\P���3���$ި��[�7>�K�orm �\���B��!�3be�#�".k��(ř:���5�`�	���b5#>q�pQHl�us��ؗS�����x$���R����� ��}uH���X��>��
ct���5��8b�/m��meWd1�@��ʶ�b6a4��q�M@�@o8F�OFM�ԇ��l��� 'H�F�A�34���x��k9:F%@���!|�մ��_֖Gq�6�i�X�$�\����NP�C�N�H��5@Z�3�[�"?A�6�i�:A	�6�����W�z'���'��{'��{'��{3S0����O;L,:8�ә�8V!�"�e���TW�q�B<�4w7�f�J��/��S���Y�\�K&?������7&^��]��>7�ӕ�̚��ȦI+�@�7�t��r����ǬЎ�0����t�Q�:Zݏ#WR��V@ǌ4X:f���5�5p���- �dG� ]��hT�ٷ�8��4�A��tPhǵMMB=�mj��lS�Џk����t���OK6�H�����Ԇ��7���o�2��Ep�k0��w�� [��
бu���5W�9����g�lB:n�{pΧG�P�k隄j|K�(��Z�&��~5���Ihǟ[5
}1�j:�9G>�CE��Qd�������pl�@tlN�	�gs�� ��U�+2��h� �lD��c#�o�ڈ&��6��x,�|�,��و�%�F4	5�<���#�ۄ:�=E-RG�j�e"�G��b�Q����vb�J�X�{�|����p�S�Q���R:�|���OVk�ۃ�b�K;> ���I,��σ��c��i���v�$�O,�=�W`Jj��o<�(s 魃4��>�L ��T����kn�L�, =-j��t����
�\�hQ��o=��C9δ�A�Ɵl5
�|1�j�t�RKJޯ��?��0��fX Z��
���n �M\gmH�c    G!-�Md���Ep�0&0tc"�w0�Ѝ7L$��M	�8v9�Ўk�
�v��
9��BE�"`"�$w�8�IfvgBP�z��Ǜ4���;!h��t����hr�}4�@:�eg�~1i4 ��#�Fa���"w�I(�_�ijrWt�j�<W|c�>Ӳ����n =W\���V��,l�WZ���Jk.�s��L ���&3H�+��UPgPj�qǚ&��i�qǚ&�w�dX�o�i��b i:���#w i:�=l�BG1ͨ�BO���hWT>�̌����[rY��"�g������B����
������pP�?�J����ʀ���ZMG�3T MG�3�OQ�3s\G��>E�OL���(񙁸�(񙁴�(񙁬�Ь����53��1C����e� �9��Q��ms¿�3&��~���:�>xӽ�8o�d�|4��Ls��oıT��A������˂�t?5��u�c�~�ϻ��iC��~T����G��]�g��q�^�˄.�5���P�+M���:n�1��,��<W@�\C.�\Ccj���.`�)N3�<�i&���8�$0���f��4����8�@ԧ)N3C��<�p"�5�	sV�����T@'�i( :}t5�ܳ^5���z�L3�U3+�Y��)`f�j���W�@�'�j�>�U1����뢦�zL����1�Do|s���K༩Z��7_ir�̕, �cMV��g����0��Jg�~�|�o����=��Kkp�h�kI��޹��`�.*..�ˊˆ��Vŭ�[�����|��*�t`�`0�t��0���]t��w0�Р
��+�f0hb��f���>�/��ؠb�� Y�y��o,lx����1%t�j��}	�!���-����83n�DTf�f�"*�ǳ���� ���eD��x�m\0,��(�j8������ET�g���HJ~�,��@I�t?q�>�?V~�GR##��F�GRrIF.�HJ.��%@I�%��#+�d#� }deW��U�>��_6��GV��F~a��]��?/��ΩPb7�ӥ.����m#�	�S��Jkٓ^�t-���� P����F�*���f0�]T�N�����o�Ҍe�p*��j�
�Ζ�;t�vT�A':��f��8ӯ�F�zP���2~�F`�ӱ@G�� kp�t�@���Z�TZ	ł@��P-� *��̀y�*B3�ek�ѥ<��N�b�!�9����Z�!�9h���R�!�9����J�!��uh$y�!_fh4m�A8Os� �����*� �����3T4X :CE��3T4�t��@g�(�@1:�jh�f���9(���^��9����V��9(���N��9���k�V����Xp�P\ 瘫�"8�Z��KX�(��L�X6��	���4ZS�P�7�<f.;����n�b����%>��c�� &&����!p�` XX,VV�_�_�a��Gr�.g�L�+���`�P�1Z9��I�-�D%�����J��ʱA3Q�1Z96hf��.g�L��LRrLV��'����c�f��c�rl�LRrLV��Iꭓ���LR֓��4h&)�$G<�LR*LF�i�f��c6rL4����cZ����k6�5-�V�	�X����y� ���A8,��Y��X�ϳ�x�g��K�>�=N~+;����Ѹ�)`e���1ߦp,��5���Ζ����:Wz4��V���$�w.�y_T�UpΒRq8�K�8���B�x��5X���]�),�0�%`v����.�v�®V�z�V��C�Є��P�A��KaC�3Nh�w��v�� �1F���h0��j5��Y�jng�����Cs���m�h�P�U��2T�hXs\?y�%%Y'��}Ҡ�B�]�0ߓ���'4�	^Ohj�V����ZqB��N-�:j�Ϸ�oGm�ʓf�Щ!���)Ʈ�uԀo&���s�ü�lU{�E`�(7�%`���Ɔb��c��5���[W��}y���R����'�W`�S�}<�_��V�l{��܄�W��k�	e�D�8�����{�a�=]-��U�OX6W�>ac��s��!�H!��Z��%G���>�eҩ�qBйS��
t��1,cB7�S��aڀڲ 3ʎ~G�9kBPoΚ�ԛ�&4��	���9kB�-[m�DBY��6�P�Si�BY�.ʉ��l���ܠ*[��DBS��ɉ��l��	=�j''�S��ɉZ��}�#s4�m���>s���>s�듼o?�৭�;%!����;%!;q�)	ى��NI�N\wJBv�2�S���;%!;q�)	ى��NI�N���`��hЇ���#/Ї��k��x�A���������J%/��(�xW�*�h��	���������U0��5���f��Κ���Κ��^�V���V�����20c[�#�X�*Ԋ�X�P�Y�ingE�������*����*ٙ14�e�3ch�dg��\ggͭ�93��g����Y�j�F��Y��10�2Uc�Vi�øp��9Gi�K����ZF���N�
�(w�
8�܉��Y�N��(w�ન��h|��~>��H�nX����y>@ɕ�%X*긘-E�)jz����fN�}��$=[�P$�wVU@r}�ZhHn��"g�	4JO̺�#a��� H
[���8��\f(�����Gڋoъi��G�o�
|����Ⱳ\!pI��,W\,�пt\G�OL�����ʲ@��cjeY �4d������0�d��@�i<Y�<�'+��g�Ci�T �,y(��>E���!���V��+�o��*�=E���1��7��\!l\�����͊G�:��Y�LؘԷ)�����o�p��[�jw�ؖ��}�����I�6A��I������]��!�ܩ} �����9�,������`h��g04�53�ٞ�� �g{�8����n ��6��q��6�o�{�7�Ќ=���25y��o�f��e��Is+8� h�����*8� hngג�k��Z��Vq��5��p��\���[c�6�[cІ]`kʰ�Ơ�Pj���Ơ	�Pj����±�a���|Xñ�aī�c+ÈWc�W�����Bv����`�9{CGs�:���������5pv�(N|���pv�h.��CGs	���5w��؀�X�b���70���y]�M\g�6q8���k���47��uq�6q����EpFk���M\g�6qP�u�'�0ڝ0����uX�y��;k.C�vA�j�P���&�03ЄAf��0��L�v���?a�&���Af��0V8�.�R���Ld��f'H{�5��,|&�Z���0���8f.�;�q�\w�㘹��hng�}4W��c�Up�8��;�Rv�U���XK��Jō3��D��Q�`��y���L���)w�83�N\g�܉[��)w�
83�N\g�܉���)w�8�7�U���m�;�4u�)w�;�N�a�܉�:�T:aІ�J'�0S�Af*�0��L�ێ�q�J'�P�y*���g=�F8�(_�Y'MXfī����
0#^�!�Jg:��u�nG��w�<"�T
�1=jPN��079����3WZ@��y�/|��E��D���m�ɹ���mh_o�@��|x[��Æ���\����\P�`Y�E�Tf�t��6��kY�QWi�o�����Q9�o��LY����6͔�Q��o��LY��'�6͔�QY�o��LY����<F3e�f��L��	�LR�IV3�EO���Lc��怉L �.�>3H' q"W�N �D�N �DV�΄1�H� �M6�ξ�&��~���fI�HgV��I�ȉ_�@�HgK�4�I�ȉt�@h�	4�@(�	4�@��	4�@����L ��|t4���3�C7͏���]�;��#55������@�HM��@�HM��n��F+P7RS�P7RS��������Gj�ЕU�I�ʍ*�$T�xQ��D|�7+��L���fŉ, �Yq"��3+N    $Vpެ8�X�y��&W��Yq"�.���H��	�_\Md��h"��\�B4��r%mJ@�\�BV4Y@�wK��� ��4�4�����X�Ldҋ�դ���u2d�3�}:��A:���@:�x"�#�B&:�,d"�#�B&����,���P�����ǭ�ZQ����
R��8U�5+J=Ɛ�M��^1��o҄b�ߤ	�@�o҄�@�o҄��7iB+P�4�P�4���M��q���L(���L�1�9�&�r�&�roL(���w ʊ�^���e�I���u����h��AYq�k�zmPV���^�'�F��e�I����'g��H(+MzMV��J�^��k����|"�+o>�H�ʛ�'r,��G���tPM�����s@5�@z�&3H���
�s@5Y $Ǳ�`�k� :��8���k�z<wM�Ў�i���5"��9�8�oj@��s<s�eu���b=6t�l�iެ��H���"T��f���Hl6x�Љ�.�7Ղ��݆S0�9w��s�S���ק&H�M��
����ټ���ټ���s��]1j0�m�L�1�y�Vj`�#���hssJ R2�,*ӈI4R�,*a���R�,*i�əRҵ,*��zS��,*��I�R�%���D@�ڹ-�X�T-��w�9��y\s '4Z4�o>���Ur�-n�V �Y�#i^pf6�Qz���U0'���
8��As��⠹��������P�ș��щ�lz�Ep6;��8��FsP��7�A6��Ơ'���'���'���';��
��4��asthڰ):4e�;��IС�C&?�Ơ
��Cc��r��0,���5C����E�c��h+1�@���xG���X�>cv�Z�PvO��B�]<ir�2��&2��G��e���Gښ�@z��l ��[E�A�7n5@z��� ��[M&��ƭ&3Ho�V�+H�<'*��s"�#gY?�H�ۂ��.惺�ݘ wZ�Z]�/��vܹ�i��T�q�N.�-�6NmrC&��b��Ԗ@I��ܤ�-������K�m%����LU[%�r�e��*(����S�J�e/���2���-�=.��;���K!�`�nd/�����-������߶@�r�/��~��G����-������߶@�Q��T���k�����^��{�o�}B�+� ��]�`/�m�O��e% �e<Ws���<͌�-@�r��YUK���,��$k����βLc0�rLaHo�d;0�u�g;��n��.xk�	� �\lL �\l� ��}D�[/�������
������2i�A�VɊKЋ��Q�P���Q�^���ë��{�=f��Z�x$v���ztT�{� ���b�Ѣ��C�$T��oqMB�P�3 �/�C/N�Q�!�����b�895��{&���I�;�R<S�J�Yu�P�g���J�L���[�Њ�=�a����0V�iJq6j#�щ�GԚ�do�ۣ��Զb��{98qΛ���� ��{Q\��(.�s�T��9{*�[�9{*�+�y�%������A�f��o���*���n(�pv7m8�
�2���A�� 
gwCa����q���m�G>�i�%���R�M@%�^ ���lH���AH/bF#:�'�3�@ړҙ� �I�L� m��L�Io��'? �l+���h�!�ym��`��Jd��S$;��Z*��3@zr�$o���}zα���7����Ȯ!��}&�}y�<����p;ڌz��?w��$N�#�����������������������-�y����!����[Ӻ�u�c��Ժq���:��5�;�Z�^��:�և(N�M��\R��k�.��Z	6�J;\�,�n2>e;\pI�lN�v����%ؤ,�p�3�����W�4����7v�cr�N` �k��Җ7����Ȟ�Ζ`���SL{"H���VA�������TO(��_�d����#�9eZ'
�ʴN$4��^�XhI��:�ُk�� AX��>����a�PTr𜐣�B�]�1#
P'3oG��CI�H��~դI��T���I�½��☹N��ZBDW����Dʵt�t�A����5))�@�&��9��_i����r�8w�5���6�F%6l	mR�Y�Mb�Y�Mb�Y�M��!٣ͻ��>d�}ο����G�ف|sE���f�iv�����j�Xy�IE����[Oj�Xy�xMF�޲[�IH٭�ԉ=���{<��{<��{<�P�{<�Д{<���b�g��b�g��b�g��"�g��"�g��"�g��"�g�X��?�W�y�Zx�N���������m�|�ύ�?5�΍�"��)�?6n�q@����\�lj���O�\L�$�C�Sc�6�7�*�������si/bs��O�K����k���X�ؤ?�μ��6��m2mڮh�Mۊ��mW������c����\��u��H{:|���c��q@�����4�h���i�к��u4�����Y5�W���C3�Z�q�a��u�{���7����,43�n�7ß& 3�4L��O���f����L��4�4]�ٺaΌ������jb��?463�1��?Mv��v3V��l�t�0e�?Mw��w��*�i�f��gK���,�EZQ�,����i����}2�"Z�/[e�*�U����e4۾nfmLM�O���pd7-h�ϳZ1-+Z��VM�-�y�t3-����B~�������M��߾¢������T۹�����1�u�ț�=z��F�����������ּ���	��z[%�v�)9+@���-�ԛ*����R,x�@TVn 7nl ��%�F���D��y��@�R���*�|���P���Ih����$���yi�q��4	��`5$�x�=uj�6�Ω���lαc/f�:t]w�t]��c�� C��!��5xH�1tJ�Ks]�A@��5Az��I��5tMf���k�q]�P�k蚄~\C�$��&���5��V�(h�#�b[�������<� �A1�����b@;(&���b7�vPL`h�eKmq�DB5ޠ�H��	�x�b"�E�Ն"me��������y�K���A��6���yr�21�, ��`�إ7��]j�t�R�#�f�@xإ@�.5:v��бKf]��$T�ڥ&��.5	�v�Ih�5!MB=�d����&뉄���z"�!o��H�ț�':�ZG��cv,7w�?.S���kv��2�u`wnG+P��C�����:4�|��Y�B۱��ǰ��.��xl�d�*y��^�q�8#�jMÄ���&�0���O�i��a����iX��n6�а���?5��ᆆ�n�aC��O۩a��Zl�S26X֣��`�5��j6�]��*���[@�i����-�q"��u{�!��t}{������B�އR�Ԅ,%���7��8>�y�;S�mq���V�5H$�b�� �O;�� IT4��Yz	�/�et�~m�('*��ݯf�:�z�k�f���Ͳi�J�]�_6[M��f��f��BŐ����pR��>�$|��8$y�0�U�?���j��V_��bZ��ov�ct��f�`Z�i���L+�f��ac5�f+�}mZ�
�H�2-�n�����mh������F��6��C���}.�����4�}���WZ�R��&�m�oۄ��N�TFx;�y��&�A�WKf�q"tL��<�G��1E������T����Q��2̈������
����NL�o�b&��;MIY�l��P8��]�ؙ,�YDZ�^��
 D�Z��[���6@r��X����j�u$qћ� 	�n�ޝ�����r�Qq��AAXf�.i΂+�����[�bXQ���\՜�m�;F��[�7��5`p7E���F��ȧ�]�$D�Y:	i-	���I#����O�A-�h��2��Z�	�L��u��n8���~�>���ө T�T��2���s:%g�� �T�
�Zj    Մj�*��P�R�&�f�M�}�3-�c�(B�V�DE��
u��#~����G}��� �(��V�D�/�U,�GW��� �(
�VAD���;H^�yvH~��V� �E^о_��1k3b_DVR_DVmL@�������?ꉠU�}�ȡ
���oUt���ӆ�*Cjv�\��y�� J}:}�% [3����Ɋ~^ﮗ[�Uǅ�4j��$�&�� �A�~��y�����iQѢ8��ilhPm�o�7��O4h^�E��{-�&�v����t���)��	(;Xe;�C����}�:8��8���ޡ�����`��=~���U�c�J�VɎ�Fh8Z��}"h8:��@�����k -G�eo|Fh9Z-�:v��hw�����v<k��ә�x'��k=9��� ����}!yߠC���- �Ðo�B�8��-� ���o��2�q������Y�A?A�8���	���)Vw�O�&�2��|� � �[�g�\��xo�DA�r�.�������}��ˁ";�'
r��D��O/�솟�.��Ҧ�Y�a�n��%��m��/,&G�͕�Lc�Y�	��Τ�0�&1�,�df�e"����2	La�X&���Tˬ`X>��g-`X>��g��3�';�s`&XrΑ�h�9g�s�r.�sf9g+�9g�a�2,�sff+�9g�O��)����Y�|
��h嵳Y��~��Ρml-����/���>�_�?����V���P�Iٛ�M��$�&MV��j�D4)n�b�$4�n�j�d4��&�m��Is�4ۤH�}~��S��6�ol�m��&�60��@����o����	kl �6�l0��A�V��
�o���3�k� �v�z6�At� Zˑ팾��x��~��/��!�l,�_�Q�F{�_4ZL+���O�E�`[����ʎH�%���m��j���j[e�*_�*�ՊV��Vն*h�}�j��8�F�sSđFb!���Qpt�xq���ḵ�8\�ě5-������N���/_)��1-���F�B��/_)��#-���'�Q���������>|%��#��V_����0������`Z_��j�`�+�_���"|5�f � �_��j�������f�u/�̺/�c�Z�r���M��W�fћω��,zS��ya�A�v���>s��9�z?��~���JV�pZ�5�}�x,�ٱ�ƱI�XL�f�1ޖ���sđ���&��x�ȩH0�")�� �F0;�)�5rf͡AJ�G��Y �Y ѯ�>Z�O�4����j�!�ܒ9tJ	�;I��xFL���@��1\���s]Y)�)��з	62��C��p� J7C|��C�H�<�XȖ���9���ҡF2��<��
'(��
'hhQ�!'�0������ZJ�\�l��2���Z��Q�13�.`Tp̉	`Tp̉�`�׌$���H%��IswX�9	���%e9�Wߩ���sY�%U��8�S���tF�Fp�4�Z��2�.YV����Ds�i��;��$� ~w�F{w�/H��!�!p�r׫T�Y	j\���7�e*�Z����y���9�qϼ��ҲZ~�3��ҋ����OIR����߸�)\0h{�4������WM�9�Ġn�~�׽�n?C�{��P\g����c����گ-6@� �rЀ�5�4f���f��|ݶ~e������u.�VzK���]2�V�)�ஹ����5��ҡ�1�4f��]3��ƌ���Ø��w��NZ<���IcFX�5c:i���fL'�aqߌ�1#,��N��ov�;����K;!s��}��vB��gz��ۢ|3���D��1�4&���Ќ�1��E�fL/���-*4���3��E�f� -��-*4�iq$lQ�Y<�[�kQ�Y<�[�kQ��b��-��U�Y<�[��b3fƴ�(V�f� �iqO��͘A��X������-�*6;Ņ�`���v��c�S�vB��\D�	IZTl��gZ�hQ�3Jc"E�J͘Q)ZTjƌҘHђ��m�$<�n�xjO��,��œ����f�$-���Y<I�kX<5�'iq��>���+�Ȏ4�?a�l�̘��ˈ�����9@�Zc�<�i>>C=͠��fP��Leb�:5�K,�}f60t�>3��tF>3�ږ+b+
c;ÍM!��B36� fG
E@�zl�R�z,-�dJ��3��'��M������Y+	��}���-,ޗz�s���9�`��s��=�����a�fL-��`q,�v�����{^/#�醋Ӆ�����Q���3����o����0s��LC 3����`��L)�b��B�6[�2�1�B(��k�0I�a�Y�[��$e���a�2��Jر�;��Abv���!�e4����i��܋jt/��3cQά-ǁ�-Df�4eB�מV(���Դ�fj#�h*T�
�� �kq�^$Ҁ��N!��ČM�dQo�"r(h�ה�`f�L 3{e"�y,���<�0I��=�2��C(����Sfx�l"F���/"
9��F
y@lZG���LW
Eԉ��)�P��ȩ��lA!x6��P��_�����B���M!X���)��9�`q�ܔ����;>F|K��e�}�Ȉ}!GvQwLb�$�X�"�� �^�.?ww�@ >ϡ`��2�?�˔��2e��k1��F:�%@�@ � �>H��)t�-7D�AZ�!�p�;���~� n�P��-[��q�qiŢJ?�[.���o<�Vc�������[��T�����f�A�|�|��Vψ����/�X���#a����g�o�Y<d�PZZ�|��G���O,����W�#˫~������?��l�~���lK��x>�-}���	��r����)Wo�2Q� �%!(��A�'/hy@��� Y2i`P���NB�C����ew�4D�j�S�����J���9XS")���{�D-Z�������4MI�ݰx��Z��+%����}������;$+�ś(�t��lGl�c�����-�x�{�G��1҇\(;�⡟�g<�	�g�Z=�CY��C?�#mp;��z~��7/�z�c8�Hx�.��K<��G���C[�d
��\=��LX>���v_�t��}����I�_��J7�5�ݜu���3���)�گ�صO�T�?���U��D;���^����Hb'jI�8R�IM��`G����	�2��td~Cr񍋸Mg��pq��*��D6q�JSE<8�K\�M�l�ѕ�>҃���_Nese�Tz�]����Ua���U[j�8[ʬ���)'n�ܺ-mʸ�2�pR�0�%nUIJ�N�z���L����:&
�@���,i_LM�2e�gH�I�I*	���9�����=�ҫqUr�^�^���)Z��.��-M�Z�m�J�� �i:):�LjI���:ٷ�[Z����˭ž�P�zU��}ˠ��ok��ޘ�5isZU���~@�ǑLZ4\6����Q�a��J� ���?�rz�۱��h���k�$hK���３�M��m��ewݷ4�SZRSJ�ˎL�1�-3����k��ʏ��k�1G�(Ft���h;1ح��N$������f�w�����\w�� eR�	4 WjR҂\KDY���k��Phy�%����)1�	�� f�@'�H��[���7
n ��A9N�3�ī�b�b�����)�;)�z�d��Yu
B�e�!��(�NCA���3�*�.C9���1�.�Ꮢfݵ(
e=�r�fձ(m����g�6!��:�N����<:M�h��>��#�H�	�ՄB:̤D!���,42�F�IS��*�L�|�z�Q2�\�a��m1������	>�4��4���,'E�<�Fa�������t�i�A�4� E�FF�"M#�SY�`���[!�M��([V5�gX'nf�*�0� ��ZEZeg*=�rӅ�M�U6���J�Bz�"�#H�͂�����[r6���!��+ZTJ
�Ҡ    ݀.J�*�2�Y�s5}�5�BX�7c����XE��G�"�}=��Y�'�zk��s"C'E6F�(��?¸�'���P���I� OF�@P��	4 ��!Md����b���
���w���G� Vry$����I޶�`H�f�m'��0�lm�ɦԬ����Ml���5O�.�HApQG
6U淞�\}E��Das��[�K΃#/� � ��3��"8��R�V&$�V ��lV�@b�M�Fk��4���n�lKQ�
�Z�ǡ��h=�Ec(x�7O�����|�ן�;fjV����_��/~��(v)���X�h�Y�0����zoG*�j6��pZ���4���)h.,MApai
z���` H��$���[�eW�Ì	��˄�
��˔��ɾL9N�eʙέd�������Bf
z��) .d� DY�L��{y�Ɏ��K�q��z�@o��o7Y�F�}�vљ3�Hq��,��I�d�\��r�X���s���Z�*��G.�T��� ԓGYC�*�TV6���R��FЛ_�F���[`��,���|�b�x�Ñ܁�$�0�W#x$�9�(42��LB���BH�3]P9Cx���4�if���e�CN�2ƀ!gRc!ȜVd\GxV�x3W� �\c�D s�	���	^�9wA6 s��4n����"��#�0��`�7��f� �2ۗ �l_�D �}	����HR@�>L��,A�}g	��k�}Mc�0�Ɓa�a<6V&�aCa"6R&�a����0[g��D��� �2�����o3�!L��� �w��,wPE3�"���̷���Kܷ�Om�3�2�l>�0��(c����3[�2�l�3���L3�:^�~+L���fg%���m5�d�:SI�X�)cP��}H},����80l� ��OͮA� d�����12l<��@�2�A6 ��	���&���l�$"���B�O>R�bc �F^O��B#�'�
F!��d����4���Ͽ4��я���F؛�eFJ���(k3G���<�2+���p|%�rq�+���)d$6V)c	%6V)b�F1���m�l/:$��wm-!$�åV"�^tH�g��F$ۋ��L�Јd{�!�sa� �way����I!����)�������8�O'2�>Nd>}�� |�8�A��s�>}�7Ca���ً�B08�Qhd�����lР�����lР���O���_P�A�C��}Ĩ@���6P"�A(J��e@�h�h����P#�$�NB!�$GNB�x�[P���6bO2�FJ�'<X��Az�'6�ď�?L��G���H�&1��X,�q&������������yp����X@�q��1.U�,�&�?d�d.��WCB�#���V4%T���$�;ɬġ�l©�I5E�#�-��V��s�.��o�鷕�mT�`�*�04 �%��#�FD�~�bF�1���%:�
$���	M5��X�V�ғXZ����&=V�v0d�_IĢ'�jznV(��G�jFnF��t��
�� =Sw���:�#uwZv�A�ʤ�h�֨&m�&��qHS/�Qi��-R�2�����AR���DɀQs	�T�ӏ�F��t`�c�#f`�s�3����:��\M�>q�%���ܱ�?.�V�7k��M[
4��F4����#���	�`gbi��v�����$���V�VLL�:���6� #�!�!%�E��'������Z��h��؅y@G@'A(cI���P�:(��V��AK$�RBe�N�e)qQ`�����~�ĉ}�u�RP����fT	փ���rX�X-��0�6������
�c���3�V���5`#c�`![��3����0��l�I����i&�{Ȧyd �b���ے�7��L1_� �b� <!@1�<A8B��9���0�b~ � @/��@xA=�_�w��/_W��m=5�_��������J�	�\�,�TO����L���j'�J� u�$j��	�u@Ä�����Xza,L��$,�c�!V�~?�B�XiB�@�R�XR����,Z:K�Vz.tQ*�ғh�	Z�������Zz@�pGpB��~�'_��W�ғ�h�+	Z�IV�e�JA+3�p�-=��7@ْ�L�.
�Vj*tQ&�R����ʶ��R�Pe��d���� 8�?����Q��s�������y7����*p���8�)вhQ���ււ֠����h+h+h�	�	ځ�����������(�(hH�G9N'ACK%�-̭!��k!���Z���R*!�PRCI%�Bj���BG��QȨ!�2
5TTBE!��Q�(4�q�#f�������6-hj�(��Տ�uF�`7��XY���k���Z���V�-y���G��i���)Wx�<��s�� �3�6����\���l�z%�&�B/�4Xȥ�h�ri�Z���\�WA���en��XȦ�h��i&�[Ȧ��ZHl!�fk!��l�I����i&�;覘̈́�d3Lb#$v��0����A6�Lf���^]Y_�f��FH� �a!��#+W롚bŊR��k�
�o�Ќ��p�s�5�)�5�iz0�8����yy�?�Wݮ+��96�� ��e���pl8l8`�a+�����9�l`f�@Ѿ9�@άlސ�7O��)�:�8��x�d� ^����vىg6r6B����M�m��������q�(�{>��;��vf��`^�dX3XK�66��-���`�`'�˱:/����*����9B6����uG� �P݀�	�y�4/�`P�6���r[�������e�����Q��b�RM{�,�A���hR���LJ��d�����n=rr����(�����&�ꮃ�u�2lj(�&RI���%ꀚ	5mcd����Mu@�F��34zƃgL���j�DM[䤦Ú=V3��Z���t��zQ�m��g����TS/k:��%�z�놼n-JR?��P'P(�&��P�����.��B�mb ��&�i��j�Q�C��\Tz��iWŰ�i��� �E����u��4z��T����9,IH1�o-�al���:��J����.�&�#���˙�Q�d���E���ndZ/��Ch���i��k<o��(��f?�EE/�x���э�0"FP�O���@D�LR�h�wؚ�����#ޑ���A��8�Q�C+�R��i�Z���$
�p�mz7W過T�x�T惡�E��ݤ'TK4��z�n݃�����c��*_9���4HTM�$j��di 7��^���ڿh>�RSE�D�����\#q?��d����\V$ez���+��������Fޚ�G�ɞo�i:I~�)D�o�{E&�U���з�?�j:���=�ŋ���g�ơ`��Vg���R'��	�t��<�hU�L7��u#�wz+�ƠQ��2-�JT�[m�1����E.�'�"��o�z4iaҩI�_$�e��"5��T5���Q�VK���GO5�R��uo�s�p���(-u4��M	h{�]��#m��8�|��%�Q�Ip-�g7Ԝ-�y��wA�Ö�r��M�-T�BI�"v��_�{�*X��W��jw�kB�T~�~����Zw�A���zb~���(����a��BsK�#�6��C��v\ٺ�>���CN6�r�s�K#���t��z��Q�h�j�������w\��`��]�1`��]����7�<�N�FF&�A0�FF���"�ꓡP׍�3�v����Ѵ�R�S���%`�0Yڦ�a��i�m�0#1��3�0'1��s�� 1,��}�����
b�O��}�2eWf�?��p����[VyE�k(�`�`nk\���?nO���KLw̝�oo���Ǣ0�)�q)�!\��U�NO���<�@�A]���Ӫ��@�w��]=:�M:��٤�i�_��f�\M �  z�A/P�4�h�@�Ѥ��?�nfZ��^\�e~��&z1�|�D�)@��S*�������!m��t]��8�]������)�S��/�������u���B��[�t������p��,ӑp��~\�/����q�؟�ۛ���̜�����:���kDM�x}��E�.t��~ؿrkйr��u�@�;�-~'��������t{ܟ9U߅
����% ��
l�X<}��	@w �>���뢌���-?U�8=�?�����l�l�b.�4]2�2��>n�����)}�u;g/��=���/~��V��%V�k?<�RCw�l]2���}��/��R�l�~qī�����C�>����6nʁ�(g������rT��ɥ{�b�z���R���k�t�>6c�c�\QT�p�a����2�w��
�;�	��B����r������+��<Ξ\?~��nyc~��s�R`u��`��|�|ݿ��ϧ��U�[G��m��w?t���_����L51Jޑ�\������@$9\�l���)��U����uƜ>�Kn���q�=��c���;��_$td˃�׎zQ&vFwf5!|99�?=޲q�r[�KSzK�>�G��pz�ܾFk	�u��Tfy�/��t�ʙ����(�)�G�����v�����[�uƟ��/w���ߋ�k�/C������ݝ��ABCg�������vW\�.�HZA���	z<��G�U��C��r~=FQQRR�y��{ͣ��u�0!�N����l��:&�=^�.��,�����8�ý��^���P2����/Q��L<�ܻ��Av��;�&N��^�<F�Җ�:�m|TebS���+<���R�e�����>�o�:<��7u�Y-� �$��C�zq���ip���3��g��8��1�_�0���}����"8v6��]!ND��=�lP��[ȝ��A�EԌr�c5��wXL�`��2l�1���0���va�`��0R��)�Z�;�����r)g�� ��Y��r�%5���J�4�\� AIr��BIru�%ib=BX�J�0��l�3������Ӑ{�3;�{��%`C�zq�����"��P��fJ��Ǿ�2�Iv3όY`l��1��3恱�q� �flh����l�(	�5cC�y���!�<T�$`#�LA6P̔�K�⻽ޗ��W�����ig��<Y�8��������_��K[l�A} ����r����E[��_��`BcGMY����<eʋ������~O��D8��ne�sk�0���u�b�b����}���
��[����;�5Li��Y���_6�fP�����u=>�zzȋ姻�� y��E��w�Z����[��u�r/��~�\��y�(�"����LX?ooya!���h^��=��J�x�k�\_�o�S����o�:����+�?����EO^g����L�o��{^��	ӟЧ�r�K�ʵ�*��������<�|>��]�}�����c%�e��},����ߥ�K*v���/��aȢ
�uY�j�*y-z>??\�t1��=/���]��_�����ԡ���������8��d���u�K�e�M���~�~���bbcL�ǃ�1��˯ۂ��2�i�[����ßb1�2�
P�����~���*������r}};��{<�!�v�m���:�J9�����>B�uNO�u��ù�J�t�e��C� l�)���~Dl�:Uº__c����P��B��$�a�{��_�����&�Ue�����߿�o3/%�Sa8��������&��y �/ח#v�����{)��^��="�i{^�Ì�ikt���0�r��>�<(�C� ��cP*����;|cP�_Y8��������
�uL4�Ro$�(�HJYP���r�x#)�O7�2K4ۛ�����?�:V��I�#hT�+��r5Փ ���D*�������Kn�^S�2X����Jn��q�\^��Gkzqc
���ʴt�3e:�[XK�)!�V��$�uhA+�4.��V�!R�{ֺ�`#Ѣ�X6�":�%`#%�X]�'C��3)3����4��1I�tl,�ډ����F��!�9ndҬGzfB����TBC	��r�RhHA��n#C��Vl�É��֛�2޷a�Ȳ����u�,�3q�Lg	wd	��$Y��������4�ϟ�2m�����%���5������R�o��fG��j@7���mW�X��Y�組����+/���5$�2��P�Q�ʆPD����t9����U����mQ��2Ϻ}^��A�N���5���I���g2t�ͤ 딥��Ϋ�����"�Ǌ���I��p�����������#����}��[Rw2h��3�맄L�������vf�v(�)oo׺�7#�#���'걧B���B�VRh^:=��6�y�S6�������?���z�a��,Q��?�'�����e	6/�t�?��b������{�Y���%/�zl\�X<�'��sf{ס��TYe�r���٬E^��?g;S��>�<�˒���D]G���{�b��*A�����1���u��s��q~�Zkbbg�ߢ����J^�~�%6�2����� ]���Dy�H���J�yeSv^�Q�}=�<J�+�B1ׯ�a�PT�v/GܠE��t�e+_�<�ײ,�T�N��2�J��(d�]C�~�º*y�'*���0�݅�:�N��\�Ho����;/�����&�]���[��q˿����Ƨ�/��5\��-�a]#i-061�3��I�5�e��џ	��2:6���NTsQ��i_����rM���NO��D8�~�Q���Qʵ�[���c��[ �8�Ҽ-$gˉ�u�u��rs�tmߕ+�O�X�]����Ou)s�.��'�v'�kX.��|���vs��U^Թ���u��f�DY'��W�/���~�H�Oeu�bt�r�_�ЋR[�J�����6�������MG����$=R2Q�S����gg�����uA�N��~�
�N��u��py;��zzY�Ԅ��ƻ����]"��嚻,��;�Zp��������S�Q�P�Sfg%e:���l���	G"�5��)i�i�F�Lm��&�w0���dBg���|~]� v(�x�DRC��G�wQ��-{�o% -��3�mLT�~��K�[?w���X��l�\��K�S7��-e�18��V�3{���5�/�n��G�]Rͫ��(��X����1=G�	��PYn��%�u �,�a�	�s% O��e:�7�G�|BmG��ɺ�#�K��\�;�Z�%�F�r��WL7xya��u��.�`�����[�vv��c_�۳���{E�4_	W�	M5c��P�Q��k;k��	ss�Q�_����zr�z"B'�y��mM\�\��;OL�L:��%�&K��m�)��-������&�f��8]�^��
��j�q2a�c��c���ǯ��$��v��e��k��L�亂� C'=��dcg�}ɥ��2z��n�3S�1����ں�lu�g2���>u?�k�WN`קl�c�k"�4�������!�wݥ��n�����o֖��&�o�� uY��r0D ��"0�(��0D����X����h��^b��Ab���Qb�c#H}�S�QΣ8ļ���#2H,t���M
a!Ĉe�oR	%F,�fT�9)Ʊ��k�q�bļ�I6������׿��H��      �      x�3��wQpr�sw��4����� 9Bl      �   �  x��YK��@\ӧ�e����4L3j@O�r�s�n��	�H#���_U��<�0���̶�z~�:ۡ����0󦸞�qy����B�� v۩O�6�z��W�?؏�*�Z2�7�ޕ^�8���U����>hk�gm��&8P��9��T�
k㤍����l��!��	B�Q��iH����ݷ�Ԛ�"m+~Z]`�eP.�-hL#V�pLo%bx�r�ڒF��z.Zx�Q[��7�6�u�H�66[θ(4ڠV�ڤ��}��ʨ���"?,ze���A]N�4�����jel�3��FL.��N�ו����è8����*,�]cS�Mr�zQpآ.��µ�W�[��1�<B������Q*,y»�Rü_�$q��-�E-
�'���+�V)��C߲O�TU[HU������"�k!�V�D�Y�H���k*�J���~(��q���<�)�B-��K�=�1yV9�2�X_h
��(^MԼ`�+-��0Fm���\vU�q��U�ֻ�����ʒVd��^y�J+���)�s=�!�����V�o߃�BZ�F��o��k��R��L�aY�}D�V�r�_H���]�ʍ��Ҽ��T6V�~���|~�u��ǉ�&�~�Ц�d"��3�g=�9�'�y	\f_�� ���Q?�d�-ۺ�`���O�'��{�]�Z���ݣ@:=˰z�i86 �^�M��Vi����ˑ
(�(�7�\d7�|���{��*�ВoIl�����y�#)I���&�a�*�Xa�M�+��J�2��7h�m��W��轕ăO����=n$�u�5�qR��G�� 5���(�*}(�8;�g`'�T�� ��T���J軖���4�a�W��Ԅ&9����ǰEm��G���(�3:�3��\J��*=�4�°o�4�\�$�0c��gRk      �   #   x�3�4202�50�54Q04�24E0����� ��            x������ � �         !  x�]Q[n�0�VN��h�ާjˉ �
l�[���S$)�'Q�)�-8.5��&b7�XɈ�l�9 v:C�
��\��'����Td̅��"����`{&o"9��oz�P��p�C����+�0Vb�RX�ex�������5�~8�0s�ѭx��9a~������b��N^rĪ��3��f�	��[.�P�8Ѥ�5���rY�j/�߄�P���e	���:������|��d�}B=MCKe�T���PĲ��E��ӡ,�jJs֓�j�;3���4���i� XV�      �      x������ � �         �   x���	D1�G�,��\����X)`2(BI:'�*��Z,�6�y8��%�xD(�9v$��ev[S���4Wq0鯗�(�|�T�TZ�&��b�&�Rƽh|�4���l��^ʚG�[s`����?��!�          D  x�eSKo� >���VZ�N�m�����Ɩq�����ց
���w�4{�1|�!�M��ƌ��4��3���wd�J4�J^frL0���v��W��*�̌������hڛ��Hn1���\9F��*�ڻn�_2���H���d������u����՞�fp�l�q�|0�i��4���od����b��-]A�r(�`�䑻�f�CG��<�$�"�0�e6ʞ��{�I/�G�%k9��q�fT���l�� ���S�b0�ڟHt�'�L��8(0�BO�(Y�7�"
ڟ�>r� �F��4�h�J�_ YRU��vνP�����jx�Eیuބ���ʏ�y#�=�'��ϑ�W��-��2A�5G�;�f4赣�*�W$�aYUY�T�t��h�%?jH��\4UQ��h!��Ü�ͬ��a�� �����5�ٔ,ٶk�|�jw���w�0�0�!Q�+�����u�����o�l��

lϺ������8��Rk��L>��3ɞ�'�ޱI<���4-���^�]7�q�0o�%�7������"���)/��D ���I��	�      �      x������ � �      	   �   x�%��D!�I1+�����_�z�z������\���T�R�e%ղ-}҃Kz���v�k
(X�P�0l H�J@��*n���
��x|�0=�N4����z	�- Џ�@��|�RsT�w�<O0V)F	�d+�O��OZ�7^O�s��3�j�H.L��V�'�0aҒ	����g'�����Yꟳ R�!b+ r+!�� ��3�\?�         D   x�3�t��4�2�t�Ɯ~�@ʄ3�D�r:�i3NW�x ��
�,�,' ˒3828b@� ���     