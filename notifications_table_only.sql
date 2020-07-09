PGDMP     7            	        x            nic    12.2    12.2     C           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            D           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            E           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            F           1262    23617    nic    DATABASE     �   CREATE DATABASE nic WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE nic;
                postgres    false            =           1259    24068    mpr_trans_notification    TABLE       CREATE TABLE public.mpr_trans_notification (
    audience_id character varying(20) NOT NULL,
    notification_text text NOT NULL,
    notification_id_pk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    notification_head text NOT NULL,
    active_status integer NOT NULL,
    audience_desig bigint NOT NULL,
    audience_loc character varying(12) NOT NULL,
    audience_desig_only bigint NOT NULL,
    CONSTRAINT notification_active_check CHECK (((active_status >= 0) AND (active_status <= 1)))
);
 *   DROP TABLE public.mpr_trans_notification;
       public         heap    postgres    false            >           1259    24075    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    317            G           0    0    notifications_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.mpr_trans_notification.notification_id_pk;
          public          postgres    false    318            �           2604    24149 )   mpr_trans_notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 X   ALTER TABLE public.mpr_trans_notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    318    317            ?          0    24068    mpr_trans_notification 
   TABLE DATA           �   COPY public.mpr_trans_notification (audience_id, notification_text, notification_id_pk, "timestamp", notification_head, active_status, audience_desig, audience_loc, audience_desig_only) FROM stdin;
    public          postgres    false    317   �       H           0    0    notifications_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.notifications_id_seq', 157, true);
          public          postgres    false    318            �           2606    24260 )   mpr_trans_notification notifications_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_notification
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id_pk);
 S   ALTER TABLE ONLY public.mpr_trans_notification DROP CONSTRAINT notifications_pkey;
       public            postgres    false    317            ?      x������ � �     