PGDMP          -                 x            NIC_1504    12.2    12.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    30244    NIC_1504    DATABASE     �   CREATE DATABASE "NIC_1504" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NIC_1504";
                postgres    false            �            1259    30245    table    TABLE     |  CREATE TABLE public."table" (
    id_pk bigint NOT NULL,
    login_id_fk bigint,
    ip character varying(20) NOT NULL,
    nodal_check numeric(2,0) NOT NULL,
    session character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    CONSTRAINT month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric)))
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
       public          postgres    false    204            �           0    0    AWCC_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public."AWCC".id_pk;
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
       public          postgres    false    206            �           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public."BAITARANI".id_pk;
          public          postgres    false    207            �            1259    30268    DOC    TABLE     �   CREATE TABLE public."DOC" (
    "Target_for_distribution_of_poultry" numeric(10,0) NOT NULL,
    "No_of_poultry_actually_distributed" numeric(10,0) NOT NULL,
    schcd character varying(12)
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
       public          postgres    false    209            �           0    0 
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
       public          postgres    false    211            �           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public."DOPTUHD".id_pk;
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
       public          postgres    false    213            �           0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public."ENROLLMENT".id_pk;
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
       public          postgres    false    215            �           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public."FOODPRO".id_pk;
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
       public          postgres    false    217            �           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public."GITANJALI".id_pk;
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
       public          postgres    false    219            �           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public."IMMUNISATI".id_pk;
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
       public          postgres    false    221            �           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public."INFANTD".id_pk;
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
       public          postgres    false    223            �           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public."INSPECTION".id_pk;
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
       public          postgres    false    225            �           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public."INSTDEL".id_pk;
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
       public          postgres    false    227            �           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public."JALDJALB".id_pk;
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
       public          postgres    false    229            �           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public."KANYAS".id_pk;
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
       public          postgres    false    231            �           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public."KARMATIRTH".id_pk;
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
       public          postgres    false    233            �           0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public."KCC".id_pk;
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
       public          postgres    false    236            �           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public."LANDPP".id_pk;
          public          postgres    false    237            �            1259    30394    Login    TABLE     X  CREATE TABLE public."Login" (
    username character varying(70) NOT NULL,
    password text NOT NULL,
    user_type_id_fk bigint DEFAULT 0 NOT NULL,
    schcd character varying(10) NOT NULL,
    "Login_id_pk" bigint NOT NULL,
    active_status numeric NOT NULL,
    office_dept_id_fk bigint,
    office_id_fk bigint,
    desig_id_fk bigint
);
    DROP TABLE public."Login";
       public         heap    postgres    false            �            1259    30400    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    238            �           0    0    Login_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."Login_id_seq" OWNED BY public."Login"."Login_id_pk";
          public          postgres    false    239            �            1259    30402    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    238            �           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public."Login".user_type_id_fk;
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
       public          postgres    false    241            �           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public."MATERNALD".id_pk;
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
       public          postgres    false    243            �           0    0 
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
       public          postgres    false    246            �           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public."MINORITYS".id_pk;
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
       public          postgres    false    248            �           0    0 
   POE_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."POE_id_seq" OWNED BY public."POE".id_pk;
          public          postgres    false    249            '           1259    31034 	   Privilege    TABLE     "  CREATE TABLE public."Privilege" (
    privilege_id_pk bigint NOT NULL,
    parent integer NOT NULL,
    link character varying(70) NOT NULL,
    "order" integer NOT NULL,
    page_name character varying(70) NOT NULL,
    active_status numeric NOT NULL,
    view_sidebar numeric NOT NULL
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
       public          postgres    false    251            �           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public."SABOOJSHRE".id_pk;
          public          postgres    false    252            �            1259    30455    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    250            �           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public."SABOOJS".id_pk;
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
       public          postgres    false    254            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public."SAFEDSAVEL".id_pk;
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
       public          postgres    false    256            �           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public."SAMABYTHI".id_pk;
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
       public          postgres    false    258            �           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public."SIKSHAS".id_pk;
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
       public          postgres    false    260            �           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public."SVSKP".id_pk;
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
       public          postgres    false    262            �           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public."YUBAS".id_pk;
          public          postgres    false    263                       1259    30492    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    203            �           0    0    anand_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.anand_id_seq OWNED BY public."ANAND".id_pk;
          public          postgres    false    264            #           1259    30948    attri_table    TABLE     �   CREATE TABLE public.attri_table (
    id bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    a_name character varying(100) NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.attri_table;
       public         heap    postgres    false            $           1259    30954    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    291            �           0    0    att_table_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.attri_table.id;
          public          postgres    false    292            	           1259    30502 	   audit_log    TABLE     ]  CREATE TABLE public.audit_log (
    section character varying(100) NOT NULL,
    action character varying(50) NOT NULL,
    request character varying(100) NOT NULL,
    comment character varying(200),
    ip_addr character varying(20) NOT NULL,
    audit_id_pk bigint NOT NULL,
    login_id_fk bigint,
    "timestamp" timestamp without time zone
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
       public          postgres    false    265            �           0    0    audit_log_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.audit_id_pk;
          public          postgres    false    266                       1259    30510    check_First_User    TABLE     �   CREATE TABLE public."check_First_User" (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer
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
       public          postgres    false    267            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public."check_First_User".check_if_first_user;
          public          postgres    false    268                       1259    30515    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    267            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public."check_First_User".user_id_pk;
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
       public          postgres    false    271            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.dba_financial_range_table.dba_financial_range_table_id_pk;
          public          postgres    false    272            0           1259    31114    designation    TABLE     �   CREATE TABLE public.designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    office_dept_id_fk bigint NOT NULL
);
    DROP TABLE public.designation;
       public         heap    postgres    false            /           1259    31112    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    304            �           0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.designation.desig_id_pk;
          public          postgres    false    303                       1259    30525 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    208            �           0    0 
   doc_id_seq    SEQUENCE OWNED BY     >   ALTER SEQUENCE public.doc_id_seq OWNED BY public."DOC".id_pk;
          public          postgres    false    273            2           1259    31156    financial_year_master    TABLE     �  CREATE TABLE public.financial_year_master (
    financial_year_master_id_pk bigint NOT NULL,
    "scheme_table_id_fk " bigint,
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
       public          postgres    false    306            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq OWNED BY public.financial_year_master.financial_year_master_id_pk;
          public          postgres    false    305                       1259    30527    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    235            �           0    0    kishanm_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public."KishanM".id_pk;
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
       public          postgres    false    275            �           0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.location_data.location_id_pk;
          public          postgres    false    276                       1259    30549    location_master_block    TABLE     #  CREATE TABLE public.location_master_block (
    district_id_fk integer,
    subdiv_id_fk integer,
    block_name character varying(150),
    schcd character(6),
    clucd character(5),
    block_id_pk bigint NOT NULL,
    block_mun_corp_flag character(2),
    block_kol_flag character(2)
);
 )   DROP TABLE public.location_master_block;
       public         heap    postgres    false                       1259    30552    location_master_district    TABLE     �   CREATE TABLE public.location_master_district (
    district_id_pk bigint NOT NULL,
    state_id_fk integer,
    district_name character varying(100),
    schcd character(4)
);
 ,   DROP TABLE public.location_master_district;
       public         heap    postgres    false                       1259    30555    location_master_gp    TABLE       CREATE TABLE public.location_master_gp (
    schcd character varying(12) NOT NULL,
    schname character varying(100),
    parent_id character varying(12),
    gp_ward_flag character varying(2) NOT NULL,
    block_id_fk integer,
    gp_id_pk bigint NOT NULL
);
 &   DROP TABLE public.location_master_gp;
       public         heap    postgres    false                       1259    30558    location_master_state    TABLE     �   CREATE TABLE public.location_master_state (
    state_id_pk integer NOT NULL,
    state_name character varying(30),
    active_status smallint
);
 )   DROP TABLE public.location_master_state;
       public         heap    postgres    false                       1259    30561    location_master_subdiv    TABLE     �   CREATE TABLE public.location_master_subdiv (
    district_id_fk integer,
    subdiv_name character(100),
    schcd character(10),
    subdiv_id_pk bigint NOT NULL
);
 *   DROP TABLE public.location_master_subdiv;
       public         heap    postgres    false                       1259    30534    meeting_schedule    TABLE     �   CREATE TABLE public.meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16),
    end_time character varying(16)
);
 $   DROP TABLE public.meeting_schedule;
       public         heap    postgres    false                       1259    30537    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    277            �           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.meeting_schedule.meeting_id_pk;
          public          postgres    false    278                       1259    30539    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    245            �           0    0    mgnres_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public."MGNREGS".id_pk;
          public          postgres    false    279            %           1259    30999    notification    TABLE     �   CREATE TABLE public.notification (
    audience_id character varying(10) NOT NULL,
    notification_text character varying(50) NOT NULL,
    notification_id_pk bigint NOT NULL,
    "timestamp" timestamp without time zone
);
     DROP TABLE public.notification;
       public         heap    postgres    false            &           1259    31002    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    293            �           0    0    notifications_id_seq    SEQUENCE OWNED BY     \   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notification.notification_id_pk;
          public          postgres    false    294            ,           1259    31068    office    TABLE     r   CREATE TABLE public.office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
    DROP TABLE public.office;
       public         heap    postgres    false            .           1259    31076    office_dept    TABLE     �   CREATE TABLE public.office_dept (
    office_dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    s_name character varying(15),
    office_id_fk bigint DEFAULT 0 NOT NULL
);
    DROP TABLE public.office_dept;
       public         heap    postgres    false            -           1259    31074    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    302            �           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.office_dept.office_dept_id_pk;
          public          postgres    false    301            +           1259    31066    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    300            �           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.office.office_id_pk;
          public          postgres    false    299                       1259    30541    profile    TABLE     c  CREATE TABLE public.profile (
    username character varying(50),
    f_name character varying(50),
    m_name character varying(50),
    l_name character varying(50),
    mobile numeric(10,0),
    email character varying(50),
    designation character varying(50),
    district character varying(50),
    image text,
    profile_id_pk bigint NOT NULL
);
    DROP TABLE public.profile;
       public         heap    postgres    false                       1259    30547    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    280            �           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.profile.profile_id_pk;
          public          postgres    false    281            4           1259    31169    scheme_dept    TABLE     �   CREATE TABLE public.scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint,
    office_dept_id_fk bigint
);
    DROP TABLE public.scheme_dept;
       public         heap    postgres    false            3           1259    31167 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    308            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.scheme_dept.scheme_dept_id_pk;
          public          postgres    false    307                       1259    30564    scheme_table    TABLE     �   CREATE TABLE public.scheme_table (
    scheme_id_pk bigint NOT NULL,
    s_name character varying(10) NOT NULL,
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
       public          postgres    false    287            �           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.scheme_table.scheme_id_pk;
          public          postgres    false    288            !           1259    30569    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            �           0    0    table_id_pk_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public."table".id_pk;
          public          postgres    false    289            (           1259    31042    user_privilege    TABLE     �   CREATE TABLE public.user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint,
    user_type_id_fk bigint,
    active_status numeric NOT NULL
);
 "   DROP TABLE public.user_privilege;
       public         heap    postgres    false            )           1259    31048 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    296            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.user_privilege.privilege_id_fk;
          public          postgres    false    297            *           1259    31050 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    296            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.user_privilege.user_type_id_fk;
          public          postgres    false    298            "           1259    30581 	   user_type    TABLE     �   CREATE TABLE public.user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(20) NOT NULL,
    active_status numeric NOT NULL
);
    DROP TABLE public.user_type;
       public         heap    postgres    false            �           2604    30587    ANAND id_pk    DEFAULT     i   ALTER TABLE ONLY public."ANAND" ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 <   ALTER TABLE public."ANAND" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    203    264            �           2604    30589 
   AWCC id_pk    DEFAULT     i   ALTER TABLE ONLY public."AWCC" ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 ;   ALTER TABLE public."AWCC" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    204    205            �           2604    30591    BAITARANI id_pk    DEFAULT     s   ALTER TABLE ONLY public."BAITARANI" ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 @   ALTER TABLE public."BAITARANI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    206    207            �           2604    30593 	   DOC id_pk    DEFAULT     e   ALTER TABLE ONLY public."DOC" ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 :   ALTER TABLE public."DOC" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    273    208            �           2604    30595 	   DOG id_pk    DEFAULT     g   ALTER TABLE ONLY public."DOG" ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 :   ALTER TABLE public."DOG" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    209    210            �           2604    30597    DOPTUHD id_pk    DEFAULT     o   ALTER TABLE ONLY public."DOPTUHD" ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 >   ALTER TABLE public."DOPTUHD" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    211    212            �           2604    30599    ENROLLMENT id_pk    DEFAULT     u   ALTER TABLE ONLY public."ENROLLMENT" ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 A   ALTER TABLE public."ENROLLMENT" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    214    213            �           2604    30601    FOODPRO id_pk    DEFAULT     o   ALTER TABLE ONLY public."FOODPRO" ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 >   ALTER TABLE public."FOODPRO" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    215    216            �           2604    30603    GITANJALI id_pk    DEFAULT     s   ALTER TABLE ONLY public."GITANJALI" ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 @   ALTER TABLE public."GITANJALI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    217    218            �           2604    30605    IMMUNISATI id_pk    DEFAULT     w   ALTER TABLE ONLY public."IMMUNISATI" ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 A   ALTER TABLE public."IMMUNISATI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    219    220            �           2604    30607    INFANTD id_pk    DEFAULT     o   ALTER TABLE ONLY public."INFANTD" ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 >   ALTER TABLE public."INFANTD" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    221    222            �           2604    30609    INSPECTION id_pk    DEFAULT     u   ALTER TABLE ONLY public."INSPECTION" ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 A   ALTER TABLE public."INSPECTION" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    224    223            �           2604    30611    INSTDEL id_pk    DEFAULT     o   ALTER TABLE ONLY public."INSTDEL" ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 >   ALTER TABLE public."INSTDEL" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    225    226            �           2604    30613    JALDJALB id_pk    DEFAULT     q   ALTER TABLE ONLY public."JALDJALB" ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 ?   ALTER TABLE public."JALDJALB" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    227    228            �           2604    30615    KANYAS id_pk    DEFAULT     m   ALTER TABLE ONLY public."KANYAS" ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 =   ALTER TABLE public."KANYAS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    229    230            �           2604    30617    KARMATIRTH id_pk    DEFAULT     v   ALTER TABLE ONLY public."KARMATIRTH" ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 A   ALTER TABLE public."KARMATIRTH" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    232    231            �           2604    30619 	   KCC id_pk    DEFAULT     j   ALTER TABLE ONLY public."KCC" ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 :   ALTER TABLE public."KCC" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    233    234            �           2604    30623    KishanM id_pk    DEFAULT     m   ALTER TABLE ONLY public."KishanM" ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 >   ALTER TABLE public."KishanM" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    235    274            �           2604    30625    LANDPP id_pk    DEFAULT     m   ALTER TABLE ONLY public."LANDPP" ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 =   ALTER TABLE public."LANDPP" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    236    237                        2604    30628    Login Login_id_pk    DEFAULT     s   ALTER TABLE ONLY public."Login" ALTER COLUMN "Login_id_pk" SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 D   ALTER TABLE public."Login" ALTER COLUMN "Login_id_pk" DROP DEFAULT;
       public          postgres    false    239    238                       2604    30629    MATERNALD id_pk    DEFAULT     s   ALTER TABLE ONLY public."MATERNALD" ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 @   ALTER TABLE public."MATERNALD" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    241    242                       2604    30631 	   MCI id_pk    DEFAULT     g   ALTER TABLE ONLY public."MCI" ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 :   ALTER TABLE public."MCI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    243    244                       2604    30633    MGNREGS id_pk    DEFAULT     l   ALTER TABLE ONLY public."MGNREGS" ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 >   ALTER TABLE public."MGNREGS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    279    245                       2604    30635    MINORITYS id_pk    DEFAULT     s   ALTER TABLE ONLY public."MINORITYS" ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 @   ALTER TABLE public."MINORITYS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    246    247                       2604    30637 	   POE id_pk    DEFAULT     g   ALTER TABLE ONLY public."POE" ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 :   ALTER TABLE public."POE" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    249    248                       2604    30639    SABOOJS id_pk    DEFAULT     o   ALTER TABLE ONLY public."SABOOJS" ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 >   ALTER TABLE public."SABOOJS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    253    250                       2604    30641    SABOOJSHRE id_pk    DEFAULT     v   ALTER TABLE ONLY public."SABOOJSHRE" ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 A   ALTER TABLE public."SABOOJSHRE" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    252    251                       2604    30643    SAFEDSAVEL id_pk    DEFAULT     u   ALTER TABLE ONLY public."SAFEDSAVEL" ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 A   ALTER TABLE public."SAFEDSAVEL" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    254    255                       2604    30645    SAMABYTHI id_pk    DEFAULT     s   ALTER TABLE ONLY public."SAMABYTHI" ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 @   ALTER TABLE public."SAMABYTHI" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    257                       2604    30647    SIKSHAS id_pk    DEFAULT     o   ALTER TABLE ONLY public."SIKSHAS" ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 >   ALTER TABLE public."SIKSHAS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    258    259                        2604    30649    SVSKP id_pk    DEFAULT     k   ALTER TABLE ONLY public."SVSKP" ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 <   ALTER TABLE public."SVSKP" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    261    260            #           2604    30651    YUBAS id_pk    DEFAULT     k   ALTER TABLE ONLY public."YUBAS" ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 <   ALTER TABLE public."YUBAS" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    263    262            .           2604    30956    attri_table id    DEFAULT     n   ALTER TABLE ONLY public.attri_table ALTER COLUMN id SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 =   ALTER TABLE public.attri_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291            %           2604    30654    audit_log audit_id_pk    DEFAULT     u   ALTER TABLE ONLY public.audit_log ALTER COLUMN audit_id_pk SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 D   ALTER TABLE public.audit_log ALTER COLUMN audit_id_pk DROP DEFAULT;
       public          postgres    false    266    265            &           2604    30655    check_First_User user_id_pk    DEFAULT     �   ALTER TABLE ONLY public."check_First_User" ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 L   ALTER TABLE public."check_First_User" ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    269    267            '           2604    30656 $   check_First_User check_if_first_user    DEFAULT     �   ALTER TABLE ONLY public."check_First_User" ALTER COLUMN check_if_first_user SET DEFAULT nextval('public."check_First_User_check_if_first_user_seq"'::regclass);
 U   ALTER TABLE public."check_First_User" ALTER COLUMN check_if_first_user DROP DEFAULT;
       public          postgres    false    268    267            (           2604    30657 9   dba_financial_range_table dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.dba_financial_range_table ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 h   ALTER TABLE public.dba_financial_range_table ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    272    271            3           2604    31117    designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 F   ALTER TABLE public.designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    303    304    304            4           2604    31159 1   financial_year_master financial_year_master_id_pk    DEFAULT     �   ALTER TABLE ONLY public.financial_year_master ALTER COLUMN financial_year_master_id_pk SET DEFAULT nextval('public.financial_year_master_financial_year_master_id_pk_seq'::regclass);
 `   ALTER TABLE public.financial_year_master ALTER COLUMN financial_year_master_id_pk DROP DEFAULT;
       public          postgres    false    306    305    306            *           2604    30658    location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 K   ALTER TABLE public.location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    276    275            +           2604    30659    meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 M   ALTER TABLE public.meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    278    277            /           2604    31004    notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 N   ALTER TABLE public.notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    294    293            0           2604    31071    office office_id_pk    DEFAULT     z   ALTER TABLE ONLY public.office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 B   ALTER TABLE public.office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    300    299    300            1           2604    31079    office_dept office_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.office_dept ALTER COLUMN office_dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 L   ALTER TABLE public.office_dept ALTER COLUMN office_dept_id_pk DROP DEFAULT;
       public          postgres    false    302    301    302            ,           2604    30660    profile profile_id_pk    DEFAULT     v   ALTER TABLE ONLY public.profile ALTER COLUMN profile_id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 D   ALTER TABLE public.profile ALTER COLUMN profile_id_pk DROP DEFAULT;
       public          postgres    false    281    280            7           2604    31172    scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 L   ALTER TABLE public.scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    308    307    308            -           2604    30661    scheme_table scheme_id_pk    DEFAULT     |   ALTER TABLE ONLY public.scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 H   ALTER TABLE public.scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    288    287            �           2604    30662    table id_pk    DEFAULT     l   ALTER TABLE ONLY public."table" ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 <   ALTER TABLE public."table" ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    289    202            Z          0    30249    ANAND 
   TABLE DATA                 public          postgres    false    203           [          0    30254    AWCC 
   TABLE DATA                 public          postgres    false    204          ]          0    30261 	   BAITARANI 
   TABLE DATA                 public          postgres    false    206   4       _          0    30268    DOC 
   TABLE DATA                 public          postgres    false    208   N       `          0    30275    DOG 
   TABLE DATA                 public          postgres    false    209   h       b          0    30282    DOPTUHD 
   TABLE DATA                 public          postgres    false    211   �       d          0    30289 
   ENROLLMENT 
   TABLE DATA                 public          postgres    false    213   �       f          0    30296    FOODPRO 
   TABLE DATA                 public          postgres    false    215   �       h          0    30303 	   GITANJALI 
   TABLE DATA                 public          postgres    false    217   �       j          0    30310 
   IMMUNISATI 
   TABLE DATA                 public          postgres    false    219   �       l          0    30317    INFANTD 
   TABLE DATA                 public          postgres    false    221         n          0    30324 
   INSPECTION 
   TABLE DATA                 public          postgres    false    223         p          0    30331    INSTDEL 
   TABLE DATA                 public          postgres    false    225   8      r          0    30338    JALDJALB 
   TABLE DATA                 public          postgres    false    227   R      t          0    30345    KANYAS 
   TABLE DATA                 public          postgres    false    229   l      v          0    30352 
   KARMATIRTH 
   TABLE DATA                 public          postgres    false    231   �      x          0    30359    KCC 
   TABLE DATA                 public          postgres    false    233   �      z          0    30382    KishanM 
   TABLE DATA                 public          postgres    false    235         {          0    30387    LANDPP 
   TABLE DATA                 public          postgres    false    236   +      }          0    30394    Login 
   TABLE DATA                 public          postgres    false    238   E      �          0    30404 	   MATERNALD 
   TABLE DATA                 public          postgres    false    241   .      �          0    30411    MCI 
   TABLE DATA                 public          postgres    false    243   H      �          0    30418    MGNREGS 
   TABLE DATA                 public          postgres    false    245   b      �          0    30423 	   MINORITYS 
   TABLE DATA                 public          postgres    false    246   |      �          0    30430    POE 
   TABLE DATA                 public          postgres    false    248   �      �          0    31034 	   Privilege 
   TABLE DATA                 public          postgres    false    295   �      �          0    30443    SABOOJS 
   TABLE DATA                 public          postgres    false    250   �      �          0    30448 
   SABOOJSHRE 
   TABLE DATA                 public          postgres    false    251   �      �          0    30457 
   SAFEDSAVEL 
   TABLE DATA                 public          postgres    false    254         �          0    30464 	   SAMABYTHI 
   TABLE DATA                 public          postgres    false    256   '      �          0    30471    SIKSHAS 
   TABLE DATA                 public          postgres    false    258   A      �          0    30478    SVSKP 
   TABLE DATA                 public          postgres    false    260   [      �          0    30485    YUBAS 
   TABLE DATA                 public          postgres    false    262   u      �          0    30948    attri_table 
   TABLE DATA                 public          postgres    false    291   �      �          0    30502 	   audit_log 
   TABLE DATA                 public          postgres    false    265   �      �          0    30510    check_First_User 
   TABLE DATA                 public          postgres    false    267   �      �          0    30517    dashboard_info 
   TABLE DATA                 public          postgres    false    270   C      �          0    30520    dba_financial_range_table 
   TABLE DATA                 public          postgres    false    271   �      �          0    31114    designation 
   TABLE DATA                 public          postgres    false    304   �      �          0    31156    financial_year_master 
   TABLE DATA                 public          postgres    false    306   �      �          0    30529    location_data 
   TABLE DATA                 public          postgres    false    275   �      �          0    30549    location_master_block 
   TABLE DATA                 public          postgres    false    282   �      �          0    30552    location_master_district 
   TABLE DATA                 public          postgres    false    283   /      �          0    30555    location_master_gp 
   TABLE DATA                 public          postgres    false    284   �0      �          0    30558    location_master_state 
   TABLE DATA                 public          postgres    false    285   �T      �          0    30561    location_master_subdiv 
   TABLE DATA                 public          postgres    false    286   *U      �          0    30534    meeting_schedule 
   TABLE DATA                 public          postgres    false    277   �Y      �          0    30999    notification 
   TABLE DATA                 public          postgres    false    293   �Y      �          0    31068    office 
   TABLE DATA                 public          postgres    false    300   HZ      �          0    31076    office_dept 
   TABLE DATA                 public          postgres    false    302   �[      �          0    30541    profile 
   TABLE DATA                 public          postgres    false    280   >_      �          0    31169    scheme_dept 
   TABLE DATA                 public          postgres    false    308   /�      �          0    30564    scheme_table 
   TABLE DATA                 public          postgres    false    287   /�      Y          0    30245    table 
   TABLE DATA                 public          postgres    false    202   ��      �          0    31042    user_privilege 
   TABLE DATA                 public          postgres    false    296   �      �          0    30581 	   user_type 
   TABLE DATA                 public          postgres    false    290   \�      �           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    205            �           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    207            �           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    210                        0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    212                       0    0    ENROLLMENT_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ENROLLMENT_id_seq"', 1, false);
          public          postgres    false    214                       0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    216                       0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    218                       0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    220                       0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    222                       0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    224                       0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    226                       0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    228            	           0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    230            
           0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    232                       0    0    KCC_id_pk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."KCC_id_pk_seq"', 4, true);
          public          postgres    false    234                       0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    237                       0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 1, true);
          public          postgres    false    239                       0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    240                       0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    242                       0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    244                       0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    247                       0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    249                       0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    252                       0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    253                       0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    255                       0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    257                       0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    259                       0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    261                       0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    263                       0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 1, true);
          public          postgres    false    264                       0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    292                       0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 103, true);
          public          postgres    false    266                       0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    268                       0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    269                       0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE SET     l   SELECT pg_catalog.setval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq', 1, false);
          public          postgres    false    272                        0    0    designation_desig_id_pk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.designation_desig_id_pk_seq', 1, false);
          public          postgres    false    303            !           0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    273            "           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.financial_year_master_financial_year_master_id_pk_seq', 1, false);
          public          postgres    false    305            #           0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 1, false);
          public          postgres    false    274            $           0    0     location_data_location_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.location_data_location_id_pk_seq', 1, false);
          public          postgres    false    276            %           0    0    meeting_schedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 1, true);
          public          postgres    false    278            &           0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    279            '           0    0    notifications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.notifications_id_seq', 8, true);
          public          postgres    false    294            (           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    301            )           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    299            *           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 1, true);
          public          postgres    false    281            +           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    307            ,           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    288            -           0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    289            .           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    297            /           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    298            ;           2606    30667    AWCC AWCC_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."AWCC"
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 <   ALTER TABLE ONLY public."AWCC" DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    204            =           2606    30669    BAITARANI BAITARANI_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."BAITARANI"
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."BAITARANI" DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    206            A           2606    30671    DOG DOG_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."DOG"
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 :   ALTER TABLE ONLY public."DOG" DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    209            C           2606    30673    DOPTUHD DOPTUHD_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."DOPTUHD"
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."DOPTUHD" DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    211            E           2606    30675    ENROLLMENT ENROLLMENT_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."ENROLLMENT"
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."ENROLLMENT" DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    213            G           2606    30677    FOODPRO FOODPRO_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."FOODPRO"
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."FOODPRO" DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    215            I           2606    30679    GITANJALI GITANJALI_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."GITANJALI"
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."GITANJALI" DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    217            K           2606    30681    IMMUNISATI IMMUNISATION_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."IMMUNISATI"
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 J   ALTER TABLE ONLY public."IMMUNISATI" DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    219            M           2606    30683    INFANTD INFANTD_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."INFANTD"
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."INFANTD" DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    221            O           2606    30685    INSPECTION INSPECTION_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."INSPECTION"
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."INSPECTION" DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    223            Q           2606    30687    INSTDEL INSTDEL_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."INSTDEL"
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."INSTDEL" DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    225            S           2606    30689    JALDJALB JALDJALB_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."JALDJALB"
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 D   ALTER TABLE ONLY public."JALDJALB" DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    227            U           2606    30691    KANYAS KANYAS_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."KANYAS"
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 @   ALTER TABLE ONLY public."KANYAS" DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    229            W           2606    30693    KARMATIRTH KARMATIRTH_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."KARMATIRTH"
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."KARMATIRTH" DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    231            Y           2606    30695    KCC KCC_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."KCC"
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 :   ALTER TABLE ONLY public."KCC" DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    233            ]           2606    31008    LANDPP LANDPP_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."LANDPP"
    ADD CONSTRAINT "LANDPP_pkey" PRIMARY KEY (id_pk);
 @   ALTER TABLE ONLY public."LANDPP" DROP CONSTRAINT "LANDPP_pkey";
       public            postgres    false    236            _           2606    30697    Login Login_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY ("Login_id_pk");
 >   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_pkey";
       public            postgres    false    238            a           2606    30699 "   Login Login_username_username1_key 
   CONSTRAINT     x   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 P   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    238    238            c           2606    30701    MATERNALD MATERNALD_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."MATERNALD"
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."MATERNALD" DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    241            e           2606    30703    MCI MCI_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."MCI"
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 :   ALTER TABLE ONLY public."MCI" DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    243            g           2606    30705    MGNREGS MGNREGS_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."MGNREGS"
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."MGNREGS" DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    245            i           2606    30707    MINORITYS MINORITYS_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."MINORITYS"
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."MINORITYS" DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    246            k           2606    30709    POE POE_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."POE"
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 :   ALTER TABLE ONLY public."POE" DROP CONSTRAINT "POE_pkey";
       public            postgres    false    248            �           2606    31041    Privilege Privilege_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Privilege"
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 F   ALTER TABLE ONLY public."Privilege" DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    295            o           2606    30713    SABOOJSHRE SABOOJSHRE_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."SABOOJSHRE"
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."SABOOJSHRE" DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    251            m           2606    30715    SABOOJS SABOOJS_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."SABOOJS"
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."SABOOJS" DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    250            q           2606    30717    SAFEDSAVEL SAFEDSAVEL_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."SAFEDSAVEL"
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 H   ALTER TABLE ONLY public."SAFEDSAVEL" DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    254            s           2606    30719    SAMABYTHI SAMABYTHI_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."SAMABYTHI"
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 F   ALTER TABLE ONLY public."SAMABYTHI" DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    256            u           2606    30721    SIKSHAS SIKSHAS_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."SIKSHAS"
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 B   ALTER TABLE ONLY public."SIKSHAS" DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    258            w           2606    30723    SVSKP SVSKP_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."SVSKP"
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 >   ALTER TABLE ONLY public."SVSKP" DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    260            y           2606    30725    YUBAS YUBAS_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."YUBAS"
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 >   ALTER TABLE ONLY public."YUBAS" DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    262            9           2606    30727    ANAND anand_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."ANAND"
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 <   ALTER TABLE ONLY public."ANAND" DROP CONSTRAINT anand_pkey;
       public            postgres    false    203            �           2606    30958    attri_table att_table_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    291            {           2606    31106    audit_log audit_log_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id_pk);
 B   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    265            }           2606    30733 &   check_First_User check_First_User_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."check_First_User"
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 T   ALTER TABLE ONLY public."check_First_User" DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    267                       2606    30735 "   dashboard_info dashboard_info_pkey 
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
       public            postgres    false    304            ?           2606    30739    DOC doc_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public."DOC"
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 8   ALTER TABLE ONLY public."DOC" DROP CONSTRAINT doc_pkey;
       public            postgres    false    208            �           2606    31161 0   financial_year_master financial_year_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.financial_year_master
    ADD CONSTRAINT financial_year_master_pkey PRIMARY KEY (financial_year_master_id_pk);
 Z   ALTER TABLE ONLY public.financial_year_master DROP CONSTRAINT financial_year_master_pkey;
       public            postgres    false    306            [           2606    30741    KishanM kishanm_pkey 
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
       public            postgres    false    293            �           2606    31081    office_dept office_dept_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.office_dept
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (office_dept_id_pk);
 F   ALTER TABLE ONLY public.office_dept DROP CONSTRAINT office_dept_pkey;
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
       public            postgres    false    290            �           2606    30762    ANAND ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ANAND"
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 J   ALTER TABLE ONLY public."ANAND" DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    3167    238    203            �           2606    30767    AWCC AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AWCC"
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 H   ALTER TABLE ONLY public."AWCC" DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    3167    238    204            �           2606    30772 $   BAITARANI BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."BAITARANI"
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."BAITARANI" DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    238    3167    206            �           2606    30777    DOC DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DOC"
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."DOC" DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    208    238    3167            �           2606    30782    DOG DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DOG"
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."DOG" DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    238    3167    209            �           2606    30787     DOPTUHD DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DOPTUHD"
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."DOPTUHD" DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    238    3167    211            �           2606    30792 &   ENROLLMENT ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ENROLLMENT"
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."ENROLLMENT" DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    238    213    3167            �           2606    30797     FOODPRO FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FOODPRO"
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."FOODPRO" DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    215    3167    238            �           2606    30802 $   GITANJALI GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GITANJALI"
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."GITANJALI" DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    217    3167    238            �           2606    30807 &   IMMUNISATI IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."IMMUNISATI"
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."IMMUNISATI" DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    219    3167    238            �           2606    30812     INFANTD INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."INFANTD"
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."INFANTD" DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    238    221    3167            �           2606    30817 &   INSPECTION INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."INSPECTION"
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."INSPECTION" DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    3167    238    223            �           2606    31009     INSTDEL INSTDEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."INSTDEL"
    ADD CONSTRAINT "INSTDEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."INSTDEL" DROP CONSTRAINT "INSTDEL_login_id_fk_fkey";
       public          postgres    false    225    238    3167            �           2606    30827 "   JALDJALB JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."JALDJALB"
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 P   ALTER TABLE ONLY public."JALDJALB" DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    3167    227    238            �           2606    30832    KANYAS KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KANYAS"
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 L   ALTER TABLE ONLY public."KANYAS" DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    229    3167    238            �           2606    30837 &   KARMATIRTH KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KARMATIRTH"
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."KARMATIRTH" DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    231    238    3167            �           2606    30842    KCC KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KCC"
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."KCC" DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    238    233    3167            �           2606    30847     KishanM KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KishanM"
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."KishanM" DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    238    235    3167            �           2606    30852    LANDPP LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."LANDPP"
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 L   ALTER TABLE ONLY public."LANDPP" DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    238    236    3167            �           2606    31125    Login Login_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_desig_id_fk_fkey" FOREIGN KEY (desig_id_fk) REFERENCES public.designation(desig_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 J   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_desig_id_fk_fkey";
       public          postgres    false    304    238    3235            �           2606    31095 "   Login Login_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_office_dept_id_fk_fkey" FOREIGN KEY (office_dept_id_fk) REFERENCES public.office_dept(office_dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 P   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_office_dept_id_fk_fkey";
       public          postgres    false    238    3233    302            �           2606    31100    Login Login_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_office_id_fk_fkey" FOREIGN KEY (office_id_fk) REFERENCES public.office(office_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 K   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_office_id_fk_fkey";
       public          postgres    false    238    300    3231            �           2606    31061     Login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    290    3221    238            �           2606    30862 $   MATERNALD MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MATERNALD"
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."MATERNALD" DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    241    238    3167            �           2606    30867    MCI MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MCI"
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."MCI" DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    238    3167    243            �           2606    30872     MGNREGS MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MGNREGS"
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."MGNREGS" DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    245    3167    238            �           2606    30877 $   MINORITYS MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MINORITYS"
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."MINORITYS" DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    3167    246    238            �           2606    30882    POE POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."POE"
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public."POE" DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    3167    238    248            �           2606    30887 &   SABOOJSHRE SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SABOOJSHRE"
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."SABOOJSHRE" DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    3167    238    251            �           2606    30892     SABOOJS SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SABOOJS"
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."SABOOJS" DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    3167    238    250            �           2606    30897 &   SAFEDSAVEL SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SAFEDSAVEL"
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 T   ALTER TABLE ONLY public."SAFEDSAVEL" DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    254    3167    238            �           2606    30902 $   SAMABYTHI SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SAMABYTHI"
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public."SAMABYTHI" DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    3167    256    238            �           2606    30907     SIKSHAS SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SIKSHAS"
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 N   ALTER TABLE ONLY public."SIKSHAS" DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    258    3167    238            �           2606    30912    SVSKP SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."SVSKP"
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 J   ALTER TABLE ONLY public."SVSKP" DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    238    260    3167            �           2606    30917    YUBAS YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."YUBAS"
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 J   ALTER TABLE ONLY public."YUBAS" DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    238    262    3167            �           2606    31220 )   attri_table attri_table_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attri_table
    ADD CONSTRAINT attri_table_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.scheme_table(scheme_id_pk) NOT VALID;
 S   ALTER TABLE ONLY public.attri_table DROP CONSTRAINT attri_table_scheme_id_fk_fkey;
       public          postgres    false    291    287    3219            �           2606    31107 $   audit_log audit_log_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_login_id_fk_fkey FOREIGN KEY (login_id_fk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 N   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_login_id_fk_fkey;
       public          postgres    false    3167    238    265            �           2606    31120 .   designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (office_dept_id_fk) REFERENCES public.office_dept(office_dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    304    302    3233            �           2606    31162 D   financial_year_master financial_year_master_scheme_table_id_fk _fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.financial_year_master
    ADD CONSTRAINT "financial_year_master_scheme_table_id_fk _fkey" FOREIGN KEY ("scheme_table_id_fk ") REFERENCES public.scheme_table(scheme_id_pk);
 p   ALTER TABLE ONLY public.financial_year_master DROP CONSTRAINT "financial_year_master_scheme_table_id_fk _fkey";
       public          postgres    false    3219    306    287            �           2606    31082 )   office_dept office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.office_dept
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 S   ALTER TABLE ONLY public.office_dept DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    302    300    3231            �           2606    31056    user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public."Privilege"(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    3227    295    296            �           2606    30959    profile profile_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_id_pk_fkey FOREIGN KEY (profile_id_pk) REFERENCES public."Login"("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 D   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_id_pk_fkey;
       public          postgres    false    238    280    3167            �           2606    30994 B   location_master_block rp_location_master_block_district_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_block
    ADD CONSTRAINT rp_location_master_block_district_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.location_master_district(district_id_pk) NOT VALID;
 l   ALTER TABLE ONLY public.location_master_block DROP CONSTRAINT rp_location_master_block_district_id_fk_fkey;
       public          postgres    false    3211    282    283            �           2606    30989 @   location_master_block rp_location_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_block
    ADD CONSTRAINT rp_location_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.location_master_subdiv(subdiv_id_pk) NOT VALID;
 j   ALTER TABLE ONLY public.location_master_block DROP CONSTRAINT rp_location_master_block_subdiv_id_fk_fkey;
       public          postgres    false    282    286    3217            �           2606    30984 E   location_master_district rp_location_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_district
    ADD CONSTRAINT rp_location_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.location_master_state(state_id_pk) NOT VALID;
 o   ALTER TABLE ONLY public.location_master_district DROP CONSTRAINT rp_location_master_district_state_id_fk_fkey;
       public          postgres    false    3215    285    283            �           2606    30970 9   location_master_gp rp_location_master_gp_block_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_gp
    ADD CONSTRAINT rp_location_master_gp_block_id_fk_fkey FOREIGN KEY (block_id_fk) REFERENCES public.location_master_block(block_id_pk) NOT VALID;
 c   ALTER TABLE ONLY public.location_master_gp DROP CONSTRAINT rp_location_master_gp_block_id_fk_fkey;
       public          postgres    false    3209    282    284            �           2606    30979 D   location_master_subdiv rp_location_master_subdiv_district_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location_master_subdiv
    ADD CONSTRAINT rp_location_master_subdiv_district_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.location_master_district(district_id_pk) NOT VALID;
 n   ALTER TABLE ONLY public.location_master_subdiv DROP CONSTRAINT rp_location_master_subdiv_district_id_fk_fkey;
       public          postgres    false    286    3211    283            �           2606    31180 .   scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (office_dept_id_fk) REFERENCES public.office_dept(office_dept_id_pk);
 X   ALTER TABLE ONLY public.scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    302    3233    308            �           2606    31175 )   scheme_dept scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.scheme_dept
    ADD CONSTRAINT scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.scheme_table(scheme_id_pk);
 S   ALTER TABLE ONLY public.scheme_dept DROP CONSTRAINT scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    287    3219    308            �           2606    30937    check_First_User user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."check_First_User"
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public."Login"("Login_id_pk");
 G   ALTER TABLE ONLY public."check_First_User" DROP CONSTRAINT user_id_fk;
       public          postgres    false    3167    267    238            �           2606    31130 2   user_privilege user_privilege_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT user_privilege_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 \   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT user_privilege_user_type_id_fk_fkey;
       public          postgres    false    3221    290    296            Z   
   x���          [   
   x���          ]   
   x���          _   
   x���          `   
   x���          b   
   x���          d   
   x���          f   
   x���          h   
   x���          j   
   x���          l   
   x���          n   
   x���          p   
   x���          r   
   x���          t   
   x���          v   
   x���          x   a   x���v
Q���W((M��L�S�vvVRs�	uV�0�Q0�QP��2T�Q rԍ����&���
��V�fV� C(60 �1�443T״��� Q�1      z   
   x���          {   
   x���          }   �   x���=k�0 w�
��-�'�=Iti��B�t�Ǔcp�P������R�n��~��^���z�˜��p��u#^��q�w���|tosΧy裏��K�s� �"mtY���	��1*R�Ѓ�bs�%8��*+9(_�Ɉ\P3����"���p�����1���:$�F̀�0C@V�E���I��v.��Ao]��*�6��
���[M�	�sS�      �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �     x���MO� ���Ov�&�m�|���[L㬋��ZXG��a����J�Uw&x~���[�f��5$���sV\�V�}2NK:��l����"�i~��
�o�m9��].�$��.��<��£/h�ؚ�v5�����*�p�i�&�s�	����
�Xag�Ԫ7�~!bՇ���o�9sT�h��)[qGܤ��s5T��Xm��@Oܤw'Ҡ�T��D{�q��';��X��EݟF�B�-+�b�?L��E<؈�(۫}���EQ8Xm�E)�2��E���y?���      �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   
   x���          �   3  x��Z]S�6}�WܗNvg(�!d�D�Rv��lhg��Q��8vF�����W�-98$
��:W�Ⱥ��$��M��?����=��i*�^J��OS^����>���:w9˟�+��i�J�S�ė2�B3��b!�Lj�O���C�<Tx� j�矏n�S3:�~�����o<ÚX��2�x�XX���9�-��ź����5�������`.�m΃P:�f|��\dT��1�`���b������>u`��Y}+������U�J�.�Z-�Ɔv����:�*���)V���H����n4{���ݒQ�MP��$S�l��y^�D	l$Ke����U �� �E�cZ�V�梠v��NKJ)Ҳ�i�T�(j2�(�R����c���O=�y�w[Lm���m�O�����3?z*���AH;�Q�$�M\Z�"iP6ʡ.��;�N�W+��l���#�kT��ﱘ*F����ʤp�<�/���1�׍�_q�*d�
���q`�0��5e&^���ՄMK��d6gI�a�e���
!,�|��K�
�Z�YF�8�Დ1���
�Â��TFX��8����iB%X'�)�g��,/.�8�&i�!!,&�Ӧ����{,��&:Ƙ��)��Hzā�A������I��
d���0���һ%x��
N�
�{�B��������Ц�^8���$�8��E~-iY��e�I���הB]jG|����k�Ob�q�<�-Nd�ά/eW"��&�07��.��A�i�n�'��ƋŦW�e`���RZ7x���U�]-LUi<���Dd������O�G6)�N���f��'�7z���!$��!��aH���S嬩��vEAK�5[d9��b��8��A]�]~�hV�Ҝ����#*�*�c�h�6���&�$�<�E0�9�K�]�1>l�)٩�C�c\��6{��vN��q�r�l�|^o��it�|A���κN���'܍d��3�%y�C7�B��F��j��Fg�&+��\�|�s���+r0�aU�X����/u��{ܡ�8b�ݚ�V���7����<�^ ߲{`���Sp�oW�D���=�KE�0��F����m���Yl��?�B:��5Z�W"y���iD��n�?y6�L��������W����
R�B�q��Bk%�/�jܢ�	���n��t�Uc�e�<*X�Q 2ӑBgR��VAR*���S?����O�'�9���P���su�Q�i���l�1�SJ��/�����5��_yY,���q�~����n.�>L� ��>(B�h��@�Y��e���\k�\�.2�g�V���C������Z����oߑ����!��V>Z�_2Y���u|�h�61�0Xλ���{F�Vv�P�"���4�rdFb�,Dev��������!F�|�4=�t���Dc��#�W�c����?�,�&m��`������9�˪+6�h����B㉌�׌W�:���레ZTE��K��/�%�Y8)�l"2�y{�VK��\09,L�`�p��m}��)�s%�����e�BG�������i�2��W"�
�\m(�P�P(rs{A�
uh��ޖ�^�I�m$o�"v#�����4���
�����8������/ח�vw���< � �ƞ�Ѷ*�΢[��4w\�\~es��@�`�4��I"��	�Q�G��6j�U&��Y�		�^|��;��7��:ܢ�=�J�4/N�3�^�p�?��b��PG�����9ԟ��\�̄���w[N�-�L��Y}�㯷_v����]�A�e<l�N�����:f3����c���&O������j=��[�Fd6(�nT�5��T��;g�id�(�VJ.�=350�a````��`Su���T��]5�Do�d���ޫÂ�J<ؠ���aj����z�:F���I����~�{�������-]7�M�I���ݛ|���~}3	.�6>Z�{�������$A�꾧X�W\�����"�"�5۾�i~c�7A);��qp�'(/&�.�p�ۙ���rw|�����XG�wڻ�3`;:�/Vi�      �   
   x���          �   G   x���v
Q���W((M��L�SJ�HMΎw�,*.�-N-RRs�	uV�0�Q0 "Mk.O����qq �M �      �   o  x����n�0E�|���JR_����(j	R��Z�I,��l�_?x��
���3w�؞f�����r�&�24U�P3"d��;��/���nޅ�P�n�0CɄ_g����]v1(�Jr�!�h�"�!j�5z�k�����j�/��-�Ts&,�=v�R��V7kR�ZԂElŉ��������S��]:ɷdEi�E�O��U%Y��|y"�aU��/�ʺf���mbH����sJ�L�*��Q
�.�N-�%4�(��\a��&:"{�����5�q�ƿ��V��L芺�֋��"�g�(��#�+Y'�E��Aj���1v��[e���M��|	��s��B{I���k<q<0�0,/��_���<�z      �   
   x���          �   �  x���Mo�0����������b'F�#��dHr:��������G:N� =D@$~L�|H�O&f�>�����_�}�����˧?�?_�\o���nĥ6]��1�C���z��h.oDu��σ���0e��x�x-�G��oEhT&�!���cN�>m��8q}>qI��=�aV����!R��L��Qa�`�����
>����j�`Z$A���<�w�JJL�dMD��8w�� �	�����)a�>�4�.`��ʢiDk4*�`�p�ր˖�%���^Ne�3�Bˮ� P�1��+�<�W�� �F�>շ��2MjO�5p�qU`w���I�	�!A���h}���=-������cBC[�M5m�3��XQ�9��A�h���ҭG�M)�wY�(�П�i;�ϣ^«���2�lǒ
�E-O�{Э@�� l�{T����k�* �x�x�g�Mb����z5'w����}����:��Qӫ�kz�,��>��v���÷(i�A�>S��Aw�֍=.9����FY?.J�{E��A'Y��D�o� ���4YY������w�'L��4��	IXK�`�H���E�a�+d\�`7�Ş�5ްC�&z�,�\NwE����Ӱ�8�/�0�E��Q+nmI��-h�|��v>l.���?�F�|      �   
   x���          �   B  x���=o�0�w~�7Z��0�D�.��Sc��S1U4]"EM������f���-~���s���0�Lž>Χ���r쮧���gw�����՛�"|b!O����Ǘ@��������ELzn���Z�H��bN"��g�U"5H�V��4Q)�k�WvR�3�����!hIeU��~B��Z� 5���.��I(̄�����	!!�s�@MB�Ѵ�.���09�W�A�@C��k�6H���-�=�7�#���`��14]}���i���[�u���@3w����%Md�F��0]^�$���WB�4��4���\R�V�/>E��      �      x���[�4�m���W�ݷ�,Ju�r������:4��ɬ��#N$����*Rou���R�X����3�(��H����0��n�w��?��_���_���?��/��?�������_�������n�˸�^?���ݷ[����w��p�=�}���kuR�Dї�H���+����??��w����qg���o�w�����]7����NaO���s���a�߄M�`~����u� 5IՑ�R�Q$JL5�!�X���C9�! NS���8�G������V���Ѐ����N�������j�����AW���*�������o�n#[�t��us�C�N��N�egzo�&�K&�,���Jw��:}�K`�i����NG� �ߞ�oz���z%$�����4fH4F�!ށQ0#K�X��˫�>���Hīu��݅�xt�V�r��`Ʋ\��͎�3`��4è�Oݽ����E�x�8y,�U7c� ��@q'W{1��s��-Q���1)`bH��|�ޘS��s�Et�i���L��:��:�Fw<����XR�,3�̘9�5A,K*�1���X6}�kg� �3���0�Qd�qb˦X��!�l��'f��p�F:�~6��1I����I�N̤�m��{�����N�uWsp�~�x�J�@g#�U]�)d8p�kD��<Vmߕ�&;�������zlp�� �W�(��(��V]��ۮfV,�~�~�a���N��X����_*?̉��w��wo�Q`f���'���k�g��$�I��>#L�8rY0���.�n������	h�T� "elR�a��m��w���$;���L+�5z�L�� �H�v+�$�?�S�I�4�>�?�ۆ0��:�]��3qDǒ1t�|g��-�h^��Kt.���b9F�Q7��?���z��뮫��9t���.Ļ�I�~�g��xbq���Y7�G��,���L����{(�`�Z[�fg,�so�j�D�w���YY�������# ě����$��b-J��8�pֿС��h�Q�����)�!Eٳ$�BlasH�����m��������G�A����:��D�3� ��z�

]g����C5�F�f��)0�Ln 嬯���h�L�&<b<�?�UęK��7�b?�.�[=�/�:��Ó"��uܨ��|�8�)���?�!�1�x����S�R>�6и���oƪ���vS&?l	W7�ˇc"A�+�[(�i���� ���Wp{���`Ϻ@
(J@e��l��C5�R �u])Ҡ�oοCDb"�w�7,ú��"�(S�w�+�ww�tS��������>�0�;s��F�<�e�������?���j��݀N�co"?y<���ą���Xߌ��y[w,�U%7��7��M��?7����a�Q,�D;[�ړ���SR{����]�z�vN�>��{��08������#+�5�����CM��N%?E��\o@C	#�,�/k�/6��V�2�j���Sd��e?�$����F�`>���q��	#g��ڥ�<]�%���r6�<�cF�������-�&Y�_��sNƲ�V	�n!��������^��<@��b�r��� �8Ƚ8���N�4�lM��#<LX7ɋ��2Ls�}�g�;l�y�3����Miꯕ���+�+�͒T����^��o���RB���(�u��K>tcv�����Jb��헳�	I�,S��7&'�4tFXh~^Rg��[�'m�u�Y����*���O�zx=�4�/��N{�j~�lʹ�����,�T���r}��9�?��Φ�2G4Òm�e'k�}Mgs9�f�
�����f�R�_�$���d��G���~ӿԭS�8��{�b�r����vƪ.���[\��s���blzsLm�3����b��
*�:'qj���>K۽�a����e!�cFHg�*�/w�wC��N�~ed�f�)��L���_�57�p1�n�K��*����f��U� v�>ݽJ��8�ى�:�-�Ԇ��	e�9,P�����+Eͮ���J�'ͧ�t{2�9]?L������5=?�$���vqV����/��V�'��NB���G���l��&�d�a�a�k��]{�ݹ�Cɓ�N�|�qQFe0�
�\v�b�Gc�
[�,LͶT��� �ؐU�=v������c��-~QQvײ�um��p�W6��xB}�ݯ`O[l<i����8�b�I��֏f��>7�<��2�ۋZ*޸v/��<�Cȳ�!4���p\����O�|�{S��H?�9��P��@yq]�5��j��n�z�|:�9��KL�sU{3��o����d��������^�_G6C�n��5�?��52a��%?���*��F���%6�b����+�����y�䅙p�� �?�N��K&���v�UA�����#���\�O	�eg`Fp��Z�����ʌw"N��_Z�Y�Y�C���%GF�؆v��Q������`@Z�p-�:]�EEv��a�CY��b�D�4�^�:`N��3(w��Ff���^Q�KIQ����
_A᯹��+�LڢܠT2�#���mb��u;Ă�<B��.�EF
N]�j�x��<�Z!��m�M��5��(���=��"���z�-����>c$�ٽ�q�1d����Wi�A��O��t����*��8��\��뮀�J�͂*ؙϝ���o4\(���_��Ż/�2�S�����G���HL3�8ͣ�fP�67~ț�G��8�~j�/�ȓ���\�0ɜ�� L)=��~�[�������yb�csx��e�_:ǈMkf9��_K�]�����嬥�� ����I�n�=���CRޒ������7��<�b�9d�0�^G���8yer�|��;�%�-��Tw�z/EH�[M�O�m�)����.l��w�Cb~��TV�/�
�Z��\�yf6Ђ�T��]��9�GR��1�.s>�� �na�n���b+u��G���M���C�XC_�|i�P$9�Ɏ�}�^�Ηp߸�����,Bx���VO�6\��אI��c!Hc��EY�_艌���d�4�m/��y�>�qb���Q/�1���ž-8{�p:J�}�'t�N��r�z��x�'�����$�/ٔa����o6,��b)�ƗvbJ��k��-�]����g{���s�C!{�ȥ͑yuG���+6�dY�_��pO[�\e�f���h�-U���j~n͟��+�8C��M6�o-aA�u}�ٲ�����+N�æ%��З�C�ɿ%�֏�����ځ��/��	�k�gr!���n������l��'����Vsg,W��ӫ�hq�F^ȧ��ߺ�HN�T�����a�0�1M�#tM.90���e����s仳,��ō�d�%��:�;�+}+u�0��5�zt�kίy,	
�[.���P܋����;���Mceg��'^&?��8 �Ca��3r��Z��T�IC9v$��	z�������Cˊ���9(fp[p����E�l@��U?������/1�9�q���`��Z~�F���	Ɣ�"�X}�����J������&ʠ?|[�$���D~ٹBZ�E�B�yG���@��gf�b�3�*;�X��'x9$��u�ӥi���.J"B�� �-��4nn��*��=Q��T~A�TW��7j�{�0(�8yk�0�Q~�����~<}��^�M�9��DȻr{8G%�+�7M)*�Uo6�~=��u��]�4���l��Sx��������+5I�\��=D�����{G]��ZD)�U�;���ɻ]��' 
Z�QTo�^1�(�p���z�ro��##�
�Ӻt�ɍ�1�e�Ӵr�����u�N����V��p�(��\����*�o����C�����q|W�s�'�_W\��rU�������a�1��0gL�r�]��Nao*�J�@[w��s*ǌ���D�|rPg���F9�+���F���<�0�>%��R��r����W��U����X+e�:�|/�� �
  ���%e���[8���{|-K��SL^\�[5K�6�c���D�����mhq{�G�b�0�� h$�7���-]9kn�^`�H�ѽv�!K[�͒���<��x[[��o�����u+զ��O���y�� �H���V-�!�yܼ�&VxD9�;�	Ը�9�Đ
�y���,�Z��I�5�cIL��'��=`R�k:�ܶ i� ��Ry�� �A���*�>�\WAA��\bԭ�I�Q�Vr�8?����f�H�#A��Z�V<u)��ro��a��{��N�T�im�F+եq�<�;���c�P�/5�.�d���c�Uy����D́�#�rz��8��.1A��6t`��r�8����̞�X����T� - ���gk��&Ƕ���EEos��8���&M�%/=	<���4�*$%w�l�O-Q�/0�����O1S�����s�w����<����C/v������OB�/Jj��~�QR�>G�5Q\Ұ1zv֓�C���(�� X{��8��WM�(���J��I�[v�Q7,:W�(�L�M/q��T�79r맹A�E�"�]O�%�ׅA�s˟�|n����(�s۽�8h���-�]`W�����v�7����ο��@Ý�l ���3_�l!���X��P�Jc�a�7��|�Bf��j�L����8�.�~��4.\�(w!�m�}�m��I�ka�L����:}�F�c��o����-<Ʀ:,�����-@��E�;>೓Q�6t��f��R�%���﹎p������vSe̸��YCp�S�Gd��� R/����x��	GH[L�~13���0�M��3�n����mz�zl����þ08�������Kˎ`��!�'���ߤ�x���G�x<0yr�n��m˟vۇ���'Ap���)'()��I�������gy�ו�q[n�H��(B.D��4? 7y����y��(�z����w��t�C�7�����Χ�� yh�Gx�3��,���'�Qཟ:p�#���c��J�k��cj�]����
����j�Φ�p*:-^�}� ��h��e����7|o�]���J�\�J�$O1"��w5���+ynQ�>9f�2�?����o�m9�<�}���1�ܬa0�M�i��͢�5�b�	>���1y��s(Be �}�'�w�&~�~O7���<qӈ�ҕI�~���ؿ�/8aj�\����򆕛.S����3��)p�+?������j��!&F��o�3��"V��L����˳ �)���4�� ���g>ȾϪ�[?]X X~��������6R�FU&��r7�>�H�E��(d��d��T�������%�������6C�c�����reG�O	7 �i%�p�<q�����j��l����6>�H+��fy2
A����Y��EZ~�J����s/�a7",�>�s��a���o�~�!���� �V��!�m��`�D���^=
�N��5�im��jD�`mry�
ft��qǠ=��a#�mc�y�*V(��̇HE"��n[1��4�w�QW�}@rrr�T -��A�&�(��(�=}jۦ����W%O%eN���v�� ����JO(�FPX�d�X�ls1'�J�`��B�Q�� �n����FQCO(�	�;@>UR7��p����<!�%�$l�!��kn��\����.cU��1pPD����\΃/���ƫ��-"fl��f�Bu�6�"�,��#��&)b���/���rｎ�2�p�o�=,7[��G&7�}�7~�3a@���� ˧�`�Bl�J�yX�q��*5o�׼<���=ya1��q7�0��̡yx��"�y��|����ȁP�<��p��9eO}���<	+ �$�"Vk�ʭ�=�ͅ1��˳�[�3ڸ���V�A��8��e��h��=qy�C�����g�m��F�=F/R'���z�G�A]M��c����\hc���b�Y��S]dև-��~ ؔ0��@���6�w�! �8��I�[�7�w�20z�\D��{}���0$0!����(�_'dDkts~+5� �p������<z��#�4Fƃ]�/���o����|.��Υ�Fc�|0�*?K�a_�hgnɠ��7�t�i4><���7��D ��M8Q�p`ɏՇ�=��Ѧ#s�|��s ����:�s�M�Pޢ�g�� ���+�>�D+f�죴�Z��@�w���>J��s@��Qz^-�t%w3Q��!j���^�}S24����=ێn�L�_:i���T�����S�by;�j�m.���X4D5fՑ��rE(�!��v���˧f@������f���+��������ի�*���p�l��9=l�4΅��=��h��,���!��oy�<1�A�a��Ӛ��%�����C~��������aܼ�~�o6�2��.T��6-J�������|v���_N9�8\�慴��.20�3�f6�!]���wW��4�� �Wp@L����p����0�m�^�#��S^`�<��c	4<B7B�`r��M�|�^�j��Q��!�a̶�0�1�S^����Ǆ�*� �C��/�7�P#4Ggʦ�a��r#��g��,c践G���yg%�������s%�*�J��E"jk�	K=|\.M��	[<˝u!Ҵrmc��-��Sv���<)0y0c���%���&\�� ��c������� n�0^��� ��:x�#"Jx�N�E���+���:��\�. !���ْ��E��%����_C؄      �   �  x���Mo�0�;�"76	MM��N.�Hh�Ti��bl�JlL�����A��c/�\���m���i[;����ov��n{n�����vܼ6��ٝ���U�N��
L	z��_|����cO�a��Ϥ��*�GtDEG*!�����ʎ;� #A!6�bĂok���DqJ���j��P�6�j�N� 5tO��ؤ`��#7$s�v���u��qᓋ�+�6/�>'�8�����-,����,�[(�j1��
ޑ`~
�!�����%w&�:Έn�3��
���%�G�c<��{K�/�"1�;���

�(����:��lB�g��|����mX�pT��	�+���'��Ȕ{�� s��<jn��9z���WYfthBo#^�J���V�z��7(�M�      �      x���[�뺲%��_ᷓ g5��ey���,Z7C�=�[/�N#$�F.�?,�%�L��1p���X����AVGU�n,�餻�?�����?��������_���������?����������?�o���/���x��-���9?����O��T�K����_�;����?%����?hȸ��VS9�V�_��~
�/�N�����{��j?9ۇS����#��I��������b���j�����O�'���7�ܟ���7�������/�~*�gS����jz6���ӹ���
��v���`��1Ԫ�U������,�?��P�ZuS���6�d�I�	�d�znw�F@9���{�c��Ib-��T��VuUN�(���R��jԡy���|��yP���C� ���l�?5���t���9Y��I}�Jו��!PN'�Y�/���pBuO�^Qb'˞�9FA	�6�IM���2R���%v��n8F@���>�ϱy���x������B|6�=s�Ee�N3�נZ~���E�
|Fg�e�3���W�ڮ���x�-��^�`�pyR�-����6�I�ۨ{����w����e!�y�=���e����kk߾����s�C�&;I��zsVhe>�Iu5"a�&$���9���:�������~V}P'��w��C�XN��/"�� P�_��Ӝ��>~R��ۓ�>�{��Yn��%��9������(����B�ׁ���X򑎡p�/�U�Q�k��#��y��ͧYL��G�H$3 ��],��jV�!���>��Q��X~�y<��^1�#/�g�Os}�G=�ϼFu�C�?~eF�j8�ԃ����`���â�{��	}�G���9kv�(=����u!A�Z���k���_�{r�rA��+o�����v�Ri��'.0��P���]�l���x}�y}_��I5�+@Y}ug�"�[>z8�����f�x�V��	�~���`�/������l������y��:�)���}S�oʸ�=VǛ�f��q��
���=����6�7c��my`��C ���I=f�?�;�����l��k���Ǘ}��7��WJ�M��>J��rt~��ߏR����z�����}�ַe��hC���%�������������!�t���V?���2��x����xb�j7�~�mc}���+�t��lc�pN���e���0���qv�2�Ͼ��E\�!��u���9I����F���q�ђ�C
�=vN ����i�����o��NE�F؉���.ت)��o8��{�c��ɲն�:���;]�Ϥ㴸��^�t���E�{n�� �&������r\?��u?��|_�749~�D��HA M�݃�|  ͜ݗ/���C�h���x�qL����&���ݛ�F[G�����$���<�h��Y�~nVW;`M�ߗ�6��p�h����O���w��K�a6��y��C��a�.��r��:4������ˠ�u��fMk��*P
�Ta�t9�)i"�� z��m��~�oO߮���0T��`�'�y��Co�3���1�sک?�kY�Qz}�M��b���w�� �I�n7�I�~�^�7ꆻ{ئ��Qu��Q�%�ǹ��{  #{�*���H sک
2!ɮ��W`�ԇ��`��X5��fWy�--��h$`Xh��$��7+@�8��e݊��(�q��o�_	-9�KJ�1zg�szU��E���qV�������c��8�E�͇4����;�Ė�8�@	�2[t�l�����Pn���[R���G9}��]ž#Lwfͻ��ӆp��S���ڧ_U�m�> J�dU��y _����
�'�D�Pfs���Fg�^�����%��z��F  e�Ke>�r��ц@��;�:�" ���S�qqt���?��o�cP�F/���R�1PƯ	M�N��& �2>��&m�ꤛ�	rrA5a$�� (�s��)�_�5�$ϗ=��J�G5�Ǆ�<_���ex�q�0�T�>���ە,u��ͮ�R�:�@��7�w�!�곌�:/��!p��e,*=V�l���1�E�<�Jo� �� ��SQ�@�����R�·�@嶻���po���@��;�^��5u��S����{6�~0�# ��.����Z<�S�~� O&o5(�/NK�����㊼yL�F���ÜJ��+EQ`�/�%�򝓹�V���(3�{7[Z�����K"fc�<U.���:Fwc�!����s.��I��sY�s�(
ӥ���;_O��Jo�I�.����Q���:=%�f�ȄF�ĈM���Ǆh���3(/g�s��)w^��9���n����}��.m���dN��� ��lvY�A=+]G����솱d蚩)��l�(��O���:�U[~�/�0���0E�E����_���p^m	���o�E�:4�o��g���y�{n����Y��4BZt%�T�s9� �!�,E�;�_�6(H�����:�|�����{�|�`/���u��k�ݙM�{Us�I���}Yk�T�}��^������7J��Z�Q����C����r�j�<$P���
�x~U��Nu�7��B@1Z�Z��$*7����l��S��7�G�X����-��>.�h�K�r���I����z�J�3�-�ky �wk�!C��fI�ʓ���c�٫ �|��ki�Z�z�j�r|#�´�%����>��M!kܦ�m��df},u� %�Y)��t�]>���*6��r%$���vd���̃@i�"�c=4�r:e 	cv��r:ݤ��~:��2�Ż�6_���:~J(�]�+ �0RP�F�7�m�*91Pj��z�u�>Jm�n��A�:�C��gN�}�v9q���P�6P�F�/@��&�T;�@Y�z����~�G���7��3{M���I�r�r��C�6x�5}��>��x�G}�(�ϼ?����8��B4���t�oo��t�SqQN������]�"�N��`Фٍۑ�� �5sj7� �3V�����e�<4c��ź�� @SfN*���ީ`��Y)F�E���8�7qy 	̈́�f�lM�,ڮ�0�t��	�cP��o�1�N��DVJ��5S'@"(0˗�zP�Ι
 �4O�B��e�rcIr�봡�;ۂ�P����`��A	��^�?]|)(�/�1���������J�Ny(�/�O�� ��rV|����1�w�����>J�˲6=%��ͣ�vW�m_���:L�u�{kQe@�	��}˷�# 0���Rڕ@%Z�m�F��k�M]���(�od%�SN>��gi�*��oP��o�IUύx� ���Lu�>��r���v���x+ ���]�n��Δ�\c�@Y�>�!�����yx�i(�sWm�BD0pV��g���Gi��QG��C�Z$%Wj�
j�!�!D PR��R6W ;̇0Pj_9��bD@Pr_�U�j�bP�ցr���_�i�  J�U�U��W%}QfM*�V��m���^BNXJnn�(@"((�����I�A���q��\/<󨴐� p������>�`�k�'0" (ŝ�9�]D�P��hNd�'��y��.�&O%O��S/���-}0���5YK�ɺ=]d�����vZ��_�w�R������(B�Y�A��>��A�Y�ڭV���|��w�2���ޱ� ��rV��o�"< �g9k�� ���@>�߭t�	����=*�f��q;�y+�; �Ǘm�J���c��/�4s���U)�QTrOh�a��-�&pR��	���j��}�Ɨs���v�Ӯ--gݛ�#2�,��j��r�1� \�}*5��cD.x��!r��>�B��)h@�3+��o��e�@��\llv���V��t ct��i�O���9�>(3+�s����c��\J���9�������N�v�  F䂧���"��1���	�"�����K��� Jd�"��V=R�;� �c��z�C����N������֐J�B��r�A�=+u��ڲ����?,"�eW�QՂ�)�c��N�7͍�س��@Y�sQ�I!��    $��@yY������!��vY܇�U;;#��G�ʗ�A��Y�S��� P��|V7�� �4�y�g3�g[��� �pwQ��N��:��A�Y��m����mPgVpf�S��S���t�����n��"�p��p���k@Y��S�^z�m�7��!�,_��u/��Ql�Jo�r�O�ڱ�C@ٽ��x�[ e��b��+@��4!�9��S��c�s��a@�Y�ʐ�:�G���_ǫ�fE�p<��n8���1�1F���r��܇��a�x(���G�� J���oЃ��x��y�O���WMSY�w�� J�bU����*
 ��w�gM!B](:+x�x=��8 �\/��s8=�ޮ�DQat58��>Fbs8��:A����U��Z�Z=<�.U%.�.-����/꟪6�]M�O�xH(�vb՚#��w��eg��)������"��+��|w��D�/�X �<�bS��! ��
�~��y��W�I����i�)<����|ag��q�xv����7�J���W�,� J�gg�"����A����_T~yP(�o;�ݱ}��\;O�L��Q1 r���i��:2�7��
.:7q��d�s eu�V-6s��b�J�z�d�$��.-O57j:�5�k谀�/�C@)�ڻ~O P2g�g4�����R9��b� �lθ3�h���t��ų�;�C@�����d����
��
��<H�$��B1AMI2P�V�(�P��[G	�$1�h{1`/�����~��A)�1���c<�(�y̔y�"��G�|��4G��\�3��1���s�U�SO�&g�\B@�u�q�-O�oP{VpK��چ5Q��\�?_W>>Hf�:cg4m�߽ �g�!!&������u��i~섊uC���|���q�ʗI#�1��Ju���g  lF�%T�tl��u��"!`G-J�!0R_��ʦ��j���]�j�X.#`���-�E�} ����L��(��1F_��~�oR]�E��ne����^5q�(�3�.v�3�xh7EhW�ǋ�) ��Ώ�a6ñu��W�5�q����V�M��A�ٕ�w9���� P�`y*�C_�2� N�`�W癐���ԠC�y��@y��NV��&�
�Gi��N�A�#{4�U�Y��N�,��B����n�0
�, �<IWy&�e��Cy����!Hj����ly�$���:�k����O�.rEB����2eq���G@=p�)�XZF) G'����- ��w$}T=���*  F҉k�@B�ո �Z�` �\x��C��|�h(�
��`���|��Fӗ��-���:����׻̛�����=�U?�o�@鼊��Ћ�	T�8ݓ9�k�"���d��z�]��r٩���13y	}��7�`>/ɗ"��rڅ�JWk�6�
Â��\v=RT=)��G�fI�n;�8����I0sc����c��9w���*P"��v�!c�  ��U����g�ɜKR�4�š�r�U��v���c��.C,}8��T̠��e�Z*����_t�5?��G5d܃��r��= ���*����= ��)k��v�c <ý\p��˃:���]t-(�]��)�	�����Q��NhJ�Rd�䄀�����=��= 4�.�r�i�{h]�������u�`�8�X'�	�cP8v�X�Y>���|���
ι~�(/�hά�������������A�ؕ�H6�Nn�'��&F=P/ve-.D`rs;3[�s��2���P��4E*��Am��
������	��@�Q@�uK5s�<J�U+��  J�+;�;G- ����N�]D?��9������|mB�~d+� J�+�g�e�S����I�QP�M1 �*dYB�]PLF�B$��p�Ws�S��cPKFׅ٤|�C�ݬ�T���8��?$8���J�P�Wu�n��Il �:�A��jxɑW��<I�DP@��H�A�	F��kWA�5�_2.q,���4������!pڻ��i����mSڑՠg;~,+Q�x*�,��� ���$��q�Lgu�W�P =��[������@�u'�������@��u�~�!���wVU7}�����}��B��sxf[FPG��"��j�?Q��7��m�u�M���9�'k>b���x���8���k=�n2i  e��F���"����Tv�k��n�p ��y�ö_�=$��>���t���I�
�B8��SBAO��ڍG�<�=��>�w0�������S�?��^��}����QZX�� ����Afv�7 u���iI[��y�;�d�o=E�:�n*�{~i�����.���I�] �g7�vա�#�)���w |�(�y��Fw.�T�R�����j,�Jd��T�Xm��{=���+.�Ԍ 2	A�u��	�[.�!���GHu�PE��d=�]�VMw_�>����!�#�gu��P��ä� ��}�����e�u<�z��)�wUfW�K��.��Q\@�ٕ�.�+���Ә~�a#�Ǳ�.�^��>z�}��% �8v�f�փj�艜r]�SS/�ӳTCu���)W
��2oz.�KG�9�=o����:g����ޱ�U{�C@y�.���9%D��9"�V��x`������Q��	 ��׭�ľ��5-P�;a�4_gǬ�����X&FAP�_YO���]�x(߯,c�J����m�Q��S]�?T(ѯ�8����4����.ۗ�j��f @E8=}����Q dx�^x��n����wz��빑����pP�F֗{�u?%�E�!@Z�g��MF0R:u1��| �ϩy � 2:=sA󌞶�^Ȟ|���O�����> J�3�r�d% ��.���C@�|��.��k@�g�Y8�v�1z\���q����&2wL��AKn|%�P�<�< �����3�_7�`���Ƃ�?C�'��{)L�^��@O��6J�k������{����j��� >
*@Kn����=��[�n1���,z�^ѵ&���BK�M�j�����R�ξͮ]]  �7�$�;�G�E���]�w_J= �����> J�_&(�9yz���+I	
��8������¹����T���~��*4�z|��d�7��!P~_�m�Hb�&��ޗ5�n�W@��J���No�>��o��'be��6Ƕ�w�(��+�� �����]���	�z���@A9�m���Q����E�f����Q�µ�������+_�@�ұj"(��Ʋ������}��ܶKz��>�@���̜��
س���US��������9�2��}�ك@ٝ�~��U��қ�E�qn�K@�����^��mT��xr�H7MI�9N�9�ۆ��d��-xeg���|��<�8��o<�nԪ;�s��@`������!�2�d�Gւq�����ݫ*�c��o<�pT����Md�ܱ�z��$nèk�T��yw���,��W]RŔ>��8N0˹T���Gցq� C�P���܄����` %c�>��4q���?uu�@�A,ٮ��n	���M��H���D݂�����-��9b͎_�얔������e_�z�����Z�nXb M�s	��c%��`����J��h�-����iQ��m�@�g��l~�SY��c4CΓ��Y�}���@3�,3�Ago��(���YO���@Y��}�G�)�_�运]%�k'��_O�:��a�O���d�� Jq'�|�T\eX.�m�9��?�FrjI���@�O�M���@y�>-u�N���"�Q�;��g��\� Js'��t��u��U�<w�����<4�W��<��l���I܅� (óu��(�JP~gkeݬ����v�����3�rz��( �d�yR�-i}��)���
T���ԓ�����Y�����P:s��5){N(�]�qnw�R�>T����w�J������m�����:���Ӽ����X�O��v|�_�|�BO m���[ȷX�,)n ��\�B~�GE�v�Jo�.{�;|    P�v㺱��v� F�\9�6y�>^s�XC�'[�eeH`��Ț�y ��U��ۈy��\�������iͥ���w�(��(z�&��r~��Aq'���g�y�Q"'���c>�I>�oP}F�[_v�W�	��3XtBU�3�qk��@ɜ0��2��P
�z�zPu����ȉ���|I����=_�I���P*�x�l��j\��Ƞ���uE��J�z�<��w�H�ĵL��Ar�	T�ݒ����a�I��j @�ٍU�O1;6`%��Lڧ$.(�y>m�k��0 ����_SG��c�(��D�4V��W�3ϥ�0" (��g�[k��f�ބ�+b� J���7(�u�l��z&Y @�̽oH �/ T��}w��3�%��2�pɆ)��AQٍE	�*7����;���v)��y�mG���'�[]�<F��:0a?����o^��<�:�:�;/�[�M�6��D8��Gw��+��YGw	��S�S������Ԫ�6��[��o P�v[U��	d�/�$��u��`���z�:��R �).��2�o�M�;Ņ}x��>$��w�a��j, �����W��ͼ(�QC�Q#���ā�YG�̝��<�y���ְ�)�|x�^o��$G�P2\��ı}���6����C@�\p�k�b �D�������ᬠ�9�C��Ǯ�H�>J��:c`GAP"�. ݮUI�>Je�����A���I���vR�?}�r�qO��Mc Pw�0/ڸ�ͺ��*CKV�D����G����~E"�M��C�T�v+�8����C�q��V�U$i
�n�i%p}�A�d��;�"�Y"���"'�ə;4�g�w�<��i� Ѓ�IH������
J�n<����83=�(�3�Lm�Wd(�3.�r��˫��9�}���MN���^f�
����G-uK��1"�YFߒ�P�> ���Z��5k+�������*��0�uA��QV{� ��쾵W�i*�i�%��n��006߹%vKuñy��w��|�v��N'F��9�E��|����!�|�^��r�iO�A���l*�G���l��ƀyJ (�����`�u{�QZ��yJ1�(�/<5�R��W^��ӁСyPhv箕���F+�����r�e^��V>�cO  �ϗ�e�c��<��h� �s� zL��X "(���snbK@�i�����c�(�9�3V喧
�GI�)�yh�.��PJ|T���}P^v�)j�~ �s�t��5b��kI�s7U��yw�3�*Z����~^�I&������2v�� PV_�̰� ��v����oDPb_מg�� � PnsgL���"Pr_�R��&�!@�ٝg�m��&Z�ߓ��R��+�8#�j�������T3F��~�k�G�`��	 �W��d���c� �y�FM� �Wr��w���-��@
�������k�����dx��ݹv�&J����y%����2�;��4�L� z8;�Իlgul=��ȯQ�"�ѳ���̫�XGb���9�'��уؙz�O�g5�� UewF�R�c���b�O?u�dϨ�1�#ع��/���Ʒ
��cv�U��>���h����WR�B��T~M�[�Ʒ��BY}�Z��dҊ���b���4�,�Qn���J�C�f[�\��mܞu���iv��ϭ6� �ͽr���?�\v��6�+O�j��[�C�x&}h��ݹ)5������*����׽�÷j���;�9r4�=��`��@
�Ih�I�>N_�VE	����u�l�1?���7c�����CԻv-���ۜ� @sg�����/g0����j�� n�x�ͳ�>OP�E����4�R[�]���1�>��E�"�((�֦lK����sw���D`P�%|��.=}���nV;���w�R�����}�t��O���V�g(׺'�EUc5���	*������U�Z�ܥL"KMM9-��^v��i�Ɵ�q�$ˆʗ|�y4KŚ!�ѻ<���VQO'� �TU����Z5] =M�n�EXƭ��
�/v�{���ͣ�v
�qn��2�����I����&2��ͫ�E$YJ(��]p7כ�3`%5O�T��/�T�ћJ?v[�����X�����i��d7T�e~>_M�ݢ]�?%��j����'�!�L�SmN�!�Q���s��n����������Ӈ@�[�!qj�6U;~L�t+)��jv�*(��姾����X�U,�^���t�2�pWq ���������(���7�g�%�\vm<��<��
 �6�+�dv�;kI&d�7�g���-.�7�Q�w��Q��:��+���D��5�V[��z@(�okq�ֱ0`�3_Ɛ�)��P>��Ɏ}y>(��K�4�*���0�V�7T����΋���?�@)��ٺ��o�@)}_����}����}��| �l '����:J������c�L�{ (�]{Ej�*���-�i%������OO��àdv�~��7�c�(���ӄ7�<<�(��� Oo����c�������<����r��:��K6�zF�wTT��Mr�Ҽ	e^�Hꉺ���J��U�%�f�����4g5�=��F�<��J�;��׍��f����|���yn�XVe���	��F�"�NM��?ˬ�}�h~۵�vq�	ܢ���v��OE�[���H)����M5�DF�3��s<�"cnv��p3����R��w=~N�n+�ƶ��k.�&1c�^4*�Jo���1%P�w������d�L(��bE���*�J�, ���PT��޷�?��q�����������]=�H�;�M�l�D�t�m��f�G�P����G�Z�eS}�z e�ek+�D~?J�\�����o��4+�Z�v��͝��rץ�e'��:J�|���E~;��|m���@@�N |W(��\���̠8��!`�V����|�	 �q΅����"P*��~m�M������ٞ�����g沛�:O�H��q&��8w��m�P�+ {y��C(�y��]?�>c��Gf�����P6�����>ح���F"�@ϩ:�@	]�u�P:_�����N�v�aIؕ�F��&캞�y��Ӯ,�5Q5��QJ���v��ʭ�/�PV�
�N�OU�G	��7?&�l��-JfW�����G�Q�Wz]\��3Q=���G�_i�\��ྙ�Q%��2��$��:�<`�9���$> e�K�u�K��g���9� ����L�ڵV�P�܋"(��֫Qu%5q> Jd��"7^ǈpG�^�&.�Y��TC�l�FW�D��YǙ�,;i�'sy�4�4T��/���B�C�@�|v���Q-ʹN�W.����Y�4���厪�x��@��>��������1 *�J�ԥ�o����0*�J����(�|�4����t�F]��!2Ө/nE���'�-��W�Q��_���>A@T��u�r8��:7��٢د���d�"�ɐ+K闋�c ��v��w:���{P�-��y���_�I�죲(��m�����gK׆�CĶ����Wk�'d�=*�Y�:BlL�e����, e�������H�G.�wN (�yZ0#�tN�Q�fk��*PF�\3�a����s�l�ӗ}L�e��j��!]� �f7lC8�@	��T<�~�Y*.���b*0���M-��C(�/k͑��`�̾�Ul�r{��2������/��ľp$��5����ڵ�=/�_J���U)&�0�_�w�5Y�q#��.�}覞[5�c��.'F;������J�;�R#�Gt(��Z˩�Չҷ�Ce6w���w������B (��ud�+�s =��.�B���&�XS5!��7ֻ!Lf��r�����9a�0����u??�i�ff���vJ�|;0�3�
� Jt`�02�~���GP�C@���+B�5��S�̣�v���|�>JhW�Iɠ�m4�Ĺ����v���RJ� �T�>'�-�Ms�����^g">ľ�YG霯���=��K5��0�����*�I����>�ewJUg�G�ґ���    ݊�N����!��.šޮ;��E�LmcǾ,��^4|��Z��9�I��Q$Tjq� ӐQsX�hl����i�E���^Hq�$$H�:���6[�&��0 ߓ3��Y�/�� �9QQK��$}���h0�}N �����?s�U�����=M�����7�-����p�̈́b���E�to���,D�q����쓲[��D>C4��i��*�ՙc�*��&.#;˗3(j�!s!J�d-�ަ~̣���V댷�CB��p���O�9	Շ/�"_��[�Q�k{�8��_���B�O��JX澶{��� `�3�����r��_����X��L�|�G��ۚ�R�TԷ}�Ew���=w��8���N~2��uncK@�tW|�C9AY�|}��~39���43���,�����Ǟ��_�j$��������E����_�����K7�[6�@Y}_ǰt1�(�y2���2]Bn~N,JmV�W����:a)��2�K��}��#��.³^�(��&m�x�]e8דT&���i^{0�P���]�Fsc���z���T�4��>p�g��q����i�r��c4��W.r|4�ɳ��ߕPM��ٱ߃@��l�8n^O"�#�@�u�a�7ު�}�WwWd�Q���S�A�@������zWt��ڝU�qS�m�U���T��F�I/�_�gki��Ӈ..�c�ք�ָI��%����k�C?�k@crw�<�A�P�;yŮ>�p�/�:�E~?�q����̟��wG>��2P�g���gP��.���.�ne�;�=�Y���@y�s�@�5�k�T幻�ԫ�]�s��ۼ ��xx��-ə�?�"(�ݍopI8��9G��ٟ J���˻����w��k����B���¿�#�(��m��5p �>_sR!��f?���nj�4�@,�#� xJ��M��7ݧR�3,ys����҇�H���ľ릒H���n�����%�V�'! ���h$J����8B�	b)��v�A��ɼ�m�Uo5�A�ۄ�,��@�� �����-��!�������7�������*�����z��#��$M	Ը%�x����dC%w�[y�t#��J�% O�>��8��dO�w�e!�����7�G�<JvW�iK��J7��/%|���xS9��^�$R�q�g(�KXp�ӂ��Q�g,k&}z�����i�#���Y��8���H����%���ؼ#(�KX����Bwn��7�x=�}��9�=�î 3����E���IV���׻�����֬�I%1ԃ/�L���S�P�pm�!���痟���ߋU�I<4|/��Ј��<��+�2�8�m�o����ǆ��Gc󂓱�$�i�}��kÇA�g< ��N���W'�V} ��.!^Q�}����鼝�˦�	���?�߱��s����K@Y|M��zO|���w{���7��DPPR_����M����@y}My`k_���B�}M�c3��Kc@A�}M�o���k�<ϩ�97 ��5qB;�6ј���B9~�T���~U���7�
n��}4�(�/<g�y�_��7��Kx���q�2�����Cp	�X�3[�V'|�m�ka���]�v��|PG+�Β��>�4_�%�P�2"�!��`�㒪� �17��e�|�K�z����۹:�z����C14�v.�knwq�7@��/- �h�})�劖�ifP�sc�ㄘ�^Y��i�X(ٝ��5��� �h�AI�D����-�"5ك��YƯ!4��Wމ}��8u����o��ٚG����V��Me�:��mD.ދ�j�VYo1t�q���zO���7�n�}s���yJB���..� ܜ꺱S0�0P�;���Ai��m�u�#�Lw��� �\w��Q$B�A��U�O�T���%�Z&��Gj��Hy�;��y��|�'ʲ��yR�e��f��6�6�ݩ�J�� �r����c�A��B����ys���,I����d��U�+���U�F$x��8�U�<H�M���K���� Jrn
=7S��B��5��a��<| ���6�&Jګ�Ө�z�S�`(�]���E�&j�ͻ��Qb���h�oY ���SKo=�G�#��>�U�{$ �r�	��<0|�(��<��9S@�OOES�JqW:�V��5A���B�D?s:�Gј}ju�w�	�����%�j%?�T���
��gvr_O������_k$y������|� ��T�C�&��UE%��-����R@��|�"@���]�	��0�	�r[��);��@�����1H�tmbν~�,�s�v���Q�[��B4�쎟�vKӭ��m����P�[�v}]1" 0�������1�Q��k�{n��n�*ܒ5c@j-�,���a��@Ĝ��:P�΍�B��1���ӛ���F��l��-e�SnK��%���V��y\���gTl�������7��<@��; ��>U���M��
ی���� @��AYx g���]|��G�s�JI5U�<�o�T���eQ��1��e-���?=���.��P�܍!�Bc����untV��o{ʗ�]k���b��8_�kYx���rciՉ 6��<�{	(vK�v����#�Sn���<�?*��Q<�6�ԍA6+	A`,O�inm��&�"0����o�ҿ�ul���Z�n[|oZ���������eΌ������;|�
���_j��aC(��e4��s�lg*�,��M�r7c)coW�� (��e�����B@��.��j;�qn���c��N��#��;͖6iKe��B((��,�F���,O��Uߔ�e�z7���� Pn�Y�p��7��E��ή{�N�ŗ2�0� �ϖ�&̠�T�YG`P���W5N&�u��ۆ"�(���A��%�ԛ��B(�ݵ4�h{��2P�'kh�~v�0B (��Uu]��z���7F

�R���5�����VyB)��Wg��i�c��w�r�@�~];��q|~V�r*�,�w'{�-������uq����)(oKy�P]i��էN��jab�uy��&��9��(�/�'�6�d;��E�����P�_�>�����3�օ�����m�-�����/�C�ⷔui�b����&3��EAw 'H�(1t��8+f=v������_��}Z�>P�}�~��k$�Ijͣ���O��/7�_�����y�?zL(�oI�ǈ����9ʫ���:P���"�J�c)�C�D̃�fݲq�����-��-]��H��샤f��"  )�J:���� ��}Q@���#dd4uOY�^ME+�Y ؓ���6�lQ���Q�N����,$\N��5�/\@�|϶�R�� �n��"ry�����!�#�G��UsRc5��ABO�{�I�Q�]�|D�У���+�qkM>�� z���EpU�� z��ӥ�����Gp7�����ܜl��A�p7_~�z���jٓ&����n%}�|��z���2'Ou�Y�}#�N�?��=�}�C`�^�$G"�d�\�4���(�qAjGsJO�^w��r���T��"�(��!��]ACH�f��S���T�|r>
�'�f̺���#
�+�ֆ�mO�f*����5�m	�A�\�ӡ��Nt�>(Ď-v�]�u�2�oPD�����ۄ���Yg`1��.]��P��k�t��$ؤ:�U@]�%��~]G�JxWR�a�@P�k���˾��x�PI���#(��ܕf�PP�����lwUޮ��n�b�z�U.��^�.<PI�r?����̣�.��|����Ut��BI�'��x��}��ȵ��<_�o��[�(��\����w[�nWo�� 5t)W\Z:�;?-��(-q^��KN�d@�!p�����!@�A�1�J�H���F�ǈ��y�s����)湅0�\�9��1b h��;��{�# �|�9�� bx������ѶĊr�й~�t�nN�ݹ���A��b릱�:��i����c������uF��������}�z����    uٔ;姏���|��{�8����@t\n�gJRH�ႀ|8��&�T�e/�]>���*��1*T7pr����GB��u�Em��<�����B���ۢ=����cߵG.�i���Ԏ�^���d�ӱ���|CA�}����v3Ẹ;������g�`��A�Z��:}MS	���w{�d�"�� �;����o��e���_ b(���ݳ\3A�L5���q�E������:;�T���pP�;5��1��R��vg]����}��.��:�D�
����w1��.W���!���.E� b(˝�oT�I�
A�4w:�GوR1�W �e��.q���S���z(��.q*�J%���q�ޖ����ߟj|U{�ă@�}[.�6�J��_n^���bM����-�v(��7oxzl1(�ok+�%ӝ��sl&;;�)�#�	��%N>i��~��	XN�ԓD����6wkU�^g�����q�(�]?��p��}��|Џ�U�m{���@(��<�g�S�<J�+�f���3��y�,^�C&��k���G��Z��zy؈}���>m4�K� �Tv;��2�G�{H(�])9e�v^�w�,Cs���wӞC(�3�������|��.�?����֮f�2|bW����v�����{����Y�����P(��m��BUs����� ��\w�J���)� (՝�zn� f6� P��Ϩ�q�د|��.G䴋�s�A��"T{��P����@��&1-�]љfd;d�
�ǞQ�p���d������Dj�����L�Ĥ��ҽ��e���A�p<��k�F  %��R��T���r܍q{�:�8�n7ѐ��Wm"������r�����@�o<k�����tş����;�����zx�%���:�q�_�k���c ��KzOw�](�`t��@��1��5�Af�.[�t��-����ĎP�@E\����@���)#�3�bM:&��2�F��;0�
F���S<h��D 0�gܺ�.�����Hn�WҨ7�A&1_��c6�_z?�ݣ|�F팇���8UQ �ڮSK}л�p" 
�2����'OK�@Pz��:����*����'��݋�U􋿝- J�l�R�մս� PV��\���E>dac%v�8o��^x�5����N�@��^gB�<u�#(�׉���@�M��5D��2n����������e�w�JJ�@=P���v5l��L��r{7
j�2��H|���y�A��v:*�V��=��N�FM9�|B�<��ݛ��s1=��9{g�$�"�>Jg'{Ws��#�Q.;�[G�RPɖ�2wT���>(b�X�;����}��K��Rv�GY|Y���Zk�2Q4���r����Փ�{1>Jc��wQ7 y�� (�/|vھ�f�h# (��.�QT��d|��N���0��6�$�����vb�C�ԯe���C�Gt%9(]�8�ٖͦ'�d�V	�h-���&V�"���@�\-�ߗ��\~�t
ke�fTb�g�<��ۖz���b!��<es6���e��@y�C6��N�W���52�y�vM*B (�o�q1*�2�`foFdj6����N$C�DI�A@)�Z�?K����)�$\31��v�@(���*�R�g%���"B@Y��4嫏XG��f14����Ծ��䩺�Q�!��n���h�Jn���ef�3��2�İ�~�Q'D���fУ:�>� � 2{�,*�yԸ#D �5|<��TFF @Vs��C�ã��� i͵Q&2���G  d6�Aճ	]���'r���&P��\��Q�#�|�`��NR��b��
�Ar����e�ińx2� @�ͷ�(�� ��|kP�ŭD�>J�U^�+��ߓ�R;�٠�DK�db1�(������ZL�%�ᣠ�^�`���2Prg|K�M��b �K�6�sK"̣��XB���- T�e�vj?*+���%�;]��[E?%P���C��c���vWP��ӣ 8��y�20
 �N�i��0���p���} ��6�U���|�qLr_0P?�i����.�샠�8���۸o��{ �-;���]�\��]��������P7BA��t�v@V,*�2V�=���#�Qbܤ@�[죴v���r���B��+!v��o=��x�/AG =��в٭ȓB%g\9���(�%��B+/�Q��ޒ�T�M =��e�g~>u�<JiWbM�k�&A@9}᭩ӻ[� ���s���7 �����3j%�;I�k���;�M9�B�dk��]�B(��|)��]�!�B3.W�(K#7%%���62*��9�	H&��9EGɅ*Ҽ�Q:_����_�<��U�U9��׬#�s��Ve76�`l�YbK�H���F�嵟y;�B�16�,��P�x�A�؜�nT�{Q�����1��������PW��؜o�`)8
�lv�d�yxR?�F�[�I%�����Ԏ�G	��	N���G�촻�ܙ�[��Y��e�gtꒊ�O6s�� ��i��:�u8�@��t�_Tٌ��)�c:MW�1���RGkj�N^����9� xX����)�c� ���ƫ�-u�o[<m�ȭ����9�:�$�j� �죮�ӽ��Z��Pߛ#&~�e�hu�o,�n� 
C�~c!u�K� ��)�re�M\P�Y�D)v��M�AA���/'aᗊ  ���w��3��.�����@�}߲Y"����ܾs��b�Qj;��G=��Q^߹��ic�QJ�W��.'���v�I7�:ȷ���絸m���������23���c�Z@�����(�/" ��g��GSnd�>�R�`8i�0�Ml �����· H�ԍ�V-��/B�cڱPT`����C?������l�=7"�
����mP���MP �u»*���c�՗�.��� PRs�AMm?7����R7�t"ym�k�e�hU?��}�7�HEEI�X4�v�Y�,�@B�^��:V_�{���r��u@�d4�Y<���˯�#Be�ʿR�ZE^�)㺳y?�7���rVbi�k@1Y~^�}�y>��,����s ���<'�M����-�PL��X*�����Q!��KYDI#~Dǝ�fW]��:[�5糋x5��5ylud9?�&f�S2<�s2�r�+�J��_u9��#@��,���즦�@I��d+�
���,ՒJ�dB(����R�jW/A�}YC�Ƽv����v��飞����ݰ%�}�(���a�3Hh�B �y��y�>��]i㖭�*�[�Y��i��C�ϗr�����AMY����k{�!{q��Q��}�#�q�w+��^��5e9Kvit��q���ayY�H�m��C�m�}\�����<��|��"�*(*3�\�B�&�~��2Z�2YEQ�/�N�l�By�_��95N=��PG�PfF|/��h���Nþ�1@yPjFXWw�4�C��]Ԛ��|��0�=Iv�INe�F�E�a��OB� J���`�=ϴ|�ib����3E����M��:
�?��*;G+� Ҟ�qm����Ae��(�2�|+����'�������қ�4�/��a@5Z�#X���9���|��_���G����5��Dw���+��{A������3be9�8*���
ђ��I]1�(�/띳޵ya����Gb���/���Ol�>*D�j�zu����<�[����ױ�Kи����f��a���u�*�F�y�Gw�g�	ͧ�7Aluү�C����!q��� �N�(�O�P�͑�̣�������8�D e�_�M ��ԡ�m9�Z�K=����;�YO"���Gy��Q���K���de���fs"q��n*Z���g|��n^٠��1����*�̏�zk e�}-�Q���xS{���AZ��e�����}�(�]k�v�.�*��r�	����Z/@�Y�m_��MV۔��q;AE��k'�=�c�i1���⠮�ٍ'�݉죮��:��(C�Q���nJԋT�����4=��i�����ꁟW    �FIw�����Vc%J6C�~��˝�T�sE}�3�]n�"��y0���Z7R���XA���\`+3�^F� �h97��"�Qf�-%5Yb (�3����PjgR�TF PN��e��~�)�-O�����G�`A��^[AŰP��<Ƅ9��y(P����䡪���i��$��L�����ⴜ]�G���OXFs�����'�vn��/��cz��do:d#:�a�!l��u��dݵD�j ���N�;-�g9Ф�*����sj�����M ���[�
@�:5�X��>��mP!���y���U!`�.�:ۭ!��:���r� ���T3��-H���CGPR��w�k��!��v�&�����:�Vr�c ��+���ߢ".��9废ez��8��F8�@�Z������aB@i���Hr�E�T+�H��؇��i�֓��	�G]r��7���F6��D淸Z�-/�Ȉ���l��]}�����)P��2�w�������^��yb�@�/�^ѧ����Z��b?֨9ѱp��;���Jqy���F�ʮ��	�����7����[�GG�p�󄜭�L�>��?OCW_1�Ӯ{N5O��)��]D~H������~8	�e�· �e~��Mo�KepJe~,E[�w�廰oW k�\Q3����@)}�n'���m�yw@�H(�ݝH���J@Js���8N�/��AR�.O|K ���W�B���崻3��ɶ���շu	[���#�_���
�UH7�ƻa��L3��/@�Y�N����.��z�\�CW:���}�_ˏ��o��m����:#�+m�x����Bi�����:[��vm�Ch��s^q��n�¾��b+ܵ���&�
���ι%pC� ԝ�u��Y�]�Ҁ�i���P~��{?|���� ���y����Le8�k��k��<*�#eB<��l��4�{;(M+x>܃>��y���j�̶y�_5ε���X(�/���r1<tp��N���z��\�8v�O�� �>p�ƱO���	���R�����'}#Š����D��EoͨB�vpw�ܚ�#��Iw�jN4_��WL1(t+����=G��;��]Z��j���;�	��EռH?�"(��Ilv6�䤏���mzld[��z�}SO=��>�E�D�R�sUma��w)���@�����S�k�b�4+,Hvփժ݅'���~��+}�7+��4*�TW[��Hsւ��4հ;I0 �Y�Em��}��,Σ����][(�@@�'.yB
C!�!�$?o���r7� 
�
�r�����N䍲%7�g+���aY�}�(�~bl�>J�;�����Gi��v��R�i�eE}l:C	q|�P^��VR@̻�� z~��Kç�u}T�0�Ӊ�H�	ȋ�D�s�l"�F������P��5b���D&��,0�
�
t\W2�G}��e������j\��C�P���M�n�����ſ �{���ƹ>�lO�Q}'+T�׃z�7�^�`��t@��C���:<in�l']���]{�q�:)kQÉ��A7��?�$���./�*��`I\���U�g��n,�P;-�o�
�xBǗ���V�!�A� P�_��r�p�"l׺i� �lw7�Si�ىfAP"���A18��zP�l6g�^|��Wv��ئ ��+O�zU^J���25���0`�ܝkf�\�q��
��KN`,����ɛ+���� �{�l�Ilq� ���-���-"yqG�.�u��zi6Dl��W��#���iԁ����jP��]U?�c���zи��H�)g�ՠA=�K�^�̄Рމu�k��s�~� ���P-WpN���%�8�GA���+��Y^�0"8ї�8��"`�sZ�"D pv�![x�8�3	A@I�#�t�+�E�ؠn��U�kz ��KܬH�k�A	�xz�@�����l'<m����s��s���7���IQ#��l�
�
.�}Κ� �����C)�B��N�c"�9��PVg�1��)|���z����2>*�3��w��,��%�;6��QJg"��7:>���y~.�w��֜���:��`^�O '�� `^/х��OޢP�*h�qD[
�p�9n��Y\�B=PDGwڕKh|���c�SHoP���Fqa�a�Qb@\�]�g"<�G���N �/�
F�W�S�n�z ! ��uB��+9�>��1���)eC�o� �'�&# 0�9�l�ݖI���_�Pw���--���Z�X�txB 8��_ 1����题Dѵ�w'�@���L_�����$gׇ@P���F�oє�&+x�@����,�����tm�1���<��r=]��̞�DKV�j�n<|���O�����t�z�F'���<����q��Ž�������2>]7Hw����| ��.}���۾V�J|w=;�qH��Ľ��Muur7�AӐ��a�۔�ٚGI�*Ւ�+�-���z�7P#w��3j?�; 9�r��ϖ� �n7ǩ�u���9zjK���W?V�A�H�4D0���e��s�'PEw[��J*�ww!t�ⷹ)�g�ՠ��xj��9����++Ø�N ���J~^�a��]@�6���c�ߖ}tXkɨ�|%"	ѐ�^�@՜�����SI��'�� ��9BJR'�e�>J���B�T/B�a���(�]���[�o���n�PEG�99Q�� e��-O���0�6�! tp�^�����->�|w�ת��o�S�q�ד�U���P�;}f��z��!Pڻ��]?�������P)w�䆀:�F@�܍�ڏNO��9�Կ�8��
�������Ŏv*���x���z]����8(�/BV��ĀP��GP�_�R�57�Ϗ`�<�pƗ*>�����~rO��1(��q15%�hdad�D����N!@Y^pG�Nc�ËJA}܍����&u��#(���1<�w���o��bxPw㙅��x\(��W�
J�bu�����<wE�ބ���?0P&w�2����x��𫚻?��@�܍k�i��8s�,(�3�x|�|߾y��w1Cn��]ׇ@y~��r��!��:.����B9�
�M�d��~o�A@���Eh
����ʪ���
��e��ds`�V�Ɲ*Z55�H�T��xԋ�!���r����1�%���`;����1���ba���"l�Vred7����m dwr��u�<#8����>��8���
$7{ P6w��3����&+�/�� I��e�Q?���i��.�@C	��i����}��䅲��'�2��-I����@By�/m?�lr�>Jy'|��m�V�<���/*�� JuuP�V���M�N�-$D��VL�R.C(�/6�E�s,1�z��WI���drC�s��C����ڽ�-4��7g�(2?�1>���z3a�Ӟ{JrNYU�H����1��˒��Vo8
�{8(�/�Z�8�=��kC8�{7(�/k�њ6`�c�1P�_XNg��>�<�oTR�S��}-7`4J�u�����:��QAW�?�n��	�b:.�%	��"���}�ʪI��gl%(������N� A�^��I���j�J�C�e�oE ����r��z9`�8�u�;=Lb��F��
:.o�T��#�������R�ӾG�M��N��"�_
R�Bq3�@9�	,�or�N�j�m:�R���T�="" (�׾��w#�
Jw�	�3�m�D��C�>��kRH4ݱ*m`�J�?;t�~��ٽ��}G�>�R�F��q��j�~ˏ{1���%���i~���@Ξ��!��w��f#y�(?(e}�w�Է}��/,@(�W}�h���r�{8�k��P�������A�L(�s�T�s�C�<�!(���G���#�m�j���ٻ�>����FY�hV���ɨ�]���r��+e�zu���P��v���%�d�61�r2�惠�O���g    ���@i���M�ګ�}��);�S%���G��
1���R�  �����2��G5rkc��1�R{nҹ(W�����;��K�,��&S�ޮ��lQ�&�Nt-(�]�� �����ֺ�fVk��Jm���;��Pn�:��)o1�Rەo�����/ �+���8��:���l�G�/�%��C��`p��P���8��2���	�q�)71�+����L��!��-���۹4�6C(�o녂H$��Qn;��~�r e7�Q&߆j"(��%49�o�{�".q�l���!Pr;�yMUl�(�o���հ�h`���>4mm��m�['u��Ju*��٩�Y��?U����D��8?��k[���բ�<w�p�rRo}le���;���� @9�:�������0�u�g����=�g��P��a���!����5 6 '�g��1J{�>y�����j@֧<Af���.�L�tjy��V�P6�˗02Z�[���S��]�W*%.7 �=u�����Ma�>H�4�$_��S�|�t@	Zm�rG��K�ݽt#����ˍU�D.u�Qr�K�y��j�E��@y�Z���)��Qv��:K���m��ڎf�*��*�K]��g��Y�lug��+�p(v덠�$O�ʦ�w�����Ҕ�(*My�1�T'�������+��o�����y�@��Jr��}ϯ���G�u���up*�8E`�s�X;��e��ڋ{�`���`n��C�0�]\ V���撙�p=}U¥gQ�����Iu?*����T��q�@y~��c'Q �we!T%��� p}����A9�B꒺�Q�߮(�O50P���tm������M��D׿�yS��-��j�Ҍ�!ww� f�(��e�{!'o"W%{��G��2�]K��f�V���;�R?c��7�u�#��F��%н�+�o#X�~��\ް�=T	����s�<�#d_�L#薐��6.��W�Z��[0tWp�#
��7c�B��5G�̺]�c �r�z=e�+���
9_�����R'��Ư�g�2�	���Ŀ�|�!P��c|^�����3&q,�K�à\�M$ �R\>�w�6��Jr.�i!R-��.ׄ0P�\ꪫ�JʣI=y %��w���@~���y��.��P�_�&��)�A@Y���z� JsWKE�1�+� �r7��*��g}��V'�� ,w�t�JRh�/�����_%��s�c?��R�XJ�m�V��A�si�:+�}�a1��.-x��@��E�� �|W�d�0��ڹ�UX�N���"�Q��'������� ��wՁ�������a7@�7�L�*�O����VEp�]����K� ��w����F��bZ�5� (�,GR㉼��h\�I)N}@TY�����"�8�}E�q�R�	�����RF���k�v��K,@A���ڼ�Ī���=-t+p;ڴ���6��:ͥ��ģ��9y~����-�E� `���I7uտU����,�
�c Phw?�<��$���eG�}ՠ���ݰH�8-e��i��f_)B�XN(�o�Fs��\n���Ds#���{w���P�"(�](l6�%ڎ����~�k���V6���laP�s�PEW^t��@9�r�r�W���<��s�C(�yjL��X����*���d���dOy&�j�'����f�S ��Z	���S�,���P�g0�]��!� `j��mQO �5��C#NjPXw� �ϸ�������9����:5����5�	!���X�c�M�7&�5O3Q�Xσ�d}���Ί�[��{>Jn�	���PP~��l<IiA�w�-k��Qjg�L`ӪD���l-O8 Paw�Ot��d7w����}9��:江�/�F_?��#Wm���zlWe!���ި�V�Ay�S+�L�[!���9[j��I��M�6(���`��;�!�&�\�J�
�oM�qߠ�V�G�f�e����v�[u���;�`y�+ {�ݩ��W%{Ҥ�&-r�&�\�&��f�nk�*��Si h�&I��PP��X^��	����3�&���(ǹuň��D�������B�飠tw��.�%5�	,��I�q�u�A`ƻ@��G*@��P��<�E={�%�:i\�հ����O
k=�yP��g�/�������b��{�nW�+�깻;=J-4�0��z������m �����z�<��G���n���:wN�C�M�_�����<�kÈ�����?8Ң�l���:���s�����_�L�Ā�}�v�4_�j���}t�r����q� �=����I�8�~��"�~>V� ?��V|�ᠼg�Š�j:u���s� ��wn��8mM���=P^G�#���9�Ɲ�� �<g|��7V�N����A9�.�#����r��gj�h[��O�����[�gI�����ه��r=I�'�`o'+ݽ���uBSϵ-)ܼȳ���*(����@[ ���y���㟓�� IΓ�^�n^���\;���* �'�I�!�����+|�?�D$T�����󔞟�.�#����o�M�C�L�At�b�0�8w9����gB �)�t�%Q�3�P0w��n+D�w�5�z��E����7�����m�Sn�>J�uP�Р���$���k �5mG��!��7�&J󔨛�i|�Г��f;'!�.	�A�UjR�{�I =�/�q����2���x̌�e�#�Q��c�l ���.b��S�k�Pvg��]�@��q��7�F̣�θgs��cIKT	�]K;�����-et����HOv_\(T���E>�bP(��fvn��T�]�ͩ�G��2��R;���C��@���J�@���s�֍���v�E�:nϵ�][�@�U�����^�wG���Ȗe��N}7m�i0 ��v�F�7-  R���<�n�� P%\��6�3�������K  �t��(x7�1U���Νq ��i.�>I��ήd���`_B@I��V�+ PN�u��a��v��9�ǯ;� J�{��NM���;5�4�+��Q�Z��;��<��v[�ї�) ���O�~m����gQ��w��1���;�p�����z��Y��ڮ�����ZuR� A��P��{�c5��
C(�]��Gu��p�@��N�Ğ(u��b��^m�@����G�4�r%vƼ��H�}��Էݹ��O�k�a�����0{� Pj� �C5ZC�DPb�*7}D(�]���-?���Pvs�cnk�"�Qj�9��vxw��f�SP�v瞑�ݻ� 
�ow{�'�'���
̸s��c0P�������U���k�`��7�!��*O�E���Ҷp[˄����
���}���L+��~�.ͤ��<J�u��S����2��!��5�����vkW@�g��E���Ml%E���xj��c�}4s��NLڶ�� �l��:��͇�2����ի�UE�J�u8�S���,��Q"�8��<eW� ��ׯ-1�̷��w�`��4~��C�=�R������q\W�u_��ξ�n��-	�JY�V�/�9���?�C�b�
�������-�`�����{�i�ԇZS��@%=�����ϒ�5B���D��/������E�V#��ʻ*�k?��PŔ�l�����"L��q�C>�vU�Gj 
�*�+�c)n+���Ϫ"qy���|P�U�44�}�墾��~����I��$E��s��B�If=�_���ڟK���Z� [@2������iMXHL ���F0y�^`V$`_�;4<�G��"P�|f4����Oб�6H�~=�<��pXς��U�0�=~����\[֞ɘ�?�
���D{<�bz|�6c�:����~����DUq�����6@�F�I�����BhX�{ X��������p���Gu�w�����a P    ��#��^�J��<��x$˜�0?B%�۸:?�*�QF�i���f<�shK���-�o�J�
���c��?�s.E�S�����r�nV�x>>)�+_C՜�13�Px���da[ P9�E��m1��t��d��
>���1�c2J]�F��X���������?@�<�����矎�8����a	/��AP-ϕ�{_�u�?N��&��3nC*	6�#��:g���B�����r�J{>��2l$\�g��t��h����8�# ;
�2FV
�z�k��^���L]U�n�u���>���r}���)���:���%��b�1��hт���l�	Og�g��|;�c�0�������u�ST~�r
{�g�7r������,���Ԏ�"1�!\�=��H�0���0����<T���b��ga��T��p���wz.�`wg� �0�=�Uq���7� j:�3Z�u�Zv<��x<(�p��r��3&a�b��c61z���F�]��ܠ@PA�-^'S����m.I]>�l�I�H0�E=7G�ۘ�XAs�����}~���N���6g�M_%|�N�sɏ��䷓��G���/����F��\bD�K�ކ�jSXa���U�}���fL�O��?0����O����>X[6���M���c�v>+�F{�ݔT�{��u���@��y�gݛ��y��N����e8Œg�騦��{�d' ������{Jl� 4�+�Xq뿖�/��)v���(�h5��?I1*����Ah��gK1T��e������埏����;�|����#+����%g.��@'�.�|�?��|t�ܱ��9 t�܅���K,��aO����Xo� �6(���x:��y���V�v� ���l���q� 0�i�y��W�W�0掻�c~�Va0z����Q�O�<�X��9�{�֔�?��iI6�W���/�g��a޶������Eshx�)��
�}ыn����$]b�y���_nl� �n���ԏ��� `0Z���������_��X����y��+T��F�)�54��S���i�<M���.�����b�_����~ͅ	��t�"E����W`��E�����yC�}�����52=��w�Ͻ��S����$۷3^������Բ�3�E�춡>�S�6s(h}��V#Ģ����?��C�e��eĔa@��μ�i%A �<�b�%Ǟ�}�
�y��K����*��^���@e�L�I�����|P��75���݇���P�/l���������A����@?���;�2W��@��y���y�	�7쇢y	����=�aAЙ{��}�Ա�^���9<T�|�6q���L<�=]�	(���"�����1(����U���je��tey��8�\��p2�WT�o,�ڟ�ك�@'����7����o���_���%���9��{���.�^����F0t�^Ji���@E=Z�׋_ìc���P��KT������t�=�p��K��ᨃ,�3=�?�aF �ɻ��.�K�����݆�bc��*�kt�nC��-�!��=_����{.�4ܾ����>��NTr��paש�
���J�N�g������o�:�B�o�g	��B|�IʼϏ�|e���ס|��#Ǜ@g�*�������){>a�������i�<_������u������Pr������οR�|T˻�`.o��w���|�AV�U�4�y�fp	����% ���叇<`�M�D�2[!Ao�H�C�m����B�m.�>��� �T�b�X�HwD����F��7����&�X���ӝ���<���P���s��d�9v���S(������ @��� 4��9A�mA�<��,������'h";�i��qV�S}N���u�-�w(��I�����&�NK�n�����G���c3~D���4���U8�����e/_��@��.���R�^}>�d�'�c"~|�Vy�d�����8_�:���JAS��H�W��oK٨��n*��Ģ�*��t��ky�� j;$����+G.������F!)�+��u?(�u}1���|P�!�\�<(���*���Q=��#�=ٸL$jԂ�P��p���)�a�l��z`�;*~(��Ү(�7�z畮v�o�o��`%��+��X�P	X9�]�ʰT�����_;�k��iӎ_'�J�Tڅ��cұ�� ���.�S����;^F����ՙۅ:���}x�Ǌ��B���s35:�Y&��X)�7Q��v�O�ϔo}���Nڼ���J��v���Xp3��絀5Vyn�9��+o��mq���X��HǞr�7vY�4�;�/G��@u?�:ӝk�
�#aV5��vZ�-m���'�(-����|T�s�<�kG��U� �\��y���˺i�;-�W��.V�P(���j��~�4~�K���>�vz�ڃ��8j�|>��b�i<�\��7y8k��Ү��u|������oU0���^�viztO�����D��K�P+e�/q�e�!Z�#`ߥ]���x������䪉��<�ޏo�1&)ސC,�$�\9�r�*<��NLUp�P>V̆Pv�ہ�����y�5Q���ޫP f�&�n�;�u�|L�U(�9f'�2��c*�Bq�a���-���/U����|�)�
e���+}�n<
wj�x�_�(L�U����(�Ƅ\�H~澛�xPá��>l֮X�V�%��KU����R�b����ƀjx�\]�ۭ?,?���|T�U��VA����1 �q�ӌ�ågB�-�<l�T�ʁ���wlӫ<��%�_S�G�e?TIT���>��Co@1�g�������!��
�t9w[�^>ثV��Jz�|��+�f(���j��u}�����q�g�K�MC ].A��y���pQv�Q��ƅD{���'s�?��:���.KUh�>��Q��`��m�6KU�xH�Lξ�1K�X���%
��p�|���,+�#(���(X|����
�TۆjT�sK��Խ�`Pe������\ݒ�N�e���c����监�'	�S��񨰋�o̵�PU�c��{���Rjv�� nG����(�G�<_@�����.�y�����E7L�Dw�����d�or���1r�c�0k �pA�� �c�X�G�U����<~�w�C���	�����i!Pg�R���sW���y�o��=
�q0c���7���\ҥ\��ߢ�����t+���)Vډ��im,��0�Nol"T�]�Ģ�̈́B#�����Ǒ����%�9>O�6�옵��Q[�QX<�=�:�����B�����s�������P1o�s��;�������<��>F
�|c_��z)��w�T�o�xٌ��pܟ>������o~ѷ��q30��C����"���w�MYg�����]����`�A�=�C�1"fl*��?��ǒ��?_���D�'�v�ڐ����s��?߁�֜t�f����f��p���0`.Y87K���ߟ����b
��^8`F:j����7������yeᦼ�?��X0�	Ӗ����~�^����c����w��`�<���~�_p!��f�E˿�����-@�����Y$�H���@��o�~�Aj����jԌbt�^�qLl�B��U����c�����Xv��t]���v��?��3��4�7�=�0[�wh���:~�;|[�(�`�~�?�6e�9P�a�ٗ�< �zp(���C�m@���m�U�,`)̼IR�7?���g��;8��Wej�l�GM���!~c�m̶I�r�0!��]�ln>�����鮑T�
;�s��)�]�](7�'�_�'�;-`�����Ý��!�>݂n�.t�1�|�?�I��3{7g�㢕�����*tk��wSd�!����P��x��:~W�lh[Чم�dC�? ���J��"��CՄ���8xbo0���7�&�8���V:�4�pe�k�/�3��_�'    ?�3i�!u���y��t���o�H�9|�q��_���OQu����f����tA�,���B���~-/��O����4��b��x�>������y<�=n�ߏJ=�"��7��GC�@�^,m�&��@��]���B:���zGt"%J����9(\MBݙ������G�3 8������s�� '�r��� �4��-���cy;X�5i�E�d#?>�W&5�lA�fz����<Wc����MЦ�v؋�����Ҹ]ea�n˹j(u��|<o�l��eo�!���͖�r�ե��m_�����V�m�i;���g]��|��N�6���P���^�����o�9o��D��;���lX��׾(��M�A���y��-��M?��P�����\L���p������
Wz+cp0����
����oO�ԝn�9��mz>�ڌ�����f�2�==��C?�|E�X	���P��e�Tn^.Xe`s�g�k���_o���u�d���e�Axo�T��Ṭ�J�`�/��S,&~�!a��So<�������M*�ū���/��T��:G���|���ЦeFXT��,��L����%1���~�v?��3
srS������b���W���4g�&U�6�C����j|��}���"�*%��/e�T�ҷ������P��k�>3=�cƒЖ� ���8���?�2�*ݕ�������V�h*b�2vL�W��J��B)s����$�.:�[ͅ��o_�+�9(P�]���#��n����^�����@���X�.��̗J<�����-���J=��?��X�V{>��`��q뙁A!�
��ݞY�	�(�Yn.�x|����bہ9�EQy�/�����y��Wڥ�Rk{
���-M`�8��B�������eo�Qc�)�㧆�U�G��Ȇ�< *f�����A)�e����3�Y�37�N[�XT8k��6�.��~���D*
����ゃF�>����W���;�Ez6�ʣ1�烆�2x�E�4gP�����_���oV�B�����u��jv�w�/�)�
�\%Go��*��i��jT��C��[���}x���dZ7�
�_��������xR��W, v|Dubv��@����'���~nO9���V3,C��Q!s/f̞�����0�������G�$
�E���9� ��y����%�qO�w`a�2G^�����Ϛ���p/�I���7�}͚س@e��;r&��5*�m�p����0
T��P��4��^I �q�w���*hT��>����\�/��yB�"�?zKz�;�V�>o���t20���Zm����ۙ�fJVUõUx8@�����	5H�����@E�0g_n)T�M������ �ěP݉ 4Õ�N˽��f���R��D�Z�m.������4*�v9�;�_�4��vt8	��<�]#*�6��ϞH�y��Pnh�t�����J��@�\�~����,�j��<�xT�K��:� T�I����H������&���~	�Un���?���C}r˭���|r6��� ���Ba�ApE���o�2PM[�8���]#��ޅ�}c�u=�*��2џO�%�v:_�&�������;Oo,n��J�</���8߯�x�xp䌹4ۖ��G�8���em�R(��g+�XT�uh�p?\���@�^�NS�TJ"P�/ERﾯćA@�>�����\�$�3���>^X��Í��,�A-q�o5����!4�.�G����$����I�C��_���RD�f�@J*9�`V8z�<��c*�/ro@���u���}%�9
쮚������K����PC����	À`6��X�P|�%�Q	�ѽ��O��b4�k�Z*i�K�& ���O��i�P���ސ�0�1�2!�T�eh���'��g��z�P	��˥�$�QU*쥤��ceE��gЀ�	=�Bwq��GZ(�xZ�P=W���`<sL��~8>Y���F?�Tr�]R�1�.���W�����V�q��i�,����fq��ϵ�����BP=��bQ�Jqag��h�'��M:����+5�����͛���q�j����N�B���1�c\M{�����z��6X��Tކ�;\>�����Zp���	�7s����6\ ���r闪*x�Ql��0���nM XL�m�W����ɺs��0�v�gMѲ�Qmkb����-���0.(6��r��*�j�$4J��fo��Z�Όͱ�����0T�syvf�0��~Su����
@en!�k>/z�'ÌoĨ��*�w/��d�:��v��omH����=��5����G_�� �}<g����7o���n�h@��2������e�N���ؖ��x���?���vؖ9�|}�#,� Zܖi�㿽5�ضL�T��_�1�.�2%~�2i��W�{�^X�������������ds��V[�,2
Z�?�Ϲ�6u�j@�[*r�f����j5&�6�8��y���~v�\{~*XoPP��&�q�3��T��f�(r��������)m�:x��k�����j0���㺔=]���-�G�`�6dw���z��1�y}���J��_��'nl�ъ:�5�׍�Ү�b�ط1u<���7 X^�]�����ڌ� XJ����8c]>YC����%����6K�K1���c�����n��2�ű�>���H}�tc3~�1�������T�-�����I�nW��nKu����g����Ϗ/�񨢣��:��磂�=�V��tTɳ��V���z�~!T�mX
�+��� �2N���p��5����l���O�XT#�Rnc��:� Tʻ���u�g�e���?���q�~��O�jyW6K���l�Tѻ�w營B�ǣ��OQ�:����T��w����zr�T�s���,n�i T����?�Qml�����,�-���<�������Q%�aG�~����9���A�7����7�v70��罛{���W��Cѥ�����U���1�׹�_�a:sŜjD �����^�|>*�P�������>��c�V��➌磂^:�_�D���w����Y�*�y�����fJ-hPۆ3i�%���mI@%�,���n��A�υ*�Y���c�;4���/�d�Ta2w�J�Ǖ�:۪q��DQ=�;��|P6����Ы�'�-h[kC��s����3�L(-�Ykâ��P>�7���@l�A��T�a�Ӱvn�AW2, zn(����z
�c\���,�$�L:�Ưc���i+Z&����-�Ykó�����������H�~>*�6L{.e�|вֆ����e��O��h�n�A��[$Wtf&��<=�?�����z��z�Sb7fZ#Ʋ=��k7��Y���n�ro���4��n�N�����@"Py�)a�z-��/��ks:E��- lY.�Tw��j{N���1��폋1U���nB����B�=/a���>&�|T���}\��3eN��k�R�?ϓ���nb����FPQ7aBz����B࢞��r{��QIϻpd��~vJ�xgO�����pZE=	@=�{���c�ė
��m���_�-�^�y�苊���mv1����b�T��p���磊ކ���+��F�*:6�{�}��
z�$~:���MK*�P��z��#���y�W�>��s��mý�����*z��2�q�;�l�՛��Q@]�s������k�r>�ӂ=G�P6�џ�Mqc���}�13^�DܾN�^�c6>i&����Ĭ(U���3��O
�R?<����4T;����l|R2��o�� �scW t���~觵���aGQ����B��԰<�Y+v$9���+��	�Ż����2g�����5}R`A5j�|>��������������*�l����w��H]�SgZe���H]��s������{��l�h(�L���(؏���÷/�����    �i����;<|%�uJ���-�+ua��;U>�g�vY��>e�X�������e������B5�K�o����ͶuI�,��B)��aO.z��-�~�=62���VTs!H��X���(�ѾXQͅ���=����[��؜�ѤVTs�@=2,��P��$o��Q�x��~��Xq��5_��B6�a|���0@���Xc����x*�2TJ:���������"
Xh�-�|��͸
��W�)5z�d����Ocf[~q���E.���ƪ@��eѿ����F�D��H�JjO�o���m)���H˰�9�_�X�ؐ��Zk��SS�q-����w��՞xc$T����g�g���I������uG��o㻙V�`��ͷ:�~O����Va�r�\ƹ�����m3�祟�p( \���U��ֱJ��f�okBׯ1C|��p~<Km�[����-����5|nJ�A��H9/[���:
l9ߔ�'��8GC����M����	zؚ�	-
��궇F�����C��7Ȫ>@�r����:ޚp*{�Vn��t�5���(�O�c��U����5a�C%�ׯ�%ƴJ�@�[����3�o��-oMh6�W���E����C9�'����w*�<N=/���*���ukB����e�Ǵ���;��z��w���^:	��- (j��C���g��	t�5n��{~J�!@m��R���t�*�)���)S^�?��N�J@��o{���o%��C���S+A��J��#��ߞ��k��ã�! ��j��k�_�+(|�F7���]��щ;tͺFߓ�xt��0���Ey<�qk\(�t�|�Mlc��/��y�ܕe����NBP=/��~�+�I��:쌏��N\m�
z��� ��2�T�k��5�f���4-��goA��-�)���.�u�n�!m���{��v�E`�	t�5�d��0����^�g�f���'����G>���� u]�w��˃�p�4��In����c��v̔��4|�A�@���*xa��;�|�1�Uvꅓ}��4���P����/��*P�e��_��� ���u�<8�P���}�X�t�D�l9ZK�����P�V�R@��x�X;�#�A����Rۏf���QS��1Z�~s�9���6z��-��!�/4}E�F���<��O#`y%{>�p`������������q�ɅށU�be�����QŞ?}��v����r��5?�����V�I��w�e(�Jy6���Џ~����@�a5m�w`��:���I�b<sp��Ǆls�~,�5ۺ���vQ�� T�oy~t
�zz���%��7�n���	E��Z�>eZD��_k2�u`5����/��c���)��
3��xoҚM��vz���ï���.�5��[
�`��:���A��6_�Uk�*=̞��H>Txp��:�O���`���rq��V�"�j�O�x}�|~r�Ӣ�F���y����>�D@�w.L���Ƌ�α����B��j.�l���k��;���Ӽ�{A�,XT�c�C�u�9^�
a1��܅����8�?Ycnq+K �\��f��-�]\?�m������|�����.,,��L_;_-Mgy`�5�G�d�}T����ݲt�/��U�����<��_�#��!@���������Uh��y���_�1��-�޼�i�L`�5�[���[i @y�s��a1@��s�U߆*n@j X�an�\~�~���J��➧��4�����l&/���R_��!K�)Q�,m���
��4����ժH܎j��'uX�^U��i�W{���  u!���[����U��4o3�9_�t>P����Ɣ��A̞F�wS��]����@@��߈'�9�v0~"H��<���6��|\�a���j���_O�ߏ*�^�}��k���"���F7_v��̿y��:���L=P��?h.1���{�eA��<_9�Q�g��shg�_��O��ʹ�;�_����|T���W��E@�<��o���:*�i��#q�~�<�t�B�ޟ�&����ӑ�%�K�������#���c@]�6�����G������4sކ��$V	���`U��T ��7;|.��Q-����|�Yo �r��x{���~T��<��/���|����ub8�U �B���q��{l�6�y������M%<�[<�̆� [G��Y�ux��?bџ�[�ݖ�ܨ��eG���}5E�#��t9[S�q��߬��0��~De��.g��e�m�����]U����������y�xl��[�19�^uIOE]6՜썓g�Z���t(��3���u�1KDYOt���*'׃M En�nR ��l�!;��[����._.O��g]p�L���h�Q!ض��%}�<o& T��Q�ɫk t�n�>ϝ��6f7#��$`�cBФ{�s� ]O��m/�כO����*M��"$뒒,��\����Ǔ�(X]m)��[h�:pu(P��ߓ_i�hކ+,S�A����-�?���A��f=kؙV�� ��rU��4|�x����6�Fs�4^4LfL`Y���
]:},u,����TD���ݒXWm)�B7�{�W*X�S^��~����l]a�o��O����j1]������w��j��@W�~���b�QW�եY�	��Z|�����mJ�s�<O'�`�.��y�XL�e�P����%S.�3( �k�&g�����xo���{,bs�	}|��g����1������s���~.���hL�3���Ɇ�S!���xm�G�ɾ\�/�$`�/����o��ԃw����erR���5���}�b�ߝ~����N���J���7���P�ha�l?ͅ=������9�ܖ���jB`jKI��0X�>>�g�a����`������.����y|,���tD�Z^��>���Z�����_b��"`��sׅ��p�%���|��?G��i��3��:"��;"�]g>���Sݏ!�x|�|�]{�]��r,wiAϙ¼K{~�}yɷ�e�����S��8\�w�+���t]����M]��C��C:��T�)v�����Ǵ��ޯ���ʏ���ݯ�w,7����.þ����Q ���>�[�̀��o�{6�������X�9a��ے ��u��7ðUಞ�t~�>��`0P]�dX�8̅��w�;�f�bsb����aX��]ƿ���s��ǐ?�,�2h��Sa���}��T zV�
���>7������(.��~�����//;�U�vJ)�'��0-���,~�	'XT�ۥ��5%( P�e�Zߟ_޸'^?�n��n��s������ ,}�Q�a�,~�!�$��8F@���fm[��
��C�̯�� z�U�㾞4�N�1@e�2�_����m�ǁ�~���q\��a��}D�� ������ux.�l���=�v�Ǹ�o�8�U����B݋��=���ME��U���~0 h�]/��Ω�@Mh���c��nш.��KC%���h �H{��?jC��.���xˠc%����p?���|Ѩ�4������VЭ�0�����≣�s����m�K��O$���z�X�H}<*�mx�ȭ<��\��z��o ��\���[� T�s�w��{�m 6�Վ�Vԃ��qyuc��y>P�U�)}<WU>�q�� ��r��!�񌾥�xc�u|5�����0��ş���0�f����*&I��2T�9���:���zI�O�9n��\�s�r�鿨��S��ҍd�p�O-7F���6�y��ہr������N{�]6��R����1+~�2��ic�?�����Õ��a՞H�#�s
5����+^sq�	�6&hy �m6����e���+^sQ���0\�_TwQ��1>���lK�� U���xZ��줝̀%f?���nܭ���H`�H���	���4!	���퀡����o���h�Y�'~
$�Y����]�K�    {��~"�hF�y�쳿\|�u�8�'�.���O�P��vb���r������ףBv�j���8_,�y��:Jy��6��i�w)%
��6������q�Ǌ�+�BJ�^F��&�?8��Ǭe���C|�i�3@5[�ߍ>���[�q�騐� ]�����.�p�:~=�a������l����P���Sc�]
��1�&G����J�G�\����7����$��v���`�va�;�t�z��	���nJ���n��T�uawz総�݄�*/�zߡ(ŤÂ���d�Տ�v[-J
:k��
��`����i�]�<� tޞ�Q��}ǃ< �����q\`�c�a�8ܲ��q� �-�t�	gz�N���< �Y�>��54!Zm�]�RW��h���r�{�Ύ�U�`�c����Ǌ�n����7G?��_х6��j(U�<eD���~�Ʃ56rVXU�"�̍�<�*^�ˈ����y:�Sv�T~��]:�+O�T]����<��c:��� K���e4�f�{L�~He~HS}.s����ui;�<ӼO����0�y����,�^`��ַ�鈁�)CŶ1-d�໰%P�7S�w�<n��-1�⋥Z���塱`�!@Ň:���?ˋX5�*�����/n�s��vV.g:�֟X����!#yц��ax����-i����g��q�x�E������=ط��j�J�#��Å��}\�ya����	L�ʻ�1�šߌ˲Š\�SE�}����"���q����>�[g^)�,V}b��ʽ	��Íڔm6���i�%�/?�͸0�/wfM�I���V����i�f���J?��A����k�k���\��r=�5	��n:��b���A���ג̀�]:7�Y��$�1!��z6HQ�˥mÎ��#�:8s�nî����\����tv��@�=� s�nCM��~=2�Cٌ�\���w,�}B� ��V�������[���VM��aʥ��_@0g�/T��e|���/�8�l)#˧��R�h݊�Z�&$&oOح��.t=�������7/��<6�ܕK0���ĪA�}�r�����������g�F���YR���}\��'�Բ}��v�xޖ�@���ni��Zx#�	��1Y��|dUv@�`�߅9�П��ys�)��m>M���a������Ri�ׁ��v�'Iz�kP���4A���� 5s��p��Ղh�۠�
,���/��y��0$�x���&|3e��@���z����XZm����.���	����McV�`�V��"*�.y��Z��uvL��G^�q�����OP�a9v���B���]�v}����K~���	ز�_�$���V�]�.[��T�B�¤�ۋ<�g�V�Kvl�����,�v��$j���.���)O'���oEN����YF�v+�]]��V6U�F\>��VT�p���
u����O����[�;Jm`s[x��A�1;��6Os�K���bn��闏X���q|���Q-�B_ų�	�CyM+|���\e(�}?>�1��_��O����r����o���6o�jƔSq��\Ak>��6a�SL���3Lo�a܂i��=�z�F�M0[c4ؾ{Ym牛a����SR��ߦ����6��wS��rg�L�4�쯦�?a��,Я�
���f��8E�)�g�<L�<Nip�H���cD�7q�0]V��|��s��`���l+RK���!�w���.����:�Q�Q��'}=�x?���8��㌹����f�j<a0�bAʂ6As&Վ3�Z�H;��Pb�P0f9.�y�2��4�ؕUX]�q�cJ���m��'�@��3���p��6�Q1D�ET`�6_�e1��0v�౜G�Q�࡜G�wQ�<<���b5
�]�'rQ3Dm �=z�Ce�w�v艰e�m��m�a��<�v�ˢB#�ʮyr�$�
��F���<�?��Og�
��&�ʓT�mN�m_��w��1$�w��1$x�!�*����@%�悈D�)|]&iȒ��%KB|�X��9�X/��J^��B��dg"nK(P�u���K���u�,��
^���y�J���!���e�Qw	���)���"R�
3�M�Y�fq+B�v��ՎT�\��J���H�NWV�ɪ��;%�����rs� �9{����ҫ�L%�^�&*A@'�*7O	:�W�dW���%�����U.�4a����Z��Y'���:Y pY�\�e^נ_�\�e^ؠ[�VOz�MWO�[�z��V�z��f�(;?�v����Mi�*g3R6�)G��Τ3&m�+7A�-c��>a��Ȅ��M�Ye���>1��4����2���8S8xʾ>lq�B
����C����衣��Z�)�2\���x��@^�jY��e�#�*T:#Tb��)T�Dih4���f�yU�:3�M���+#�c�	�������z��P<f����e�+�ˎ+�j�v�X��;h�#�J��Q�]ey�dF�v~�J6qGC�Z�ծ�N���������A�Ի$�X�x:��꾲G���>��S0艺u�`� ��5M�� �9y���V;��!	���A#�ֲ(*t�w�S�ߠBzj�����t�`�H��f�A� �?ڐ�����_B�(`X�_�N��͠;��[��)Gb� `L9�B:��+���i0� 갫҈��ԒV�;��ֱ�:I��uɮۓ�4
�t�f3���1��3��RJְ#�z��.I
��f,אԎ�%i:����sV�#J���_�C�#)���K��ܘ.)�ϾKRt�e�%Q����d�%A��d��j������UM��c^�L����4�ο�w�]v�;�WA�P.�� `�'�[ � `z'@� *�I� �� �rl�� `'�n� �mt�3 ���Тg� ��`с3t �����: �v���
����`с3t z��|���LAw�� \����W��X^��p��^ .�)���o���,t��8d�!�@7=�k���Ϲ2ݽ�B��Vc�)EJW���R�.��.����ڜ��ߛ�o�
���5h�#�Sa΀a&�U*�2`�ю`�
��#�V�mf�#�N���0ЈG�F�5���Ua�C﫼!Z�\Y��ш:uD�1"t��M��bx�79\A{�W/����TCBw��d�{���O�w���E���F�+��MCI3�.X�.nJ�vQc�aɑ2;G/,��*堌��ċ{��f�w�4^ܻ�4#��e�<�韇�>���>���|���&�>��Ƅ� ���H�'�	��5�OOD�� �_N��Jc��;#�׬�U���B{���S�3�.�8��9�s
��h���O�N�̲���0��DӃ�3�=� �hz�wF�Ǽ�M�����p������N4=�8#��N�:-MƎcd���4�J�!�C0��D�cHe��u8�tUW��Q�_��6�|���FH����^�*�C@@�Y��U�G>=�����l�&ˎՀ��_A�κ����s��!wD���琽v$!�������!�� ����m	y!mθ�S���t�=<M���U��v=�AŲ3V�b�ۢn���[��*��%�B�?a�aj�USc>�B^��g�C0�s!oT�3X0��d�o�X0��T�fۢ0�Ƃ�����c�\�����a~�3ƌ�����c�|��Z�"$?�`�ed]&.�K��t�4�Of`^�Ȫ��71x[��C�[�"]�\+Ɛ���G�P,�����W������ _s�;bN~��g9�%OͬB���Bjf�p�<g2��*���='�A�yN���y���)�3Rt�"Y��^]���3�ҕ@e����d}Q����H��j�2��%��n���j��-9�X�Q��-詢���2�'�*�:����j������mt��@������j��r;'�    ��o�=�cA/:��=T9t���ooJ��Z'	'; �tg��[~sL${/TB0�wU�<���:f��k
��C��W��#Ae_g�7�؂:�Ƒdk�ȑ`�%�Loi��We&F�P���v��@p����ʂ� ��V�������Tgk��-e���N�	���a���u��d�9~����l���~��垫$/�=W�IBp�����P;�Է��Y����-��zVbLp�:k*�T�i7D�"��Ip��K	>ϯOF���bV����2��e̪:[�D����|b�@�5}�-��@�}�d������䴢4��BfurXQKm��Y���dw����"fu�ļ2|�ϭ�.��BH���������.^�_f+#A'��Q,��P>/\�9�@ߕi���)���dYv�R��S�H�����v����rn�VDQ(h����eUD
.{5�T?0L����ky[�H���l=a�BH5MUG����ݪ'�r3kWƗQ9G�וi=�]~`	�v������I�niS�}֮��[g �XҮR��%��Xi������PD��& A�" <��mk �B[�TM��Ӈ�E"���j��+�w�0�e��:K�,a:e��:KT�|����f�"kݳ5��@ֺgg0/X�� `��D`�{Z���D��`�*�+��qgY�`_D٫����m�戲����$ʮ?��r��S"P�.���c�!��Q!���-��R6�)j��}�/d�,V��'�Ʃ4b<ء�#��i��U>�����!�"�y����x`kZB�w�w��l#fI|T>�0��9c���5��ꘀ�!�m
^��$�z�6.d��A�6�<a��mg�M$Oh�Z���	`�<Oh���-���Ձ����<��肏W�}[��5��+����ږ 肏�z� ��+���>~�(d�* ҳ��ˎ�¹C�<� =�O��e�����!��_ؾ�6R������[�Ku+�����s����|o�M�&���Np��[w'�a��	�>�l�&��kg@��� �]�ƀ`�%��k�[,y��i�q����DY��/�4
�t���������wDY`��U��J�{�e����7ֻk]�\�\6�Zv�PѶ�lHK�\�T�Uj����*=Ȫ���.����>���b������X@0?���b	As�2�Q�l�YG�X�B�v�6\�k�k��(���S�����O)��*���c�APŻ|��T�. %U��H�|�)�wb���\��J�͗�U}� ��y	AU���eo^BPѧ��ٛ�T�i�X65J*���	�%�|ZބM��J>-o¦F	A%�V7a��`^N���B��K>X$�|~�")���I�U�_�H
*�:��>K��x�9	����>���B����O�9�P,!��Ӌ,h�$H.K�������>���B����O��,K�3�͉%�f/Ŝ9��*%�hlo�Z�P�#N#�θ:YV&*;l#��$��a��jC�ۈ�H��[�W����J`gm�Սrp�@�#��1�������J���i \o�q�����7Cm`;�j�Y��[vr�Veoy�5`��j����5 �5^{`Y�?���$v�M����T�ufr�Tͺ�[#�j�3��$�r���-���c[�ʙ'�o�K �U���x`��j�|��'��Ո'��Ո'���{ ��V�V|EA T��LH�T���zAP-o3A[P1o3!U@�Ԑ*	���zē T�[=�I ��m�tЗ�ۀ;�+ɖ�`޳����[N�4��դE���58��VS����38��q�ғ˦���������r�-.�t)��s0�qrbU���1�ʭ*��jD@VT_��� [!V��� [�U��� W�T��ѠH���@�ZS�Gu�����cA��6#���5¤�͈l��������I����H��@[S�މ�����e�Ta�8�̴@r�8�̴@r�8�̴@r�@�̴@r�H�OVqMb�H��hV��Ġ� u��§����f�P��O�A#��§ļ	��Sb�H`�O���>%=�vIM�xYRڜ�nyK�������	~\V[��n��	�������	������;����{kxj$�={��O쑁�
���zb|rc�`D3~Y��Aw[S%7}V����~���W�����~���W����s~rmi5IJ
:�'��Vs���7�4kJcP�	�X�]��KR���u�p��� �<AVD���������1�`�р���D��|�a@�{L"�e��0��=&�\+)0 xL �RI���c�WJ�������`����S��2	5q�T��Q ;k*<dgM��ǀ쬩P���5
��B�@�|�֧��?;kJ
ؑ�������ܗUM4��dVb�%e̚
]�WƬ�`�@e̚
]T��`�%@eL 
]T��`�E@e,�$]T�ӳ��Y�i��4���LR��_�I
�3I�#@~u&)x ȯ�$�v6S(/l����f/l\k��H�Q���V��� ��
��a��&�A� ��n�t	�Z�&�A� ��n�t�k IA� ����t�+Iy!dW��G���P� �_�
XQ�(������o���0JET���%UcEf�A��X�s�ʿ�"�Ġ�o��,1h h�`&)��*�k����-؀�U��i ��0�wV�lts�����h�I���Т�N�2�V�l�V���I���:��/UЪ�N�R% �2��/UP1;�0��bvڽ vnWn�1D���l��+�r�-�ݫ����is~^��<��K�P�тt��Va�E�&r�����ω�fh���&v�u�o�cа��Ӧ0)h��	�t��Kb	?������,A�_]�zS�~X��6qt̜K��Z��G8��Y�J������4�*;<k|hT	~w���C�J�k8kxhX	x�g��<���1xhp	����C�K(5�ጟt/��S����u�hH��G��,bʜ,�6D�y���0㲟����q�妥�s�x�)s��Ǌ4�i�������G�բ)F��HĬ-5��Ff�h�49�e��/_F�L���C�M0�<�ƛ�U��84���������`�Uy�4�{������`[Wx2Ŝ�h8��ݒ�����h�$b�%� -��)����!��I��� XL�]��bMr�VXK�]��b�u% ��$f�*p�2p�ӯ�b��UU��bt+F�g��~��A��2@%1V7ͪ]���b�.�UM��I��{fU�g�]��9�3�<K"����Zy�9cu��.�\���u^�a�+��y��nIb�t^�uz%�?�X��2�<�P��o�ՁNI��^z�3 ���{���J;�u�M�3��0��R�&��Kk$�ַɍ��T����rYT�ۤ�CYT�ۼL$��6/	�������C@k$AVѱl.�uTvW����!��a�*��7ˎEX��]��7�5ޣS�٭�&�1#]�8��/QU4�Tѵ�Z{:��!���r�?U�T��?u`�C"DWI�7@up��z��9����y�F%]huܭs��7DC���a��@�ݴY �C46�c��@��.Ԫ�-�E�v��	�ɾ�aS��]GG
�6:�8q�0����։a�L�`*w�w������������l[�j�ۂ��E�E���`�c��J:y?�$��w�i�(	/h\M�$���L�aGt�ֻ�(��wS����$Q;F�t�;N5��TӻL%	�V�z�We��:�θ-:Ń����>�_� Ń��e7dAr����� E��7��5hG$��J���D��J '��&��%�D��J�DM��V	/HZ\P����+Z�IP�����Y�I� ���㤵发�c�������&k'��D\ϻ�$
6a;�M/�4T
����*�HY l�.�`�8Ar�"	��q'[��W��Òr�.��Aߵ�)��    ���:��c}˘o�t	���1ބYg?�`p�'t�1^淛0M��8h���?�p0���$Q�QX�������&J68K
�Fp�4l�qSB��5♠`n���$�F��9	HD�b��cv�	��$ ��ۏ����7����1�H�s�����k$�.I��o�0.�X4
��Im���;�$;�I
v��Ġ1`g̚��F��1kJ
 v�YSBP��YSRP��YSbP���YY��w�����7�L���o͙���ߘ3%�~2�\��d&1�������!�\8I\"OK�x0r ����$煣��\�l�����$��5H*s�$9h���)9h ���)1h���))�����q��)8��8V� <䃧��q���W��c�\x�K9�φG�H��fǛ0�c�<�Fp,\+A	�U*�Cx��W����A�J���[�qP%A�s��>D�y�m���W���zy�3N�':�f׻�{��Ȧ�`^8)̮��h����4*(��ϥm��[t#�I��5�z�Xb���j���3:����o�I*��XMI
���
2��3�/9���|0�T��d3�M���ļ ��MRp�[+)���o��$U�=Ua����x!`H���<C��! m�#�B#@��Gf��?mB�"���� �YRP�`ڃt�����.��
�U�#�Bſ��FL�K�رS8�������������<�Pp����C�5�Hj��sK��������Àqܡp�,��g�b�	[#�|��%]4�)���� ƚVb�e@Z@k���t!�����n����:w�t%�V6Krg	Bi�1�}")x0N!$�)�����8�4�y�X� ���[c�TR� �Zn1�A�@kll	
�l��-IAC@��ؒT����%)��[kcKbP���Ɩ��o�)����7����o%�� #ِ< �F�)a�`k$��G 3	� <
� I����H,���Q������#���H
jW�]�j�j~�
"`A��Fu �?A�0��K�J]����J]��ɝ����L�P��hL�DP��hL�DP��hL�D�"�3������I˾� ���WQ��?Ⱦ� ��WQ�zV�*j \�J5z��9����~>��Yj\�1�ys�������l�t�մ�����@���X��a4سW�W��&祵��45/�����yi�K
��G�8P[�Jk�,�f她� 9���v�䯆��Ks@� ��A�����\�v��e,x0vN�`�`xB����H�N
�N�Uf�,�KЪW��S���$�S����4���%� ��zU��-A$ M�+}	"h_�K	@�J_�H ��W�D��җ ��Y]�H �e�'ױ�V���J�e$�Rv�p$�юj8�T�.��&	����$ U����jvz�� T�Nx����O^P��$ W��$ �� ��W��"m�+�ƚRR������{U�#��;k�*1h
���Ġ�3�`���u�\b�E�3m_���}�+A/4��i3� Z��h�*Ԣ�8��x��.e˻*�Ԫ(ʀ�g	R�!e��&�[C\���&H���yV6� �5d��`��	�[CvyV=�C��;1^	V@�ՊQ�Xmb�߈�B�2��XZ�/l0K��KϿs��,1���3p�Oy����T�!���8X�w��U�c�&���HZ�G@+\�J"�������K/���+�\���x����zBt�	l2K�������d]62:��,A֑�eC���d�\6n9��,A�5��C�ݭu�:q`�Y��u�:q`�Y��:��:q`�Y���*�@8��,A���	��j=�W��݁]f	�����'v�%����0�e� �O��� ����0恛 �P_�C=f�� k��y�`N�	��I��	f���|����?Ě4���
a��¥��7a��൤}��-�Q�}�l�+�G�d(�X@�\!
�o���������f���(�6^!�Il�����6q�l����}ڱbSl��$6[�����[
I��_mn��~m�شyh�+D���T�urb��7�
w�QPͧE�x��T�iS$�$}m�/IAU�v^ڔ�AAe�vDڔ[���>툴)w~�iS6U~�iS�y
�+DB�UH
���)!�����6���A�%7K���L,!��3��������>;K���L,!��3����B��
kU�њ4�+�dX$�|�ΓO���j>m�ɧ{IAE�V��ӽ���Ok���^RP٧���t/)���R�|��T�i%z>�K
���=����e_�Π���N��K?;K���D,!������N���>;K���D,!������O`|^I�Sh�+���O��*�s����O�l|�T�.�	�'��/X0P���j�d_0m��~<��C�����\�*�b̋G�I}�G�y�R��Ìx�ZS�<v�3f�l
zz̘��3(��]�bFJcPp�N�v�y����xn6��!DR�<7k�W!���9XE��ؑ�f�GJmPp���^��\�n�g����{�+�I��?Az�")����^*C//��^*C/�=o���Rz�ze����l�s�9�W�!��k�Z��ʈɰI����^��H
��ja�|��`���](��B�\��Z/u^/l�s�E�W,"��������g֨+D�v�&)��}~;LR���v���'���0I�����a��.��>�l'��m}��
�S�G�.�qywP֪�����*�^]!Z|�H
~��.O�q�Ue��#J��?����u����Cu��f��H��>����sU}ښ�o�	.���X
��ziWv>{	*�]~7_0P������
~���T��.�`� ���`�bw�)+١�`��.�*ƁK=��/�қ|���ʒ�Tآ��U��WRP��}Ux��T�i_%�{�(vcAP�7��%!���|��T�M^��J�ɇG	A5���e�QB^}.x	l�k��KB0͗>�X����:-Y�t�IОG�]��L��iRNcp0��M9����O�.�t ������K�`1�����m�/ǿ��v��� @�uq�%�k,
e]Es��
��u�Xw��ǿ��i#��y�:j6uډ�5���ug0P�������|U��nh�+���-�!5*���[\Ejp7��m���cH�kԱH��"����]��GS
����? ��Vl=t����`��zUjg0Щ?�XVt��06��l�Q�
�ꕕ�N3LŜa�E��zS��q��
�~%��oqɧq�I�j28�W�C�c���_	5������O�*��ɹ�#A%��<9W8`4����'�
Fr�p�xP��1���<�X(<�4�8#����gKÁ��z�I���f��I���^��Ic�
�N��IC�	�V��I#��V��I��N�e���do�e���>��7�4���H���Ql���	����&�Y��@I؃� �	 fO
�H���:)t M�bޤ@�]�4o�I�5_�IS̘��:͘b��@@��i�s%�n���RL���u�Ń]g	�R��+�{�zHnCN2p��6�$�{nCN2P��'d,���5��#ʺ�uL�
*��e_
U|�k>~�l�u�[A���f�����o󳯄��O�s��W@@Ar�����O��o��4I�T�i��T�i��T�m6:J��./��L��{�IDBP�wy�H*�.��
��#H.A��L/��J~��MP%?��&����'��
��'��+>��J>�gN�d��{�X	ޘA�1��)� �{4��b���s{6�H>�gc����y�M�2*Y�޽R\da.!	A���{,�"$!�	~z����$���a��A��m��K��G��;.v_��=o�eM��"�XM��"    �%!0��f��@`j���!�A���I�w�)�F��-�W&s"��mK���Ɖ�-�]#`'B	�A���	Q�oK����=A�Ũ @/�U�F<"���Q�6<"DQ;�W�DM�(��ίF�%����!�}G�(gH4�yB�:Cp`�<"���X�Qҡ�JxAҲ�� ]v4�(���#BlZ�vD����_	�t�ʘCAk��+CҠ��Qҕ!i�O�	u�Ce�t�!J�2$z�Hp�Y�xA��Eat� �g�%�v9�v����;~G�Kr�/�4j����/j���u/�sm��_'�V�MC-q�R�q�(50ר%�sR��.�t�ݘ׉5��r�|��mS�]����"QPO\z���ة]��-q�Y&�bK
�K3�[RPC\z��}ؒ���r4
n�˕��(�#.W�G����4�q������6[�G���8OY�2潖\��r4�~��FA���Ne�\�M��=FK�1ۇ���hi���	z���)cg����]�ؙ����hi�3v�$!�AZZ匝?��-l��)�$-4�@Г��B���3秒��=w~*��s�%��՞�-I.��mI2p��lK��K=g[��^�̛l��.�W�w�oa;\z	)o���v��R�S���pi��>�%q�U���pi;2�;H*��G`i�UzZ#���J=��r	A���`����~��? �$U{�����=��r	A��6d~8	yA��(���y$T�l󦤉u��5O&�(P��	*
Ի�d����!��"!�!�C2AE��z��LPQ ��=$T�w���C2AE����y���L�R��s~8�>�S ��s~8	�pYEgD��ݶȥ�
�{&�V��3�]���=��U/���rWa��u}��0p�g��
,[Y�|e��5<(˖0`�J��UQ0h�:��GL��bݘw��ݗw��=�˖[� 艜�׎��@.�>O���q��y=�s���}��:Nl������� 	Ak�U�e�k��j-VW�=�)����O{��HPŧ=�����O{�#x	A�� `'��*>-R��%U|Z����Kz���'f��������黀��������]Bp������[�)\𹕜��[�)\�E�����Yd)\�E���՞Yd)\�E�d����^F<�=vi�#����V�w�@���6W���%�y�ՠd�:������:i�tEE�-\k.m;��*�*ηkJ����������BAKO�g~��i��-���x�Q����G�`D�u���<J
���[%_��-�����s�4
:ѻd{{��(�a�tÎ��n���-ݰ#%��C=vK7�H��G�P���;R�R;�f�)k����w��n�)y��P���s;�浿C�vK��H�k��햞ۑ���5�yJ������-��#��>j�[�TG��}�vW��@���#
���H�*�2�/\�P�T���tF���/��3
�i4�Q0h (�S���LvW�$�qQbP/^U&��w���A`�ʮZ'H���
\k�kPK^U��)<d��*<d��*<d��*< d�
�v�/)�5�*������)u�U�;o�HIrP��5V׍�$ i��u#%�AC@Ziu�HIr� �[]7R�4��V׍�$i��u#%�ACAZuu�HIpP۞�i��ļ��`$�F3���Ab�!Tb�z����ئݡ&�:m��#��Ao�4��C��p�]x(�4 ��P0�q@~�!1p��Xx(�~Nj�Q@���mhS�(�
����FyP0h��*٭}c۵���k(���h�d�����*��N��׾�[�V۩��7�c�`�b;U�c�ƶlZk�js'1p;�*�~c[�
=���)�X�ꦧ`���V7=�G�|�T0xȇN�G�|�T0hH� �epz0�C.���(��ƀ��C����?�zB�4%�< �7 gN��W��BW{
O������ۡ����.��������;�����.	�k������	қ�����.
�ˢ���y���Q�P����(Y�p^Xd�,+<��&�
N�l���g��/X�&�7f�Q8x8pi�qF؁-�Ej��K7ɁM�Ej��k7�����g��Qm��m��MἰO�]�)<Tiة��W�+Rg���(<䗉
��e����A~��`�c�4��n�*�w�7��0M�Wgn��y���Mb�C�4�^��Izh�fի7�AӤzu�&1��a�S���$=>LS6n���0���u!)��aи�BR^� Yׅ��6�4��SCI�@�u!)���I��w]H
^�;{K;-2��´1$Ӥ���!�h�9�S�J��%�ty/T�0��`pQ�Gb^0�qn ��(��P>���� tiUJ��(�� 5D�Fý	aЃ����Ġ�݆�)�� u۬z�HzR�v9^� ��� �s�� "0��p���=$=-L�)�ڌH�����[�Ϙ��薲I���ƣ�w���_-��77��p�T+He@� 0A��6 ��'�v�H�d���$�	Ҭ �k��s�+�RZߏ���E�l����0^e�ɨ�pl�9'�K9��@8Uʩ6�Nr,1ypS|�Q���^�_@L�i������땤@��� �VI
��	�锤@��e�Q�A���$!�K� �6I
��	�钤@�ٞ �&I
T|�@p�gÊ����,�.�\I�>W�@����$P ��s�$4$S�@����T�T��3E>.�L�O�������T/�]��0p�g
|*\��0�b�guIG��r�guaW`��i����+1���q�Vb�}�,�����]�bQ���Rs�j;\b�c=c;\bг���,��bp�����/�&��Jz��֓]�?%���eW�O��MiMٕ�SbP�OZUve����֕]9?%����eW�O�A->imٕ�SbP�OZ]ve��<��G����B����F���������P֙�,����G��!j���-Cl�|��Q�m�e��	��3��	QE�2}iL턨�4��	�eg 0��颴t���`�(-]��.�.ʼ.ZлG��!vWwL���e�����^��^�������kA�!��\^z-��#���K�=z�`�sy鵠A�Lz./�t��I�Y���]1]8C�/�죭��4��}���т�<B���2>ZЎGH|��*pq�5�[��?ZЇG�;#�&��U�v���֭#�O�D�*�g�[�.�IJa�;�.�HJ2@�]�Һ��}���U7�]ZV���*pKޥU5��BAO�Ӣ��W����.��Ɏx
�1��Z���U���OK]��W���>�t�`
*��%�\H
*�� ����@���d�G
.����BA�/�� �ZaZ�b�%w�������.��i�2T���?cr,��ŭ�hUQ(���3���P��,V���%�������K?�����GC�Yb����ϝ�+C����q�Au/J	8#R�^;�������Pp��9�d�9�W���>?����n;'�!8#�v;'�!8#�~;'�r[�a�U����}6�H.��G��}V���>�G	Aw�43$w�|�-l����W8���;Q��y�5܉���+, ��N�If6^A-w�H2��
�K/mq���������
�K�Rq������ΰ�
����V@p��-�)��ѕ��3U0p�g�����=�L\�Yg�`�j�:S{֙*���}�\!ς�8+��S����y$�_�����n��͖)�(�x�ǀ�1��b]�u�/��7x���8� +qˍhP��M��P��M��P��-M�i�z'��X�ӹ��L�����ɭV�P���GRl0�HCI�Z��V�.O|4z�
���j�0h�m\��_�廉����sy�N¢������w�/��q3#ߖ�֕q�W���af��
�Ow���    p��^>7��e�5|����w`/�c�)��sz��|g����ë���yx�Y�&x����p�>8��w�C
�Uy�Q��ݬb��*�?�^��UC��v��Y�����{�nV3co�7�t/��j�.��Κ��Y�\Tu�EՁv3'��Ω����?�t����E��K'�"&�������)�ɾ��L�N�E����0�;���`�w�/�?���t�d��i���?�p� �ܱ��O4�9���ǒhKs���5<$7�~,ှ4'[��؟4hMs�o��n�bP����J������%V�eYIu��.���a�6N��DA���x���\`q^V�A����x�ˆ��jIG<�dCà�IG<�cC��E!כ�q�,j5vhS٥��m�wV�Ц�K�+�ɗ��Ц�����e��q�ڰْ!� mw���� h�l���ϖ��*B��\�6���j��`��ƻ�W�1����}z �5������������i��ٌ	E�[ī��I6Q�&���/�s�:�-����u��C`Ps�X��:$�}��)�Ġg]��Ǐ�$=�cVGw��v��1����AO���VRD�g��zOt�����*�U8x(����8x,���S8���qX]��G�|?9����|?9��ǃ|�7��ǃ|�7��ǃ|�7��ǃ|�7���1!��OGF�ܯvd�Y�� �·�������-+J���SB�����l��F�P�dw<#�����Q��Ց�߼��q�,6VU�\���m��Z�ޚ�]����e�W�ga5dT�)�'o6��0�� �ֆUޙ^[�����^@�FW�}�*�6������Ԗ��[���0o,J�e��S^�S^���ʔ��A�����鶔l�r�?�k��~��?��c�r��Opg����J����`[.��	�Yp0�-����[Ml��Op�����_}oVR��@� �I��ca��	�����cn�	�鼕�c�)���l�J�1O���d���y��������ʨ_�
�_d����I�R��l+/DM���yai%���׳�"1,�����}�3���H�����Eg�P,(Ǌ��s�ʂ���6�-(����}��P��U�-�,�+�����㚊�B[�h��"�Y`4�r��5M�\�pk����]�������{i���ba����I<�폷:cl��x�1��i�F�*�2�����W���+�^S]
-��Xf��Czl���1��֤P���i���+�.�%F��Ay�^��4u&�v�1�BA��I�~
/)p̤���^��>ä��^���q���#x��߰�J��j*1x 0���G �j*1x(�P1 vwƥ�Q�DAc@g\:��t���pY�������n$?���~
<���&���W�V���*���ԣ��������~'��$�Nmf.���o����a�̤�L�t,OJ��t(OJ��t$OJ��;r5er���2��8))�S�\6i)�c�\6i)�cp]*)�c�\6i)�cp�+)�c� ��L��#��29J��<�]0J�+=�v5���� {�Ϙ�(����O 
j�k�Y��ƻ���
j�k�Y�������
j�m�Y��f����
j�m깙S`�m��f�������zn0���Y��涶4z{+X���2��A�p�}�[�"�ΩN5����3���Q&����)y�S�x�<�)h<sJ��4�9%�0
Z��S�y�S�p�<�)�`��g8fN�3���e��g8��g8W��g8���g8׿�9 �5 ǀ/H��0x���k@���P��Q�U� XGs���g��n�sQ0~�i_p��n���;s��A��U�Kr���Kr�z_�qP뤍�2���)/��.l�;ٮe_Ϸ��O�b���.j�l׻g
�j\�5�p��N㢎Ʌ;��m5.�\���N�Nɶ	N��uI��5(�;h\�!�p��Q㢎��~�Nu���ݪߪW19$;NE�ú��QS=��CQ�䰮qk�Q���a]�V���FŢTk�:g<\���.��*e��%�l��~X���ZZ� CԠ�� �=P���f�V�Ylgl�Oy0�'�"�-�(q�&P'�۪��h2Fm���F,���0��t�4��Cu:�+��W�FM��jT��Ұj�J�4*8��T�R����!C��o��<�b��PPJU�Mc��00���S�i7ukϠ�y2@մ�kP42��x�gp�L�O�Ѩhd���F�����!��b�L��ШC�L�O�P�W42�?�C�_��ԯs�*U�W<2529�c��e�����T���ͳ=�a ����x�XY��_��*1g&����\(`ai�~�I1`Yi�7���R�]@Yy�V4�0 �&�|�+_�p�fʟ�:�
 ]2�V��������\��|z�0) H��K�qq ��0�k ��<�B@$@ʶ�C[�2{� HӶ,o�K�P5� �)T�y	ȃi*���!�pD������
t^��`�:��ڲ����
�t^��`&� ���.����}�g?-Xܔ�riR �X���Lb(,YO�E��P�3��"K���C���i�ǲAv�;m�XC�Z��]b� 
;᝶K,9��=��v�%u��C��>���F��3p͛R�����Eo��Pp���(\���a�ݞ�v}%Q.|�� �Õo�=E���7#��9���W���!6O!�a@�'!L�0
�=!\��׷0�͓Y	��h#!0�������N�)CL
�:!�1(L�3Ĩ 0�{D���UxM�)�*����Ȕg�6NB��I�P������"nоI�L�V7h�$D�!z���f���,@�&!��a���4IyYwk�}�����:�v�Er%��/�!N�h9'BǕ0�oN�l�*�|؜�pUF+f�\�K&�os��O�?Z爀��c����!��y�/�:7��x��[k:/����P.�9���I�]%X̸n#|k���M10��Q�o��>�~�|;͗�����3�M�3�D<tM�k{^�:NCES�i0T�1[q��!�P3�@�ph\�i��۷BCcDLi����X��)|ȝhS�����$�����ɷ*p��"�*�DkN�N����Ĉ�D�6<�9�(,<�1�h���������e`}F���D�6`�F�bѢ?X��`b��H<�X9���ã��ȃJ���:M K9M�#Z�+:MR�Òm~�;<�XA��ڄ��f�|D+���`:�`A/ ���`��#B�c{p
�!ݮ=�
�!��?t
�!]��5��y���n�G��H���DH��}M$`�`"L�0)��	Y�͛%"pQ�\Ԋ�1�_@d�6��1�_@d�6��1�_@d�6��1�_@d�6��1�_@d�6�����	�I�(��jt���*����n��'t1���ʏD���eD �4�[�D0) �0�[m���: ,`I ��@����	�
 =I���) � !�''@� ���n-�@�A����Z� �@o68E����M��\ɡ8����0����� ��[Eɠ�� ��[Eɠ�� ��ZEh�{� ��ZEh�q� �ZE�e��M��ح��u�+Pv:�:���Y	�7�цF�Kj�(J�Y�����U���z�z����-ۙp�w2�/�iA����Ux��\\�J�N�;tq�*�z��n��ի��EײoTx�&]\�J�Iᡁ#�s%�f-���N]\��@� э���V�!�TC�Qb�$`5�%ȀBV��Q��'$`5�%̀�BVÌQ��5$`5�%Р#=�h�i@��Z���AS"�j��*��(�������v�����9�oIDtm�h��ԑ��1~�
�(Ht�2��r��aa�㰞�U���D�8�z\VAv
]������$��c�
rP��ǰn&V����"���,ǜ��lVi�m���(Z4��#g�b�?=��B��]tS�c    B�U��(z+ӱ�L��݁V�t�'��s��2��ĺ�h�LGt2qR�xp1J:<�ӡ�����F+��'��6\�4Jn:�s��_���
R�h�L�g��ВIH%7��Ɂ�LB*�<+���tڶ�p���͘�l����a0�Uv�&����8�uIM��1��tZ�I�v�����WR6����9����(��(	����a����#+O�:螤N��SF藤s������:� I��SZ�S�9C��6%���H�ߖ_����IW�����~�ׁ�GBdWM� �k������iMKCe�f��f�H%�Z%��U�w���"~��eC�կ�;�"!�1��τ"�Ԭ�4JN[����mN�p��j�8zT݁O�/��B;����C���=@�b'�X@^@^"���aJ�I!`ʧnHu�Z��|ɱR��0�p�'/�'0Y���	��=!9�����2�*.�?OQ���h��d�8X�
��\���.P=wB�V	 �#	�
�� T͝P�U�j��q����^���&mO[CB ���F!`Z����85�U��	�兦W��=�H����M]��$��1E�F�<��uh�$D�V�
�*�.k��Z���TfR����������M��V7h��c�f�к����W�	���%���pe��+9%v��I�|�* @�$5!}$m(��H"dMP��$B�\�(�=!�V�<_�iJ���I\�m���A7�@�%�"оH��"Z%,�~E"��*	4(!)�S:���)�-�D��(���!i�S4����)�]�DH��Ł6ޮIEq�o�Iq��8�)H���^���>���k�Oz�=��?"d�vE�ӏ)��J��}DH��Ł>>"$����@��@/&��8ХG���^Qh�#B�q���@��EӠ��IӃ�i�t!�����[�lG��顮�4�!ۉ�k��tDH��nA�'�IqC]q-h�#BR�PW\�㈐7�ׂ^8"$=�u=����I��\�c�è�����0*z }lDȶ�=��5"�7�s\��<aJ�Ł�4"$ō��@W��FEq�/�)�M�ׂ�4"$MO��Ac��'EӠ3�Iӓ�iЛF���I�4hN#B���ht�!;oR4��F�5=���G`����D&i"G��4��D�$=�/�Lң�"�H�$=�/�L�4X���  �g�G� 4���C���Z�zn��f�� ��eǌD@��V��	��ۊ�9�s['�r�]?�s�=��n�@Fm�Qt+=�)PE��	N"���um�pMgF�ht�!}%�}%\����"״�v�H�5mS԰J� MdDH����@2���@����i�G�	.3(��d���[P���J�+Z0�I TТ�rt]�	�깓�J��Y��J T�]V��� �>���P1w��$'�b}� �rW��r*f�-P5w�ҍ�P�.8�5KK7�C��ҍP57�5��RA�D�q*�F�H����*�j�嬐�_�;�bn�x�[�j������Y��j��DT�	��Y̼	��]Ej.#P� �b��D�H�]��&'�j�+�sN@�,^䓺��|�O"�zv�4�P=;9hs �g��@����r�6�F1HA�P1;9hs �e'�T�#3K:`�4�y����	����D�P-��s$N�#9��P5���HN@��W6���4�A��<;���ggyK�pI�ۑ�p����HN�5-oGr�iy�pM�	���'.+L������������Q�}��S�L����ٗ�@���4�a=�� �l8���-�.9 ���[�	��ũ�
gp�����9�VV��$�"�9�V64�A�;q�f[YQs��[kbu��ǅ��x�d�Y���3}K0�8�Y�Ѱ���6���*{���%�5VՈh�BS[�=I�N��Vh�Ð���0O�v��eV�g�U\&����
|��]�[�a�G����A%nN�<���Y!5"\��4d�]ⶡ��phx���N��hx���D��#��I�[1x�	S���|���� ���(cjQ�[3���˲����e�;�Ne�h���"d;|�B����%���A��49),X!ۻ��Y�B��'�f�N!`���|���	��.����Ji,5JOcV�@ȋ)\��Nk�}%\��n�503]�i�������UQf�mHzh�ȇ��!�����lǻQ2�����Q!ܡ錠�4��[%a��eNo��3����N�5c��f����+������5�����Y�����5@,F'��h�M�����i��!�����H��uf����+�('��8���*�g��V�V��ᄵ��uxu,=:�U�(���?���q�s
zC�)9$�aH5p;��gm~�@��yc��C'_�	�sҼn�h�
;��ťU�D����(�����{�C@G�-nZ��@��0�2���g��LZ;���/����AF��������FA�?eG�+Eà�wu��M7*�I�e�1��7�'{�o����m����}2�惦AjI��I�P��x~���u)�Rk@!a��[��ڷ�����j��k?+��R"���wǠ��)���ﴨ,pP�w�NE�|+�1ئ��ge&��YY]2M	C��!�KUL�=F��A#��fe�,Ӄ�C��.Шi���=�2�� 4
8�A���>��|L��@q��	\�$i�����p�Y��v��4��E�I#���Lz������=�J$���0�FU�Фh������5a�(��G g�]�S[�
mAg���9�	�Z������xk����f����Ѳ��`T&�cF������;��Q�Cq�+��q��,�G��zT�ϣ{�:Mqk)�M<�y�֪#�S�%��	T�E������,�G�vǩ�qz�la��A�@~���F��Q@�q
44z� 44ʊ�S�`w���	��#��@9�����f�`}=b���,�G�j
�0 xJm��!��=�6��P�R��P��Q��r
�{O���8���:p�zϨ�~�%_O����^��V�#L5�s
.�z��\�մ�!���Y�Sp�++�����-8�~uj�!���3N�կL,8���0g�pq�=���za�=�>�~��E %�u����)J��1��p� `G�Q@xp�(��t�o��p����c�1���*;����#Ju��S�8���r�����9��n@e��c0���v�e�����#�D�ƃ�m�y���|ń�;�U0��0n�q
���aZ�y�����������mb-�]�t�	cF�`��x�%r���.�c/����8x�ċ?Cfp0�N���M��\�yL�`�0��e���
�̜fR(h؛�K�d���8�p8{�{)��?�����δ��1`�TS��A��Xk���ޘ!�P���S�6{�Ƃ�F�����5��]�2`��@��N��%eP(�����I���Yr
&�����?f�Y�k�i� ��)L�)����tO�rE;)L�#w�S0ݏ�i��0�����z��=f\~�]<�.ɏ����w�0P���)��R�NAu�6M���3P���H�i�+T�l�dP ���tT ���v٤@P�[E*�����ƦU(����`�(��hH�re��G��\�eo2�@T����<s
�{��>���7J�s
�|k���>����r���M��hs�dO�H8��sU�'��hcv?kM�;��M��A&�\`�AjI5󖠢o9r
*zv�1�#���o9r
*�V�#���o�`�)h�o�6	3(4�w�9X�A�\P�w�9���	R��q*��>�T�]}�!��ٍ�,�q
*�N	a��ʾSB�����)��;%�q
.�z�    L�~�R�(��>��m�&��-���ԒB-Fi	&{��ӣmv$A0��l��L�)T��^�`��f�n���.�`�@��~,��Ԗ_ڿ!<��E���
T��.jmA�3���4�j�`�
,HB/ z��Rԁ��l#�k���.�>$��ħ.�����w �.D$�@���H܁��	���?�! iBVj��0���v" u ��wD �� `OG� T�VxI�z�ށ�fģ�Ҝ@�,=/�>*e�qp��Q!wr��Ge,� /�>���W�~հ������Y i���!7f��ߗ� ���JFf T���
d��G<�
f��*x��~U� +x���C.��4ed��*x�#��;,E�����G����$< U��\�@�*Sj@%�*3j@5�*j@E�*�i@U�*��`�\n���� ����إ�Gu,��.�>�c1���e,������<�~����n�V��e;�k .a1������B�W-t�$a@5��� Tĭ,2@U��*� Tƭ,3@u��2��;�,�P!�!�m�� U��,����m���2��j�������9 Ur#w2�J��t�� r_�U3 *�2�f TȽ���:���~�����ߡb)T�t�5�������%�~���r������ʪ���=ⲏP7�e'�*n*�2N@u�HN��*�xf�(� ���t#�:�lb�^��B�Sr��5
����V�J��ŉ��s����z��r��Ɛ~��L���a��V��:���p~
�_Ha�������3Pa�ƥ��Rp�\��Ff�
���U��ͺ�N!��6�*6Z���۬G���)4W9�r ��M%�2��
1�q��M�֭U�f�
��ne(�V/���k����LV�`{��K:Ճ;�A!��N��vT��S������fe�K:U�;8EҰ��T&ǜ�KZގ�\��'��g��+Z�s .hqv�����1�rwe8�5K�2���ks֝'{���r/�!Й�PuK3:��?|������9�햊�@�]��C�q颲�c��Em5��}��U��HvB���.j�yX;�uQ�g�g�uӈQ�{�X�Tc�ʷ��1l��9UÞS5
��jإJ�AP��lu����jؽ�8�Ć`5�������Wvk3���v�a�6�Q���%�g sH�d��2a]l����₈q�e�P�nL���)e�d%�ĶܡyI*B�L�㩆�˶U���aa��醕�ʺF�d�����z�"���TV�R��w�r �3*4�z�O��G�2�dEf%��*q�=�W8w��a�
�o6{Τp�p�v˕��k�U���p`�p �O����Iņ�u�'�!UjOY���*Q|I����;h0�u Rvc)|H����q�wT	�k�Ur5XHm(���H����@�Q���4S����P�6���ƠQ`�W����5蜀=p�O	8��XL>#�4��J�N�`��i�P�������#n�MٝE���3�#1\���d(!C���CB� 1,Kl�� m	i�L����-��s5$��h��Mq��r��VS#HWB�:��#H_B�:��jD¨�cE���F�xT�D��u
XK�(SI�
*z��_6�u
U�]Sq��
��+�ⴶ�����Y����MkJk
*��R��Vɨ�JWR:��k�-�����~;���N�t�ҕq�U���-e�i�:�-e2�d�T�l��T�������v��s�tC��L`Y�i�SQr�:��WQ���! ��� [�Q �� W�� Vt+Am�\#P�A]���a�m,A}�F�a]͔��B�°�;����C������#C�uT���#����#f� �l=a�� ��������T@࣪f�*�ߋ����Y�Bsx���9��8<�գf���A|[u�*��z�_W���>����U���O��G8�}�e��α^�.����͊	ۖ0`8��/�=�Q8`4h�N9Gih$��s���A���p�p��ۦ9�U8`8hcu���)0��nk���x�5�
m�`�q�6��]��ܤ²���6�?ۨ4�p0�9S�:)��Á��Vi죨U�(��*qXs�����U�h$�>�Y%����gݬ�`�0!��0����Rs�A�*A|o�8� j� 
>�J�}Աը�7���s�~���p�`p�~���p�U��o��<4��h���A���A��������ic��Ǵ6��X&�i5��{� Ʈ����v~���zدH�����XϬ�����b%�بz��Y	e%���Р_أ\��x �G�u��{TWG�">2�G�u$�J٣�:
v���Qc��0�ߣ�:
�������\=�Jq����>$��l=.�o�����E=V�.D"I��*�7]�$��z� �u%�)�|ەHR���	�}W"Iq�&PWb��w�z��������������:����㽘���A�aD�S�����fL	�uz��� W���W	j� ,8��l�������}$1��'��Mْ���l2^�)A}��M��7%h�����=%h��`�b��S��:�j]���1��)9���%�Tq��1^�)AʧCO(��Tq��1^�)A�ݺ�Z���4�uó�#lkt�g	�G ����-�T�@��ѭ��JP=����TF��n���ֺP%��`��[�5��z�m�nuR��z�m�n5�� �����xr��ݺ�^���9ƇZ
P�A��1>�Rp��M��ᖂS���1>�Rp���8�wV
N=�����J��GS��_"x��8��7���_��>�p�%6v��NB�B|�`GRڄF��
d�$4,��uGrUfs�V �u�u]�#uu�ua�#�u�%�> `�c|ť)�� !�e8����2����Axx9�uBR*Ac���W5J�T�GfMK����vf��&��B&̚�JP��Ѓ�XA�$imB&b5ؒdz0aִT��BB&̚�JR��Ѓ	�����)$�`"V+/HZ7�����rRz	�A��}�/o|搌i��A���a��ѡ�c�W�:q��F��E輡��3���i�d�����
�맔5��P;��B��B�Â`+d,]��� {!c����;���@Cd`7d,*]�FtǤab�I��XO)kU��C�X�(�4
�	�Qα
]J�t9�)t%1m��rΔq:��)^b�8�¹�����]5{/t=�y�t��Aݐ>Y���x�e �z!��Y}��{�z��E�]y��C��B�#����޹#�{Ψp�XЮS�bT�!u>no&����cA��J(����P�AlX(�吳��6q�Ր{��]�f�LI9���źwF�8����ڗ���1��1��X��X�}���b��������-<o%���F�a�+E��}VkyVK�`h07cS9&e���f��, cc2̤`�	����z�g�ĸ|�V����F S�6V�,�Zu�a�М]�ɊT���3#4Gi�S>��;1c�n�(�_��=]h�A]4�p`c����W9�����*s�P���]C[��;��.Pg���0����B��L�栳�i��H��z�͋Ӷ�0�¹c��5Gk�{vϱ
�Ӷ�8J����ӶK�8]���m��8���-N�IB�
]!L�Eƙ�m]�q��{�m]�a�6ر8mK��6<4�������W�W�� {�mų�F��K���kfT$L}��)�,�g��eU���`.���O	>䛅C�1�A�	�5�/��ҼkЃ�V�_���J�l�q
�wNA�z��4>�� Ы�s1\x�W_��0����W���̷��V03bh��o6�B䤽��$�J�14Fy�7��x�a���̥    #�4�ڃY�5` h�.�L� ��v�;2��]�����vH���{�* sR޴�[R��ĉ�C{o�!�Hji�� �mH��sR�P�R>�m:�wo�=���n�Կ�d�жt���(c����O�s��k��L�0ga��o~m[��.���r�^M�>��!���ee��I�(�$c+�'Q0��+ۢ5���rʼ͘��ǄO-)5锖`�o�T�I摂>�(3Aj=�!���T�x� 5�0ʷ�ӈb1�`hH��9���)���E�5��8 ��#���v��M�����:�dk��f��LV��M���}��j$��="lC鰕'��&�3C�������BG`�zQ{��3P�ϐ���Ȗ������X���.g8��I�m�h�nbt9�S�����^a`'Ɛ3����c�.��D7�\��G`2_��z�}~�o���p^6��P3�����y�T24����
[���|�o�Ya`:��P&���6?ݴf`2��V���_��u���}w�����8�^�>U
�sO�+����+\�6ςVɂ����g%y�		�'%w�>B�CI�y�y�P2h�#D�9��V$D�8�����%m����S��EI�J4��2u�T�c��9��X�p�@�=�:�#���K��E߂����"c�KoO�_��0��G��Ј����Ţ���K�#��G��u�ӷg�"���������h�~�o���2����<_�4&tD�\>͗�O�G S��Sэ{9�j��)�7 LE�����s[�DA�`*���Ŋ�Y�}L���iX��	S��u����y|{�>�/
��y�����̝�9�F5n�xq[~���>����)�~̯g����%P�~��ǩ�m��@��Q�����1�V\��U �����
�v�� }�����A����t|�\>���*k�bt��)1mcA��S��ﲌ����i���m؈�?
���	�.�<Q����T�jOY�E�|�s�����;a]Ɇ��@� k����4d߿>Ͼ`���$81_�dhpf�|�I1��o����fn��̛5T$����Tʆ)���O��۟�P��?���|�η�>8?_>׺v�?�%^�`�>�V�������4<��W��£�������}�&�����ձ���۠�%i�L����c)��k�<�k��S���	�ﻬ%��}����|Zz�s�=,���6+(T�.��9���>��5~�?�/8 �:�V�F@�ޯ������ed���Ϻ>Ͳ:ʈ`>�
UnO��bl1 ��u����/O�i�P���͑�_��Yo��>����E�?� T�}z���(@އ�Z��|yx�z��>��u��8���������r�K�y�Z{���t~{���ai�S���J}]5?���?��R_7/N�WZ��� V�������e�q9ɐaP���H_�<��~����k��[ϼ`=�/�D��귰rJ�"~0�E�\�x\V�����z;P�����|�����2Mk�yȴ�(,xKɸv��e;���OC;�孏۫/�۶Im���-]|����8�3QgU\fq7�������ͪ�F�0�1J��� ��}{t�8����ܜ���n�h85�۝a�*�׾�i�5�S ���v/����Z��n�
k�c�ʅ�x�D��Ũ�|pԒ�.p�	�[���v5�Cp�W�fp.����
EPQb
f��B��1+\`qK	[�.0
�+bGk�m�v��k���a�����Fm�?Jw��0eR,nIrzmڥ��$Ǡ���7�5UĠ�ا]�*.�qz�u��pz�u�].+�q&�q{�$�����e�S���q֚V��o6���	!ϼ$���(�Kt�
�!�Њ�)�i>t�%%�����&<c�_����<c7me�#1�cv�VV?�x`�����\^2H�;T.�$�rqy% 0�!䙼ĸC���TB�!rif*!p��S	�k\��J� �LJ�U��z������U��9�&׌k�����v�O���r����Kr�dN̍k^��ׇ�����-�	t�,�����x��:ߞ�����t}?j@�j� �;׫߀���u�-�����.�<,�cN�4���f��s�z{���mv5�f�����P���cr�
���r�JB�b�w>���xx��ϗ��f��qp�H&��/M���nAP6��z9��%��ojS��&�_������6?��{g�j	x{z�����{�X�0�Ϙ��~�ӗ%�i�]���<��@�f�D��?<ߖ���_�s������ףC�]�l���V�>z�W���X;<��o/��-�PO�	����Q��D����%��@�	w��� �	�l�����|5<4+����'�z�lN�����G
hP������o��<�2�������BA���t)�N�MZ��� �?K�|�_�^jl�`z>>͏���_5�n=��^�Z��\u&�1��-S���%&�1�iv�':�|#�.����|���-�o�yگ�������鸬H.ی��	��3f]�=���p��P�f[�%���p��d`���P���lY�h��~�}R�'�tiO���7������Y��$�x�.;7�
�Yכ	�R@ݛu��������g�e�_�~۬%�o��ae�E4��ʒit�yV�?���4 *��^�>���w���_�����v���h h��BT����V�a�١�>�ת2pz���Ue��}_������vI�#��}�>G�q�^���G��˷�tբ]�H��*�����jC�#�]mHq*�6�8�wWR�ʻ�)���1Y�>hQu�j�1�1����3�B��m�s�� �����5y���ZZ��|&�W!ܯ���|^��}��0�za��t�yJ8�K�9|���٣�K�j̾�# �홶g�	���!0_�G����0Kڍ�s���s�LΔ>�� ��Ruݶ툁�����+�9�� ��������� �����B�� =|�ȏ��j���g������*���^ ���Fa�I�HP�b
�Q ��=��@p���d� ���P��J\�s/=�*Ap�ơt!G�������ɕ��ً����ZtS�5;�P�2����-!��uX�>Xa��~�v7�=�-�,s,�5�ni`���A�5`���O��|�?N����U��D�ɮ�˴۶h)�h"{?�ogK���_~��jHԑ�>n�c���rD��Ah���t�|���əu��t�>#*�&��_?Nt5�� wu�Q��������<�����:3+0u
��럾��u�����f<�'D?���গG��M��u�P���A�Z<&���u�`�X�?�ϧ�B e��C�����|KP�!�]��[Q��A.�O�e����C���2�����_�����EA���f�/�r���J��������Y��C��8��4?�/s�A`�P�7�m���i
͖k����_�������w_Q�_�j��7��F��p�z}9.�,�s��]t"--J7�%�����o����}%4��X�������[)4�OV�������P��V��\�N�������w-�;^r/�  �n�V�/�Dk	x��hk-����UkY�����<���=U
~Q~�j�=��j��e��8/O
�|2!�?�1Ϲ�s��&׻	?�`凍_Q���,�ծ;?���X���Z�;���X�ᬃu�Ƃ�v/���g_������X!� ���:ߵ��@���:���J�G�R,_v�����ŇJ�:*�ڢ�)��#9�r  P�w�V��<?�.��On�H��09��T�]�I]�� ��
��z��-O�9&��Э�������K~��CЫd���+5k�쪐.#�jE��AW�3&�����Y�0�Лi]2��}�~����Q\��p�3+�9�' �0�Sϧ/�z���E�S��I�(8P�9U�յP�{]� �  �2?>ͧ���
s�;���j�\���<�!�#А�:?�_/l}�)h<hC.������v�B����U@��_���_�3}�PY�PկU�>�:U~|�aA,K�|e����R�>�]�6�RoC��?>�����
��?������C��X��r~}�.GXB����ȷ+g
�x�
?$�	?�Ow5�-��n��B3Z=+�2!PЃ�6����y
 T�[��v<������ת�p�U�}P{n�v�'�uz������_`T �qH��춴������U?�;L�\��|��~{:����}��r4]�~���ܶa�-�%V~�w�sۮ�*4�ڦ�&Qk3�~��
Td3tHy��:�'�G藣����y}�j}�({SI`�������gy�V@����x5u.�
tm�U�:�:ې�^��,��G����7����G���>~+H��^wK�O����V �3���.F�����F���B@3v�Ž��볟����l�ǣ��Pd��8h��zTG�y{}��?�(0�Ľ>L�_���{�O��I{}��x\S�y4g��Ô�b�_����~]֗�F
 t^އ 8��´��؅�K!
�i��n"Џo+����M|�2*(�m2�#
*�����/0PU�֦�Ͽ���۟����ܱX��WS�����6�*o�N����0��תH�/��P������@P��U�>�^ޔq��Gpk=��S�f��7g�*�xVPp؊"}�ϣ
��y)��a��y�ZE�; �:2
���|�-�+��0��X3�u��]R�e�I-��
1�[(�0�pB��j��)�����yh��VG��f�Sw�y~!��+,�#��sE�1�Qa`��3�[���^��$Nɯ&��*jH)tE頛� �ҍ"u�MG�B�F�:h�#H�u��t���Q��R��(r'��O����e      �   R   x���v
Q���W((M��L���ON,��ϋ�M,.I-�/.I,IUs�	uV�0��QPwQpr�sw�Q�Q0Դ��� ��      �   L  x��ZMO�0��+r����Mv��fI��d�$E=!�= �R���]{���j��!����}�ݩ��sҩyL~�?<?=~|~y�{z�y����������oO�/0,��\��Cr�U�J8�������κ�ƻ6����
��M7��Hp�o��nTU҂ގ��x7�?�HxE��{Q�4_�`=»
xs^�B>4��y�ըf��-�Z���5s��<C�i��Nw�aMn�^����'�]ՂR�0r؋o�+R�MP�i\�M�-����o��%/��4�p�{s{��	�o�A���Ͱ���?�Kd0�0d�� ��	� [�=�&�E�+��4�KL�6��X�ip�$BU�~,#��4	v_\�	�1 �4)i�mdo`�Xb��DM��{֡aT�#�A#$-Tq5m*�$jD(qj��1B��4$M#6Q�epFӈ}��P�\P��b��h1͵�-nbOFӴ}��oc��@���+s�:M�0��"|�[�|�,]1�Z�Đ`�!��{���y��9F�a�N��+ӆE[gN������-##z�ۜ,�A1��'z����W��#\��0�1�	�LM�mk��8�B�\�\�%���ܦ�;�i.��͕�%nOVqEmnE�9q��y��8a���	/ò�5o��F��};�g��1�3P$h>g5�w}������'�ܮ���Um���6~���0`<�w�n`/n�sb���;�nwû��KܞЫFoB0�/��"��֖+�!
#d�&2�u�D�]�G�DӰ�ǡ�S��p~�-�+�!:�C��ݑô�v*+i����0-��{M�
�����O$��kw�g`�/⥷{&�94{~�)��p�ߌ���&�o����x�n����H̑�}L�b�?L&^F�	
'��%N����)�9­O�kF��ݜ���M�]�h�,�7���ʽ�#��S!�܇fT�p��NwQR��O����)�~a��>�#`�e���#M�ٜt���U'�CrGFH�m�W���aŊ�����2��fѬ��3Oקl52�����9|�DFX�8;��Xj      �   R   x���v
Q���W((M��L��MM-��K�/N�HM)�IUs�	uV�0�QP7202�50�54Q04�24U�3S״��� ��      �   P   x���v
Q���W((M��L���/�L�LN,���Ss�	uV�P7�443T�QP�TW�U(N��r,t�B}|4���� W��      �   d  x���MK1���s����Q�&��@�Y�l�-
�^��NZ=��}�l&Ͼ�
�
�*�����~;y����WX�0`�������V�fՖ�"��dq|�0�?3a���P����%�q��
_��E c�!�k�GLUź��=Dtd�:4�v*έp0��7�O��h�A��1R)�	����ұ*s/���L�$�L�@o2��8]�y�Ɗ���]���eO	˳*:��;%�9�*S�<ܼ�$쇥\۷.�V��mu"�ɇO����i��Y�B���Ast�=�@Y���d�+��Sͻ�b�TN*����v���-�!1x�l�YsДR�<���~5��.��@c�l4�z�y�      �   r  x����n�8��y����Ed;M���$e��H����^n��p� ����%��]�����?9�6(A�����������ϟo?���{X��T��oP��kљ�yU�!������q�e���)�v��8?�2繽,����J�V4Jj�\Ui�h�Z��5cE�x�8�{AY�i��4��Z?���x�Jj��5	�4:��������Q�\!��e݅%Z�7�j�⼺������k��"^TYyGi�k_��<�I�.t�t�Vf��<�Li�����n���H������ۗ�n�����n��<��jx��)X��u�	���v�߀��vw������,��J���$Z��9���ʭ��ʎ��39l�C$�F�����<+�rN?P�[�/���_x�y��J���0r&A�q�왨Dm���F�z*c䛥��z�|#Az�.)�1������B���:n �
�O���L4�g���.,C�ke*�����䱓_:CH_���o�
M���<�u�v���*���L;.��0�|��prX�X���D� �1O��I���M�f1�ԡ4iSc�úH�~����B���ZoR��2�5c�Cӑ�tK.��4W����_[���z����F��`���^Ez6�mB����S�y���E:E.�j+�STF#���%D�6�ԙL^��]���08��HF��L�elz>��[�������5�j��kh?N(
;fi���d�
��?m����iTk�'/�bZ�_�6���]���;�q�n�kt�<�{'p�/��7Ԡ�9��Y)�I�ë�OZ���m	R�57���a�E�B��jŇ��?�����VL���d��=q�l�P���H����Fw��      �      x����֫ܺ&v+�w�C%r�DYd�E���=��{�r�M��>	$ox��n���������9�CQ���<Fuy�_���$���.���������/�	��������I������e�Z}�����u���_Z\��5�����H���^��']?1���M$[%�2��w�{b�e�1*�v��a�È�f���߶�,��g��m�.����_�����{����/vX�[��N���!�[���ð���I�٘c.�a����u�������Ɓ����;��|�F3�V>������׹���I/��`�lJl��#�^���*����8"����҉e��H߯�&_L��4�q�*�qh��Y�7��c����ϱyO�	�j����������ԛ�?%�7����m1�b�'�f���2��?�)5���ғ�0b�������6���#��3��0/���*ओ&�t�,�/��-2�?{��N��#j�X�����
5��1q(��Y�e�EF��q��A*��Β�!Å�����_4�����\ O�Kd�����Me!�]�٦F6c�N�E��
ؾ�Kp��-�o��x�erɺ�4��V0s�`�W�q����~��/�	A�DP�မ�3���9Q��Y�� �� X���$r��_4�����?�%1�o�ɻӃ6���㖠7�N��M)�`�,��i���ۛ5]ɷ��,6� �V.��>�`,�����w�}���L2'�W�Eu̎���.�dC}}�� �i�2�\�������K�ס��[B�p�|}��l-!��z!��Ԉ죁Z���F�A��؍/5��"�R,D5D��u�A����o���vA#��$/��k�^�G|���ؽ~� Ƣ}��9_m4rױ�6�[��x��n���D9E5y��gdu��!���T�����k�L�oV��	�/�uPJZc��%�HJE��qr��c���f�����נ�����
E�q>>�:��#�����ځ����zg-�v��������x�����Bb+���_���z�w�D�,.�3iǦ�3��,2Zm�-:.��dv��E.�bC�q�/�/c�_��z� �`��w��?Q�s����w��px�⛡jJ@/
����aA�RI<�%��%F{�c��rP&	�)C[|Q�t��Y��E`���&����\��F��+����?�ǒ4��Ut߭�"d;kb�c��1�ג�Ȓ֔$�����Ĵ���w��*b@a�5;� p�P�]�?���/��+��.��ϣ����'��ht��t��h1v�V������CI�Y��O��"�xn颏��&��kE�o�ug~�^WL�*M�E����]?��-�`<x�w��4pW�+B�D�wٚ.t����(���� ?��"놦6�in�g�G<:�t�"c&q~%}V�?\&�^���a�$����_����U3D�-L�Ѝ~բ��s��9�e�ǺIo��!�pttE޻��7ǔ��+�z&Kl�6�μ�C= �H<RƐ�I��]h[�Y=����wW���1�4pC�<��
7Tgۿ���g>@�Xi��a�q;���a�x2=��}���F��a�����@�40�h�eP�K��&n��/2�j��V @d:y,���_�U�R�����E����F���}��L�~fdC�����m�O=�fy�{I@�E��8���k:�4f�в�M�B_'���2�8�Qs�{PV'��֑�v}�Ki�i�LG�N�M�÷�"�[�?=���y|�"׾6�+��'h@;�+�PФxj�꯽�?�#��1�[y��fx��vaX��O�;�;A�TC�L���Ҧ����7ddPZ�G�\�0K�'T�q/? ���[�V��Tu��Ci�ϒ�//��7���y�3��4�c4/È�'���i=�oH^_�H�p	=��������4�%�P����� ��́D���������Z��W)rwꔶ^�=���&��D�f���?�?�w�7Q��c��l���$/2���C]�`���}�Ȓ��j̯�h��7����P�����Թ[����a�+���!��ˣ�u�Y��57efO��9e]=�S���6��h>G�{Ip�Q�ǟ=��a~ ��B��M�p��OP����p���?�����P�i��]�t]�pRdԿ�Z9��tV7�w�N��jTo���:~���q�vf0����t��;d���=����E)�M��x<�e��3qܲ�tw�o�B��ԉ�&�Oqm��Aw�����	��Ǟvi;n�.JX ��Vh-��f��m��I�붇b��F��bк 〲�:��	��ߴ5 ��$!�8 �Ss����͞�av�5g���r��W2�S�o�_5�2�W���.��]�	�p���3>��W��D@9�RY+��K _��G<7�q�1��mb�G�71_=�s���)���� �Gu��v�'��n1ݳ7�*=�XTud��Ƿm�0����ɓރ	h?l�.u����B ����>����S�)m���̥��?受7>��k����%�
@n�����_$�򻡞>��O=����WT�#���T;�'��(5�߾�����@-�����[�}�U�`�Ňo���쬂r��q�ƪ'Ζ~/#�x��p{�G���"޽\�E��?V�X���qҰ֘�z?G���''�����z���A@B�n ��% �p���ق){Ƙ5$��i�-?	d���Ր|l�U�,�8z��$J���ڃ�q%$2�&"	|�(���Q^협��������j��˻"��t9�HO]/~��TW3�k�c���8��[�
���gH!�S�u#��`��"��wә�Zц0�����/<�p�\s�=�_��4Rym$�E�����?��ǅ �6�z`9�<��Io�k����'����<�WM��本���vή���;���s���ZRR	 ��U��Ė6�
ГR����� b�]�*C9(��K�Z�
V�A)>�	��{Q���+��
��a1���?�}��lP����W��\lf�]%	�zW�	�q*Ðq5���)�d��!!:�z��'�߼��O�0��?���5��(�q�4J��AKt�]M���TD3�2����Ep�ܹկ.	���,�ęOz�I�M�s�+�n����@��.�Gb�ck�x�mx�6�jqe��e"I�z�虿�	+[o�`| 6!�Lw�6��yJ���6k�u;���)6ƜB@Ɉ5cF}�t)Z�/Tq��zH��fpB�jÇ`������?��V?L�Ɂ_p��\���f�#h��a���w^�y���+N��=�c�Ȣ}]��=�E���,�*|���8�+r��6g��&ϝ�vNq �b�i�ܓ/���U��ӈqw"��5!oC���8�g<Ѫ��Xf�.Wwf��hЖowD���#y��F!+iElhEH��m��,�ؗl:����E�Ф�c�Ft�pA8HW��}�J�C��l��y~���߁������!e��C�X�A"�_4}_�����'��S&S!�����H����b�D!l�3��F?	���-�Rr��[�������-�۬_��{�,�1��K�B#��ǍԔ^����h���M�[����mw]����&�-_����<f!z͞%�S������!2���
��1�]�i��1�׳�Ǭ�\��?�cV~��
������\a*��O�I��� )�@���N>2����S�GN�����B�C��	�3?�;
v���%�P7�������" 8���w����k���fn��p+��xHLL7x@�h��/�L������O�$�k�;X����x�"���	J8f�競GwZ�/���f8_q(��.�(��x����tz��z��rQ�"dv�S"�z�\˭�`�E�)����E҈���2@!�p(7)�~=r���O�-.�N�����8�$��`���F�o�    `qP��P(��io/E\������wn�@d�	d��=��c<7�L�|%��Dm`*���"�Ļ��t$ܳs!�ـx�	�!�ս���DhR)���Ӹb�����x@�Ay�J�X�ICv%�9��c�^bH &Ѷ?8��FnD��_��f�E��_���B��v��x�a|��~?�e8�&*���/Cɮ�F
�O�Eh���l���3h�'���R�ٖ���G�H����� ���%��~��!��Ҳ�N.9Y�~��Ᏸ��+��,�̚k�1}��G��T�N��N�v�nD���4��k]o�
�,to�����=�Y��>���@��^;w4�:�,F6�pZ� �Ǡ~W_�]�<#��h�MO��Jx;���=Ҳ�xH�ma0�N�����Psx��
j��������vRУ/4�&�a#�S�P'��Ӓʷ�ÙQ�n�&����b�M��������Aީ�3踘�c;���Oa��i$������ {���r��6�(�k�К�Ij G��0��<�Xh�p�ʟ�Y�	/s�!&�4���� 
����l/<OS��|�4[�B</^:�s�L�MR'S�8S>�{�;SGY4L	X��p���&�ۗ	�]��x���?�<�I�9�F���'��0�4�##��Q����y���Pb��qSt�WX��29��n ג)�(^dC#E|fa��I5��Îs�c��08��5Uu�;<����)�3WG�i@I��6��~��KΏ�ږբ���X:��Tӊ�m�����IH����R�pU�4\�D~kLU��t��qZT�0��q=�s��Ɓ�ҁy/ ��:^�_�KL��Nymy}����ݽ�����ܮ�<�"�{���w(���&TZ�湘�$�PL��^݁����X��8/NRU	�7�	L��n���&�|���?��c����>hh��T����
ȝt�a���� -�Ch��v^�P����ć��ك�ބFω2k�J�y�j��ї�f��:P6�蹪��%D�!��K_3���g\�W���`��g�g�`:��������u%ku��;��V/�V㙠w��Y��y��fˀ�H����%n�����K��8ҋ`�Av�!�(�,j�)mQ��H�?��e���s=����j�-���}q�S"}i4R1H��k|M)���/i����"�}�o��]����i��I拑��=�%r������uV7��Kۮ:7�����$��B$Sy�Y����X�K�CMRz��Tv�އ�t^�G��ME��,Y�,Y
!�dK��]T����B���ϼ aBq3����A��{ݭQ�wՈ&v�
�$���|)��� j�w	��Ȓ5#�i��� ����sE��m#���w�S���{�Q�>���[�C�(Y�u�yu�w:��Fa�� *P���Q�Jbc�0������+�Թ�����K��G��Ƀ�+�D-ٛzG��&��g/�/�x���CS`��8����@��J`ŭ {�|5L�D[��tW3t3��n Z��x73��������q,��G�����v����Q2-Ј��,�<��G�H3-�ppr����<��*[{?���E2U�ˍ���B1�M.W�"i��k�[�ş��l\���0:�.2Ez����ۺY���>����ө�3䅐ze��,k`�}�^UY�x�:��2dA�pSOO�%����%�U���xE
6��$-X�Dk� �D�:�1���گ}�n��������Oր���O�t���xl|-��[q�9#�m�֦7D�!t�ϦM�$Aw+�$�*�Ԇ_�ҧd��nC���Z.��}N��md$�8`hT;LIj�"�y�<����+(��|4�e�/�e�7hW�+� ����;n��0�����?:��_�����V��Ӊ�H�{���2:0�'��C��E %1���$���sH���ۉ����=��\�FS�}X5�}z�<д��� W�H�k�T3X�بu��-딵��n��"�=H�(��U�,+���N����9��<�^��L/�tﳔ�nT�D��Y�P�I�x�e����jt+��U���3�8[XVy��z͟��w3, R���i�waw<� ��.� ���
���9��>��G�WR����f\�{�:�m�#F�j�ݸ!<e���n����}K\B�U\SRM�kDo�$`���Г�*Mu�/�S氁mw�dW^�7)�u����9�^b���i��D/B#H���<�ra�Ɠ�x��~+c�M�j(H�\W`�M#7[�	�ѹ�U�,�<���zu	Z�@uZ�SW�K�����2r	��5�ǞkM��H\���vA�~�#��a����>ݾ4��.� �7b����$VhQ^�{u`l0oĒOwk�h��Dҥ�xee!�ę�Kط� ���,`�'�<_���"C[�m�Dv�}�C�4��td�FJi����țH
������}^{�OC��O/�[����@M#�J�υm,�f���|>t���'`�T|r�����'�K�T�����`4Q�z��g8�އ�;�w��3�?�umYE,���']�l���a���M�{:m�ʃ@����+�T��Tm�]�K���h���O?�hg�ܑ���xm����B�j̷�(Ζ�M3QmC�&䩪ڨ��)�4x�0�L�&H���_���@��i=&���A�U�b��Drl�"�7���-���}�������y������$�h��Bu���xj��=��x���\�� PB��� _?*ڻ7�z���.���hYsDa��c��c�.m<���ɰ>��yI���*�S52��ڱ�m�[2qcW�~��s�O��lsO����bj�v��y⡹b�B���Nm�)uN��*Y:u������릃�e_���FixW�,[�c����stߡ)@���L�BԵ���2��n��Ǟ��t�~����U (��Ȥ��P�q�E<~�##� *�w#R���a� )��MV�}T�et	b�^D>����d�t�&�.��j�e���i.����i���i��Sѣ��[�0���V�L�5��G�J��Л�|T_�Hl���y�q��U��S��*�9���h���=�z ��"�d�D���X�ìNr�� '���im[�m�p$W7��� 6R~��hg��`˴G*t;s$�fT�]��)\8M���BI�\�>j��6��!� �#�w1�z-C��Ùy�b+Y.��T%t^��S(�S�3��ֵ�"�����p,�nCro�'~�@���퉠�Ƿ%����)?�髤��sd��Bq
�zE��b�K�e�O!W��i<�ދ����Q�g)��4>u*��[uR<&��0�e�㥕�I,3�ّR?D2p}[Wկ��TR{e���Um^Z�D�����p/�P�T\
��U߇�:A1A?E�3[��^�A�ʇ8͟�V��F���%y�T��h�Ng�-�T�����>���X6��y�5����C d>��x��zA��٣�ɦVln�y!�M�X�N�� a�W^�/x����i���(�KU�;�2��i�c
�5e�!`W��i�'�G%f ����RЊ�	�����1�Ӗ�	����q�K��F�>N	� ��<i\Qg�����?q2�ׇgWB��8�I�(��S���1%�9%�����w�ƓY�T�7R�M������{3-����95���=f
}����:%�h˛�?�P���~y;G^�u���ӭ���\��}��}J�>�� d����<l��=]����z��#�����t���W��Mt�4�7�v�%~e�:Ε�I��~ޖ����K��؏�������n`O�U7����
�
Pa�����s���\�l6%�Cj�Kv��ȍ5CE�B�E���z6�g�k:�	1}��-&�-�Q�������8�y�਌������uYo`¾�ڣ����5I����9(�倫����+x�S��i    d��Ea����
���z����Q�y�s�у�o9 Z��xv��{{K�\U��u���]��
�R�������F��nZ���d&���*f��ꙺe��� #s�/��������;�_�<�y��'u[-����Z8X0�W���*�,��:fn�˰7���_�C�K(і̞�n�u�6���+��r@�R�7��j��%5�n-(~��F��+�	y��-)1���
1A�=/v�x�jB\����І&���P'pGϯ�G�y�Lb�ܽ1:p7"�ח���ʴ=���bvOd��t=�D�r�E��k>�DA�~�k�Br+`�P[G�An�����2��p!���[k����A�C�P��:�?w|J����+�����K^�.�D�-����(��7_vr�vDa�1Q�.lL���eê��@��A3�5�N���rZ�Gl��(�ى�+���xW��؟i�2�~�XS!���hײ7	һG�[�2we�tK�Z�0���&.��]�+�<��\g+�+���[�.�W��4Ss�E2rH���B:��Rm*�pﾁ�b�e��T����
�*G��w8�Fmq3���:��G8��G��J�YEeufQ�R]t}���mj/R�� CH����^ԯS����E�±t�z5xR+F?CD�w��]K��qVR�&G,�b����~�D����`#����U۵���Vy��i/�X���tȰ��e���ch���95�B��TØbF�sn$��7��LO	2�7��q��`����~���&�<&�3js��92��X��{J"�ʡ|�����Y�7�Rp�(�
�P;ߘ�I�|��؍��o
�S��1 ���3�P4�O��.vYp*?Q$�n�Ӆ�)�
�}��Ęџ<X�!++�t�2a�˷�����#���p�a����> �:#�'�qY;B�d<��BA�D�qjE2��$��y��wK\[��V�(
��g�qAp5QH�q*U3黎���Y���O����E��##�ߐ�߬�p/�i`E=d�L�����Ngu���ter�<�%a���Dz��ۓn���7���%�ϛ�	3�4TG�^u:��2�'q�=�����ZjD�Q>�(��͍߭X���gw��t�t��#~�����_�D�{�ª[�JF�r�;B�� st*'!�V}���,���9����L|iQܩ�$��_��F�c��D�6֕בS8��_�N��H��4z�,f�c��������K�[/��4�v���k��sD\�`Yu[� | ���N� �
y�g!v}��Bs��� �/���|�P��P&��ƀ�a�I��gN6P���έ�*Tp�S=�<�X#;lqx�W:P�xy3Z��8���,�ia�W�t���;��C�!D�/ӻ��(6�ޡ�'����I��Ph�i��U�������0ց� tlg��'�0а�	�������(?l��dsI�겎����6"�5��H>٤ʞU,��V2��k�0�(�Ӿ���zB�
��Os�/�/*�������j���
A���¸ڴ���^Ӏ0��QW�qf��ռ�.W�'Q�[K�	S��Z%�^gZp�@�����p�3��;'�k]����y���ھ-�ϡ�����헛B0/>FH\%�8:b�B=K:,�w�J��ޖLF��أ��+X�u��$����
�P��w�8�a���:>���	��>3�o��uD��`Ϩ~�����U+�ND����y�	�4��̌>�ȷ[����?nt�`wR0���p�� ���J�5���ZZc����3Jϔ���:]�d���q����C����)�:]��h�I��r����t�=��u���X������Q}��"����h}
�a5B��P�����-�}�^0MKJH��K���h��H��1��Oy�5�n�a�7��H���a�J�p&�=����:�83�[�LR?�B��a�!��:���}��6LE��@�;q��
�d�����'�}�$�ᮆy^�a�[�����Ԗ��䵂�^��աz�r�cHȀ	@A�MB�j��U�u��z�܏��#*0P�)K��"�?LD}���ХC�V|���n�E�Y�;�%,aH>�譔ʥ�6�s�F���
�Υ�|�`C�����E����}�3���9tFr��9���\��ǳ����� 	�g3�X����h�Z'Pj}qI��P��
�l�<�;y�����T	�(���i����E�DGg��kY�^pow�СL�E�^ݦ��#f���@P.Y2�wY�vi��9M���Z�#4��&��)����.�'!��rw�b0��"H�l��=�jw�A�Yz����b������1�c`������Y<����v�_�K�Y��>�v[/�	���B��MW����~�yj��yph�?������L0�Bٛ��=�~2�;��\� �4KO�ɲ�ɼ��Ċ���B\����5�"Tl�l^����ִY�p�Feb"m}�����`�w2>��5A~���')�=��iL�o��w��b��Q}���q��6άưE&�"�z?�b{-S��`����K���A���~�`.>�?E�L-��Y�_wbA��m[��� ��k���&9�o���
mD����_��=5�S���7�[��by��w�F�v�#y����a�iCF�+�����)�n�^KїR�H��i��?a�]��k��1K9�`���l
�6�g�g��Ak���5z��G?d7�8��L#�X���-�IOk}�DS���y�LzbLx���}uݨ��y5���h4��&�^��� k�μ�ܑ��Y��\_�����/9+��rpD�Y�������^�+[�D��� ��@z���<��z�I�j�
�o-��*C[�~��J�oDM߰n_4=U�>=u��{&茌����S���į���	����U���=]_�ɵß�(�1�@	�D�QN�jNZ�M'�χQO$�S�������48G��[����)�ONs}�"6É����sNh���-̀ɘ�0�\�E�I� ���3
��WJ��$�Uy�M80�>^�ڡ��K�������$�,KprY���J�������[X�G�׊ *�yM��n\�����v}�OZP�S�N�}����~��L��z�#�-�-H{��<���lgjP��F������y� 3�F!�C��5TJ��}5_�)˲�:�S����6�y_oKAN���xą��I~��]�TZ�Y8$g�T-�8!''�Kyш�Դ��29V#���4N�ݻ� م��a�Q�b0�{w[�E%^�̟��~*�i�v���yǻ��̍~!a	"�	?&�y�i=B������FGފ��?��#�וH��a��%!4(�4�晄�g�ֽy��Q�eBم;W!�~�wk!�s��T�AJ�Cx���U�V��6u-�m6y?�;�n4,�d6Mcڍr��(�J�ǵ���Rn*�!����"�h2�h���х:;xd�����+ӎ���w���O�����7��u̘�,�_Hz��<Z�j�`:���)@iE
a��a's��;ܲ���x��_ΖT��!��P&o�?��� F3x=��Ģ,se'��'�,�5�",3�{,F#�x�ڍ����C��c�������}��	�U3l_�Eh��$a[�c����}I���*�u�����}K<���fP�y�:��q����k���1"�*����@PdB[Г{2<
�I
�u���A�02�il�iGD1l3��/?�I3��-�*ewXצ�ߠ<�����m��t���U���,����}g_%� �dH�8You�]^�����~�:?�,�|��ħ���ThI���!ih��
Bx�MoS����p��
gUO����bI� ���Q��@�T77��6_�� &GV��� �����Y�l��p�=*~IUf?��M��#��)V��}��G�3������?W���Mp#�3�髰�;��JP��j�y��W�!��g�'�%���h��}��#e{�    l�
�l/��ڇ�/��<�\���Vס�	�fngg�]�[S@��Q�1+'	0�͜'#E?YO�!���̑����w�X�>0ڋ�Ǹ���>%G�ܱ�=BHxR׀i�d�'��Ԫ�� r��W�ɱJ�4$�6�;v��M�9`#8u�3��5����s���c`�,��5RD�5�pp<��}�!�m8�I���S������$��ԧ`��nwN����<aW��(�d*Q	4e�����9��79��q�0�^���:L�&9�m�me͊���S�^h��g&��"��>�ׁȦu�={�,�鼊aˌ!���	�i
I`ӤGww|!� M����cGv��/�i�sPsr���Pu./�f�m�E���E�2)@���$h�Z{�pa;�q�~-�_
���G������(ΰ��ees�r�	����y\Q�~߷=��JQ�P��ȄЌ�Z��Ө�8IAg\��{�@�-L��>v@;SIf��%�����"W5CF_��΁3��:�v<Ñ��������{�ì-iO؄$�U��x~'�B�/=����^��e������^�A6��[G��x�#يpn7f7\g�癩=|*7=�����/�<�>밧�+�K`��|2]h�C��!���>d��#�-(0�t��v֔#��;��S�������՛��#0�*g�8���F�/����|���}��P��uQ���n�%�mf�v�e��z�Z6��*��	L�_��{�L�qY�4�G�>�]�IN.j̒�c1Jt��,�g�TMG@�/{�<�B��R2�)h`�A{4�]5�$����-��m�Ih���jo&.�����O��*�׉�>A9d�O�� �$�H;Y�*��8�W��Y]��(�	����Ҙ�����)O�Y��#����9���y>a��o���g?��S�~��`gV�E�ik6�	�b�n չ��RV�f�9#Оm�����Kܳ�j����y��ܽ�5˙�bYIjsk �o�x�9F��7s�w�+��&������H����y��[/��X�����=�30)\~�_�<�s}�d���nQXDVt$��!oe�B�t���J<h�W��2>ȅ���,�(*�����]y����*��D+������a���н��*�6��5�m*��[�����'괛��g�<�8ΛO��ȶC�mI,���lU��n��Q�7%=!�Y�|*.��%J���� �̷�4O̰�5�f���W:4v�IR�q�$���ݖ��.��ZcK���>ٗ\�țA�Ȭ�[�"��뮤d8p"'��c/����->�Gwnv�D�%�����kv�(D[ho��"����믾;�ĳ_d���7Aʷ�d��*7�=�֧��`�^�����%G�.�b!��Rx���=�����?1]��e�{�1I���	�A�-�8^^��i�\iZ��?�7¾Ҭ-��%��hrGUVPi7;�Rbqnz�o���~7HHs̐�����O����<X���~'�x��߫
���Td�Gd������E�O�
�<7���K�٦-��H�DM�4�Ť���^�L����h�~�7�0m��_�����O`�W@�WO��i>�r*Kx�ѵ|A����[%�ި��Q
v"S�3��7aGr��o����ʖ�c4�����tH};����0,��2����,]��$�[[�9\����%�i�yڗҒ�����İ��)����ڊ��Ik���3��kn�ޜ�]��_���{-d�i�r�h��T��=����Y�CaO��(���
�L2������!3�h��1�_
�������|y(��������6G;L��E��(��D����Jn������t׋_�����TyG\�1d�M����ׇś�*Aʐ��Ϸ�� xc����A�\��!�t[�7 ������H	�c�����7�v�`�/ԥ���~a��Z�t���B�P==�,j�M�Ņ�}E3��.2���E{;_R�j��� xxU>᛿^���0�FW���;~Pb+��#��`�)�T@��Y9�����b��'8�cIїN��6�����Q?ur� �a��=d�*�	�<!�W�Z�g�f�l̠�����ɫt�f���B�%�揈UT�K�cؼ&!�{�0h��� ࣲ�����r��z��j��A=��:Ev�k@��
�|��}�\&���1��&
��;�C�*�_������O�S��c����F���WQ?�ڱ��t>Ei�9��u�ɰ�59�����)��أa�1�Vբ
�zD�� ��oMu��>�5r���Z?B<�SP<b{��_�uMT|M%qc�j��>��T
A
侺�?����nU�ej�����~����W���T�9'~�2���l~���-�c)krMEȢo��a�N���
�}n�u��D�=e�.���l)Udo��z�V�)�o�C<��e���[U���"UÓO�p���q3 ��WSx�[������ӳ5П�>�S�by#�C�����{;�D�͕pD�Q4f�ޢL��cTp�E�]�Ir��7z1���J>��	�P,�R��[�'�X�P(�Xn�X��v�#�ķ	֎����4)j�a	-k�� f�����ʄ���<v#I�Q��O����l�oOLь(�]r}�`�/L?�cr� ��cZ�rUs�UI:��P�k�������'ߋ$��E��v�<r��h`|��%��!'{�r�DP�z>���<�8q<�%G�$�����=4>o�v%��Μsc�S�P��!�1*����S���]���_r�U����V���]�PZ��FC~�LsGJcR��fO��<�v��CTL��mc�w��Tߐ��q�E�.45
�i/��eG;��!�}(�h\�|Q�&�q���>�|,��/B��C��1��ZM�>!nUp���֝��j1#_"�
z>`i�d8�dE:Pc�B�RH�d�f���ޣ��"�8��92 �o�OUs�oK�>Y��{��b|�����{�����#�w�Ѱ͔�ݖ7*�L �~��U$ɟ
�ꛪ�~Ov��*�=e8T�[u)��/Nj� �Ϳ��ڮ!c�"��f@'�O���I���$��-����Zǵ;��C���)� l V+&_:Őu��b�&]���:¯�ފP__�v�!��Bu��?{D!;�bU�D���?6��ɩ������'�9o��C^��%������������Nz�I2B��U.5��������Z�
6����۪~ޓ� �ioE'�%��7W&Iw��rf"��}��+���P�d9y��$��p&<m���/�Z��>�$SA.�'��ma���p����0����I'�=n��E�X��nF�/��Q̝�}�K�
G�v��I�=��Fǔ������:��$�Pg�=���8а�o��*��!�ߢ��6�&�<��[�Q�������D�ZA���������S�0�2Z� ���K�����L���N����#�~�ڼr�א���U�7'��JI�(�*�fQr��
��
��࿁4�eRy�.)b�t-2wy��e�uJ{� Ί�ܟJG�5��g���X�\߰\��瞨3��GB� `\ʚ*Q~\��x���&W�P�G
y�[a�{�� �([���dSGi�$��㆛~�B�`){�Z|,��5�T��'�.���wn^+\�G�ٰ��4 ����(�_�b$��X�r������w��P�7�SO��>�[y��5��糼nn1��?�nk|LB�\6/8�C���iiv	�O�#�tz����/��ik�ridGٿ�P�=yO�U���0�)p 9�ΤŚ%�i�;z�a����A�R�O��Z���rA��,u��}7Qf��Oo/ؘ��=���̴q�Kv�l T�o�y��6��!"
����IW_�?� ��(���!'=�Wg�A�-������f�OO���(�\���m�͔���ﳘY�<*�Z�ի���G�/�[�_�/4��2рDi�-��'s?�T�    /�r�{��p~yw����B4K
4*/l��/�9�$I�Ō�,������ը�@}Ý� x Ԙ*�[k��^ca��&{L���~���`T���R�`���j�Y���F���P�����א��x� e��i��4��z+�� �sR-Hs+e�y�T�u��dYPu�l�2�{�)����<qfШ��A�$�O�>��I�E����5L�[s�V&��@D݇��m ����.�JL���"�Wn�HV~��)�Z�Q5��g��igO�|���"�0F.��)gY�%������=�K��QC�i������!T}̆!N�V-���Rt�������bcI���O�J_
���� �˷��~#C�����d���N0�~	�V=#q��UO�e��	k�f����|��<s������'�������%\$��t�!��I&�R�`.! ��f���C�o��-8����7C�D�-i|b��-y���nƉ^���g��'������u+�I��X�6�	�/!��I30�$���kn@��?t}%~@�(yk���Cj|���Y��0��o3��-�t<��c��x�C��F�wFsy��GO�����6�qF:?s�p'�T{n��ȳG�#��v~���\�!�)�.���u����洘4n�'�:�Ϸ1��V�L�#Ax�7EP8�D�A������_��evd� ���f>��9�B�Q�L��,&��\+ڜ*j>YV��f�0�0�Yɗ��h0�!�^� :���Xjh�u�p!�W�������!̶��?��4iUO�@V@j��n��w��5r�Cl�Z��� ��"�5t���A���N��}��N9��F[j7�b�*����8ܛA�k�cܛ�������;�j�6et�s����� �u������i��|�٧���<;)��cU�.�����m�H0���C�oԪۦ@o��{�jМհf��L`����|m>�i���~�1n�~2�n�~a�����<j�5�!������[�_8kp<�ݹr��Kǥ�"� �o7(�r�S?���h�����ʚف�cu�n�j�� :*��N��ǆ����}�k�Q0]#��"\�8�^3T�؇u�'� ��4@'l[��[�fޒ��$3�}R��C$��>�5��4�8É?LY�����f��L�����u-�xMrk�{'���;��:�����3��[4f����(���%2�D�]�0p7XU"$O���ޘT|%�¶�:��a I	�Wc�)��F0/7�:Җ������p"S51�ԁ�*���B&�!p�4g� @S�;��an�S��{�8��'�X.�^F�5W�kP���o�T�ro-ۤ2�`8�߬Ő�� EƷ���E_ƫI�c�� n�yԾl������\�ل���j�|��Ӑ�-l����=��P��޸��F���G�����ڻb�:��&�u9��Zt�1�Ɋn�~�7h�K- م�a�|�l)���G=�>��n�56,��A�.�X�:E���\?5�م%��|A���%�3Z�[��f-
�[s�[�\}�HA��,fO��y��]MDH�w��1ʩ��&;���pX=�w��煡-�.4���+�N�o�G}AjQn��Z.^{�96V�^3^��9J���;Ib	�Į��*�I��Qa�̇<ĝ����xh��a��C�ֻ�.�1-[X+k�Ӆ,W=�!w${��7�\R��<v#Z��pA�{�^{c|-��K���g����;�����A�#�IM��+N�Su�dv�!�:mr�ڒh���!WE�;F����%vb�l�En���M:9C�3h_6�u�D��o
ӊ(M!� �Ë�nr��$آ�w��S`{���x���!��"C�\-%�;n�AlB$S�Z<����
������չ����Ak=���fӯ:;�G������*:�%�(�(���kEjŗt4��p>=jx�w�w��4�џ�:�C�|W�M��<�t��\<�N�9�TP~���,:hZ5g�k�H�~͙�S@�$C�>
���-�蠂�cɁ����5�ML�wTٿ:iF�W.��G��-EH�	&�O�NA5#�k�4ˣ�*��ӊU����,�A�Z�*a�o�1ha6YP�N4�Ҥ��^S,h�6Im6�ޝ
V�����t��=g�p����i%^f;�B����aS�RE��ĭ����dWk�n��)�ʜ�f.�}�}���K�j�9]�����V7tJݔ n�	Z��$�Z�A�$Rx�!u5���sX�괊�9��yM��d�f�f����'�$�6z�N�����\�f�b+#rD�WUsJh����������8iOG���ђ�z��*a�[Œ��Qc�8�s�+@d�pDVT�F%|~F�Z* ��#�i�;�!�HkH����w�1�_����H'�T�A����ѣp<����<�J����:}��BT�"Z+�W��nL��Y�י�Zt�JuMXy�=�'���v�E�º
���+l�6��K���p�6��:���ӹCf�?�
�Ɵ��7E��o���GC�1d�~�	���-�ԹN�g���MLY��{�V�$4� ��m3VŽY�v�u��ۀ���^�ԓ��C��_R�5&���m�:�7�5V?�joey�ՙ�h��+Nl��ͷ��g��d�
Ҍ��@�H�lR�Y5�
��W��U�B ::=����R���Ш��/F�#<^^�h��2`5����3+K��x�-���{�"(;��J�T��~_[r��T��=��b�����@�
�xN��8��fI�Vl�ez@���-�T���Gy���;+V������k�� v��q^)��%�ZӉ��Y߉�b�6)�A茂�8so�5���U��Ƣ+�d=i���ӣ���� 2��}N�M�XM�/�E���e&�~��8���4�	�f����q�{D��2�
�|�B��H<��Gt�s����k�`jh0��GĴi�h�T.�s���������5D�m�����.0�sa������Qn�*�imK]��{�+����F�ԣ��~���"&9A.c3�E!��L�K.v�by�ߧ��vK66��"P�k9�J՘�𧔮s���/Zƣ}��!Ư���	�ua~��i2m�Y��2��@@vS��Hw�'�~4�%�H�_�W�E��]����g�"cT�"(\žq��S!R��@����A׀��Б�QG�&��%/ƾ��,��frQ>�R!D�����!����	/����	Q�j@���K�8�oŜț��l��w�_hۢFAY%�Yx����@@h̝H�WS��@Eg�tV�G�+&(���S�Ty����8>�Y�x���;����l8؀S.����~��])�;@B���,E�Ӧօ�]t�AF��(MG1���[�?���wq?`O��9���K����cT��8���������-�?/��j-��(���ĵ����Mz����"U}ɾ!���/O{8DD��%b��M�#��۝
87F� �,� z`�����I���ļ�d}������}����I�jCv�o������ M]v|DY�i�tsf_���*s�q1f��4�<�<u�c�d R��dr�bG����$�	�'��Kef8�'^3���B҉���AlR�mK&�>�="V/��awȱ����qa�d�i�;�]����!C1rFٔTR"�7Na,�Q��l�)��|X�� ��YT�K��AgՒ�зV���/����q]D�u��%u������W�/N�M�-���=7s�����y��L���Z��_��U�I>��v�u6���������.;Tz}5�(&�Q�nCZ�1��i�	mˢm��l�[�a�|ۗ�w�m�=�]��7��>��x���b�����+rU�9*�B{�+�[���<��[X�,y+���;��"����sQ9��(~;�=z�T�jI(F��m�<�a�]J�w�f�_ߜ&�(���!�2��>f��^'� b�P����>�0/v�-�sR��Ǟ��/�8��Ee}}��`j�c    ^p������¿)A�O�w���ˏ���G7�m�Qnд!7��ţ4��XEb�W$Ɇ�/k}-=�X ��Ǎ�Q|w%B��L��ȥ�zӡ�1{�Yپ�r������k2���`�0%GÜv>5��z�]Ƅ}����y�-�`2W����#�1�ڿ���A���P ȼe,�	�A��H�>�����K���j�,|���lL2����L����xK (�[�_րT�Ϲ���h�Uc5�ҌXb,D&p��%I4�κ$6�ϻ(t��=Ϥ-Pi�|;�F�%�%�B�ᛩՔ�ݾH���<�C&��"�������9jll��}�H��I��k�K���}��7yy��������a�O~������[�F�ܳ�o-P0�&d��`0�����,\[}v�i��k�ޚXY�E�~s��嶿�ˆ��[�S�K7�%��+�-N&�:?�t%��č�D9���wF��:�9����fק���-��w�N�	d�GH��O��������3n�y͐�N�%�~}ڐ �!�Ϊ3��]�~�q��*�H+P�_�v�����F�ҷ.
��kGR]�+T꣥�e�b/N�ט�X�ot��_�����+=t��5\�5�C��T�CN�<֒��,��G���/7')��	�v�t��ϕ��R�#��YJ��"-�&���hKo�j�(=Y�o�~�+(������V�ڈC�)s�<C��GZ��a����-��!x�xs�N��˻�3���j$P[ǒîF���{��7�2���H�?�g�x�lԄf~t�(>��tL����&l��dTA:|z
:����Ez�~@rXǐK�:��"���,�	�u���x�?���.����=�����u(T5�g�聋�S4b`$.8���ux��3��e6�*k���^.�c��G�j�Ʒ��ȕ��\؄>�h#@�������D��`@�81��q ѥO���z�q*^���7�xG��
��E�=��I��mx�*��Q��ׂ=�AWv߄'O��C�av��d��A�����C�J<�j/�[۔�As��KL���,e�h�V?#%��R��>�AO����b���G�(��/s�4]ۤ�lVf/��9��`�ӥW\�Dd�?_`0��`-)D�q ]|��+Bw�qe���zk^:+2�_9�|ƪ�;�Cy�6���XPQ���;b\t��X<���f#
@"_#���]������@�3�����2k|�T;�F/1��Â�?.�D[�jֶU����a�E�F�g�����@��T���l�O�9A���Ή�VI4ro�ՠ�3������q�a���[��h��*&��]��ͅӭsE�!{���R�˞�LGN�k��\:U����\*6��hp)�`�].|�����C\�?
�^A�?~D4~�y%���L9� ��/�p9 ��'u������ 4
+8����sq+��D�^�ʹ,pW"J�,((�D���!Za��f<q�7�  X%�7m�>[�� �Y��h���e(����o�1t%��^��N��4�����r�����_˓m��k�-o`_H����F]�~���o�5���R����������l������5��A�@̤��-�	���ƒ�V_jv��y�[�ݗ4����#��D��!d����m�$��۸E���	��z����j(!M3��F�C��>~I1�n�0�:Cjny���J5=봜���ԑ�{3�#T�e7'��|f��ey5ޔ�"�$o總]9�¹��8Ju��)�WP�Q!���\�ʃ8��~�>�p̑0?�~����6L�2��ˑH�'�����/��w���^[ƥS�Z���%Y���^�:�)��-�M^�x�ylzi��R&�K3wz(���RഇS�s*�s�2��sߺt�#aF��ݚ^���,����i3Oe|����R./`��TT��jջG�_�Sx�-W��8��*�Lg��� T�q�Rd���uQ<]Q��TF�4�����eT�"���w��F*}�g�������;� �G�$�.���G�e�{ͳ�#c�,��F�M��sn�m5�l����Dx>5������m3�7�`3ј�Gb_[xǋ
���C2W�����Zd��1�8�ן6Q����*��᱕פ���b�x�om�Yj^��uNh�- ӸGvM=��V�~ɡ�/S�nWU\�
`��XnM6֘�6�l�p �	�~n�9��n�1K�i:���_��!��V��,����2��}�Bb�w�"{HK�,v�v��
L�����Y��Z{���:'��9�FA�|�l�	`K��m���� �P�'9b7��Yu"a�;�d�$��n�M���NJ'yL��m$kF�#���yMQ�^���֦�I.����ܩ��Y�!�;/�{���f�-����^�}.�m��Q2����O�n��B15=^�.�+U�g�W�\E�}��ۓT�m��jV��I ������#���~zx{��������]pLQo�hHO5NL�&Cf�6_\b�x� �qj�2kHa�*���V$������A�:����(�c��y�:�
���7˥i S��6	{��&܉�z*�1����M���_T�7����eYU��kθa��Ʊ�6C��'C�T7c�~��!J�}S�QG���zHĽ8�~'h�� ��\��G��3��ά�½S<S`MA*}�q�@�2�WڄQ��x@:��#˸�T��.�����T��H��V�_��'چvGKh�ˏ����jK�����$����� sN_�D�,R�YƗ9J�{����U��Z�q��Ø�(�S��C1]���� �4����(�r�O�9�D�<S��t#��rc�6 �	����l���V���z�/���Y��^��Y!m��(u�Bᄣc�s7�j�� �|�'��,'�{�>. �ق�[��Mo�^q9'q^� �D�,]��� ���o<[����2$���Gƨ�ү_\S��a�)k7��7�!�֖z,��E<���:a�E�\�e�x�L�θ3�y+�r�O�9y2�Q����g���4y����^g$b���)\�t�u�l1g��E� ��_QQ��8g1����� l/EK�w@@����u�ʕ���˞u�l��0��Ps����<�����b+O�օ$w J�T�t��xȭ�@ى����3oL��5d��ѭ�(~Q����(ge�ᣭ����Q�U���)��@��p�.���vp����nM����G��+�8Q�g}-vvu�ӟQ
�}�j-3���[��X�� !d�c5�=B�)�7��*�e_<
�B$[_M��;�h�R���%��NR�V�o,��Qo_�9��&�Q'?z��&H�͊�q���7F.�����{�/=����ٿҙ[1i��X�H�*�i�c~/�����}�m�)y�1��0��=�q�~o��<>��}<��z;�eWUz`ǦK/�p��b	(�&jG�������Xu�$�B�psf4���K݀ǀ��C�~Y8�"����?�CY�^=�&�7��/��&��j�r.+��ҫwL�k![� o�Q�����t��h0$�k���=�p���i��m+��tm�Rت�x��0�8�����ٮb���3��=�l/K�k�Nd?eD�_T��gz�A8h�e!������= �)�Ur�#��9��Ӈ�/�ͳ*��$����H�UcG�����WcD��KEA��i����M�F�
%�%c��ϖ��1,�^c����6ӻ�o&&���2v�W���rB�%�.۹Sٽc�<���'�KMe4�GX5J)�X4���	m�T�q��Ri@����O�i)�������^췴��;"���Qߏy��8��ׯ	���E�(���D���h)I9��_���d��"�=�v��0����m5��*���]��"7�yuͱ����<��\j��kTx<������S4��@������wI�S�I�o�h������� �d88�f�>PYj]Q�E�W    ��m����ba�.�rPO�A�A�Qk�Ἐ��x���p�t-����R M	D�}e<h��GnB$�~9]��/�~�3��]+���٪"���jԳH�/��!P|CW�K�} ܗ%Ͷ웳В]ҋUFv�	B]XD�)?���:� 7��F��b�'T�B �qQ3bϝ�
w�߸i�
ܻ�f�Ae˖��D�kw�&4���N���\#:�ȟ�o��>�x��	��	�,�[�g�n���L>n4WI�{۝�|A�� {R�4O��9sS^����k���E)zT�lV���J8�����^�M/W�j��;�G����^�h��8ۚ��^���wafgG��o��~���E1j�����p���'1�I����-��,���{YA��r��QY�a����u�K˵���%]�J��|�F�����S1����X�2����-��֚e9#�ǹV�y��m#A�_����ꊛ�|�MB����'"�����g��l"��I�#q��N��`�p~���c8�L��G\��F�n�GQ���s�@��M������TͽX�C��٤Յ��ŋ��*oΥ�݋�(��xj�l|DO�Oh��0���
RBX X�O�xy�M�T����Q�A�T��Y�G�x���u���Q�b$����� �V�w`r��΂-����tϔ�{�u��j��ZU�[��hJh����������ӭ����Tf�����"�Ɛ��6�IH��c2�g��l������	6������3}���ڢ�٘W�g�l�&�����m)�cvÕ��H��XTYL"A�˟�t�Z<@譚{��c�6�cؓ�a��տoC�ƕ�wP���yL�X��h��h����Z��"qr�Ƞ��N�/�<`�W�T���f��8�	�R��J��f��>�;�k \��kk19�)�h�3��Ǒf!w97v����:�~�>����P�V�����3=� k?J=��$�hyGb|F�I��V���Ds�^�sƾj����:�?��  �m�$F�;�K��ev�(�Q�U�{W��&�l�%C�(�y$nmv v=��k����s�b�����KW�S|_���@���P
��ۘ���`���)S����8�0�w)��WQj�.G����Ro�J�0M�/�hb������-����N\���ӹB��U�T=�8"�o�{�ʅ}눤s[�wieS?�A��ڟvˈ4�������y	4����W+�&k<��u��Z��~Qcz2�:��4Vq{�/�� !N1�̮:g�\eeo�v�mO���&tc>X"I��A&���Ř��y��?��[)�Vhw�������mM�6�&Y��i�m��$�,RǞ��s��h�kK-A#�C�i=��,�����[�.6�]eD�.>�C����=�t�V� ��\�����Y�p��v?.���F�(5r	NDG��@�Ǜ�~�ĵ�o���p CO즯��&�.ǉ�)}���wQ�_.�qr03ք�^��u�N�qӞ$y��zP��ѝ�0��"=��U�?��8��>��d�3{q�<N�AKW����n���U�)���C��y�}`Y�Ox�ܜ�L���ǂ�6Q)h�2�f���n[(�A��l �p���G°�E�t\��Z�
Ey>���)	h^�;��o����q ����y�����d�l����ǌi�S[Ժ^��[a&���}�<� y�\KC��Eʮߨm���;۳ʹ�o#z2��� �N��s<���r$(�p��>���)z<��%��[/٩k>��7��A�D�^�s%5DBC�!6�5S��.E��W���U�!?I�Ӷ���߼j.���/[Z�L�j�,<��W�+E��e<v:��O��xj6L�#���,�j�]{M�\tA�������O���%G\������ٓL9r�MX��N�B_��m9�8�|����y��`���w��aW=�oQs��뉨��ܒi�U�v����o;^5���6o��'#�4�	�x�6��~�8�#�� a*a����<�jՓu�rb��w9�K/wZ�K���-&�v���r�)o�4��ƕ����X�N��{��0�z��8��%�p�.�Q����d�s�UV�qK���lR��teN��ԅ�uo\�&�іF�rJ�@6/$�ZT��6���p��y�h��L���h�|��yKW| ��PkL�W=�i���(��E�3�A�EH\cO��:<sU��5����;�i��p�-\�\����Ú1y-`��`�W�1�ke�K������;� k���*e!�s�x�#`���Nq���2,��F�jU����w����`�p��كP�{zt��$C����e��������	�����ǥ���"�m���g���H˿�E���c��'�_���������ߚ�9Z�4�c��4�nOh��^����2��0šr�������yJ��y����ƅ���C�y,��-Q������"�9�$x���3�eW�����k���S�FkG�s$�BHhD`I���cT�:��_�8��p�&��*VّQ�:rgY;
8�	����Sfޙ�Q�� �fܤ�1�3���{U*�|z𐫄�R2$�*�
�l6�<\%�>�&3Se�e�
p��x����B*J�͜��-�1_�5Ǘފ�@_��!��n���2*wG�S����Yn[��ik��`��y>���Aig����o�t��7�EZ�~��ƾ���A�]~�p��)0Q&��SSmz�����y���%_��ǶG&ۄ�8�3����t�B]V%�8¨�$��'n>��.��Z�Υ�,{����g~�*"��$�amMT*���+�������c�z�u*����l�� u �q�����џ�	[����S�T�C�j��u��Amg��*�"�3�	V��X�h[4
�'O���!w�d�����i����`�����Ob/ad^9ʢ#���H��}�Mu�"ؘS�w�Hr�7%�߹�7�\6�|��;M���ֽ��;��o.�g�z�t q�Hoa>Y����{bM�����bA��w+^���|��>΄1wS�C\7	E�C�K��׈�Y�Kr��[�i!U�_��y�w���y��F�ϲ�tt�?�$�>G���xY?�yP3��
��Fo��x3�����ȶ�u&�j�a��wi�E��W�D��h� -�d7���� �I(�'҇n��L7��0��ޭ�k��=ce�����K�7����d�5�4�������F�z��#�(��p[7؄�5Ҡ4|���� ?��G��(Va�~�tZ�fȹ�j+?��"�:��%i䗬ڋ��[�ʪӷ#�_�]
G��5����T����AoV�N�L
1��o���D��U��c�E�h?K���#�t�,JJ͘H�ر�F��� Q�rl���C.�l#kma��$5D�@w3R"��$�VD4}�=��_"��H�g�C,N�?�
���۵�]�Vd\<���b
ň�����僩��x>�1��Xn �{���W�;��>|>�Jw��"�/N�1��H۱�4�b�U�ڶ�ۍ>QCH���;�E|�� �����	ѿ��Msrn:��ϓ�� ���>��h��<�@����WT�����`k1��#^^ں�\Uw͌H�f�'��XMwɸ���nJ�c)�O����{���wNlR^	ԋD}�|<,���$K�}���=+����Ƌ�g�쮷�v&.`ө�	�?����$Hʞ|Q&u�~�<�,����&	�����E+6:��0����"��@�A,�_�d�ð����c0���C"t�^'{�2����ن�#)�ڐs4aGe"��yթ�{�L߃xk/�=Xw�!�w�����<F��j�8�|Ri�=w(i��@�n���I�d���M%Z���M1ҌX�$g�DE��LL5/����y��)V�23�B`_P��ڬ��s��Uv��Si�>[�A���i�e�-K���9'S�tUy�P��\U�5�/��FP=�t�8���AG᾽CW	�hFF=��|�x�S��    >�:N�Q��T��G�@:�����
�<�y}�.y�|�8?r�bH��E&��:�\�Y@OvU��~S������>�k��L�+��~Ò�4g{��6[ja����klt랲����Gu�� 8U��;�T�6-6��T�N���ϐ��|޲�7��6������r�N��)Y�ϭЖ�r�I�ޡO
��z��|���  E�%��������jgV"(���B5ߟ���Ѣ�k�-+ �pm�a�"S�z���M�CӺ.? Sim���%�{������9C��eT�
}����JN�G/M�~���@��G����;G��ҫ�h�=ߓ:#�WT����;���t.���wtG�N�c��*^CJ��Y�w�a˕y^4K��Z3�9�?�}�t�������&U��U����K����` iY�k�ľ�B�9���-���d@9O��'�H$�^�2��f�w��v ��q�P狉�H$E�'�"X�ˣ2���ɳ�T��2�l��Ѐ��7�})�؊�1zSs�°�T��k��'fG���,!C�f%�!�g���U���� �L}�*3P�(kX~|�\rخ�w���mw�dx/;�㽐�ɾQ��)�?P�̀�c�~';��gu��|�&�߄�]�c���T��L$����8�����G)kzE�[B���oz������\�ɷV��#R�Xt�%�T���Ԁx��p�-*�b0}�f�����T5 �K*������C�7c�=����������|v&ov���UY�������9�|�U!�g�4�^�E�5u��P�K��Y�9p{٘�		��.N��&��m��I>��,�ݛ�V�������[�-�Wx�cPT��o����t���tX��m��&�>ŞZ1�� 9h�ݪ��}4�G�ge�(�G�F�ޤ^��湦wZ�O��*][��k���Y�
��v�`���9���Q�ݶ�4�Ġk��C'�G$gmk��f���-�y󖥫MK.�0A>�-�P�K�z��U���l�3���&fNz�N��A��:iJ�N�L>��yUۊ%��d!^��^1��'������Z/S&`��Hz�\��0c&�0"�f��7p�^̿j^�%c�Ž���T��9��Zh�������x�`�ԕj������k-3��|~�"�D��1o2����x�h�İ�R����AFhix�֏�i���{� ��X�޼>䛅�-ȫ��	Ą����z���^
��������?vI�`5%��*�Q}�E;��%0��y�Ÿ�N�[���ݴ���
f��l��r��i�/{�k=Ux�Y=�
5#��w�K�U��H������Y��,S`�������Z�7V�Hj�H�#vL�d.��qo�>�Tm/��*�8��_Պ��%5c���Pos<,B�2���l�5���r���m�����3�`�j�qB��7���X^~nM�{eh�N��������	Aw��~���yc�D�z�p�C���o��g[���R��J�4e6yb�RS���P��/3Ⴙ��;�࡮i4]m�ʹk��ݠ�<� ֮�_A�5���.�$y	��UL^u��v.�'�5{�`��*%�/}x��<̵�5�t,a�A��� Ǹ��Ť�$~<��1�_��A �I'���+oA�S����>��_'x;���?G����κ������&�@����J~��<�!|��5�j]B���ߨ��{�o�Y��Wwd���Fw�1w��n�86�p�\lO+��@ڢ?9�&�v�!�5�����=�8@}���܎��*�4��hN�$kB�� Y淿Zٮ��$X�w�5�݈����=_�nx�6	Yb@�_ê���!Y;�{u?�`��M�;�Q�*�Ѣ��h��`oy]����sO�B�7��Ġ�6h���=i�a��ц'V0\�' �/�U5s#�����F�I �˲c���v����${�*�:����I�ĊE_X����D}~o�ǆ��=�J��b�{#Kǲ��TY# ����j��
�,5��m�ۺ�Ҿ�ؐ���/�DX*$F|I�
Ž���Q�#�X�� Ԡ��U*�=C�u¤=��v�	�_�!�C��D�P�"��wY��m���s�V��9%v����j�c�%d�'q�Wɣ�a��N��2��ұ��{��ԅkတ��P�����)�h�";{J�����c���K����Ĕ��L�*���Ͷf6���i����㤊Y�2���M>�yͦhZ�x\�9H4����x�{�¼��c�n�vo}=��{�V&h�+��&䰖]���ge^��l���:��9(����wu��Oe��6ki����EA�/��d$h����~��y���8��N�������al���L��lT���^�N
'�L�s�<� �В��vVC��x�C� Ч���hB֔|�'>1MY�e�����b��R�H��e������
 �0�I}���=l�D�u�tFO������s@����v��Y�;p��N.3���� Er� ���	ի�U�r@.Bj�1��1c�P�;f+��,g;�He<-��7��.��������F��ؙδ�~�����c��y���/r��(u%�>;�����,R�5�8��D#=sZ��벑RSd���$����K�)xJ����\���x���Ѝ����CdKwӈO:��ʇ�̬�@�ku�������R��wY����FFzO��������lׂ�on����Z��ڒ�Q�$����l����ȟ��e��CB��t/Y��*�0�a2C�����cd�3)1��U�$� Լ��]��zLݴ�KV,�X�Au��C��x���p��|��[�1C��u� N�lJ���Z�RO�U�`������ q�E�����E(���h��:���B���d9�0p�k�sN��aW}
 ��˙�O=�P��a:m��YY�>Nl�1b�5!�҆�~޿�Q�ۗ�����=��s�cw�ny�O:�ұ�c���w���;T���4�;SV����^8����KA?���OoQ�R4���e�{��;@Ӥw�T+�<}YӬ3|-��z���M�
G�}Em�<�q�x[cX}�do�;�̲ �/G�v=sV���	(��Fk��X��^��>u>��( ��j�W2��oe������)�5�ֽo��SE�0��_7k����y�.z��0ciy�D���j3�ݞ��x�� ���t�6��L�?��}��cg�����$����cC��]\Z�L��Z�i*�����Oͬ��F��о;�o����E-�FO�w���+�,���4�B ���p�������|��\h�h���=#�y�:����!�떊�+d�p$~wJ�j1�I��V�T"��e������|x߅��Ć���;[s����� t[�_Ee�r�/u�A:�1�s�jxy?8��{��*FW-k/��&ho[�BL�Z<�;^�~R�}��*���rRu5_�D0��*�[�ypK�0���<ץ󹮏]�Yn~�ZL�Ώͥ��VŪ�!�^�~���}�m�I�5}^<Q�]��h�Zt~abeZ'����ֿ7����r]Y���ltG;YZ�DbI#����17U����u�3�!y�|��Պb�BV� a�A�T���w���BY�Mi�]fQ�aST�ys����WgS
o��+�߲�k��ʳ�w����!�8_��2c��Ң�~�4}�=j�cz�[�M�<g�R�_�t�N��}�ݡ7'7�u8F��iu�7�yQ|u��e
����V\5֖��*��Z
�	�`BIG�b��z���D�p&��w�7M�c��#)�=���K�U�'ix4P��ۢT۲(��vx{��T�?~�H<�P��ӥ���ig�ҘV8/E���.�~�W ZVg��>v�)�Ut/X]��q�Y$)�Z�ًE�p����oBbOv������T�~q�ب��Wf�k:�L�������#U�Ռ#e^x�e����6�����>9��C:>�X��}�6R��d2lT�-,    {�!X~�N}-sB ���7��.���"�O3��յ,w�p���F����v������L�d"�~�/�j#�@�q>V��b6�]��N凭
PҸ��	�	Y�'�L9�>���8!�7x,{�7��D�z׏�,k ��|����SvC����J��//�SQ�$�4�U�5�P^����������/��J�x��K��Dg��U���}����g���g���e���%�r{��E$]Ծ��Q�Wd�aX�#��i��!W��=�koK�g�婮z�3���&}��6maN���A��\�r�:�1U�O�z-���U�SaQ,5��^�c��ݫI�N���&�,K��~��k�_�"�����a�����/KL��!Hs��J�I�kN��짎d�-�R��n�A3f"�L�?�m��ηz��yf}
O!^�����L����aܛ�Q5�#`�db�;�B�v��|zz^4�b�"�I����ɡl| �[��I��4:��$a����*�L����Sâ�ʘ�)X�/�����,�
�OԵ��rO�W@�P�뫾 �=%��-���"?7e�SWEr�g	Rb�������]�D���)Q����aw�*4\u�P_�~��Ve�Z�eL	�U�я7i�9�s��!�/ts�[�� 8���}A�=���_�z�o�aq}8j���'w/��b��:>j�@9x�����|���ɴ�̭I=w�[N=Ԃ�o���lp�#KS ��Oӝ�7�y��;��:p(�C;�h�D��K?Y�L_���)>�jLXw��vH��o��.M�^K(����.{ڔ��eZ��V�r�~';�d�R�t���pHs�Q��i&��j���'�o��8ȷ,��$r��O8{=j�a_�&A����ۿ�t+�o?]�������ye����[Q�WU�_�*���χ����������Bd��J*��G��I��%�1��	fAVo�w��l %�/'�@�{ϯ�ȷ�&!3cB��엱���^R����C���d��g���BD�gFl6�ALG�88O[`\Fز+
a����jI��8Z+Ŷ�����
���qۧӸ� �i�4K@�Zpȸg�۞��/r/-�p6���\i�X��r���85���a�h`�?�{C1y?_��v�^�w6�?���l ���p%��>/b�m	����O��~�3Z���@�����;A���z,��[��.�q�,{����~x�*wfvr�ڒ�Y�l&������r/�Bqr����	�_1S��J3���@��i^KV���ڮ�Q�-9+�/F��芜�Os����]B`�R>iU��O���l7A��xU��.�K����1�n���]�7%|�jm�A���۷%Ы L�`G��t���o�+�Ϥ;�W��6�O�B뇑G�Hd-߳�������eżEsK�ɝ�d��{4�@�M}�i���=S��+)yE;��3�듖Ki�W6z�`�`5k+�DWkK%�Q�lP�+ia���L2<t�~��Pg�S1X���������|ڿ����^J�e-�� ��Fuk��<⋸��U-����</�.�#�e�a<i�{�@�Ke���B���U��}>+'d�/�@?i0����{�8�ׁ��QBM���R��u�k�ˉ��W��#���r�7Sd��ۭ�]�4���F�h8GMv�;0�����5�u��בR2��Y��wgɇ�?����Y�4��y.��~�=zg@�M�*F<�ܼ���ܯ8�,�����]v��:D�J��s���j��旉�Z[���Ɔ�I�Dvv��8B]�1�E�[+��J��K�RAʼ�g���a�mK�h�_��D�)�N����aq�*%�GMl��d�e��iV�3溣����U�)�P��_U�n ���Wj�}s$��`��l�V����i�[�,�Y{4�񲉏� C+3�U?u�7�a��1\���1o�t�-��7��:cw�ѻ����%A�����y̤`V��lZ��{���g��7_�X��s�ANV��r�J"��*}����i��`l\�sv��G�o��9�<;�=��d%b���UD^Dϙx��]�� �k�KVVT�a�2�	�!���x=�.-�����`fJ�J����Nߠ�\�t�k3ձ�ު�	��� ���a�[�:}�6n�p��@p4\E�- �S)2��ˠR&
�-w�Z��N=�l������+��ҿƎ�8xGy	[���*߰����:��%�ٸsks�bEc���oX����a�F��)�#����as���v7w�ʻ���{�/�f1�y�o~֛z�zh��-]�?|qQ�D��:W���� �Ř]�BZ��+eB���|���R:�%\k�cg9|�Q�X+P~���5o�j��Sq��."Gޒ��Q�k^�n>K�(L�\4\�(�U$D.�A�Rh`<�Sn�x.��I1�S�U�ځ��o~�����d��4���}��s:�r��奶oNd�*J����)�o&}`���,���7&�l��Z7���(��^=j~�h^x�՜嶻Qd�#�����#���_�]�V��mˬ���|�Ep�	[w�0`�`�쒜�<~�wI�U��0�L0��.�z)���vO�
c��R[�fb,�p~�u�ґ%�"��5{%��"��n���T��x'�V�%��(jv�������Ďɔ�)�FD�ױNB��[lj�k͵((�K�;.=o��2g4��+ϱ����
�u��)��<W1a`���ެ�n��<r�,���K�Mh���rhȉ��Ǣ>o?2ur�M�����zt�Vu��e����[���aݷ�G`G�[pB�7O����v�`�7�F#�)w��01h��o�Y��joz{�H�a^��)��`$w��϶�ϭ�ߏ��r�[�x� ��c�`�W��f��y�!Z!]�Y$�T��(A�݋?e�p�}��.:P~�g��ÍL,����X�|Ib�!QA/���d�o���c��@YAo�_b�_�q7�~��+�\�Y��ʗ[K�{]�,������o,]��1H]�ٽLl^<�y>%�P?62�\�@��ex�
���E~��x͍�3���v�
s���&��a��,�}�'�+���������K|.)�O�:E�.L��.��TTye�p�����^�AX�6�w�b�´�o�Ú�ɺ�;��`E�s���w���o��K����k��'�H�m�+�6Y�H`�?�p�[�r��Z�R:(T�z���0[�ê�CnGDl�o}��~i�*W��!�`����ըf�Vޡ�G�`�F���V�+X�T��z���?܋^�a;��6�n�Y.���RD�����M��{J�b��Z����|E�k�8m�~P��R����QBB�HZ���,oEmE-t֝���K��}��vm"�j�v�,8�@�BMD���e�u���X�9�.��Ì|�z��Z�Ay�Ʊ�z��U��k[���e9�Z���Z�6�o�c)r�j�	�Ю����x}YkQ65��~*#�o�U�I,���~��|I��n%Z '�.��fMx��;N{���fWx7~�t&y���p}��c�����i�	�f�KV$�Gƭ6&���<]��,>/ыT^v��>����)���q�5��E��8�^'�<~ã���F{[�	wܦ��m92tp��2����q�-��cBK�w�C
��Z$�������H����L�|�F^��i2V5(�`%�7�}Q���t��Mf��A���"�� ^�j۳E��?�Gt��,˲�����YR����7xvpN8-�IC����G�5WB�~�.�{�}�7�MB+զV��iP�Tq�ϯU\LR�j��VWw���΍|兑�v��j���Vbl�KyYV��み�~e�C�W���O�͚@�aX��@�]�4��&���N��:���n�fk}�ݼ��U�Awu�$��f&��h��Z������)!�c}���"��v䗢���sݦ٫��Gn��/�"%����/?�5���7�qv�ϗj	�Y���<�s����p��@v��$q�
u!����9�	������ň�k����Im�.3�r5��;nt��{�^_
�    %��5����K�Q��V���j�:6�����T#��y�2�k�c���?�3�>a��LH����:�m
f�J��x��4_(rE����P/��¢$�N�.T�]��?��E�U�L�*7�5ؤ�Cs��
�1/��Ȥ'e��W9W��)�.�d���{���i�8$��g�/I��NY��n2ok�����9�j+U�~C0̞�rz#sy�[��iv�7sդ"~x���&����>o9���KIDr�}3'^W	!қ�������fl3p����u*��D>���F����׮��	�\",6gd�:''-c߲^��Y�:�T8�RnK�t����;�	�q�!�)��̟!��1ؚu~�I�P)Ї�ߩ������GM���qwR�ts澱x��2�����=����@ �!���2fV���du��КF��n�(�+�x�.�気�7��w{9	�>�#�(+����< 5xؒR9�'ln��{����1ƙ��:�m6�_�{�t�R��1_Gc톆 ��K�k[���ѣ7[��
�s��-�2@�W�N�;4��qoVI�Wj�V���"j��$W{�1��T�Zn&��Ʃ$�ed9$��h��(�gk��s��)���;#ݗ���d���M2Zt���5��#�Y����B~K�@{��F�$e���mɮ��`�}�R1���r�e\�1����L5
0��`�	��2|��C�\�W��:���!#Ԗ]��������/s�AEk���������iA�ǅ�iX����^�q��WTg���������fsT}�����-����4����v���Oq'���H_dG*�w1.�,�u̮j���e�n�*����0�Y=�$XO�Վ��
-��XQ�o[L��!,���$���P]PrRg��DNK|�:X��0l�*mC�9�Њ#=�)�����I���t���y:�yMn���;�K��MF�ݦC�lP��+��rּ�V�W}���A�MI���3����L����0)q+��c�(4����{)�Gu˄�:B�<jH��%�b���\̵���OB�'h��nX�:��!�����z`�'\��\3k]��ݶ�;�L =���G��Qږ��Bzø %}H�}d���/n����w-���P����a��1���fn2�k��x\vƠ�ޟfO$���7���T{^
�<����#��
�R�j�x��R�����.�!��ْ��[�6�3�]`�j�̸��c*y���t��ص~��^zh��0}�N�Ⱦ@\�!�c�Q�g������0��ڴ<k�nc��,Oz[�u�".D[�Z54(�Qh�����
�J
�@U,��[<��Ws�~�z��J( h�2��D܁�\����j���J���۰�@�O��0,o��%)Ɇ:	)���H�6"�uG5�UX����ᥬ9��e��e�S��bb/
�5n��u�(k�4��|~l��q���0/���Ɛ2#�X���]H��G�X�vi �O��D.򽑈QGfR��-��B��4�=���d��9k���Aō��1�w����H�d�k^y�~wfzS�j?���׃�︥��vQ�nh&WSA}��6���`���#	����p�`�͂�ܭ�	�x��aǎ���w�����>�dV������=QRjnr�z��O0��uMT5~WCDR�a���Dh`�Ylo�i�0��~���Cf&�4V�*�F	k@U�\4���E�}S��6���֌S�B�T5�77�M���T)��B�ęCBF�\]��?J�x/��V�۵;t5>���	5�)�`In�Y�fUC�m�CR��k�p�4C{��!�k�o�v����XVu�9�hr��j�-�4��N�ı��1|��xi�k�jAzso��U���浅���	Áu2�Kx�q�hl@ɚU�,_�ߧA�y=
�]K5=���ݪ�>��a�E�e���wRav�9�&�M�g�gR� �&Dx̂���hFM��=ad?jdĽ��lj-:�3/Nz�|����,!3k�L
�P�~��rkN���ԿW�����l��.u/P�&�:U(��cmt�Y�1�tnG���4/@dvCCyB�rCIP�����"�"�ւ�`����W��hn��VL��߻��U]�������r|y�R_��ɽ�T̛T��+#�P��.�3k%�X͝3i�ZB0�(h��^u/��P|1aG���ԢE~uA(�mk:25�n�IC����#�21r�w��Ϫ�SC�NM�V��!ھ#�z'�c8Lba��;M~�C��~��w��'=|�W���n,`��l5%��/x2	o�f��@�æ]�7
����=��j�LsfG��E��4��i�h3m��!��O����/����� y�q��Yt�������<�U���%�;1����m�ݣ��g�3�ngw�f�-���X|����7w��"uI.a#�kj�pd�㸙a{�~�.2֛�

&󱚩#�	��W�.+�S���k�i�b�3Ye%�Ť��um7�T�5�s�n>c������&�2�2B�'"���`�ˢ�x+IM��y���u���:����m���Q�C�1|�H/����o�(�ޱ��2N��r����G��x1���h�f1W�T��n����oР�|�~&��q �Ql�s�o3��!t�`E7��e6v��`بh�UK��*�/����ɽ"�N0?�#?���Hk��m����T�-\��ԫ�OU�έ����F]���[]�y঎Fܳ� �m�d��"�̳Z~��ͳ\��q��#_�1��H�e:�#�:D/rD�A"ȕ��kh��CJ�v�8U���{|�R�V��J�Ҡ��f���_�?�ɦ�u�h��}y��zpy�f�l��8D�����⨃I�A�u�� ���oP�q6�Jy��s����v
�T���ΒRirS�*v(��ܙb�]��X̠�U0\��wa2�^{�OU<���Ŋva�~C��W�� �-!]����^6r��Y��?��5D��#��)wh��PO�*N�am^�~���Q���&�5˵�~^�ͷ9&�%��F3�(�����:/7~D���V62N�I�ꍴ.�T�R�RS���4�80��z�/��V��C�c�[/x�T�mZ'.0����pg�[`���M��m��������S���x_�>�F!�N�����\О&U��#w�vp������y�h$²������!�T	���>0�f9�Q-���H@�{G����hp���7lp
��l�<HCۡ����)U��v����Xr����0&�$#rN;r6`��=���.�F<�{N�Un�&�o�֫o�Ud��lY�H��	���^y��u����m����K7nO����%��.(ˑk���艽R�&ҋ�w�m{��O�� �u:%Q0r��rc�{�s�% 蟞�s�E��o��?MNd�6��9V�ʫ�T�l �o���S��ݟ4�{�j~ٚN�}=ґ�K��@+_4�(*����>���t���$��`�Y�9I�`.2�)N�>x(�ϼ:S��؝�p7�b��P����ܫhQB�)�ݷ:j�{�T��mS<E"'bޙ�i]��+@�Ĵ�*�%��2��q�4q�m5�������(A�̓�#uB?��`�w�J��o�	��F��#Z�\��o9�fG?��5D���w�gJ��ȩ�m)�z�5O��ˡ���� s-��1�T꿐��2�Kp�Z,m[����HA��TS+�����#�x�$9����f���o�����P��\��(�÷���N�*>�_O����!�U�a�	�
?�.�ʀ*j��O�]���py��4~+�^�k�����S:^I�Tڝ�#ב]c�ȱ�d��:���
��}Y�n��(��O]��Ӕ�J����#}㊫��h��ze�v��wZ3��3IH���*<�N^���>��NNn�^~�aŌ� ��VC�o��^7Oo�4:����M-}ڋa�]���~�Dl_�^�K�{���v�}�}�bۯ:�^l�g@<�v��F>>������O����{�p��    �ck_��d2��`�U�bCwZ@?1H�����[`��n�����(�>i�Y7	��5H�a1O�RQv�*Ͻ��������~Ha�T��}/T����⏍4NX4n���_X��;�Vz�u���78	���&���}�/��W�آ3%w�\*��Mc���X~�����z/�Α�3��ou��w��}�.�9�]f�x����=h��$֫�����I��o�����Xet9�a+ND~J|���4�΋P�J@V�ߵ�c\Ggx�T�*y{uM�߾��g��A}�m73�#�pL��P'���;�P�9�/U!z��#U�n�*�>q"
)k�xU�o�ݑ���9Ke�e۝{Q��ب��g��C�>��h�j��څ	`�D&�IWB�]&��!I�D�Y�����[�a��Kl��v���C��xOy��m��ȎQ�ݧ.Q����d�wB��t��IG�z�qV_�Y�^�+G���f+�ɮ��(�'<>����e!Ǩ����0���4 Hfٸ����O"�>'
��w����=��z��a���S�D-���$�!ӿ�^u�9�v�R���a� �;��~����{�7�?y��RU*/o�}j&�o;�l�D2U�I�m��e��h�0�4 C���6�2�<Ԭ�fD0Op��{�|+��0��ZP'���F�u���q�7���?VQ�HxT��q���j��5^p���?�A�Q�0��C8h�Y��A�(�#4����5����y����0��5T�qm�+O�^A67�̙ͣ�����@XD�+�&)<���U���=�2��_��sjIY!	?�ray�:k�ɀS/�k����M���I�jɪÁ$�,����Q��MqV}}�a�M�i�Y��|M��{oa�I	�N��HH���}�7��`Wa�'�Lđ�l$�'ɸ�*��u��$*ڸx�Ϗ?���;#�96.��;�o��H��>���uc���E�ۘ��) ����a��z���������x����*	����W��IF���T�Z�-YZ����L'�����x�ڒv|�)�^�&d���DʻS�������x{GIڜ������匵r�aև���U��R������S��uvIG�5Dw��g^�8�2Eڢ���`+R�6�:C�;υ�6��Q�m[��Ø���������
,�������b�x������}ج������}��<0����C�t��B߭u>{��佔�����llA?��o�}`W��^����Q�u�t�7tA��m��RK4���e��a��q���A����]/\eGN9'Uͮ�)6~�P����\
���NP�d��ORC��,�܄U*�>���� ms ��zZ{E�s�Y�����B,���ǌ�m^v�u�h�:J��v}j���~ٗg���-�С��1�LVhḦ�/�:/5��Ϻy�u�MQ���{������C9;��)V�u�N�n��7��]�]�G�B����V
�����7'ߏ����g�%�a�K3��\^���_�����z�ѥ�ݷ��o��_n�;�oF.d��D�X_�H��F�P�2����n[�Sc�<a2%{ú���!a�c_��t۸�c` ��T��
V��e��
�i��i96��6�Ve7g�W$�g�WD������:��Q����8��p�����ȣ�[�ߧᠫ�N2��G]�D��yQ'�?��/�2T�#�����J�Zq.x���(����D��^�:�eYs���ÿbM��}c`p��`��9iK��-��Bp�r��˦9�l�(��|$��U#�:K�)�\��	��׉�2�W��)�^y䴽`�4��d�}��._`ۃ�Bx�(�����BT.Wz׺|D����q�q`#i54�z����WV,qP}ݾ����%Y6{�J8�J٨��{=S�њ�u���<����	��ܦ���KsR*a�{�g�fQ�t�6~0x����Ǔ,�1'��2P
�{7k��ր���L�_y&\�"���y~�LC��4�;�z|�s|v&�����&�Q���	{p�]��.D^��<�k�jgl�KLx��8j-��� E���~�3�\#��������}×#��xl��V[�\ۏ<;�P's�q��i����N�8�Ɩ�.�&�������|6�G���6E�D ),Yun���a`�BZr<�+��m�å��o�[�����q�l�1���D5�a��N�zg�ٶ���/WQ��ij�{s�Ձ�=���?�v�\w�f�Pֆ�z�*j�+���H�wQ�G��L�{ģK�J���S�s	u���#��}�CZ����e�T'lyP����f��E�9���6\W�GDX8�f,���=�ӢQ�bM��'+i�h}����[�4�|�/�|�Y��=\�I������R���㚊���ۧX�w~���u�����G�w^ �h;N�����M[_���4_�����3Np|qX�@�QO��:�5�uHxS�(\�F�O9��i�����HO~����ZYyx��:�Q�FQ6h��.9k�����6�-�3���.�~\��qA���V4��RR� ��iF)�ڽQ`��s�E^�\��%K"���4����e�����Z�R�}?>[ڣyB+
�V쁖�9�Y)x��1���z�t��������a�����6�R�\d+�c�t?�iۡ����+=�J��KHÄ'^�(�1+Y�(8��) ����\��W{%*�5|��ۯ�m<�Jn���:�.4��t���1�t8` �h�5@�/Ks�0����E������΁�\���"�	�W�t}�vu|�F��p����z��?�pR����p\O��P���TeC��l݊�������Cߗ&϶[D28C�?Sm�k�P�O�.kM&��)l}�������Ė�Y|.��A����E��Cq
B��+��������3�!�x�*���PH��)�@�u���lx+����%��x��i��i�M�A|3��-�&�
�Bg���Ʉ�u������4��K_��=Z���ar�~نo#�wk��>�����(��`�R�us8��ug�lI�L�1�]pS{��h��M4R��8��03���9f���O��vÅN�;�B�X�Ġd��B�[�Ѵ�
���a���¿a:�g�꓁���W��O��-��09r��?����gwD�W	~Ptҋ�m�G���t�ڽt@l(��0G_��ly�x��'w=%���%��l��_�O2��;��=<d|�� 2��D�rܢ?-Ӭ��
މ��_�����sq�GYJu jXv��pV����_昍dԻ��*��U1�L���V��E;��G��7�#�S!�ٿ�B�v	����>mǣ:��:�>#^�;�J}� �y����V]u,^\1ӐP�#9�#Ēwu�W6\{d��|��w&��C>����Ӭ�ȯ�V�t㵏�,�A�������3�r����(�v��n�V:�>|�5�;*5%��S��]s�>U]*4UyAC�_�̕���&��=�)9�b�pZJw�:��#�(P���4t�1HdQY���a]1H9w�k�6O�����g,L�R�a��#�N�_�.�y�+����:ȗ�2�XS���'�@���?����Y_�!�>�EJ��`A��T���`�jz��ާ��#�t|�>������+?V'hv� ,k���[�!V�^^f՝F{��-\o����SE�b������Wg�*�����M�	.�tT�s��{#�/���l
����z6���F`}NI��%l�M�n�Dqo��t�/�L���L0�S��йZE�{"	���>q+�N،��<���_K�p�U����9D�>Q��7�ɋ5a����`�6�����8<�6�!�$�=���"}���7��9m�aV=r8�	7G�Lo�Olv-�q�����"4|�=p�D�B�ʫ�!�kӮ�YvG��d�aŌՇ|x���4q�z��C��З���<N��N�1h��e��oÔ�o?N�X�{��:�B1�a�8�y�S�Q�t�P    ǧٙ��p��c�^ض���?A؛k�5�;�2�&�K^o����{h������b���P�Yl��9�U'��ȹ�f��c�j���yM��I����BW�\ゴ^�E���ť|e�������)���Px�Q���陷�In]^Nx�H���'b���!�km�l�5�v�SWT��-s��ђ�lH��ٻ����Y������F�:h	'M��ڊٍ#ǅ�D���7V�z�]�s�d'��G@R���Ȅ3}I-�v ��"�l���c�����"����W�އ'��9
�9�$y�t�~��+�=t��������jvl*�0%΃2{*���_e�0�	����Z�M�6���e�s1;�D	�HF��`��p�T{��߬�nrAxWuz���F�a�R+&��:+"V�����k�g�䐽O����~E�|��+6h���
��z��>H��Z�	4���@���z���������_|>[�6�����Wz�Z�QQ�l�y�X�q3�$��By�/{K]�ٟ�Jԙ���?8W��wo�~ϧ\����1�n���άWB��{w�\�䬄(�P�}�rm��ۘ�q��+p���!�i懤O=�v
z)�V:?�f|����bq�<��#a��d}4VԱ���1�j=�yO8�t�p�\�;�Fk�q_uxr+��q=�./��^�����b<cV�h�:z��F!j.�sxy���Q�%ue��:YP�v�a�K��
�H���ӄ�ݰ�������AW|�*i��b^�h�ҳw�65|�$y�ĭ��7��Ż�/2�u?+�s�:�:�M�D7��O��${��R6�9��H�=�[h�n@���9����h1d�� ��C蕧m��	��-ȂҊ���4��C�xmE�~\.C�V�jHj)���r4�l�վhw��:F�����ٚ
}�&����S��B��ƻ�T��J�&I�g}?���`��f�% ͒X���z7�
���]v�E�(\m���rb~��c�Ӆ���=-	�"����G�]����Q��ӕI�.ؙ$y�Ѥ!L~�I�Yr�/v�^�T��:8�f��ĕ^��A�<�ا��__]�t���KeLu/OV�.���o���bZe�M|L`8�)3e�ɩ�=+TJ�v��r���MTWb��?-�7��|��������m���`��m��G������ĂY�'Q���OE��֭��2�$R�$�JS�I�8z
��r�J��j�&�;>��A�"�Ә�g~�Jq7��ؖ�G1�"^��=1�(}%��S�������@){|l���V�r�i�}yp+96�͹�����+���u��v��ii�7�J*R�E���'O�-wz�q�\3�����CTP(�4�ɩ̙KH�|p[�]9�h���^�UT�	����{6�e�.���ɜ[����g��*���9����z��x#*��;<F���ڵ�@���݌g�޺zM=����o��%,����9����J�}��,ۦ���~�P'�vؼL�r���Z\�Nۭz�=�Z�d�BdO*`�pTq�W���R�ڪ!�W�W�Ә'\�:uW�Ni���\`�z�w�o���s~�s?w��ԋ$$0F����M�V.3w����F�V�6{�l^���s���Ҳsͣ���k��p����-�E�;�F�j[�����?O�������s
>�􌸕�V�
����}�j�L�8�7�sU��eŭ�\GU5a9l���%��N����j��vr�t,�̑=�^�}q�b�ڷ��T�D8l��JtLԤ�ۇ"�}I��Ѕl��Ӥ��3�6elb��z\Љ��C>{����	�:+��Q��.ZS�
/	Q,X��am`]�-�la7����̑�Hx
@d��h�|�]�2=��uE�ñ��0�`K�c�����GW�~u�XT;c\�г��>���p�H�fi���ɶ"���S�Q�K�wGȳ�9
u=QOv��oEs��\0-��]��nڇ�{�-\|�ߥ.��jpª3F,t�		w��Л�{wv])�S_��%��F�g�s���	�-��RpM�Y�.1p��]����"����u���X�o�lC��t������&�ӯ
��{s���הL��S��+V�a�y��xB4��k��C��׈N��뜔�XI�/���e����T�l�3�=R}�ɵ6b����֔!�;�pص�#4ZK��0h�ʉ��?\�<:��ǲ�E�Qϯʪ�J��6���t0���5"�۩AQ�/@ܬ���}�]Mr}s�H���b������S :]�T����kb(��Ӣ^��w�rI�<$K�F'�.�#-�!N���!gj4���B'F�<��Ut��ݲF��������l��^Z��ër	
z7�A"���.)��;�5i�=�!�r���Fh�Ab�h��<��O�~��tZHhd0;����Aq�b��h\��
��r������ݼ���Y/Gh��7F:�����3�4 _D��)���Ɛ��u����%3�1�O��|P��Ey�tD,��`Ӑ���$�Ur��P�	�QI��^�ǎ�?��䧁��@
��cD7f$)|������*�!P�-�����Ԥ�'�U�<�&�3{2q��x�%��Ņ��DW�>!_��z��ke{<)]r���<�w�u�����Ը������)�n=:�zj���"����8(��=�I�w��
�Į ��t����v�u���C�6}�[�5_b_������A� �Ҧ�	�ó(�f���M�+p<�x�s��Yb�<�K�6JJ)�D���������'po�BH�h�nћ�^:h�:~&y�!���Jr�m������q޺Y/�o�
��U%g�<I��f"&|^y�"G~3u�¶��>��?(���Jȷ����B�L��9z@���q	��L�BO�i�|�5��p.)��'׮s��j�3;��������N^`�rc]��eS�&�h���b�JA���X��j�V �T��V8�F�����,��P5{~�cv{z�}ġY�)'�W�D��~����&v��t�)�^e�	5��V8	([��Mbu)��:�va��� �+�p	2�q߃�ዱ\�pDܺ��^
/�ǯI�t�۶,��*�̈́��ZCF�?�Ok�$�U3����*�˞lɫ�
(_E�rie�R>ڡ��i��e�8G���5�7+f��qTt!��#H�b�MZ\���0b���2�Q��8<�Kd~�ЁڼN�B+á#ݠd����4������o��wW7�	+K�����;��;�]��8̞ݗ��P���a&ďZ�}��BG8IH���a��%��m�	���/��0k� �2��4����.v����l�������O/����3���;lU���_��Fe7T*�����~�[N�Wo����`Ӛ��;!��������j��X��J�����s؆o�����<CG�{��x�h��P�#<�n�m�=
��V= q��WY���B
����d���[8B�;�y���K{����)6L�����'��u]Mw�<��M��QE����B�o�� ���z��)L��y�����C�*�cTER��I��p8�/]}Rx^Sx���ދ6��iTA��5���a��B�%m��=4�RN̠C{�N���r]hk������o[y*�2?m�/�~����T��x�+�ba|��f���Mu�Gi�/ϴ.��K�������QBj��pc�����~A�Łxk֩���8�ygԏ8"��VN<���s��U��=�\����ޘGw�»a�Fp���~en�H�m�.YC.��}�gFK�}�طN>���+�u�8���w�XͿ:D
F�����'���GmD���Vm�a�x�yڗ�{!�~P�!�)O>�W?��=��ck��~�N����a��x���q��6";a��I��O���r0A�oȫk�Ej@�M�TO��i7J,�.������t��YFAє��" ��I�~X��=x"�z�m��?Y��ʼ�Er!?4�=9�� ���eP��f��=&���6���?�oMi[m���^Ť    P6�b5`0Z���P �\:
�V�>��c���ǅ��S��5KO�Ta�Ƚ���Z��h�-�dR���ܕ(�EFGL��:�N��D�Q{�� � �L{�9њ����s����GtA��Rt�c�ء&��}�I��A�YL(���f�M+�ܥt��;YH�t�^����O��ƩV^�Tu�E�ahKH�eϧ����~Q&���v�]����gD��n�n����z�d�<�`�yj�r.��sZ�u5sZ�����#p�#W=_��j7�ء�����ȱpv�Uzr~�F��]7�Q>�K7+�[#��S�?���mW��V���oS"�����݇c���}Ue�k��0�o��r!��V�uY�Ρ n�P��.����O��=���|�uʣ�~͊O�����?EA�,hwG#�;�G]d�lӻ3:Sƾ�~5���u�Nqro�K�]K���5�"[ScDB%�D,8#d������y��M����<�w��3�W9B�#K_ب�r�߼���9~?歖$������1�\��T�Hs���Zd�m�'�U4�+����juK�o�P+=�b��=�%��uZt@���uN�@C��wc�W��Ah����i9Mhŧ&��<z�����P�*��{��������ߓ�~s��Vq&�i�E{�C̲+|�����t_�7��~��ݨ�B�S��qd��s��oٴ�F�,t��#4z��B�6�K�G�.C�2�'�n�ҍT"���reELJ6���Xĵ��<�l��#6Z3�V�����00��xz�
�%`1g4�_�� �7��H�����8�EZ�B6��ˠ��<�,��!aAȹM������(_���jJ=f�Q��������ճk���Ƣ�K�6�O�]�7�EX~|�Y�J�3,��OnX�_g�w�}^*�w�f���"�8�b�Ad���`^椾�é6Wy�]$�m)�Әmf�l㓄����T�3���r����{i�r�k�G�E6���b�B���v)V�6B߿L������u?0��]	E1��+?�� U���{|H:�ֹ>��O����o��E|����6�
�A���9�f#A�Lf�$�_�EX�ы�8���ŝ���!Fk�J~x!�\�X�IeY-���\���,ݚ����l��y��u�u+m>�3W��ȱK	��r��f[m'�����)�ʹ��A?=�����(6r��7��y���XK�	��6��?䜣�e�l5��{�?��z[�$g��#M16�d��%��0p`�5� : �`�+X�h�H�v������l��M
��^!�e�Z�����c6qy���W��~�ٳ���8��z�����K�A�(����\�O�o�1m���	L�t$��,��RTe+�+�CF8J�qa�>�&X� ��ײ�T❬�s���h������C�(�DZ�>���ٟ]t�~�%C�_H��/�RTq���_��M��;�����Z7��F�� ����)q�˰)��n.+��9�"[�����j�8|��3�*[0V%�|q^��Ͽd���쬷-2��x��������lY��콘�F>@��X4���p0�qc`�P��@a��� �O�q3��çw��T��Tk��Ty�/����w�}c�4�u��RW��]='��g?M��e�2\ei�M�v�u\4�*�j��<}-���=��Q��ecG_�v��:t��.�����Q#e�P�d*�(~s��������'~�t�2D!ZK6 l�K���i�Kv�5~�߷>�'4GKvt��-���&�q�m>�&���J?$z@: �_����>��azIL��K��]}a"���RQ�B�(:П���h\�q��a�w�~�S�;�O�.��ƞ�$Z|?vu_ˋn���	���X6|�\d�꼇�������Z$8t0�����gs&Nw�ú{�6�r�j�4c����/����ꉅ·�l�N�>!҆�������9@�q�ǫj�
�w�)�Tm5�l�3E�'"���eÒ�	S��_W���f��P/�ѕNk�p\��_I���V��M�<�Cm�(���B��G߾���6�ܺ����TOń�}��kj��|X�̸����ϩ�}L���h"���C�2��̋=s���b�}+V��ռ�}t$_0�0�f��h���~G=�ygޘ�ͳ�\��~2�Ԍ�����vֻDA~1f1����y�2c�3���NWݔ���������5��}>>S��i<��h�Z8���3���|���r�t�<�

V<�ƪ��/��kt�2|�]+�,P��W�����XO���G�܎����N������a�i[)��(������0�ً��_�}f"��!0q6��Mo�<�lWg�M�e��v���W>iQI�K��s��|�Ep�:��� [���'&��l�x�R��j���8������`����R��w�;j�(�=�Q��H�:#gV]a&�����qͣ, �`����	7",�
�,`�r��%����7y�J�!���3�9AP]���i�EA��Pv�s������sS�OVH��bgՀ�1��#�%�����A���f��x>�-)c�8�y��Pc煉(ˉ�׈"sL�ѭ�+1ޑ'+���U��0ԟT�K�(�[;��7ז��W#Hҗ�O�z1�E��H��䞾wΣ��_.�����▂�`��}��{��ϴ�#�Ibv����Д�[2���@/;��m�P[�B����QY׏��Q�'_��k"�Ts�؇�2a3"Y+���(&�#�7�z7�_-�x|M^�D�ñ��|Y��5�H��]��{�/������������ە���|�ae�h�,�V�'U����bs�x6?�N6I�\zD�aʁп�Ƿt,:߽	oz�;��"�4WМh��3K��9E�Eu%xEb�0t9M9��
3� �9��$XOT4�ֵ��R��h,���/�7?D!F!I fy�j  ړ]U�fӂ&��ע���wh������R��;a��(����%�+���!�!0��"/�n���[f��$�Μ�������YUP�,��1�^���W���S�ag�n{�-!�-N�0�r�{�K��iA���d8;1~�@^�Nت?%�2�^	�1��w^Y���*�V��X�Q�L�Q2j(�o_~M��=?R�����*�o�gH��S�Ju�Ʊ
v����HZÞ�o�a�����lC��o�,�H.�-k'��߈��i�m��GttVح#�W~�U�u���t�"P�z�{ȏ�}n�eiB��B9ޑ��i.,]Ǖ�Eh��%>��W�z�<�iE���^�1q��;H�|�X7P�
b�{=p޹�A:L�f㬥�N���e�{���C3ޝ+�⠣���{�����|��k.��Nf@��H~��D�I������Cx�b��.�=�U)�$ү���\�#%�����/�A�4秙�r�}��,q(�Y���r���*G߿U[�G-MdH�����7�0"w�NA��k;���t_�~�'�$aoW���D�Ρ��5�uw\`��1{j�ǟ�ڳ�F*�c�:�!@��U���緅6F��\�rbf�ǒ��7k��"S;�jc�������0I}�؎��gY�ώ�07�O 
�Z�L��?b��.
����&̆&�7����܀Ӑ�yC��D�'�IOӀC�Pd��R;3`wa<3dEǲ�}��TШ@�y{����T�E1�9
��(�=�	����x�&!��j�q�??gTq��%`���U�Oj�� *�v�6_GFG�~�Wɗ�{��w����|���I�����L��#�5e��z�;�2^|�)��u�H��~'֟��O2�hOK�x�iֻ�e��i"p�w;�#�'��%���L�g8	�Ӯ�t��fEUJS<�{ߞ�3�P�v�[ԯ�P��#���5��O�XH�k�glޗ�B4����~4�Z����_.g��Jl������wY�[�	�yZ����y��a�(��u�V�xW�4w����̾����g$^��߂ �-9��T�9�c�������� �@\ :    \�{�;ѻD/O�g��������3�K@Z/?��ݨuVl�
�V��%�����4�a�0�y�.~��n����Xt[qڦT��d�K�~缿�����H+�]�1�\�����V.镐��7�t4�M@[k' P��0S��a��gr^o9C)�j��I�WKI/����76��2��{��'U�����u��%t�_�x�p�aV�̭5������g!6��I�3RM�@}�b��X_�;|���A��^�;b(U��&=K�m�����^1�۾�6���o (�|Z^����\����s�K�l�{��e��A��C�I��s�)Tp�I\��;�"̖��+e�X�b�\4%�5d�?,�u]����|�b�1�������)l��n�waj���[q�����s=6�]���Q��O�x�"(�Ǩ���6|E�⛣Qb*B �X�m��=6|�K��C��C^b[�۝�޵z�M|#�Q^�*���͟��Q$m��M�2,�#,�G�U&L��Ή��y���=������[�EТ��)Kl��M�I�T.���<+
��`Q``�:S(�xةd��6�S�1�Y��M�?��P;,@�,lN@�9o��0u�;��gu%bu���}��M�O7Υ�����6��L]��ΆФ[�n'ޟ���̎S��"ٚ]&�>����l�|�?�P�_Q1'����`a[' ��|M�"2�)�%�-&����8�x�Ӕ�q�N��!s�ne��˰&Hv��GW�K&E��	Sȶ�%|F��@�	,Ti֒��_kM�unW�^��<r��9�>�n��)Q�~��`�6��<Ot2#�wD#��6|sA!2��*������\�ʷ��"Sw ��'�)"(=Ŏ�6�$��[���|�F�sN��Ϩ�Ӯq�ԆQL8o��]�d�9Lt�{�G��* :X�.+��O�&p�;�%�c�0e�S��0�-ǩ��2L��a|�k��R^��wf�\9Qn|A̖1|���3������+Ș���V#�#�2V-g>�
���'hvL����#�������a9#'�P��L�{Ìڻ�pU���ܧ���*��/�O���N��Epy*�SPb{����W�p�D/ϥnS1��������H����@�=;��T��������� �}�ģ�ʮ�1c�M� j@�8}M�5A8�͗Oj�H�p�ݡ�-�n��'�򀔣-���J�(��˼'Ɯ<C�j�]�	"�o!� U���c�.�/�hb/YB�jܓ��N��g���z�aV1@�7��\c��ܐ;
�^�q'g�RO�L˪���� ���I����O���>�@���`ܓ�Q��d�'9fۍS(�b�~��Q���p����&��r��9A��5M�����L��͹���D/��pu�����(&��=R��Nضɇ���bN��+�,]��V���
6ȮX_�� ��_}�J5ԯJ~"/��G-wct4y�^Yo�=/\�n}�Nܛ5x��E�M'6*��J;5���+�YLv07�f瘕�����b��H�G��>���G���|�I0SA��޷���S9ΐ�өj�q@x��Thn
�M�P0��K!N*Ě��>�v>պ�*fC��{��Ph��'�f�^��8���m5�S0P��m�����Ւ ڧ9J:�&:*&N���R>�j��z$���ne4 gi5I�N�#�M�L]�*~h�I�r�C͟�'��<�k�����{ȵIǤ��j���B�#�]<�p',�S��jd���Y�J�b�f�f2	ʩ�\T�܎�H�ؚ�CrǓ.�G($�cs�"������y"�j�(���`sf�ԈN��t��N,��lB�UC:��#:�@h����4�,��{U�V'l�K�:䕪��,0��w������)b�U�����+�,��s��:�u�M�/*�~m[d��v�.�e{5O앖��gb�`4	i�>�B!:�
��Pq�/�۫!�g�~�O���!�
W�W#�~:�C��鍌�T�&�.B#c�{2���Pq�R�F_�y���OE�?\WS&����6q��f{���?L�[�ia�V*��XC�f���L�DQ������">so@�<�˯��=������.(���B�$PYf:���.{���2挰�8\ ������uq����z�$�3b��=n�w����V۩����.5f힬(��e2Z�1W'A�Њ,�hV������o�Y��st�4d�z���ʜ
[�%N)a��/��!k����+���R���w8v��椮�_�"����,:4�v��y�vN����u�������Dπ��J�܀��O��_ �0�S �.;���ͻ�z눲E)�F�7�&�c�o����BSߒ�J+�ZQ?�"w o�LL������UD+���>�aԩ��g�g��v<8A�LM&���g���r�r��*�-U{�2�u��q..�^*NW��b�ӐV����JG:JY�/� mPŇ޹�)����f5B��*hTmS�":th��tj.�~�I�7-�Li�M�?rƳH!w�^�?	;���p���A����kܺ��)r��'�|�V�<o�x�o�[��Ͻ�$% "\��I��1x���!6�6�����Ձ~�2=��G�a]�.F����M<F��L:����T���I[��z;I���Ҵ�<��6���J���T�p���4���$��mP����Û�+�Q��C�{������l�j�WL��P�b�/��޴Z霤����s2�3�����a��*�+�̈́8��Vd	����?�b���7���8�A�{���%;:��U���g9ܖ�x��N錆��e�ɋ���"� �I��~%	���C�-3��\���W�`x��D�	�܉$�{`*���
x�2?��[����Qb�!z�e��vk� �����?����|$���D��A���{k�6c���]	x��W�^!T>c��}?m!.5�n�M����x~��}�ٷ}�I�]r�%�Zھ�|9��uo�=�����<�W�p~�>u�O���g;y2����ٝ�C�:1�n����?�NƲ�a��a{93�3ޒ9�-��k���yn�Y.�>4'��U���u�R:H\���a�Y����G[����%����t�sQ唣J39	Y)�C���Z���̽���6[<���;�5�=�`^���<"c�U'O/7���E���x�����R��$��ޕ��Β�!2�iq��"Hy��ֈ}pk����4�1�Ʋu�^�X��+.���	�4=�pO��w�,�E��4]�)�5��+V=! )ZYV�}���3l���Ii�e�/�}@}��7����:Wg.�Z����!a�9�0g����"�dS��K�y���diŌ�ۜ��4��i6ew�ґ
�ܑ�BN����, ���}��	d�NV}��}]�X��R�/��Ŀupݿkp&˞@����q,'���kS�� ��:��5W�t��z���9�`�t��`{:�������������6�Q��i����e�A��Y��F~8��}_O5/�Z!� �����#H_W�l�F�V>�~"�u .��j��#A�©;����cV(-��L�6v���@�
6��+�`a�*l�v��	$�w߁�eުk��3UӁ����t��D��X�#Z��� �ҲE��$<ʜH��Bvr�y��e�����'�����F�@����r�%$�y�q?����ȄG�,�:7lL���q�5	y�6�g{�Ǟ�JP�"n[����xAQ�+�*��X���r�2�Cr2[�4R�#+��P�=�R�U��SJ]sX�Š���d�x�F�b��k���G�����}���:z@��geK���F�����,x.��Nr������1 ���O�b�M��}��ɬ���ʣf7�d���������p�m�~�(w�\�^xu��p�t��G�i#]�����L�52ǝ~��u�<�7	}��!�����^�)s�r�$N�� �E����
��jKp�k��N�'sr�g�T3�J�q���+RO���K�h    �$��@l@��
ȁC��HC�qj�gdM\�V�BTB�Us��A�Y�`zǆ�]oJ��J�&U���)�Fl"����~� �na.`���iB(�PTd���f���Y��4I��pDH�R�f�Fі�;Z�v,��+[rh#�2-(M�?.m0�@��z�ا�+ф-�W���1_�Yw��yq���6UQ'ܐ)��!�O��"J�)7�	��1��yO��������ocG1�i�odZ�-�R�`��b�oz�r:���Z��h)�-=��Sq8�����M�[�o��W�q}%�4*gr�N(��&��>�h*PנN�4q�Iq����0M*Ѫ~$��T�q�����
Q�E�u��j�I\D�Rŉk���E�s
|."?MKO�	�2" ?�"L{�z�l��j�2�{���yY�aKad�|fV�15�e�$2y'8*Wj�M�Ƴ������Z��'��r���Ju�j����i�v]�D�|�ѻ�W9� v �G�2���IV&���w��M;_����h���l�@^8�ʡ�ƹD������
���N�j�$|��W E�)f5�a[����m9��0f\R�a�h���0%���iijn���[#J��b'Σ\���ߑ���l����t\�3х����OO6\W��6&���*"SL���GN]Ԗ�Շ*O���@�#��m����QÁUw�v:'FZ��ѽ9UG䂧��1��/�q�L۫C�za?���nZ��Nӎļ���]�:--�-�u���������^(��q�d���,�g���IZ��{������V��S����哩�V�ϩӱ��|�=RZ]է*�F���F�7�Mb��4�T����3W1�;��g#��ѣ����nP��`(�1�a*m����R<�\�T��*������a�H�F�~M6�r�`�H/�xy�b_;{M3��s;[��2�֐D�D|��I	6�!L5�otR	����ZL�Iօ�"��P�	&]�7Z�p�������,Q�p;�r�'{&H�	k�B'����9���Wץ�WJ�}Y����O����(����f5��7�T^��O���D?���x�`�/�55�^X�N73��0�nܑ�x������k��q�bSHf�ݣv{#2�7I��X"���	u?�����[鐤↞8�K�E� ����+�#�/uH��q��,$*����L��M���Y�p�h����.�_��� �>)�7�TĒ�D���%�|�Ek/�JѠgvX�.e�[<�M<�i��48g��m�,�sp��+�������qT2کZ�~�54�?���Vh�jl[߼�N�{��A�W{���Zh�x�ǿ�=v�f1�Pނ�HD���-��q?֪u*=M�
�IŪ���;fe��,��@�]Io_V�Hcl~�nh�&��Ҕ�{����Wdl4ٵ�T_�g6��i�i�ڄڝ>8�&�?�M��U���7mJ#�.��j�q��� ���i)��}�`�S��\P�+RFHƹ�z.Î0�^��\��}:��Ww�	fU/DɦNI�Շjs���*����$��c���r�6D��;�K�[��=v���)���1��g]_ȿ�>铿5R�.{`^���%�8�1b���IQS�HS� ��2�L,�pkSkn2���U��bk��]A���c*=m(���E�b����:%��.ϣ�����ɮ.4��Z��ѵ�ڍF�R�����'
��е/�)Jf(�kO[�:��ұ6�1�h�dܨ���ĻB���^���p7�s&~��9��J;�XzGc��n�-��|vW��|̊#NڴPߤA��~�J�Z���c���G����l�[Y��apm%o��Kc N�T��Y���7��J9a����Щ?x���W	Y�9W1���V�����:��w��ϭ��V)q��k�D~3�S-��+�t��|�e�O�|�0�W�8��=:��s��EZ�IÓ�ĔY�NX+�q�>�l�1��ɳb�냫J�������)�~�Ci;
Is�I^An���8�E\4	�9�ב�e��I�ӷ	�uI��[ڜC��P�>��y�f�۫�{낐��)	kxV��w��7��&ء����m �&1s�X@����00c ��w'��n�w�����9V�Uw�����J�"Ԓ\-P�S��{O�y��SOr>r0�lt/�^���u��������uz���_�$�E,W���V`Vu3`n��*�*�A����oMgHi��"�;�s�?�!�^-
�Ի�8i@KCEn�68YNb>L���?�
}?4w��h�xc�-�^_�u�f�pG+j���i (����P���@�~� H[A�G�K>8o,��\�J��;��{OX#0�'�9J=�@�+����N9�Z^è�1F��m�z�=���>������YD�Cr�=|�:<�n�P~�7�JZD��w��j
]�a�Rj��W�'�s�Vώ�%�%⌧Kb��s�3ĺ��C;��8�@��C�	�Z�i'=Ih��a�@F�M� ����tP�9���7���[,��H�uq]r�Qo�Õ����Mx�Y8�����r-S��3@ZS��~N���-�[��D�u�&7�&��'GF9�1'����O�W��wH���x����K����H�1��_pO�� Pi�u������!7���O3G84Z���-�v��_��$����q�D��qTi�ݞ<��7���:��N�i�_�6 -��S �oԣ�S-�*Y����.?��\��f����ƇD|X�2]���ɰleꢔ�6W�#t�/f���f�/REᔸ�z�2��}����0Ƥ�+b7�x�5�hD�K�����J���?�Ih�f����J�$��'���w�Y�E�N�xH���Ұ�����4�:�L\|^�"�y����}�i0��r��a"p�'�;�GV�n�'�;`������;���3ǁ��э��B��~#���7�Vv�{��*s�[���0,��f⨴�h�h�o�U��;*O�Ϝ�k�3��g_��r�ڀ�D����^�i8b���.�;�����u�2����r�	/������f���8E2���
D�k��̸`�H��P��ʮ}�s�t�M��p2�-��1���c@)�Tܻ���2�A�����l��DN.a�M�s9���Q��:�ʩ���gLT�gN��r��z{%�8�x0]*�r���ڛg��/F���SJ���<&���%l����z�����y6��	t|͸̪�)����Y̧��H֍�ҝ{c`�D�Kk7������}��Q}�*�1?�g������B'�	����@B8�
��K(}�a��t8;��$����_��s`do�6W#Ե�h��-)�#hS��%W*~�U�1W�Q�Zݮ�ҍ1Q�H��nZ�@���f���
{0;$�����s2Gh�{n�v��IN5�>*�Rn~ם�~(��S0Р��%��,��co^=��1~�g���mЀ�_�(��A,�`9ETeiy��J���K?�	;Ԡd�v�~E�<���%� �=@J֛��\#�'+��%�������(oK���U�Z.��no�u?���z�<[u,d���R��ߠ�{)2҄�U�*9��M�l����k�'(�Y7KJ�7l!)�V
�pY�ZV\n��y^�}�s�K+��ˊ1�9�r�V�ю3H*
�~bܚ�y]�J��E�:�em[�D5¸���t���J��WHr��%�|~�qV�?-��V�r��b�X�HO�t��sI�����f1o>7t�x�f���Y5��OK 1l�.];��� �`��K}t�*�_3B��|��,�)����&��~�\5M17�ӌg����� ��=��1��x4�]5���J+oL�'u1>�|䕘�4'�^b5�'슞� �0���m�j��#��5U�&��X��qI�Wό"��O
R��ZRޜaֵU%L-�:D���t�Y0����b7_Rm�����iDxqA�5�9�*��>����Bc����%���J�
    ʗ�o�	�_��/O�B��}^�N�i�Iqr2�od�;eG!8#��L��6����\��sB7�^���e�_���ɪVj%�w�$F��D�|�����&��� `��0�x���o�l��@S�[ZaT����,Q3գ���p����%A?
`ŕ9�a0B�kF3�C=��p�-
u/(?Wge�t{<�G!�7����*!��lw�5tW=d!=���I�m\��[�p�˨�xe�7�Ч���R X��~�cm�5�e���>%BF}A��d�n�z/l��}��x�˙��H��]/֊����~�6l-����,H��_��L��<����Uײ����;U���O��z���� C�J�̠b�S�1������|~�i�J��sr\�G��7���i���/P���a
��@v@Rw��� =̙Az���%9�f7H:����� N���x����M���^�����~��;.���c���s\P(J��;�r�F(���,��m0�?���o�n7��ğ�MP�u�w�����P�{��Н},��i�r?Xn��%��o�v,��Q�9$6��"*�c��귪�L�- �ded �?��~ẖ�e΀��و�T{C� ;�%/uH�{ʿ����j�bJAz�T=�_�����y�_He�,86�	�g��)��h�ZwO�H�	�O����~�͡])�(��?&���ek#�wz�9�*!J����;�<����Q�k��G�d�ֻ�1B���b��["��~/�����eO��G��E�0x������R8OhDe���Z���{D�o�^|+�������˧���#:���z���[�9P�/!v��'b�W�#��v����vՒ?�T(썮��w%~~Q3"��ݜ�_��*�f`��
��j�(�����w���*+)<��kQ>��rr����H4{E׊s���v���09L��ݟ9t�:3\���.�%O̭�O4���^q}�O������ᴤ�tU=п�8X
$gSȁ����[b��ZF�~sL�~�ׯ�(Z/�D��^���1����&�� ����w�+7����^��������V6v���aDq�8�^�?��"�� ��l����pL?�F���J"��� ���/���
fN��4�����n���.=�N�4
�=�&��T?��)��R���m�'�6�����0p��p��gV�[6X�D'������໏芙�d��.�/s��=?[�ma���>����'�MDr�Ł��bP+f���r�CK~��!��F��Q��)n��ծ*�`������LJ�"9�a�i���Ί���?��x(_��`�� s�q���Xg|Ϧurt��xN���*u�ST>(���0ܒ�?ߓ(�j���g/5a����8���L�
\6.����ܘn�L��1�yd;�W��>�kqp٪8z�3���o��YdD?(�
����~pdq�\V��,�1�?@�"7���&։V��J�Ղ-Y"���3��n�D���>,8c�w�r�]�B�5�\Y�5G��($w����.��1��c��+@�/��IJ�v��1X�p��s�+�I+-.'����������{���x���f9S�B&���h�IE���jƸ�<�3*�ξ��G���/Uji��͛��(�CY#Zx�#m��\����o� 78x$�lN�;V7w��X�S�G��OGY6�x�lG��3MAZ⅛-:4���ҟ	c���0��ߟ���^���gm胻���vF�����ی�-څaB���`�	R�c�U�S�.��T�a�m��`�N�<�r�B$� R��=csU��}��Yb�K�\4r�vۿW�W�g��U�e���9A�<"yJ�=�~��z���ã΄X��SbcC�]s���!�oFF��>���mu��Ei �z�����:���w��JȀKw�4$̉������E�$��@��p�7]�w�&��/���n��}����,�B�/U��?z���)�d5�T�=���U+����
3,� ���3W���">*��� ���W�κؼ��O~�g�Z��E�N;��s�C��nX�^��By#9�;��D���5�0�%�d���u
����X��o�ݵ�\uaq�xޙ>�1�1=Do�j:��*3f��q�ȣ�2�/&����h�'�u)��������?/J���\��:3U)
�γ�0�1�b�l}õ\Q�s�6�0�jW^�A	�����հM�%�X�1����=XGN"&<q׊xw\��(�!�C8=��'�t
�U"���hr�K=��ևH�'�2��&3���4��l!'�"��7�#޴Y���t!��Ag:���=��H	&TQ奾��.��_�6M��qZp�q��}C���F�i��:��M�p�B>ȘJ��F^�[���j�5�ˣ����P��a��os~f��=F� ����P,j[)�ξ�t��i�z_�۴X�a����qER�b��j&���*�)m(_J+D�[mT�tÓ}�(���\�9���n�����E�*}����OI��]nZly��{����z-����+P��n��bA^�d��:��I�H��d���a��rr#�/�������&	^�צ�n �a��wVF,Mc������g�IV� )�ts��f��)&�����'�Pf��Μ12#�'��̕5a��ʏ|�
bg����Y[�ɮ`��bn��������]�2��>at��;Z��G>ZD���6��K�'�!ި���[�y��~8˩Q8xB�#�ջ0�Q��_�������8��h�*���wu��=gpuhL�=�D 7a�~XJ'�c�LV����,+`t���a�e����8�x�JS+������;d�j%>�H�$�Y��K�8W���K8n�j�f���2�*8�c�Db�[�c��<DΑ�����뢪ڢ�>|�Y���%�
�<�J�t�����~�-�!7n�S�\��X�^дMU�"!-��r��0ɧ1E�EZ��}��^��L��Fl�Y��e�7���
�!�A Y!
���;�$�D˄I��9DA\f��cN�dE���{��_���I��E}��f)W/��N�ә�Q���ys��L�:0�@�x�ͬ��`T�e�+�D��А�Go0)���c̮$��q���ގ^����5�[������[ULx�lj��S�߉���e|j�=2�!X#�qf��Π�j�9���T�r}��m �;�a�6�`T��a�m�Dk/\X J@F��0n�A�m*�t�O�o��h�%�j��"���	��� a�>��=�w�/XGn�w���{�{R�_����I
D|�g1X�$|�e���~��v��7O"	h��i��!��"�\������=]�ӻ*�0��3.&T��{�!�䋩 �$��7�V���#�3�a�Z��%g�u�b���q"�<��~�d����!�e�_��n������{���*�ϻ�Gcz��.�&�
 $����y� �4'�$W�d.�����@2�0j����]B�aCz�����q�K�BYGtwXIoҞn�38�}��v�Ԁ務x�$���.>d��L����1v9~�5D���Z��&񇖳�o���:4��$}D�L�d��nq- ̼9�#�\��H���ish�M�/b��څ� ���<��}�����;�#��<sD���7����v �g�~��-	�0�&���}j�GJ
U,�O���L.\A���O���Nڔ��iV��DЄ��J��!�p��o,-^Dq ��N�i���3_��������s1֋��p�" �}��tjL�;�C�ى��&�rV!dj�򄃏�l�B�C��;�L�rNc�۔;��o(���s)�c�B�_o#�<��\Q���w8���}�ׯ�"k���g	�S�UK���q9X����.Z�`���ݖ�a��9�m���/1S�%�f���*�&��/�M�W~_�}����,vQ��k��+�    {2"Ɲ�]\��/Xb.���-�0M$W�Z��D'��sܠ���Q��k㸅"�Bj�8�0~
��?��T��+��ۜ�ۘύz|~�����n�-$@�{���_�-1�nԊ�g�ȉ�Q�z��&~��a�I/\�'��
Gp>$*�~�?]e�Ǆ��YE�wUW�=�~�|*�ł��~��y�ζ����j��~]-�#�ؾp�-�
��q�Z�[��^�3|l�.�ya���_ZT|p���f��A}/���U���U͡�K�����b�m,]s��L����6j��Og��/옰��~�8��xo�D��
y����밣t8p/�<ý���:iF]�S��j<���\ù3�؎9ʻ1�r���:�w�J�3dO�s��e�n�+��|���֡�:��vv6�g�}���"�J�2�(=�'��B3��!�M�Ͼ�����fD>���� ��k�@z +.�+�YT�0]������6T�w�<[>����U����(8��_���g=���В����?C�H�!)�a8���x��E�1�0�}%�"�O�����ɭ G�*�H>2��-Ah�~�k�\������׍8�������F~��l�EB*$)�k���r���D9���8x�A�e�U� �W�՞4�ˁ�n��#&n���\J���2,MkbálU�mVM�E����n����GI5�ز0���~���E��h��mQ�J8`=N���\���ּI�Kp�XA������Ȣ����o���&͸=�{�ȜږbV�5z�B�Snc
�d%�^�+ew�pˆ���*�m�����e�g^aS���$��*�9@[<g%���<u�~Ra�.�~6 ��]��D0�	&X�:j��s��c�Z�?�-��N�4��9��Lf�'X������s^FX*���G��0D��aI�9�#����CϾ����zFH��� ��a�^�/��еn�*��"Ϗ�;ͯ���ϐ�O��dY�2��z���6�E����mkDhշo�y�_�������/��[��������DjV���bÝ6+��͑Cڃ�F����z���'� ��������J~!� q�٭F�)tŚ\M��/�r�B_�7�5����]��>M��{��~�V�9�9ԃ�a��h�i����]H��ֹL#퍋���~)�HD�|��xz��9���v�sB)ּ���U_bߌ��R�U+}��z���#�f�]�7y��д4d��ɯ�M;������sS�j��G���H����ť���F�?��x�-��^����x���|y�Zb��^�eAQ�ҙ�T������uz�-XF��̿�_�F�X]�\�y�M�,L���{��N,*4\�0��2t�����7e6�*��7v|�t�z�Σ�����{Ǥ�!(5�ę��7R���+u}~w�~Z�(UC�*Zk31ޟ��წ6�&�m��$�%Ӑ{��j����~Q��ܧ�'��Y��E�C$���h���G�VV��;����W����}�@�D���f�9)�9����P-�,���z�9��2C��\̠jiV=��,�އ1�h)݀#�WR\{o���Z���wMr�����i@���H�
+���.�4MT�C�kAb�)mr�[�� �/%�-_�H=�K
���,�#�����$c���������xl��E)]Ai&x_����KȂtWO^�^��G_ :���t|�?����ܮ����)r���=oۥ�m�;{[��F�Na���@�2ɝ��};.�ݟ��P"����@�MO��l���R�7��?�Ch�W��"���2[����	WP�+���%o�۰�_�H3��P��%�cxe�l�ty��W�d����M�
&�}q���Hw�{[�bN{��:b�s��({ʥdqXj��.�s4?QI�|
����]�[?~�h���?�3D��۱�v|�Z�K^�oԫ7�ya��,��yfb���FxF�{��j�!Y�D���� ~�X<�l�\���uߋ�c6���ú��J�_c�f�]�Q}Ձn�i�����D�{<;���L��R^�U���Ktk�R�m���5���7-�6D|���������A�|�.�E�1Ju�vm��mB����D�����uj:�"����G�y��ΪL�����#|�>оȴ�fC� ��H�۟�/U��-i'�5G>�xy�4�nkl�W�zg����s���;X����NOָ7��m�����S��n]��� �.�? �%ϱ�ऀq��M�p'[���{@C��ܐzD
^�v��DëB��UN)��R}��*���[y��`B�^�-�t��x?a4�nY�6H�֬�g�J��k���;��%��Y��{��B���K���bj�}��gK��̔�9���(�b�.V�Ih5f�k�N=�ԝ)��!�͆N��`_i+ќn+��a��x�"�R��.�Xg:�guC^��}���ٵ�b�q�No9E_LKJ���_yy�K���-C/������	�\�$r=��ɴ8|������ur�~��RI:��ZZ�=}+��G..p.�?�6>C��ʾ��*j��L���4�L�ku����e����H[i7�[tojF�G���l:��w.���Uź�Shױ���H�lZ�E�<Zu�X�MŞ���="@���FJ�Y�?�i��vx��;�����e~Z�}�%��PI����-��¾��	�~藩6���8��a�\�2?'��O��l�+���\ښ��ͷQwx(a�I��7 ��Z��V�Ս���F����#����´fZzA`>�{<z���Ց�Ȱ9���0-�I?�mjna�1���el�]���ƆI��Ak��A-!������Z4C4�6P��r�ֵ��a{*����
;[>^+�wm���f�����&��(g<U�K�.�P�g_}��f��^�蚒 ��b��3M��\3Z�*d.�q�k0��<�P~o��Rd�t|���0�m�� ��f�׶Z[������z�xp��T��%�7�x�U<�h����<G�8�uw���,�d��(ے$��cՙ��
̆��q&>�9�e��]i��x���j�/��;h���NF�J��l=��j��wKӤB��	�� 1�"���#���k���$m Q��i+������᭰�$W;t�q�s��������*������ؔ�S�����nJ�F���T�d*E2)�")�/J����/�݂��}����"~`��� �'.��o���L$,9�d���`ye�H�y��K��߲�A�m��T���=����U�ԅ#�r��y`����"�l-
1�>z���kz��3 umK��eVV��o6������#> ��t�v�[m-w�*����0���S�XvSײ]c�\�/_��90�A{]�vM�!>�j��KP��ה�%�q�T���]�7��8�=�HoB<�[�G+����$3����ӇP7zf�������Za�؀ .�}�CD;�����Qݙ�$tGzO���?��Uaʘp�嵉1
��hs���V�?_�66�{�1T����}MKd&VI�d`$�I��1�L��7"*&��nt�۰��d�/��ά����� :����ڒ�S���M܍�k��W�|E՞�� �<��-��E?c�LvGYݰҷ�C�A���6ȗK^�jg:��u ��[3+�4:�{|e"'�I$~��<�k��Խ2j��Z��>��|0���nT�b75����W�o����.�\G��2���p3���Շ�!4�y��&�!��r�75܅��H���Eӛ�xgE�!)������K�;B���tc/5�p��Gf4u[a
�q �ϝY֞Y�N��P�����%�>־��o�r.~��d�pFQ�U5�!���Q�I��?��]���}.����LԈ���MkW��+�}��bEV>����޺��=����P���ꬣ4��z�#��ז�����l�77��fFa�"y���t�e߁��    S�؎�WZ$9A#%Z^Ȍ�E!��[���RUF��ߤ�Z��Vϣ���ƪ4�W��ЍZwE��M�.v�(��!ly��y��N�o�աU��gI���{5yvW�&֨}�a����k6��#,׉0Mܯ	�[z���b]�Q+�E�P��$�9ĺ���W1đ|��{ 9���5�l!3u����x�)W�����y|��/�vQ	��(k1W�ED�[o�qv���dO+���{Y&�c�eFc(�ܣ�� :p5���/�F�}>�>y����{`�/tL���2_��E��֤�'U�^�0�ŋoo[�Z�+ො��dq�(���1=�i��k��a��`���W��[���1��v�����=���,CBCCݣ� w\�%z��VOY�B�V��^ð�Z61E���(�6�|!�$+�49n~�pN��:ED�sN������@��^!pQ��t��W<_�eK��{�a�.l���oA���v~~c�!�3�4P��{�1��G�?js5$�t]ʤdV��S8�,Ň�=�)���?<v���|���И�c�+���Y���z%�������O(��r:̓!��ɧ�Wg�y/�����jodx'�#��^�jTi;���SB���:���\ء�#�]��y�|�N�|��>AU�����vh���z�6E`�!����3	,�1vl�L]k팦�-DKW���˧��H;J�ggqou����q6m��F�O�^���eW�ȴ������K�5�����]�#�C}�)�1����}#A���i�5+s�K��o��M�-�������"-i_��} �z�PM��:�I�f�;Q�Ov�W�o�R��Ö��	^N-�w c ��g�F���Le���8�, �����%��1���@�_�Yx=�A��
�+괹nm�9m��k�c4�2�d�	����k0��9�,���@����~k[R�>�v��������H��FG,���K;�!���>���xX ��'6B������o7Ʃ�U5�go)���/5�� 0OBC:����vI4���WO��`���ob��!�D;�2z�,�m֮���`J�.���k���"�~��W�ޠ+7�| Wu%Z��W�?s� �Rj�>�?�W��9p�[�^ڜv�7�̡�hE�]�ba�Hku����D�9��Ŗn����O��|3+U>V�i��|�͠�-�C���H,Ʊ���qox��3�#���������=�q��;W.Qc�2l��@%�ٖ�5Z�2Q:����,��/LB�k��S��b�Y�2���:��G��|��$e�\Ј�Tqo?g6�`�����*�r ��lf�ۑ��Zm��5n�)_O�G�Z����jä ��V��)`��/cӷB�13��fQ�[c��&-��!8����*�-dq�w0x8�F	.d�����ؖ]��"�C�C�Y& ����Z�=���`��Cp�m -��?���� ʆdn{�,Ό��Wţ���9�f�b?`�����Kȑ��i�4.�S	nK@�\ م�z�WN��m|�������V�3Y��q�������ԙ>���s\���8�F��j,p���#��o?��!�3�.N����GFn�*��6h�
�i�C�F ��ͷ�3&��N��ZE�㑷�],�ˏm��J�q��1��o�t3�w9V���y����Im�����Ʉ
��b��o�F'ް$6���Dd�O�Ǎ���dW��藇2�y[>������R�N�芲�3l���Φ��W�lJ��;d���p�M���v����Ū�.a�_�gI#�+�D��=�(a�S���e���������"4 &�v	[?��_p�߳�fY򆦭�!��c>/3�(�~V��;���o��*�ծ��$���
D�oM~�u�Z�r9}J�goq�Vx�+ݘ�E"BfqܣN�F���;.ֿ2�Q|ȶC�d5��[�����)�ę?X��.q����Q�FZqwJ�vė?']�,�{��~uG]�'���˜#Q4�& �+c�'U�25�@d;��������5՞���.:�5����z-�q�
�.J5�A�G?����u*�#�-�����)S|��)E�<"���4%i�⥌�OÐ��,�O��Eܵ���0�!��L���%H� �j�܏�s!\ERӐ4K��ޙ=x���|�Û$���و4�x�?�)D�[87�����6�l5
nת��Vm�E��|�m3fM �Z�_)�������V)����Z��P��0zz�QS�Ǜ����	P��|��H�_P(�>*A��'�(��H���ҭ5}�Y�5+'K;a^��/*nv�����rj\���f�td�|���S���a���!Z+�ۅ�_�8���[�&��_5�7�Rh�{�׫vڂ��A�����"�<�޶FK��R1�C���p�N��i=j����Ҳ����� CV"��4[�_�h�uR�~ ����7�+/���^s����L�#m�#�:��[ǂWNN���=��Rjo�[ˆ�.@_�vn�L��Խ�Zi.�P��iyͳ��旦_�蕤SZc�Ɂ�~=�Z*{��Lz��� �h��|ß�0�h��o2����\�4�4�ryS��%�r�о	��wė�qc����=Z��u�BLo�2�&+2��9��ǚ�p>Ly1��%� �9�|��P?�UƵ#��7u���҉��M����9\�e1�{�ɴ؁:���]���B''��C8X�q��-��nX��Bi���M��f�J�<�Tr��S�N�V��2�n<񳒑�z�輣{{KY��+�?W�E�v�r���<5)��ͫ�dcm6��3;��{�=bC�i�q�?���h t�[����~Ca�M{�����ƅ��֕[, ��[�@]W�hT�K�]���>{�nW���$F��ۺy��ޏ������GZP�-ڞ�"��I|�N�4���x����c'.�y�%�k1�����P�
2��H~��yn��*�^Қ��j��A�fR2�O�C|W�d��O$1��.O~�M��$ ����*8�|T戮�Zu:����?7?�lx���p����_�y~PsP8Űv��:����'�f�H�'�#���8P�A�j�Z�-tl������ϩh/�D2D��Y\;;��dn�5��c}������zL����0aPE��+f���J�9�J裿`u�3��~�'/`�i�|��_�v�$&�þ�V�-��f.�d\��J�n�	�|������2~�D�s�ځ�d:���'E�W�iG4��~����3���T��r�����p�ĤX�̬-u�ߣWf��+�g���a�*s���}=�V�<�&�_��r�����#@�觨� ���D���1�H�1_�JoHB�(ؿfy(D�U��M����Ǐ~î��c9ؾ��Z�\XI���Y�ja��2��ط�c����,F��)H�5�?ۼ��.ڥj}YӰ�	�HU���GZ�I��VM�����l��[5�&��}�[�*��j'�h��j$�T�� ���+�`��٬�q�ZG/v���t ��e?ߙ�]�N7R���N̵v�+DS���u���~5��)��Oa�wt��q�P�w?�7���lE���S��R�ء�`�2��-wi����Y����mH�z^��Gp�]eIJ� �f���t�9�}�ߟX>K8�M9��jVg!g�Y|o>�v*��ʃ7D;�[8EҨ�l��ӟ
aI�
�ۿ��g\Z3G,o��`��Y�u ��>�Ud�~M�~���F������L�e�!�.�J<�/���P[��%�e(1jХ]'�[�Z�1"G!i`Gg�q����QB��29(��ېs�컏���ڶH`Z�P����n�")��u����*J�&�5�K���`n����l4as�!k�j��S7E��ތ�1��g�h�k]�Y���i�'Np�7�͘Y�ƭ�)�}:�־�S�C��:$��ݣ�i��N��IÅn'�9k�l@2/&⏠����gX����xƤԫ�v��e��#g%�XMvD5�-�    ��<�b՗4�Ȃ�5��&m����6���i��2M��JȮ�����PʄN�Ū��YrO�J_�C8��:��*��}x��=`�
�l�;!5x�f��+�\H���01���:��([�X��\�}����$���1-�g�df�Ҕ�:��K��H��^�i���s�W��8V��{�]�G��5V��p\y�*2Se�r�\���>�z_����,��#� ?�����<�^���)�b�yҶP��S�d;u���v�����DӁ��A��.C/�������c���7���������󧈴�#�ϗ�7!}���(�W�墹^CH8�/�=Z��	}�K	����m`y�a�t���76���|R�?�#ׄ��e�wUF&�u��$�b���}ؖ(�-.�t0���[��X�BT������VM�;�0�Lu�s_���H�p�6];2o�cs�mO��y�������\ƒ_��O��t��C�6�'�g� �󾀞<\ΰ�{�&3G���Ai�?V�v?�~pzT��0(��G^���Q
F���>�@K{���z���<Y��c�ĝ3͝ 1�*,�%�B�fc�%.��m��YvB=�H5^���!���1?W�Yf�z�&�c�lt��`S��W�Y}�_e#��lJ���n�+?LT����n;�&�K�6|�3�P ��A~w*���gE�.㒵h�lH���#=i}�G�b⁧�ls�yÆċ�3hN��ӯ`�I͂ )b�n/AZ`��đW���!h$��K�~��Y�iB' �u��p�?��O�׼�'׫~c�I��񓅟��Zx�d|e�=9 �"�RjQ�
^���� �0�!��.��$�����+%��C&e����ܺ$amP~���	Lq��rW#o���̣fB�>}�����YGq,=E��]}�uD <�MRlZ�$/�&�ԅ��"���Tr�/��A�G��Pu�^��mσ0�^-��{�;�2�����(��h�ΰ�S;*�k��:�R+)Y���(k���
���;��^+�2{F����SW����B�G���#t���E/�,�5����B�;,�
���Qv&�����]E���b�Ϛ�L�|��U��Q�qr��F��>����'x+|�l�#_��k�m4J�̰��"=E� ���̏�N�=TQn����5,l�ǥ�W�ᝧ1��}�������*���:��l��/
�t!nt9����Ї+ɾ/2>��oְ������d���+<=��ऒ�/��sB�kJt#�ַD�A��uk �W�D�k�O��I5����S��=M�>�����!{t��O���b�>��R�o|�a�6���ʯ�>�,7��\sd�L&�rP�r\��"F�%�L5<MT>7��sF6x��#	@}�s�YP�b�Dm��Z�0gh��"��Ƚ=�*����g"��R��6��rO�O�M�h�o��Q�^-x�E��!��ﭴ�I�Ts+�R-�%��vV��y�N��@c�������H}QG���+��_B��R��=�y'K�A���C��q���9ǳtwh�9"f�k�2z	�v������n�w�*�>U���� ^b��qɕV��ǄZokz(����@��H��ě�r�$h�5?i�V��s���ʵQ��y�5n���;=س��9�JL�FLy7E_�Ajn��s�����O*����*��_�ĳ�X�I���ԽFݱ\��a�ux-[
I�M�������T^��*�w$|PR�[�钗��l?�lAl%
`~U�i�D���س��T�$�=����^YI��I�]�=h��S���{�UW�嬙�g�e/�����������tl7T`�ꛦٮ�(}ݕL�䟞�u�%(�TH3�_x;��D.AC��y�Xh�������\'�}�D<&:[ϯ|U�83��v
�����#��B�~������O��ɧ��R�r�ImC� Y���GUDڇ���!l"��<�	}�R�YҩZ�H�0e�oM������ �����´D3;���ԸA�]�(�.j�Y�8�y�I�T��=OƟ�*�uX�M��C�0x8/����U}�]��y��k~˹|�}/�^N~cv�}�<uW$�L!���8]���]{Z`u�T����6� ���o�8�.�� ��*3ډ�����lT*�*���v�_G�)�q\�����q�}��X2"�,�Ѿ:�'�laN1�B�}�/!U�0��Qk�WJZ<#^g=V��()ۨշ�9�r�\z̷0<�pG�M��.����]�"V����BF�<ʆ�̃�6	�{�:���P�kᭂ$�V�"G���K'#���*|�Xf�>@Zi?`� $��6 �fp�Kg�. �z� (��#OsP-r�9|�����h5n��v��'l��)gq�ϖ�2�v<� �V79=L_��/יɵ����_hS� �����f���_�(�q�u߸������@S�hoo���K}<��I)�NcL��6�&�����a{�x/r�'���D�v\yT"��ifkj�Ã�YE�D�eR��:��[�D�Q��.��H�d��-�ڸ���fy�h"�qT���	-v��]�x����:|7V`���7G�d#�v]����L�@��ap�65�[e�JH��GY�y��&$ O���}�l�}��Ivik)_��1��.�e�>�������K3	�c�>N%�_�"��,c��G�{Og���=*Kk��[�nf*r R��W9O˄����(I8��v�1����)G3��I�$�g�p�*��ַl�w��~�N
��寓�<|m��v�϶Rn�(j��h���9�����m��B�Š>KYР�P���%������)���8�"qH�7��GkF��/N.:�R�k�О%^�M�2DW�y���"NcF3�7cy�R���W���T����+?��&�}��ُ�F^ fY�r��3�J-�สf�(�Kd-е�5���s�g�h/;G
q�����m�R� 
o�5�S绯_Р5^�#_q�x�b;`��[&����2H�9jG�>${ƅ�I¨��$=PM^�t�
���o�N�_�c�Vܼߙ�uiH'���+3�~�����I��Q���o{�x�B��:������a���hqN��Nv����q�^^�o]��b4��r12�5���`��ǡ�6u��h:.q����E�͘�t�~��!�Q��>+�CBً%��ҙrj!�����`q�ۚ/��+���;Z�\�҈�=Yk=T�(ُ�5D�4PO�=�by���0۽�j��#3G�����Y5��K��P�_���w\
T����R�lg�rv��q�9���_����Y�%3q�;/iD뇳��/� x�%_�c�H_��?s�C��]��Dv�5�N~� ����a�X�G�/(|�3t4X>�bH'QQfCZ�rx��I����v�����7=�6�֍��
�ԝ��TV��u3H�G7x"*)X�2���5qX���H�$�Rq������ɒ�����鍌�ʧ<SF7�f\vr��N�i��
�2���r��R"�y�u�m2�W?�~ct��j>�$�5�v��)̸�q�9�c�{!�"]�#��0�QV�V��5����ERr���$��qE%h&��y�~��i.O�OɏL1��GZ��\CAQH��;V�b1*�nd!!@��Z��<So��0��V!8݀�����BiW?.��d{3��^���o;ۈƎ9]��)�wR!nؙP��1����G�W��ݿ�o�UY�{�D����u���_�*j�m$�|,*�?�<KG�>ϸ���-*���L�`y���5�Ι�%� ��MLZɜ^�r�x/K���� #�>��1?�$�׶�s��Q�Y	%S�C���X�a�A�K��)�,�2*��$�'R'wV�t̺���z@>���9��\�x��������m�PP�6����@:x�w�mp XXg�L)��*�<6sB!�6��,EV0����:�<-��x=���̚���j��dx�0ka$̯��~ɮ��t6��H�r�Ⳅgb���]�e    s�]�� �?��~	���tDg�mR����8�6©2��v1>#f���,�� s�'�̀ٴaKE����^�!��!m^?b�=V(�A�[C7]z�5��JF0�[��/�j7�n����}2	*�a�'`Rֳ�D����F�+�2{�t�!h����^�r�%����K ��Կ�{~M ���V@�+xƃp���w��@#�i�0maZcf u*q-�4Z�snq(��05�H��&lt]���
J/�)tO�}[��r�9�pڎ��{�AQŬRnz�����$\3����T��b1�e�1�ChrǨ��i�P�x�rH˾������qڭc.T﫜%6�f
�ͻ2D��*��ߏ��f}��e�Fvj�d��E��m�h�}�7��/L���ARod4*={C�[<z�D��b���s^<��r�5t�����\<���9�x'�!u�FՆF'Ɂ�doT)�K������ry�sJ�~|�����=<-��@˒�����E��:�Pb��)����i�����fb3�����#�3����h��w�]'Y^����xctxM�D7�!�z|1�a#�G90=�ϖ;��r@�K{
�6��bØ�d�fo7+���_L��.}��l��Րl�-�����S���x��u}�?uK�,��u���<��u�>Lvf���:jA���hu���4����f��B68w8"�Q�BN>�ܻ?�;���ł.������̑<���B_'�CvO�����c��o�(ipw�����-m��I��3o� K`��a�Q�|�H&�1~	_���6�O�ʸJQ��i��%ۅ6/��Y�R���F���\C��c��0���T)�}s*ִ��N�Ysig��q�2���-�]!	Y��T��)��b�� �=�7tN� ���ظ������L�D���[�=p��<���M�0���r�?�<P�����T?Oo��ZGy��{J�|m\i�;��
�����v�e�+3p�c����ԡ����G&'��ه-J�x������cˣ�^�0XT;SD�A�6�6�Y9Z���8uߋ�
$��t9R<t��4��s�ܺ�ZV��b��uI��z�[r�%=��dbhh�نt9Z9=x�`��1�p�_q�á�y�L��#c�i_�l{�W�ʞ��q���T����/?�z��'$�O/����Bm�$�AJ���6S��I�~��=S'l�7q?�V��Q�elO�~R����t�W��CĠ{�ə2[iD�b~o��f�x����U</��$�Y��gu��p���~���b4��Ov�C�@e�7s�G�;��LE�2C���O)�x���`�<��K8{��$���:囱iY�-���[v�'%K5���M�����k�6�6����q�T�~�*_����b�E;��jf�$M����#/�NR0���o� e=�OZ�x�"?NGur�*}�6a��.��֪�ɯLt��i��4��;��I���~ȇ�����A�>�N�8�mWX�� @��)�{8L*'̡��\�'ގ�չ����U+������ۃ�m��|�)��}��kg�>���2�3D�����Þ��Z=�cug�|���W�p��:������JVc�c&J�w�}�R_O������(����ŕF�i<{��:D�Z�|���qtk�Q~ �e�;�.���2wv�e$t���+4}��i?��9�fT��6�_b�N���T��s[+��:o�JY��*�N ��f�K�AT�%�u
���F�T��uO��u��o(���CQ��6�n��	�9�9��\������]�:,����V�0Pn�#H%���>�*�����QA�^�:�
a�<ۜ�0��XM-jƟ�?�l+0�J�SW�[,���]UB�ѹ���G��!�NL� ��PCXp&Ш�ĕ��j0Q'z� ߏR����n�-JT�μ��}�Ϟ'�8��q�*&l�Oyb�o���X���R4���@d�-�j���C>�=Y���B_��v�+Nn�����ڍ�xLliYW�=��bZŲLk�'�"��CY_�˘7ܥ"J&:m٫Jz~��`��8�g�B۹���b����D��	�f<��� %�	]��C��F��
��^x��.+����P��
�E�yb�Iy��9|��?vl(&=�(�n���^���H��Y�����݋n����PWޔ�]�|/Ln�� 7a�v����N��Y缄1�[�V�=�l�Eh�޵_s��
�ұ��~��]�v�95�/��	�6��r�P�����H{
�2�E�Cn�Y�����Թ�_�h��ޤ�_A�B�_�zڗw�&~�������REu� l4ٿ�w��G��'��#���s=p��r�k4�D�)��%�K��a$N��*���Li��vxѧ?�q>�ےiќ_ �����r����I�>�	�d@�,����H������ݽ\���u��5�=���{+i4%:[Uc��y)���_n�Z\I��i���i���'�.��'�Tn���jo�֍��"�ۉ�~O�,�I��1w&9uU�'�wU�~�����S���h�u���u��I>��v<���?����a�J*ү�M�c�ɪV~IT�LZ;/Pnd��IO��b�o&�D�Sya���T����I��ix�({)��~��b����aY�3Kƺ�ӻd�U�O��X_&�Z������xäe7cNGd��\�-�{'
�n�1к@9KК��%Rʻ*N�SqAl�!�_,��PD���S����"��E�!���m#X3��pw�\�]�DG=���u"�A�x�1�þ�:Y;�!*�Z:3F�a3���*����*������E�ɔ)KD��s'�@#�<���r��gN�lb:a|��I�I���Ѹ���V�ҕh���Ԣo��ϼ�4:�s�8۽-c�h]̌����Ӡ�I�"�Yqz~E��U7'�q��9��|�����U�W�(bH�b�'�ًp$��H�b֬3S!W�fI[�ZW��ΥT��ZN�?=�}�x��,�vYO������((�����96-{��O������i���2�v��#����M�S��x�ǌ<ATj�/�r�5���~��z��jЊ�˟h�Aߝ�_�{���<��{>��v�g�g�>u<��u�i{Z2�U�}�\��9�Ya\�(���v��4���T�>�^y��[���h5�ڏma��)����*)���*���TJ�"[��j���BX�xI;�=���E+&q𢡄�V�%��0���Zv3�W�׽q�F�YͶ��պ[{����W�o��Ș}O���IF^�_�:1�t�A��tn\��z*�.���y����$���zn�}�Ūx�m�&ݚ�{[]��K�oE��O�$�qI�,������xew�о3�42�Pr��������e>M�R�tE1�G��ȶߪvf��U�tB=���#�@o�,���F��wf���'��"�sB�T!��i6�m��Gw�=xA�dK2��;P�dQ6����Ȁ�֜�Y��8h�������_���ޛ�Y���9��j����ϐ�b>�­@e�;���HF��T�������l��Ē��#E�1��I��s��Y����T�.��&z-2���5���\�8b/q�� k���	��������}��O���5q3�q�8�v+��+g���Н�H���� f
u�B��oa�� `-B"1��Z @i�}y��� ���b�G��O��]>�0f�I�DN��f���e}�r31�������6��:Q���yrDe|&���&�M0��r�ze��~���F���I��6w���y"�Ë/:>��&*6�Ǜ_��n���wD�|�ޝ[=�4���>Wޏ%��:�/=qoR���ʭ"�EV.��E׎�+d���LGmj�����%��^}P�9M��;|1�YϪq�4( ���y��o9w�=�xk�e��="#'��B���t�J�����=���(��Zn0=�=����U��y��ҼB�>٘�+�ܯ�9z�w�Z�%^�    ����x�@��h	
�U?�]�4�����7P�ݐ�h����(/}��	�`~�lJLb�9��5�g���˫�w�����ѡ�M�H��������J[g
�_���G`��B�������]<�U����-�����P��F�#Uw�K���=�S�9��Y�ԯRpk%�^����S7E��l�N:wN��m�L���of32�I�vkF�4z> ����HꕨL+��V���Y��т^3\Yq���}u���761g]�vE��S:�dAS�~��_�6��m�R@�M3��̣�W�ú7}�D[�^�鏛��&��a,3�V���>4���V�(`q��n��˄H3���T�>�e�zi�`^�N����sC���X&��_LU��ol���E�[���+�&�I=�����ie;}�>��=������:h��KҿH��:�������i�V����9�?G�̏aUfʋ�����&Tg����z��ʛMl �_�9��נfxi��#ٞo���ys���]�y��yo�p��3�s|�q�KoS���PN&��6���M�Ms�����������g�i	LD�(���)ĮaM��}m)~ ��h�z�y���8Ӄ�U�jːi��@�D���.��AwM{�㌇�������������c�y��y���a �a��! ���L.Dgc8_B�6V���r�v@\���>Ī;dzc3^�
T�M��䬗�__p�XR�
ʏ�R��T֯uE�D���:B�VS+���E�E~�ga�
X��}���-���:�CG=H�Lv�>[(^���qj�Ǒ1���%n�¼��IFGL��.��#û��802���Pԣ�=���nS5��U¦��aR�򡥱ߟ
���j�� A�j����9��ԵR�^�k��gm��k�� �9!O�X��3�ZX~	7� GJ�ɼ�Ά�ɚ�v�A��vc�������ysY[�N�r�X��FZ�^���~;Uf�RNCסr�F&5�8gg���Q^ݛAj3E�D\��f�)r ��h(�0쐰�ɚo(g/T�o�g���)��� �/~H^�M���M�ŧ`8U̧:��6~�?��9o4=��>(�֓�������,����.��:w�oI���7ڂ��z��>]G�]u��=�qwkf���E��8>��:e�}LD!�e�W��,m��W<vx��=4�9�#$v����oQ��0�Vn���NI��j}�݅�}W@���7�Z��AM���V+,��uO�L�%�����i��c[�G|I��xVHO	
��N�Q���A�)�a�����ÿ-%n/��L'e��?��^_1%�@�-{���V�/a~�Zl�QӵZ���|]��.�a:��T�hj�V����q�^�6���@���zTg~r���n~�wq���}xE��>ե�F<Y-8�9�"Q톭h����Ǽ#VGZ��Eo�������m�%���x�u�$�ʅ��]�c�jFx�_k�=M�K�g�ط����G01������Sg^	G�ğ*�����0E��Ғ�'1p��g� X��гF�tg@��譙Ջ�Fk3Q�����_[+���lq`nF��O�����-�5���R˴���o8�җ��z4�g!��M��m�偿�Pnp��u��"��W˂��	e��n9�E|�VA��vmJ�욘�G�(�}�	���t�@�)`v�\^�Cz��-���w�Ϗ3&�!��nFH����X���l�쟆N+�H����Û��gb]	�q<�ӻ����s}��h�-A��24���wW
ȕ� qA4������%��zńEa$+�m�]��	u�D�9���i��' A���؜��~d�����9Q�4we<.��ݘ�<����Q!ZZ/?-1p��
�1�©LD()~�B�<vJ�q# M���3��6�WE��mC�E'�wlk�'Ͼr�L���}o���G�=� �*��~���5t�)�{I-��D�b�5ș��'KD�Um�_�/l������m/���>��z#sJ=r#�D�T�l��������$���.m�2��*]��U�����Z��^�D��^���/��ߌ6��a|�;��/�̾�l���=�f@��J�S>�sџG�;^}	'��u(�=Y�O��j�����gX�J�n��_����o��c�*ӆP����sll�ʠ��@c%��K�wkEK/�>���&I�ג��\@V�>b	��]WÓ9|�G*�B�
�*X�۩���ݣ}u���#Ա��N����X.�d��釳q�����Jm��tiF����мzY��[����*���fЉ�F���?Ĺ����=y��v��7P6>�s	�Z]����K8��V����b|lJ�#��
��Q��``!�r��z1��z<a|�O�����S9�Y���E���z�)�#G���,���"K-ײ����e���B���_Ayyߺ��5Y��Zf�&E��n��]��?ǰ)Y�-f1�#M����x:�'����Ş=��hgܣs��M�gQ�C��R�8�iE>�=?�i"�;1y4�%�'�E�Uo���b ϫ��Q��|�8`�TcF!N��Cz_p�bS��+�ON����]; ���ֹ�v�Qd�❐��QO���_�0��a������A�4f[|��YQ������]�i�u�]�	�Y
	�A�k����K�8��G#oR�O�4�
����c�AcZ=��5��^f�͘9�h�6�������2�Qu�{�;�� �2�c�c��ʎG쿤E ��b����(�������p��ƈ�ɠ�ɪ�^&�����s�&_�������� |xQK����ٹRS�n�+�Gz�*��o6�*��f�*�������.gZ���|IS���wt�;!��h�jMd��hw�p��u�Y�x7��|��,w!CZ���Sl\S�{f��U���s}�O���9�"�pf'�*�Z�*�e{.�ֹv�v"_>���#|/Q�3H��2�_�W� &m/��֛�fc�|�����|��q�ot��	,{?A!�?�,���A6}ei=�|Y_k�p����5�e���|X]:=�Pk⦬}�;�0;�ǻ���g�hMx���;x,�t��
9��w��
�m�x8�M�f�o�u��-�Q�7�m��s���������e������
G\��7[Mq<6������%e ����Zz�f��{�'L t���;�Uwx�F4�l���ͼ6q�8_�����,q�B��3md��%df��ozo� z]����2[���\V�p�M9���3��5A(8�*k����Zw&�~��S"|Oo"Ǣ���y�$��)�N:Wa��@&��v��a�Ѭ���'DE�ك]\f����(�=��
��X�}z堜͹�- ~>�Dϣ���5�}X-��N%C�&�?lG��M�}�ڽ9�8!	��jI�8�!�����[�[����9P獵z��<�t�!���뽰�S��J;����f?����"L�Wʞ�dNP�M�d��|�Df�W���1H1�!O[�<ᶂ�[}F�oV�߫i!j���(�)o���:W�Є��BK��/��۹�D��᥊eѴA��F�C�tW�T��5����Ji�hc?Ъ�i�����{z vX��Ԝ�eI��}��
�ԝl=�:1��\��Ax�n�rg�uդ��^��~���
�
��=}=���&��hElKS����9@\��hy��Y�u��}H:�c��
�O?��Q�������-Ą�~�h�k=�BI_^Da��Y:�i����:S�h�xE�����O�$��sYT����j��Ј�Vu׊�,�jQ�ⲽ�W�e������K��e!��7����"|��;$�w�2���̕�P�R*��~ �^5��:��_��������V�a��(	�U�*:�V`TK�T�)_9e�{b�n>J��
D�7 �$��v5l �EE�1@��p���"3N���>����l{�z�E���7�̏2�<�Q��̏���%D�ٿf2��9�g��j�*�ɸ�8��!W�l1�`Z��K�    /���]lx$[�'�x�LC�m��`z�=R>����UYi�����j��
�z�g�Q|�ו�h�E�l�Z�v>��	{���r&5���7�T�@I�n�b��%��G�*6�����Ŭ�D�)"���o!��Q�Â���LD}D�Y�.t��!lZ�8z�b ���ӭw�Y}���Qb�6��ň�v1��H�r�r��r��pj��.��["P�C�.���3W+��È�JV��z�n] L��G��"]p�
X��t��b�
�t�]�V'q�=6:}t�_�����K�9fF���3b�m8�[8�q�s��2�>r]���^F��_�ſ�Z,��J�- �Z6�� !h����!��U[�9�7Ǽ=�Ѫ���a]���X.SZ���*<�J�pӭD�kx�3�q��iA���u�R+]�/>Y޴&�3�H<Cf� ���L��fI���@%�ѩ��ދ�C��_��W���ق �1��(�2�g���T4?_�C�41�`Yau����.9TF�n q���ǆv�U�	u�l1<��昌��ҔŌK��]�a!��u�3�fQ�H��,�2�L��dCm~MD����!Z|��Ɏ��Q��:�e-�ܤ�z>|�A�����.�Q	��f�Z~q����篁r(x
����Gɀr~2�%X��J��6b��Q�W#�s�"^��><�c�665F��(�5�y0I߷~�Ϲ�~��ۓ�f�{���?Zuӈw��j����We��Z+)�L5 �Z�;t�/�i~`����o����<uC��}r����^���;g�
Jfe�5: `��n��eu���Wz3�����
H�V�J��V�ٸ��#ig���&�d�+��3�^��8.( ɓ�=���ъ0"ˌw)��kc�ߍ5ߙ�������%�� �G�֝ۚAR`L"fU~��=�ʄZ����`�W�U��1�u�F�zw�Q�S�o°��H �f��˃�ͅ-��@EYJ����d{����Y�9d���!x7>2��^���ɷ��;�C	7d�r�����+%}n�5w:?�%�)K\��y�Z ��#��f��}BH���y3^W�;��w�`9���S|UM7����!\���"
�s�kr�����#�?����HHnt����A,��}.l����?ވݻ*�~Ox�_�(�4�(��9;��茚,��a�x�"1�[5p� Ѷ? ��M�d�t %�E�o�+z�ʥWa��o�`m��X����?����	�ɱ���,bW?c�v7�����ܩ�Ml�;,xfh�V�o��O}��y���[�אA����G]���b��Ә/��e���Y�Ƒ��Gm&���%3J��yB�N#FaRQoC.@�ѝ�BH���n��{v�߮"�7�6G�c�����T�ۃ5F����vH��]�6�cx�X����tXl�c��(��I��	&Ħ�%7�q����f��v�\f��$�zU;x@�{R	�Ox[��E�y~��M�`���-j��i�Zx�r��uĂݏ�ͯ����փ��S�}Wc�>����9}���<F�S�4���Z0�Vl���z�"�j�g�����	Z	eq�r�؄,/G�5?��o�>^����D4��"�l�_��믷 �'�"�	��"��(���L�[UB����i�U�ߦ���$��o)TY��Р3ׂ0�o�*=��2킘�E���;#Di;�e�M#� ��X�)��j\Q��_�&�?�����l�^VV�d�.��Q���ښ�������Нə(���FP��6#��#�8�+���ڵE��\{��a&+>�."��b�ǋfp��JϢQ��a/�rZVW�h �:���/:��$��/���ퟩ��[L�/�����S�9���g�8NaUx���������k��2m}�?3�%�RZ�,������7dv����(%J�n���SSY�{��8}ȿm}��)M9ؕ_�H+�O��`�ý*z��%�b�pg/ŔV��V�@X�����z_H�Y�I�Ϗ�ߩ��@���U��^�A� X���CU�0���|#�]� V{�5��).㡵���<ܽfs˧�����w�%���_�v}FH3tK�^�!�^��n<����Ƶ]l��f�W8�m����Jz���71���g��"Z'`��V��z��?����Ƽ���\�`@��h?�<aF�/�s�M+���	���iD��L��c�e#[��G�GS�t����{��V�\�3�I[Իf,˶�'�Ro�yTqx��b��Y��3a�q�Hg�^ ۿ�UΌ6g痎k�+\���܈���ߙ��_I�m�"����?M�o���A���m�F��)"��M�S��`rA��5�
�D����>��W7���ۀJ�N�<�%C���kE�݌h�U��z6۠�~���cU��!�!.�h|(�?6�����Ň�������5^���<_M7Vs#O�[��_j�5�[cA��4��8�;h��{�>!���F�2�=V��Xo�)lu�~d������(�3 ���v�H�'��$]S�s C�Gv��F��{vј��L�8�c��Y	���v(�oH�ˡi6#��0(�[wf��vQ�qZ��A������2)/�Y�:�>|��??���&<��Q� �E۪�7����m�5ސT�".A�̖C�|��CZH�[�+�Y���U7	��t/m���#��!�h3���4h��쪝����b������[������*�Y�<�z&M��Z�
I�u��-�OT�~g_},�������O��5��I�6c�^7����â��N����g4`)�j����c��c�,�7�z?y�������WR�~9\xtη�q���zfϝq���3I̭MjflW���E�K��x����4z��J�u
D7�l���^U.+�o�T᠋���7p����`J׌0sb��T�yy�Y��9�:��אLW���MŖ_z���?�|�\�p5�p�����k�į�S����z0f<:G~4J���{(����M��[�(\���U!-����M��dY<��EN: &	���B�3�D�� U��\��~���W��hа	����f������0�6(`�m��J�f٠7Bz�.Kh!@��aӟ����;V��^����/[qk��3=`|�3b9v��R��N&���+L�3�֚����+���~[��͛�T{ț�(�����6�����)��&����dn�� �5����t}��s=د�΃!}���[���C��4�,�F�U�<w�ɴ��J�oQAI��ʊ����r[i���2M������_�
5�a���ڇ��g�%N�hc�[#B�:�D��V��P�����aߥIci=�ct1A�Cx��+�m��{��3��B��Ӽ��' f8M9hx���LtƆ*�¹�c��k�v(�<�7Mr@2�'�u�NvwZKZ�!�aQ@T�Y�)ޛ��gX�uMxS�'xo��t/nReP,��7�2�INZ��l���8�o�:��\����3�k������,Y�����G}Ȇh����ŘndH�M�Z3�b�2��UE˘����:��=��xg���2��u�m�q�e�Y�:[�2Z���l"Hu"	�.�\(�%8HO^���(�];W��KF���o��tH��h�;��e%������X��n���ow���������(rȇ�T�lg����
�iv;�TR�N���`����XpR`�J�c��-'e��O�ϭs~�=FL��`�9�[xԕ�����3庣ϱ�h�>����
cn����U�1�5�V�+'���od��ͻa.j����p�tj@���,�=v5w=jCs8����
sD����k^��%�{�0��u�c�jփ"l�RR�Q�	ie|4-��9�v<]'qD#��fԳ�y�?���h1[����h�o��F����Gs6�X���º1�..��ã;	h��lp×��C" ��v�?���3�j}Ɯ|�|Z�&��#�.��gщ��yR�� �����Ic�@Tv%����D���    i=��'�#!�{�1�p6�P��:�u��`E�7|�~t흈~��%wt~�/Jvu��:k�mV����Hu�Ԃ�c���8��6��+������t�˦,4X:{Y�y�!3G�ݓTCjX_^J|�zAL��Le�ݮ�a��rΙa�i8��Q����V��¹H�����>��{����/z��Y�,qҋJQ
��p���=��!Cl����պ���Tw�1���d>�ځ��ɧ�������Nɑ ��g\��}��d�&Z8}>�ՆQi#T���.�/2j2T��JC#��13yc�@3�WmF_��W���	 ��+�7�	�7��g�1�ў�M��8���ə��r�Ak�W�O9�x���^Y��#�
��ێ��D"�D�%9��F~o�I��ɨ���*j�d�{e\ϻ�RNXt��xPP�6�(��+��l�8w�K^���δ���z�g&;����a�Ѹ緾�]�E#�^��/��v+�U�0�p���b��軇-���V�J�c����u���������f�\_ߌ,y�q�1Ҟ����ZV������Y���7%�N3�5*Ge�K�ǌ��;4ol}/���Ӟ�3�j���Ɠ�S�V��%X�]����Xi��׏�2���9���8 ��vH��{zWz���sI�̆_��Ss�� ]�j�|W~vi�d���M�Է���<_�ǳ�E�jZ��Տ��޿��,�4P��-�0�~�s�y��
�x�s/�*�<��/g>B�8D��Co���q�V4+u���O�C5���� ���L9�o¨��VD���s*����ӣ�yG?&j����U��<����Bi]�����>�.}���'H���a�=�f���B������1 V6�}&���+��Y���Ԉ����4�������Jb�<2�m�e�����⪽�C���O�t��4�ܥ�|�[�O��tfӮm�����Z����1��/ٶ�DY�#��F��7�4�]��_��?8��Qnc�W�p���:���5a΋�s�]�Ff�}��
�E#\QN}f��W�o�o}��竩S P��?>c�V�o�	�?��<�q�EDg�kτɣ�~v��\��(,� ҹ������k*�:0&iqV� �1�V/蠎K�3�3]����X��Z�ŪV.wur Ϙ����� ��N�;;�}�v0�ԏi�߼>�%�eFT��cΦ+Ct�7��P� ��"f>��9��"��p��V^���Gn䄏��<�&mN�r�b���F����x}��w�R�V]kl�h/x)c�p�t�2Ĕ�hP�)��-Ƙ���В:i;��]v*�K�~
E���ޘ����ۄ��o�Qi�K7��#��*uD��e��l��M�węP����k�_R0z>լ��UوnCf��ݠRL�k���_�ۄ����3s%�OhKS> ������7��s,�ɼ�n�ʿ�-e/踀��Iŏ�������a�<ADc*P���|Ge����Yp�6����&I���Z'Pf,T;7E��4��W���fv5�#z�>���8fx���g��G��������P�Yʧ���6&�Ɏk/sl�2C��/��\ku��q�A�Q{�8z�(�B�u�=���7��~�8� 1u��A"kNі���,iB�����:}�K�.��.J?J^vz+���n��FD�� b$�s��6�ɿ9�m$k�Z��V�.0Y�>�j�&3�n��t��JQ-ɋ�M\`���O���b��	Qе_N<5Dt2�����t|��)?]�����<6WTr=������l��lII�}�U��B��s�0__,gCi��p�z��E[������,Fhk\�ص4Zs5�Xp#�B�ꈰ�yr[�N���̯b���˅�K�.�/W4Ǭs�2a�b� ��)�c��� �^��T�uw���D�����7A�S�����/�tg�t���ݘ볘���������vPf'Uo��E�jU�e��b᧑�팺��h+Q��0cm��T�i�{�4!7�u��$��Bv:�����t����q��ۣ$�$u�>%oM�-�HK�~p;8�dj���껇�9��!s�~G�z����$�_�VH�vKEF�޺,=�|�x����UB4|����_��TϬ�Bz��Bu�Dy�$u=d�o���G�Y����$��Ne��{�3��'sbO�#�;�/�U�η���Eql/�@Kv��+P�t�yT��6�N�S�Y�j��h���i���3Л�<R��Vө����ǐ9�s�Rd�"yz�S�m�#��.���,͇�[mHc�f[w[HY5��X�Kh$?�~u}��oC:�|���X�N�{�f�^|{�R(C��JX^R"�K{�0?�[/Zi�'�h\���Z�c3�"ǔ�(����9W4�O������-�܀�p�oϔu�L�^��'��F����k�g��|�xG���O�$�����a�zs��X̨��^f{�<@n�����~��FݙkֆzUY�3rG�_���j@�,NH���7���҃<�E��S̮k���	�PS� ���&ǧo}�fB���T�PTU�Tryv]�:�����)�M�d p~Uؑ��
Y��d���y9|���	���~N�t$�^��7�Gvk�E�"��Q�wЋ[~��x�*����d�	��C9{#������o��e���}�Q���͡��12�@R������yܛ^��W����'�_�>t��3��C���L}m���8�(�>���kNp��z�iXs3~.�ժ.����C�p` =�W���H���vU��A�6���ތ��b�;�+����:6,$��EcB[_4y���S&d�cv!�]T� L4+/g�G��-���f	ۀ>8~zb�N��dW<�0E��>� �1j�3�8?� ��7h8�\Y���f�	�S��{A����
���(��ؾY�ㄯ�[��#Đ}����UF&��?��@��[%Oߛ��z?���/��["�&b�����_�#q�G�$�ϤN6�{6�)�F
=�&���Ϣ1#>��ia~*����Z��3؜�z����
�	وC^�h�G�W�*��H�ڿ��͌H.� C����A�׷��y��(��#!�5��������3ӏ����'��q�#���U�h�5t�(#���,f.��nd�-!�H?�Mh���)0���BI]/L�34�����9��7�v���6`?��t�a�Č$�ؐW,��o1h��޽ŰϤ�Y#=��k;ԍ.��D)d! ��������d9����Ȏ3���A��il�xn�e��w#��v�h���� �B�k}��V�	��X�A����?R�H��J�fKsrħ�.� ��H;�yF�<0fj6H&��E�c����㙨u96l6X1��&r�ŉ���q��N��(��ޝ�+���'�|f<~s���s�a�" ��S6X�i��v6S�+��H?Gw#�U�f��}�HZt2�*)�~���h��͊)���1$����
z����ū�`^�I�5ˮ���3����1�Z���5�6�<J�E��}�y��h�vi𞶔~�Yp�8���p�2�G�*�R��0F��a��F��t[Z�_.�� J�{Jd�#R���}P.�����O{�b�%�_�O���XubW�k���qw8[���6�'���jM����k���6G(�_���W>:�yY.�b�J �j�.�Ei=������7�@����.J��Ӎ�av�&���Ϯ�.R{/�]a���\��¦��~V�i��f�Ƅ�����X=d��:������Eg�YCN�^��}tH5Y	�4����R���6&�t���O�.�6�^�_x�V�6����tx/`��o�d�D1W�:x�ce�'��G��>��3�e�ҩ?oK�1�by�p�	�|���<я�J�/��,$LT��4�lre���ʣQ�-j&'e�ڬ�/�O���^���>��Q[��r�*����бHҙ΅"Q��l�fd\S\��^�Ϳ�BS�	'iV�{���<#��'� n  ��.�	�[�ƃv�n�O�nm	�F����h�,
$�|tL=&�7dԆ1������pF�|T�2m��&Mާe}ط��7|�0�D6��E�u�TT�?��zNb7����C��5/�o;�jx�=;�Q/}Nͨ�{��(3Q�ĎC�7[�{�,�	L��~C,�]�>2Hb.C���@T^���*��5XX��;M�/��hk�z�������W[�H�~E���n�@��l����l����h�$�8M�*����B"��RD̓���$p�n���M՝~Z1�C�����l���?��r�R�(8�=n��5Kt�ޢ�~K�UR�"�ڂk��u
'����yu�E���pīiGɍE������13���[Äi����M	��(�����k�e�tR[d\�@�AS�kCx�#�X����N�(d�]8�Š�oZi42�D�u���7Ń�c&�~���̯4�_(�~����b���RB�k���`��s���X��-�����;�)��O;�?a_�r��کS{}	j��
.�T��y�����b$I���q�
�cD�T�&�ͅ���[:� ���C�\j�6N*�P�	r�l���YҺ�	�e8ۋ���86ip4%<�y�u��Ԃ�R�`D��)#�6�<�zYIT��R�
-}�`�*_�����S��آ$[�<ۼ':�j�Wi8��Mx#}TI.�2�0��[���Ni���	u�qN4�,x�� [Y���~�`�s�0Bg{��RyP�Mc�'�g�+�3w`|z&>�U��-ƍa����Y�Y�qĴ[�I���T��0�!6f�ڠ��I�����l�8\i�u)�ܥ��N*k��39v���ڦ���0z��4|E�䃙��I�9��9��Ͽ��?����?���_�L@�      �   �   x����j�0D���=��k-�=����$����h����;�/����c�f��pޟ.6.G[�>�����|[�����������lɍ���LuB��$tn�����J�ѻa�z��I�I�0Q/��0I����^E�i��HdAa䝦0�)�(Ja��(8H��r�#w���P�h�%��?io2����l(�F/8h Q��+�JpP��:�
�c
� +��UA�dQ£5�?�W�      �   �  x���Ms� ���ܜL;���h3=����Hr:>u��#2%���4��A��x����uZ5�Ц@��~헱����2l?pt��mZ���g4����b�D��0(f��]�8#�	�B��U��g��+X�)��]�%��z�Y��&��N"F��~2BI�(�E�4��nl�l��	b}HY��Uj�M�_R��0�sܧd��E����l���8K��5j�0�0��k��h��L��������W�(V~���
��
��4h�w�FC��D$N��3w:�t���6L���k�����<�RR��EG��I���ж|�$i�8�(a\Y� Y�ק �#.1mO<0i �Lı-��&�(�_õ+�e;�&�z��^�'��wı�Q�(�<��zD5�#�8�rB��4;oCB*-�	�m���^<����zS��&�V�+�`z�3'��0L>�!h_�n $�D�rg�ި��EvĳB_ERV��-���R�p�����SZY�����Tj5�*�9A8+��6��M��6^x5�8�5k��td�S��VL��U�:LĠx��0̭w�2�R�?f�̃M��j)��tZ��|D%�G1���K.;!��s��e�����T�^�P��N�}�2q��ͿN^W��f.㵳�
��T��ۺ>����.���M�C]%��~�/�{      Y   
   x���          �   E  x����J�P��}�"K������E�`�[A	%�E��������q3sfn2��ۗC7�����qZ>�_���|Y���|���ǧ�����w���>l�?�$�(�b��"V(�b��^�Q6���b��Mw29���q/�k��rvEnĮ���c�x}��o���59\_
켯x����u�rx����T�pù�A�F9�{SSp9���/j�C�����^Z��=W9~^���y�?oE�59��%��?��_�xΊ/O�C���}/j���C�s/�o�|y��G_�!���8��q�5��k1���j��f��߇x      �   z   x���v
Q���W((M��L�+-N-�/�,HUs�	uV�0�QPw�U�Q0Դ��$F�P�#iZ��Z��I�a��B�S�'Ҵ��<���B�&s��`R4Y@59��������� H3��     