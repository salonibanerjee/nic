PGDMP     ,    ,                x            NIC2    12.2    12.2 �    j           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            k           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            l           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            m           1262    16586    NIC2    DATABASE     �   CREATE DATABASE "NIC2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "NIC2";
                postgres    false                       1255    16594    bytea_import(text)    FUNCTION     �  CREATE FUNCTION public.bytea_import(p_path text, OUT p_result bytea) RETURNS bytea
    LANGUAGE plpgsql
    AS $$
declare
  l_oid oid;
  r record;
begin
  p_result := '';
  select lo_import(p_path) into l_oid;
  for r in ( select data 
             from pg_largeobject 
             where loid = l_oid 
             order by pageno ) loop
    p_result = p_result || r.data;
  end loop;
  perform lo_unlink(l_oid);
end;$$;
 D   DROP FUNCTION public.bytea_import(p_path text, OUT p_result bytea);
       public          postgres    false            �            1259    16714    ANAND    TABLE     h  CREATE TABLE public."ANAND" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_SHGs_formed_in_the_district" numeric(10,0) NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."ANAND";
       public         heap    postgres    false                       1259    16851    ANAND_backup    TABLE     U  CREATE TABLE public."ANAND_backup" (
    id integer NOT NULL,
    session character varying NOT NULL,
    "Total_No_of_SHGs_formed_in_the_district" numeric NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric NOT NULL,
    "user" character varying NOT NULL,
    tstamp character varying NOT NULL,
    ip character varying NOT NULL
);
 "   DROP TABLE public."ANAND_backup";
       public         heap    postgres    false                       1259    16849    ANAND_backup_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ANAND_backup_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ANAND_backup_id_seq";
       public          postgres    false    273            n           0    0    ANAND_backup_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ANAND_backup_id_seq" OWNED BY public."ANAND_backup".id;
          public          postgres    false    272            �            1259    16717    AWCC    TABLE     �  CREATE TABLE public."AWCC" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_ICDS_Cenetres_devoid_of_own_building" numeric(10,0) NOT NULL,
    "No_of_new_ICDS_building_constructed" numeric(10,0) NOT NULL,
    "No_of_ICDS_Centres_running_in_open_space" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."AWCC";
       public         heap    postgres    false            �            1259    16720    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    241            o           0    0    AWCC_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public."AWCC".id;
          public          postgres    false    242            �            1259    16595 	   BAITARANI    TABLE       CREATE TABLE public."BAITARANI" (
    "No_of_burning_ghats_taken_up" numeric(10,0) NOT NULL,
    "Completed_till_date" date NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."BAITARANI";
       public         heap    postgres    false            �            1259    16598    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    204            p           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public."BAITARANI".id;
          public          postgres    false    205            �            1259    16722    DOC    TABLE     `  CREATE TABLE public."DOC" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_poultry" numeric(10,0) NOT NULL,
    "No_of_poultry_actually_distributed" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."DOC";
       public         heap    postgres    false            �            1259    16725    DOG    TABLE     �  CREATE TABLE public."DOG" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_goats" numeric(10,0) NOT NULL,
    "No_of_goats_actually_distributed" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_selected" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_approved" character varying(10) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."DOG";
       public         heap    postgres    false            �            1259    16728 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    244            q           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public."DOG".id;
          public          postgres    false    245            �            1259    16730    DOPTUHD    TABLE       CREATE TABLE public."DOPTUHD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_Power_tiller_distributed" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."DOPTUHD";
       public         heap    postgres    false            �            1259    16733    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    246            r           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public."DOPTUHD".id;
          public          postgres    false    247            �            1259    16600 
   ENROLLMENT    TABLE     H  CREATE TABLE public."ENROLLMENT" (
    "Category " numeric(12,0) NOT NULL,
    "Gross_Enrolment_Ratio" numeric(10,0) NOT NULL,
    "Net_Enrolment_Ratio" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
     DROP TABLE public."ENROLLMENT";
       public         heap    postgres    false            �            1259    16603    ENROLLMENTR_id_seq    SEQUENCE     }   CREATE SEQUENCE public."ENROLLMENTR_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."ENROLLMENTR_id_seq";
       public          postgres    false    206            s           0    0    ENROLLMENTR_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."ENROLLMENTR_id_seq" OWNED BY public."ENROLLMENT".id;
          public          postgres    false    207            �            1259    16605    FOODPRO    TABLE     J  CREATE TABLE public."FOODPRO" (
    "Session" character varying(4) NOT NULL,
    "Status_of_pocurement" numeric(10,0) NOT NULL,
    "Target_of_pocurement" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."FOODPRO";
       public         heap    postgres    false            �            1259    16608    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    208            t           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public."FOODPRO".id;
          public          postgres    false    209            �            1259    16610 	   GITANJALI    TABLE     k  CREATE TABLE public."GITANJALI" (
    "No_of_case_sanctioned_under_Gitanjali" numeric(10,0) NOT NULL,
    "Date_of_Inception" date NOT NULL,
    "No_of_houses_constructed_under_Gitanjali" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."GITANJALI";
       public         heap    postgres    false            �            1259    16613    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    210            u           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public."GITANJALI".id;
          public          postgres    false    211            �            1259    16735 
   IMMUNISATI    TABLE        CREATE TABLE public."IMMUNISATI" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Per_of_Fully_immunised_child" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
     DROP TABLE public."IMMUNISATI";
       public         heap    postgres    false            �            1259    16738    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    248            v           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public."IMMUNISATI".id;
          public          postgres    false    249            �            1259    16740    INFANTD    TABLE       CREATE TABLE public."INFANTD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_Infant_Death" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."INFANTD";
       public         heap    postgres    false            �            1259    16743    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    250            w           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public."INFANTD".id;
          public          postgres    false    251            �            1259    16615 
   INSPECTION    TABLE     >  CREATE TABLE public."INSPECTION" (
    "No_of_homes_inspected_by_Senior_Officers" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL,
    "Degisnation_of_officers" character varying(5) NOT NULL
);
     DROP TABLE public."INSPECTION";
       public         heap    postgres    false            �            1259    16618    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    212            x           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public."INSPECTION".id;
          public          postgres    false    213            �            1259    16745    INSTDEL    TABLE       CREATE TABLE public."INSTDEL" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Per_of_Institutional_Delivery" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."INSTDEL";
       public         heap    postgres    false            �            1259    16748    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    252            y           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public."INSTDEL".id;
          public          postgres    false    253            �            1259    16620    JALDJALB    TABLE     p  CREATE TABLE public."JALDJALB" (
    "Date_of_Inspection" date NOT NULL,
    "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo" numeric(10,0) NOT NULL,
    "No_of_ponds_fish_production_started" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(10) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."JALDJALB";
       public         heap    postgres    false            �            1259    16623    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    214            z           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public."JALDJALB".id;
          public          postgres    false    215            �            1259    16750    KANYAS    TABLE     u  CREATE TABLE public."KANYAS" (
    id bigint NOT NULL,
    session character varying NOT NULL,
    "No_of_K-1_cases_application_received" numeric(10,0) NOT NULL,
    "No_of_K-1_cases_application_sanctioned" numeric(10,0) NOT NULL,
    "No_of_K-1_cases_application_disbursed" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_received" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_sanctioned" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_disbursed" numeric(10,0) NOT NULL,
    "user" character varying(4) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."KANYAS";
       public         heap    postgres    false            �            1259    16756    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    254            {           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public."KANYAS".id;
          public          postgres    false    255            �            1259    16625 
   KARMATIRTH    TABLE     �  CREATE TABLE public."KARMATIRTH" (
    "No_of_Karmatirtha_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_started" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_completed" numeric(10,0) NOT NULL,
    "No_of_Karmatirth_operationalised" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
     DROP TABLE public."KARMATIRTH";
       public         heap    postgres    false            �            1259    16628    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    216            |           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public."KARMATIRTH".id;
          public          postgres    false    217                        1259    16758    KCC    TABLE     {  CREATE TABLE public."KCC" (
    id bigint NOT NULL,
    "No_of_agricultrural_families_in_the_district" numeric(10,0) NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."KCC";
       public         heap    postgres    false                       1259    16840 
   KCC_backup    TABLE     e  CREATE TABLE public."KCC_backup" (
    id integer NOT NULL,
    "No_of_agricultrural_families_in_the_district" numeric NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric NOT NULL,
    kcc_coverage_percentage numeric NOT NULL,
    "user" character varying NOT NULL,
    tstamp character varying NOT NULL,
    ip character varying NOT NULL
);
     DROP TABLE public."KCC_backup";
       public         heap    postgres    false                       1259    16838    KCC_backup_id_seq    SEQUENCE     �   CREATE SEQUENCE public."KCC_backup_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."KCC_backup_id_seq";
       public          postgres    false    271            }           0    0    KCC_backup_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."KCC_backup_id_seq" OWNED BY public."KCC_backup".id;
          public          postgres    false    270                       1259    16761 
   KCC_id_seq    SEQUENCE     u   CREATE SEQUENCE public."KCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."KCC_id_seq";
       public          postgres    false    256            ~           0    0 
   KCC_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."KCC_id_seq" OWNED BY public."KCC".id;
          public          postgres    false    257                       1259    16763    KishanM    TABLE     _  CREATE TABLE public."KishanM" (
    id bigint NOT NULL,
    "No_of_Kishan_Mandis_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Kishan_Mandis_operational" numeric(10,0) NOT NULL,
    "Operationality" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."KishanM";
       public         heap    postgres    false            �            1259    16587    LANDPP    TABLE     )  CREATE TABLE public."LANDPP" (
    "No_of_land_permission_pending" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp timestamp with time zone NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL,
    "PROJECTS_NAME" character varying(12) NOT NULL
);
    DROP TABLE public."LANDPP";
       public         heap    postgres    false            �            1259    16590    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    202                       0    0    LANDPP_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public."LANDPP".id;
          public          postgres    false    203                       1259    16766 	   MATERNALD    TABLE       CREATE TABLE public."MATERNALD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_Maternal_Death" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."MATERNALD";
       public         heap    postgres    false                       1259    16769    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    259            �           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public."MATERNALD".id;
          public          postgres    false    260                       1259    16771    MCI    TABLE       CREATE TABLE public."MCI" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Percentage_of_malnourished_child" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."MCI";
       public         heap    postgres    false                       1259    16774 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    261            �           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public."MCI".id;
          public          postgres    false    262                       1259    16776    MGNREGS    TABLE     �  CREATE TABLE public."MGNREGS" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_Person_days_generated_under_MGNREGS" numeric(10,0) NOT NULL,
    "Average_No_of_Persondays_generated_per_household" numeric(10,0) NOT NULL,
    "Expenditure_of_the_session" numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."MGNREGS";
       public         heap    postgres    false            �            1259    16630 	   MINORITYS    TABLE     �  CREATE TABLE public."MINORITYS" (
    session character varying(4) NOT NULL,
    "Target_for_Scholarship_distribution_Aikyashree" numeric(10,0) NOT NULL,
    "No_of_students_distributed_scholarship" numeric(10,0) NOT NULL,
    "No_of_Aaplication_uploaded_under_Aikyashree_scholarship" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."MINORITYS";
       public         heap    postgres    false            �            1259    16633    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    218            �           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public."MINORITYS".id;
          public          postgres    false    219                       1259    16779    POE    TABLE     ,  CREATE TABLE public."POE" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target" numeric(10,0) NOT NULL,
    "Production" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."POE";
       public         heap    postgres    false            	           1259    16782 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    264            �           0    0 
   POE_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."POE_id_seq" OWNED BY public."POE".id;
          public          postgres    false    265            �            1259    16635    SABOOJS    TABLE     \  CREATE TABLE public."SABOOJS" (
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_cycles" numeric(10,0) NOT NULL,
    "Cycle_distributed_till_date" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."SABOOJS";
       public         heap    postgres    false            �            1259    16638 
   SABOOJSHRE    TABLE     m  CREATE TABLE public."SABOOJSHRE" (
    "No_of_children_born_since_inception_of_the_project_in_the_dist" numeric(10,0) NOT NULL,
    "No_of_tree_sapling_handed_over_to_the_new_born_children" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
     DROP TABLE public."SABOOJSHRE";
       public         heap    postgres    false            �            1259    16641    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    221            �           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public."SABOOJSHRE".id;
          public          postgres    false    222            �            1259    16643    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    220            �           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public."SABOOJS".id;
          public          postgres    false    223            �            1259    16645 
   SAFEDSAVEL    TABLE     p  CREATE TABLE public."SAFEDSAVEL" (
    session character varying(4) NOT NULL,
    "No_of_accidents" numeric(10,0) NOT NULL,
    "No_of_death" numeric(10,0) NOT NULL,
    "No_of_insured_person" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL
);
     DROP TABLE public."SAFEDSAVEL";
       public         heap    postgres    false            �            1259    16648    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    224            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public."SAFEDSAVEL".id;
          public          postgres    false    225            �            1259    16650 	   SAMABYTHI    TABLE     %  CREATE TABLE public."SAMABYTHI" (
    "No_of_beneficiaries_provided_benefit_till_date" numeric(10,0) NOT NULL,
    "Till_date" date NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."SAMABYTHI";
       public         heap    postgres    false            �            1259    16653    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    226            �           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public."SAMABYTHI".id;
          public          postgres    false    227            �            1259    16655    SIKSHAS    TABLE     �  CREATE TABLE public."SIKSHAS" (
    session character varying(4) NOT NULL,
    "Targetted_No_Of_SC/ST_Student_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Students_getting_benefit_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Applications_uploaded_under_Sikshashree" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."SIKSHAS";
       public         heap    postgres    false            �            1259    16658    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    228            �           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public."SIKSHAS".id;
          public          postgres    false    229            �            1259    16660    SVSKP    TABLE     e  CREATE TABLE public."SVSKP" (
    session character varying(4) NOT NULL,
    "No_of_project_Sponsored_under_SVSKP" numeric(10,0) NOT NULL,
    "No_of_project_sanctioned_under_SVSKP" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."SVSKP";
       public         heap    postgres    false            �            1259    16663    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    230            �           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public."SVSKP".id;
          public          postgres    false    231            �            1259    16665    YUBAS    TABLE     `  CREATE TABLE public."YUBAS" (
    "No_of_unemployed_Youth_registered_under_Yubashree" numeric(10,0) NOT NULL,
    "No_of_unemployed_registered_Youth_getting_monthly_assistance" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."YUBAS";
       public         heap    postgres    false            �            1259    16668    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    232            �           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public."YUBAS".id;
          public          postgres    false    233            
           1259    16784    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    240            �           0    0    anand_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.anand_id_seq OWNED BY public."ANAND".id;
          public          postgres    false    266            �            1259    16670    attri_table    TABLE     �   CREATE TABLE public.attri_table (
    id bigint NOT NULL,
    id_scheme numeric NOT NULL,
    a_name character varying(100) NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.attri_table;
       public         heap    postgres    false            �            1259    16676    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    234            �           0    0    att_table_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.attri_table.id;
          public          postgres    false    235                       1259    16786 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    243            �           0    0 
   doc_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.doc_id_seq OWNED BY public."DOC".id;
          public          postgres    false    267                       1259    16788    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    258            �           0    0    kishanm_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public."KishanM".id;
          public          postgres    false    268            �            1259    16678    login    TABLE     �   CREATE TABLE public.login (
    id bigint NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);
    DROP TABLE public.login;
       public         heap    postgres    false            �            1259    16681    login_id_seq    SEQUENCE     u   CREATE SEQUENCE public.login_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.login_id_seq;
       public          postgres    false    236            �           0    0    login_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.login_id_seq OWNED BY public.login.id;
          public          postgres    false    237                       1259    16790    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    263            �           0    0    mgnres_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public."MGNREGS".id;
          public          postgres    false    269            �            1259    16683    scheme_table    TABLE     �   CREATE TABLE public.scheme_table (
    id bigint NOT NULL,
    s_name character varying(10) NOT NULL,
    name character varying(50) NOT NULL
);
     DROP TABLE public.scheme_table;
       public         heap    postgres    false            �            1259    16686    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    238            �           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.scheme_table.id;
          public          postgres    false    239            i           2604    16792    ANAND id    DEFAULT     f   ALTER TABLE ONLY public."ANAND" ALTER COLUMN id SET DEFAULT nextval('public.anand_id_seq'::regclass);
 9   ALTER TABLE public."ANAND" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    240            y           2604    16854    ANAND_backup id    DEFAULT     v   ALTER TABLE ONLY public."ANAND_backup" ALTER COLUMN id SET DEFAULT nextval('public."ANAND_backup_id_seq"'::regclass);
 @   ALTER TABLE public."ANAND_backup" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273            j           2604    16793    AWCC id    DEFAULT     f   ALTER TABLE ONLY public."AWCC" ALTER COLUMN id SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 8   ALTER TABLE public."AWCC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            W           2604    16688    BAITARANI id    DEFAULT     p   ALTER TABLE ONLY public."BAITARANI" ALTER COLUMN id SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 =   ALTER TABLE public."BAITARANI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            k           2604    16794    DOC id    DEFAULT     b   ALTER TABLE ONLY public."DOC" ALTER COLUMN id SET DEFAULT nextval('public.doc_id_seq'::regclass);
 7   ALTER TABLE public."DOC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    243            l           2604    16795    DOG id    DEFAULT     d   ALTER TABLE ONLY public."DOG" ALTER COLUMN id SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 7   ALTER TABLE public."DOG" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            m           2604    16796 
   DOPTUHD id    DEFAULT     l   ALTER TABLE ONLY public."DOPTUHD" ALTER COLUMN id SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 ;   ALTER TABLE public."DOPTUHD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            X           2604    16689    ENROLLMENT id    DEFAULT     s   ALTER TABLE ONLY public."ENROLLMENT" ALTER COLUMN id SET DEFAULT nextval('public."ENROLLMENTR_id_seq"'::regclass);
 >   ALTER TABLE public."ENROLLMENT" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            Y           2604    16690 
   FOODPRO id    DEFAULT     l   ALTER TABLE ONLY public."FOODPRO" ALTER COLUMN id SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 ;   ALTER TABLE public."FOODPRO" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            Z           2604    16691    GITANJALI id    DEFAULT     p   ALTER TABLE ONLY public."GITANJALI" ALTER COLUMN id SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 =   ALTER TABLE public."GITANJALI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            n           2604    16797    IMMUNISATI id    DEFAULT     t   ALTER TABLE ONLY public."IMMUNISATI" ALTER COLUMN id SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 >   ALTER TABLE public."IMMUNISATI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            o           2604    16798 
   INFANTD id    DEFAULT     l   ALTER TABLE ONLY public."INFANTD" ALTER COLUMN id SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 ;   ALTER TABLE public."INFANTD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250            [           2604    16692    INSPECTION id    DEFAULT     r   ALTER TABLE ONLY public."INSPECTION" ALTER COLUMN id SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 >   ALTER TABLE public."INSPECTION" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            p           2604    16799 
   INSTDEL id    DEFAULT     l   ALTER TABLE ONLY public."INSTDEL" ALTER COLUMN id SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 ;   ALTER TABLE public."INSTDEL" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252            \           2604    16693    JALDJALB id    DEFAULT     n   ALTER TABLE ONLY public."JALDJALB" ALTER COLUMN id SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 <   ALTER TABLE public."JALDJALB" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            q           2604    16800 	   KANYAS id    DEFAULT     j   ALTER TABLE ONLY public."KANYAS" ALTER COLUMN id SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 :   ALTER TABLE public."KANYAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254            ]           2604    16694    KARMATIRTH id    DEFAULT     s   ALTER TABLE ONLY public."KARMATIRTH" ALTER COLUMN id SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 >   ALTER TABLE public."KARMATIRTH" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            r           2604    16801    KCC id    DEFAULT     d   ALTER TABLE ONLY public."KCC" ALTER COLUMN id SET DEFAULT nextval('public."KCC_id_seq"'::regclass);
 7   ALTER TABLE public."KCC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256            x           2604    16843    KCC_backup id    DEFAULT     r   ALTER TABLE ONLY public."KCC_backup" ALTER COLUMN id SET DEFAULT nextval('public."KCC_backup_id_seq"'::regclass);
 >   ALTER TABLE public."KCC_backup" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    271    271            s           2604    16802 
   KishanM id    DEFAULT     j   ALTER TABLE ONLY public."KishanM" ALTER COLUMN id SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 ;   ALTER TABLE public."KishanM" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    258            V           2604    16695 	   LANDPP id    DEFAULT     j   ALTER TABLE ONLY public."LANDPP" ALTER COLUMN id SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 :   ALTER TABLE public."LANDPP" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            t           2604    16803    MATERNALD id    DEFAULT     p   ALTER TABLE ONLY public."MATERNALD" ALTER COLUMN id SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 =   ALTER TABLE public."MATERNALD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259            u           2604    16804    MCI id    DEFAULT     d   ALTER TABLE ONLY public."MCI" ALTER COLUMN id SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 7   ALTER TABLE public."MCI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            v           2604    16805 
   MGNREGS id    DEFAULT     i   ALTER TABLE ONLY public."MGNREGS" ALTER COLUMN id SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 ;   ALTER TABLE public."MGNREGS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    263            ^           2604    16696    MINORITYS id    DEFAULT     p   ALTER TABLE ONLY public."MINORITYS" ALTER COLUMN id SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 =   ALTER TABLE public."MINORITYS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            w           2604    16806    POE id    DEFAULT     d   ALTER TABLE ONLY public."POE" ALTER COLUMN id SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 7   ALTER TABLE public."POE" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            _           2604    16697 
   SABOOJS id    DEFAULT     l   ALTER TABLE ONLY public."SABOOJS" ALTER COLUMN id SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 ;   ALTER TABLE public."SABOOJS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    220            `           2604    16698    SABOOJSHRE id    DEFAULT     s   ALTER TABLE ONLY public."SABOOJSHRE" ALTER COLUMN id SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 >   ALTER TABLE public."SABOOJSHRE" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            a           2604    16699    SAFEDSAVEL id    DEFAULT     r   ALTER TABLE ONLY public."SAFEDSAVEL" ALTER COLUMN id SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 >   ALTER TABLE public."SAFEDSAVEL" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            b           2604    16700    SAMABYTHI id    DEFAULT     p   ALTER TABLE ONLY public."SAMABYTHI" ALTER COLUMN id SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 =   ALTER TABLE public."SAMABYTHI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            c           2604    16701 
   SIKSHAS id    DEFAULT     l   ALTER TABLE ONLY public."SIKSHAS" ALTER COLUMN id SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 ;   ALTER TABLE public."SIKSHAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            d           2604    16702    SVSKP id    DEFAULT     h   ALTER TABLE ONLY public."SVSKP" ALTER COLUMN id SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 9   ALTER TABLE public."SVSKP" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            e           2604    16703    YUBAS id    DEFAULT     h   ALTER TABLE ONLY public."YUBAS" ALTER COLUMN id SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 9   ALTER TABLE public."YUBAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            f           2604    16704    attri_table id    DEFAULT     n   ALTER TABLE ONLY public.attri_table ALTER COLUMN id SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 =   ALTER TABLE public.attri_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            g           2604    16705    login id    DEFAULT     d   ALTER TABLE ONLY public.login ALTER COLUMN id SET DEFAULT nextval('public.login_id_seq'::regclass);
 7   ALTER TABLE public.login ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            h           2604    16706    scheme_table id    DEFAULT     r   ALTER TABLE ONLY public.scheme_table ALTER COLUMN id SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 >   ALTER TABLE public.scheme_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            F          0    16714    ANAND 
   TABLE DATA           �   COPY public."ANAND" (id, session, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", "user", tstamp, ip) FROM stdin;
    public          postgres    false    240   �       g          0    16851    ANAND_backup 
   TABLE DATA           �   COPY public."ANAND_backup" (id, session, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", "user", tstamp, ip) FROM stdin;
    public          postgres    false    273   D!      G          0    16717    AWCC 
   TABLE DATA           �   COPY public."AWCC" (id, session, "No_of_ICDS_Cenetres_devoid_of_own_building", "No_of_new_ICDS_building_constructed", "No_of_ICDS_Centres_running_in_open_space", "user", tstamp, ip) FROM stdin;
    public          postgres    false    241   �!      "          0    16595 	   BAITARANI 
   TABLE DATA           t   COPY public."BAITARANI" ("No_of_burning_ghats_taken_up", "Completed_till_date", "user", tstamp, ip, id) FROM stdin;
    public          postgres    false    204   �!      I          0    16722    DOC 
   TABLE DATA           �   COPY public."DOC" (id, session, "Target_for_distribution_of_poultry", "No_of_poultry_actually_distributed", "user", tstamp, ip) FROM stdin;
    public          postgres    false    243   "      J          0    16725    DOG 
   TABLE DATA           �   COPY public."DOG" (id, session, "Target_for_distribution_of_goats", "No_of_goats_actually_distributed", "No_of_beneficiaries_selected", "No_of_beneficiaries_approved", "user", tstamp, ip) FROM stdin;
    public          postgres    false    244   %"      L          0    16730    DOPTUHD 
   TABLE DATA           f   COPY public."DOPTUHD" (id, session, "No_of_Power_tiller_distributed", "user", tstamp, ip) FROM stdin;
    public          postgres    false    246   B"      $          0    16600 
   ENROLLMENT 
   TABLE DATA           {   COPY public."ENROLLMENT" ("Category ", "Gross_Enrolment_Ratio", "Net_Enrolment_Ratio", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    206   _"      &          0    16605    FOODPRO 
   TABLE DATA           v   COPY public."FOODPRO" ("Session", "Status_of_pocurement", "Target_of_pocurement", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    208   |"      (          0    16610 	   GITANJALI 
   TABLE DATA           �   COPY public."GITANJALI" ("No_of_case_sanctioned_under_Gitanjali", "Date_of_Inception", "No_of_houses_constructed_under_Gitanjali", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    210   �"      N          0    16735 
   IMMUNISATI 
   TABLE DATA           g   COPY public."IMMUNISATI" (id, session, "Per_of_Fully_immunised_child", "user", tstamp, ip) FROM stdin;
    public          postgres    false    248   �"      P          0    16740    INFANTD 
   TABLE DATA           `   COPY public."INFANTD" (id, session, "Total_No_of_Infant_Death", "user", tstamp, ip) FROM stdin;
    public          postgres    false    250   �"      *          0    16615 
   INSPECTION 
   TABLE DATA           �   COPY public."INSPECTION" ("No_of_homes_inspected_by_Senior_Officers", "user", tstamp, ip, id, "Degisnation_of_officers") FROM stdin;
    public          postgres    false    212   �"      R          0    16745    INSTDEL 
   TABLE DATA           e   COPY public."INSTDEL" (id, session, "Per_of_Institutional_Delivery", "user", tstamp, ip) FROM stdin;
    public          postgres    false    252   #      ,          0    16620    JALDJALB 
   TABLE DATA           �   COPY public."JALDJALB" ("Date_of_Inspection", "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo", "No_of_ponds_fish_production_started", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    214   *#      T          0    16750    KANYAS 
   TABLE DATA           9  COPY public."KANYAS" (id, session, "No_of_K-1_cases_application_received", "No_of_K-1_cases_application_sanctioned", "No_of_K-1_cases_application_disbursed", "No_of_K-2_cases_application_received", "No_of_K-2_cases_application_sanctioned", "No_of_K-2_cases_application_disbursed", "user", tstamp, ip) FROM stdin;
    public          postgres    false    254   G#      .          0    16625 
   KARMATIRTH 
   TABLE DATA           �   COPY public."KARMATIRTH" ("No_of_Karmatirtha_sanctioned", "No_of_Karmatirtha_for_which_construction_started", "No_of_Karmatirtha_for_which_construction_completed", "No_of_Karmatirth_operationalised", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    216   d#      V          0    16758    KCC 
   TABLE DATA           �   COPY public."KCC" (id, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, "user", tstamp, ip) FROM stdin;
    public          postgres    false    256   �#      e          0    16840 
   KCC_backup 
   TABLE DATA           �   COPY public."KCC_backup" (id, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, "user", tstamp, ip) FROM stdin;
    public          postgres    false    271   �#      X          0    16763    KishanM 
   TABLE DATA           �   COPY public."KishanM" (id, "No_of_Kishan_Mandis_sanctioned", "No_of_Kishan_Mandis_operational", "Operationality", "user", tstamp, ip) FROM stdin;
    public          postgres    false    258   ;$                 0    16587    LANDPP 
   TABLE DATA           l   COPY public."LANDPP" ("No_of_land_permission_pending", "user", tstamp, ip, id, "PROJECTS_NAME") FROM stdin;
    public          postgres    false    202   X$      Y          0    16766 	   MATERNALD 
   TABLE DATA           d   COPY public."MATERNALD" (id, session, "Total_No_of_Maternal_Death", "user", tstamp, ip) FROM stdin;
    public          postgres    false    259   u$      [          0    16771    MCI 
   TABLE DATA           d   COPY public."MCI" (id, session, "Percentage_of_malnourished_child", "user", tstamp, ip) FROM stdin;
    public          postgres    false    261   �$      ]          0    16776    MGNREGS 
   TABLE DATA           �   COPY public."MGNREGS" (id, session, "No_of_Person_days_generated_under_MGNREGS", "Average_No_of_Persondays_generated_per_household", "Expenditure_of_the_session", per_of_labour_budget_achieved, "user", tstamp, ip) FROM stdin;
    public          postgres    false    263   �$      0          0    16630 	   MINORITYS 
   TABLE DATA           �   COPY public."MINORITYS" (session, "Target_for_Scholarship_distribution_Aikyashree", "No_of_students_distributed_scholarship", "No_of_Aaplication_uploaded_under_Aikyashree_scholarship", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    218   �$      ^          0    16779    POE 
   TABLE DATA           X   COPY public."POE" (id, session, "Target", "Production", "user", tstamp, ip) FROM stdin;
    public          postgres    false    264   �$      2          0    16635    SABOOJS 
   TABLE DATA           �   COPY public."SABOOJS" (session, "Target_for_distribution_of_cycles", "Cycle_distributed_till_date", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    220   %      3          0    16638 
   SABOOJSHRE 
   TABLE DATA           �   COPY public."SABOOJSHRE" ("No_of_children_born_since_inception_of_the_project_in_the_dist", "No_of_tree_sapling_handed_over_to_the_new_born_children", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    221   #%      6          0    16645 
   SAFEDSAVEL 
   TABLE DATA           �   COPY public."SAFEDSAVEL" (session, "No_of_accidents", "No_of_death", "No_of_insured_person", "user", tstamp, ip, id) FROM stdin;
    public          postgres    false    224   @%      8          0    16650 	   SAMABYTHI 
   TABLE DATA           |   COPY public."SAMABYTHI" ("No_of_beneficiaries_provided_benefit_till_date", "Till_date", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    226   ]%      :          0    16655    SIKSHAS 
   TABLE DATA           �   COPY public."SIKSHAS" (session, "Targetted_No_Of_SC/ST_Student_under_Sikshashree", "No_of_Students_getting_benefit_under_Sikshashree", "No_of_Applications_uploaded_under_Sikshashree", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    228   z%      <          0    16660    SVSKP 
   TABLE DATA           �   COPY public."SVSKP" (session, "No_of_project_Sponsored_under_SVSKP", "No_of_project_sanctioned_under_SVSKP", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    230   �%      >          0    16665    YUBAS 
   TABLE DATA           �   COPY public."YUBAS" ("No_of_unemployed_Youth_registered_under_Yubashree", "No_of_unemployed_registered_Youth_getting_monthly_assistance", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    232   �%      @          0    16670    attri_table 
   TABLE DATA           B   COPY public.attri_table (id, id_scheme, a_name, name) FROM stdin;
    public          postgres    false    234   �%      B          0    16678    login 
   TABLE DATA           4   COPY public.login (id, email, password) FROM stdin;
    public          postgres    false    236   F-      D          0    16683    scheme_table 
   TABLE DATA           8   COPY public.scheme_table (id, s_name, name) FROM stdin;
    public          postgres    false    238   �-      �           0    0    ANAND_backup_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ANAND_backup_id_seq"', 4, true);
          public          postgres    false    272            �           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    242            �           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    205            �           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    245            �           0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    247            �           0    0    ENROLLMENTR_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ENROLLMENTR_id_seq"', 1, false);
          public          postgres    false    207            �           0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    209            �           0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    211            �           0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    249            �           0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    251            �           0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    213            �           0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    253            �           0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    215            �           0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    255            �           0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    217            �           0    0    KCC_backup_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."KCC_backup_id_seq"', 1, true);
          public          postgres    false    270            �           0    0 
   KCC_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public."KCC_id_seq"', 1, true);
          public          postgres    false    257            �           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    203            �           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    260            �           0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    262            �           0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    219            �           0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    265            �           0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    222            �           0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    223            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    227            �           0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    229            �           0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    231            �           0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    233            �           0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 2, true);
          public          postgres    false    266            �           0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    235            �           0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    267            �           0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 1, false);
          public          postgres    false    268            �           0    0    login_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.login_id_seq', 1, true);
          public          postgres    false    237            �           0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    269            �           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    239            �           2606    16808    AWCC AWCC_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."AWCC"
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."AWCC" DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    241            �           2606    16810    DOG DOG_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."DOG"
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."DOG" DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    244            �           2606    16812    DOPTUHD DOPTUHD_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."DOPTUHD"
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."DOPTUHD" DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    246            �           2606    16814    IMMUNISATI IMMUNISATION_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."IMMUNISATI"
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."IMMUNISATI" DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    248            �           2606    16816    INFANTD INFANTD_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."INFANTD"
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."INFANTD" DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    250            �           2606    16818    INSTDEL INSTDEL_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."INSTDEL"
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."INSTDEL" DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    252            �           2606    16820    KANYAS KANYAS_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."KANYAS"
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."KANYAS" DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    254            �           2606    16822    KCC KCC_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."KCC"
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."KCC" DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    256            �           2606    16824    MATERNALD MATERNALD_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MATERNALD"
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MATERNALD" DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    259            �           2606    16826    MCI MCI_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."MCI"
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."MCI" DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    261            �           2606    16828    POE POE_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."POE"
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."POE" DROP CONSTRAINT "POE_pkey";
       public            postgres    false    264            �           2606    16830    ANAND anand_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."ANAND"
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."ANAND" DROP CONSTRAINT anand_pkey;
       public            postgres    false    240            {           2606    16708    attri_table att_table_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    234            �           2606    16832    DOC doc_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public."DOC"
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public."DOC" DROP CONSTRAINT doc_pkey;
       public            postgres    false    243            �           2606    16834    KishanM kishanm_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."KishanM"
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."KishanM" DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    258            }           2606    16710    login login_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    236            �           2606    16836    MGNREGS mgnres_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."MGNREGS"
    ADD CONSTRAINT mgnres_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public."MGNREGS" DROP CONSTRAINT mgnres_pkey;
       public            postgres    false    263            �           2606    16859    ANAND_backup pk_ANAND_backup 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ANAND_backup"
    ADD CONSTRAINT "pk_ANAND_backup" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."ANAND_backup" DROP CONSTRAINT "pk_ANAND_backup";
       public            postgres    false    273            �           2606    16848    KCC_backup pk_KCC_backup 
   CONSTRAINT     Z   ALTER TABLE ONLY public."KCC_backup"
    ADD CONSTRAINT "pk_KCC_backup" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."KCC_backup" DROP CONSTRAINT "pk_KCC_backup";
       public            postgres    false    271                       2606    16712    scheme_table scheme_table_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    238            F   _   x���M
� F��)�@�7jѬ:HIPA�ݾ���L���@)l骷>J��l��sj�T���5����@/�#�@�#oO��,p�a�J� V#�      g   z   x���1
�0���|���t���4�Y`;�"���_�zw�	S	B9��������V����He���h��� ����d'�p�	s��cBM�H�&S3�z���1h��9�"FF      G      x������ � �      "      x������ � �      I      x������ � �      J      x������ � �      L      x������ � �      $      x������ � �      &      x������ � �      (      x������ � �      N      x������ � �      P      x������ � �      *      x������ � �      R      x������ � �      ,      x������ � �      T      x������ � �      .      x������ � �      V   M   x�3�45�45�43�LO�K/ͩ�+�LI���K,�pH�M���K���4202�50�54T04�2��24崲2����� ���      e   M   x�3�45�45�43�LO�K/ͩ�+�LI���K,�pH�M���K���4202�50�54T04�2��24崲2����� ���      X      x������ � �             x������ � �      Y      x������ � �      [      x������ � �      ]      x������ � �      0      x������ � �      ^      x������ � �      2      x������ � �      3      x������ � �      6      x������ � �      8      x������ � �      :      x������ � �      <      x������ � �      >      x������ � �      @   e  x��X[o۸~ż,�>l�%���usrڢMQ,P�`d��F�]����/"e+�ٗD�|�/Ù�I�|�x��ŮVEW�uW��?��*�l�Ҽ�K�UM���P=� J������4�����g3ۊV&�[$���Y5{���Q�WGY��t&��"9["�]�����O��I�\�ı����7Y7�ފS�wRZn9j�}�5r_�[� �~P�^Pz�fh���Q�ۮ�d�6�oA$"F�*'b�,�&�U�[o���m�����:?�s�"X�����1�]��8^*��+�$DX8K��,��N�4/7���v������AhJC��AX�&�רv�h�׈�e�؅�.��ey
�r�� � �,�i�`U�DM���R�b /d��uq<���Խ�e�d����l�C��j����e�d�}���[[U��Y����g��Qh��?�?l�C�ʭ�;^T�]�j� a�c °<���Z�Ƶם�ć��7U��(
�������$&	޸atg�� J]u5F��'�7��|��>�}�=�h����0�ײ�*��� ��|�_#�9�7�嫷8����y��G��$f���Ug��z���7��1�h���-��U�QF��d��K�;
�p�jz��x�z��x7�={���b�y���#�:l�J�Y�`�3Lx�����G�(t�ڢ�b����l��sLm�kz�����!���a�_�gs�7m��[�;��5m���f_K�Dz������`���,'+.�Xe϶��n�ۘ�W�8G�L���p��e%������h��1`����T���dl6'�5����	���9F�`��dl�����)��u�W�ᜮ��iplfR|8� g�	�p�)�;�̠�����5�okЃH���#}j�T�7&K�9�Tu8�?7��9=Ɵa�<�d��� �M�l��(�\�ݪV迱|t���d�Ql>#F�i�/��$o�Wݍ��<�6�c���[`�{/g��t͠9��l
~�͗�u��Um��B�a�(��E]��?��o-�ǻy|�XD(�e�l�:��ٙ��3�iEj�Lp�H��6�h��2XH0��AK�߅O|����9��"#*w�T�r��"O�J\�rwF��S�����7��JB��tO�(��`F�bF_��9�.��*S�����y'<�����c�ፗ�:��=�a� �A�Z���QK�k�G�C��=�X��< ]���Y�>�;e�l�9�������݋��"�zb�ק���W�>ܱK��9)��z'\N�����͐oX���z�D�Z��-��(v�����k����2�rF6�{�� A��yk,S�����jœ���mY!!!&	�\��گ&Έ~,�:�*�@.�����#����8Y��l�"-K�_a�m͉o�Vx0w���҃�U8 <������+�֤DJ��{�i���o��<���P������LkR����me����"=�zl��9W�Qͨ+�!�lR~���:���6(Tℾ�$9�ɾ�}�Y�o���/7�/�_l��Z-q��N9(����w�I!H�I�*O�U��ȷ��o����T�a��	�>�~�k}��3 O��!P�|\�E�R�xf�P�������$��Ҽ���g�����u��{[�q�g�?������e�4͢x���=ě�ն��T�{� �A����j��Q�����y�*-�]�Jʩ[�7�Ы����ߔ����ԕ����tr5�]e�t��ai�<�Z��;�m���z~�8�.ڞî�ѱ1�_oz:,�4�R�'�Ec���5m��r������wkκ�6I[�5�q��d��f      B   <   x�3�LO�K/ͩ�+�LI���K,�pH�M���K���
��pq&&%#I�c���� ��d      D   D  x�eSKo� >���VZ�N�m�����Ɩq�����ց
���w�4{�1|�!�M��ƌ��4��3���wd�J4�J^frL0���v��W��*�̌������hڛ��Hn1���\9F��*�ڻn�_2���H���d������u����՞�fp�l�q�|0�i��4���od����b��-]A�r(�`�䑻�f�CG��<�$�"�0�e6ʞ��{�I/�G�%k9��q�fT���l�� ���S�b0�ڟHt�'�L��8(0�BO�(Y�7�"
ڟ�>r� �F��4�h�J�_ YRU��vνP�����jx�Eیuބ���ʏ�y#�=�'��ϑ�W��-��2A�5G�;�f4赣�*�W$�aYUY�T�t��h�%?jH��\4UQ��h!��Ü�ͬ��a�� �����5�ٔ,ٶk�|�jw���w�0�0�!Q�+�����u�����o�l��

lϺ������8��Rk��L>��3ɞ�'�ޱI<���4-���^�]7�q�0o�%�7������"���)/��D ���I��	�     