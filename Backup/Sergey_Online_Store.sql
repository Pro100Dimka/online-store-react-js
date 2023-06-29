PGDMP                         {           Sergey_Online_Store    15.3    15.3 R    `           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            a           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            b           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            c           1262    16398    Sergey_Online_Store    DATABASE     �   CREATE DATABASE "Sergey_Online_Store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
 %   DROP DATABASE "Sergey_Online_Store";
                postgres    false            �            1259    16464    basket_devices    TABLE     �   CREATE TABLE public.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);
 "   DROP TABLE public.basket_devices;
       public         heap    postgres    false            �            1259    16463    basket_devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.basket_devices_id_seq;
       public          postgres    false    225            d           0    0    basket_devices_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.basket_devices_id_seq OWNED BY public.basket_devices.id;
          public          postgres    false    224            �            1259    16412    baskets    TABLE     �   CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.baskets;
       public         heap    postgres    false            �            1259    16411    baskets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.baskets_id_seq;
       public          postgres    false    217            e           0    0    baskets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;
          public          postgres    false    216            �            1259    16433    brands    TABLE     �   CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    16432    brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    221            f           0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    220            �            1259    16498    device_infos    TABLE       CREATE TABLE public.device_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);
     DROP TABLE public.device_infos;
       public         heap    postgres    false            �            1259    16497    device_infos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.device_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.device_infos_id_seq;
       public          postgres    false    229            g           0    0    device_infos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.device_infos_id_seq OWNED BY public.device_infos.id;
          public          postgres    false    228            �            1259    16442    devices    TABLE     Y  CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 0,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);
    DROP TABLE public.devices;
       public         heap    postgres    false            �            1259    16441    devices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.devices_id_seq;
       public          postgres    false    223            h           0    0    devices_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;
          public          postgres    false    222            �            1259    16481    ratings    TABLE     �   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "deviceId" integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    16480    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    227            i           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    226            �            1259    16512    type_brands    TABLE     �   CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);
    DROP TABLE public.type_brands;
       public         heap    postgres    false            �            1259    16511    type_brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.type_brands_id_seq;
       public          postgres    false    231            j           0    0    type_brands_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;
          public          postgres    false    230            �            1259    16424    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    16423    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    219            k           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    218            �            1259    16400    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    surname character varying(255),
    email character varying(255),
    password character varying(255),
    role character varying(255),
    phone character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16399    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            l           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            �           2604    16467    basket_devices id    DEFAULT     v   ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval('public.basket_devices_id_seq'::regclass);
 @   ALTER TABLE public.basket_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16415 
   baskets id    DEFAULT     h   ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);
 9   ALTER TABLE public.baskets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16436 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16501    device_infos id    DEFAULT     r   ALTER TABLE ONLY public.device_infos ALTER COLUMN id SET DEFAULT nextval('public.device_infos_id_seq'::regclass);
 >   ALTER TABLE public.device_infos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16445 
   devices id    DEFAULT     h   ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);
 9   ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16484 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16515    type_brands id    DEFAULT     p   ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);
 =   ALTER TABLE public.type_brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16427    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16403    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            W          0    16464    basket_devices 
   TABLE DATA           ^   COPY public.basket_devices (id, "createdAt", "updatedAt", "basketId", "deviceId") FROM stdin;
    public          postgres    false    225   �a       O          0    16412    baskets 
   TABLE DATA           I   COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    217   �a       S          0    16433    brands 
   TABLE DATA           D   COPY public.brands (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   Ub       [          0    16498    device_infos 
   TABLE DATA           d   COPY public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") FROM stdin;
    public          postgres    false    229   �b       U          0    16442    devices 
   TABLE DATA           n   COPY public.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
    public          postgres    false    223   �b       Y          0    16481    ratings 
   TABLE DATA           [   COPY public.ratings (id, rate, "createdAt", "updatedAt", "userId", "deviceId") FROM stdin;
    public          postgres    false    227   �c       ]          0    16512    type_brands 
   TABLE DATA           X   COPY public.type_brands (id, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
    public          postgres    false    231   �c       Q          0    16424    types 
   TABLE DATA           C   COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    219   �c       M          0    16400    users 
   TABLE DATA           j   COPY public.users (id, name, surname, email, password, role, phone, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   �d       m           0    0    basket_devices_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.basket_devices_id_seq', 1, false);
          public          postgres    false    224            n           0    0    baskets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.baskets_id_seq', 8, true);
          public          postgres    false    216            o           0    0    brands_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brands_id_seq', 2, true);
          public          postgres    false    220            p           0    0    device_infos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.device_infos_id_seq', 1, false);
          public          postgres    false    228            q           0    0    devices_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.devices_id_seq', 4, true);
          public          postgres    false    222            r           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    226            s           0    0    type_brands_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.type_brands_id_seq', 1, false);
          public          postgres    false    230            t           0    0    types_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.types_id_seq', 3, true);
          public          postgres    false    218            u           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 8, true);
          public          postgres    false    214            �           2606    16469 "   basket_devices basket_devices_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT basket_devices_pkey;
       public            postgres    false    225            �           2606    16417    baskets baskets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.baskets DROP CONSTRAINT baskets_pkey;
       public            postgres    false    217            �           2606    16440    brands brands_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_name_key;
       public            postgres    false    221            �           2606    16438    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    221            �           2606    16505    device_infos device_infos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT device_infos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT device_infos_pkey;
       public            postgres    false    229            �           2606    16452    devices devices_name_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_name_key;
       public            postgres    false    223            �           2606    16450    devices devices_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey;
       public            postgres    false    223            �           2606    16486    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    227            �           2606    16517    type_brands type_brands_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT type_brands_pkey;
       public            postgres    false    231            �           2606    16519 *   type_brands type_brands_typeId_brandId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");
 V   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_brandId_key";
       public            postgres    false    231    231            �           2606    16431    types types_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.types DROP CONSTRAINT types_name_key;
       public            postgres    false    219            �           2606    16429    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    219            �           2606    16410    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            �           2606    16408    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    16470 +   basket_devices basket_devices_basketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_basketId_fkey";
       public          postgres    false    217    225    3229            �           2606    16475 +   basket_devices basket_devices_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public.basket_devices DROP CONSTRAINT "basket_devices_deviceId_fkey";
       public          postgres    false    3241    225    223            �           2606    16418    baskets baskets_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.baskets DROP CONSTRAINT "baskets_userId_fkey";
       public          postgres    false    3227    215    217            �           2606    16506 '   device_infos device_infos_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT "device_infos_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.device_infos DROP CONSTRAINT "device_infos_deviceId_fkey";
       public          postgres    false    223    229    3241            �           2606    16458    devices devices_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.devices DROP CONSTRAINT "devices_brandId_fkey";
       public          postgres    false    223    3237    221            �           2606    16453    devices devices_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.devices DROP CONSTRAINT "devices_typeId_fkey";
       public          postgres    false    219    223    3233            �           2606    16492    ratings ratings_deviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_deviceId_fkey";
       public          postgres    false    3241    223    227            �           2606    16487    ratings ratings_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.ratings DROP CONSTRAINT "ratings_userId_fkey";
       public          postgres    false    227    3227    215            �           2606    16525 $   type_brands type_brands_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_brandId_fkey";
       public          postgres    false    231    3237    221            �           2606    16520 #   type_brands type_brands_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_fkey";
       public          postgres    false    3233    219    231            W      x������ � �      O      x�}ͻ�0 �:��}`�R�%�ϑ2�$�~8��Do�[�m�&���&�G��Qk���'���f�T�r&[����P�d�+{����9�C��m-�P��+W;�S9SB�x\lM�jX�r����Vy      S   G   x�3�N�-.�K�4202�50�52W02�22�20Գ02�60�#�e��XP���E�����9v�0)�=... .Pd      [      x������ � �      U   �   x�}нND!��s�7C�a��t^�?���6��D/_ԍY"�̓4H��Ýa7�q&�qt���d(��Y��$4>��9��"Pډ�������7��L�7׏���J�Q"YpH��ͧ@��}�]��`�1/��2Uon_���T:O�����AV�*�w_S9O��Wf�g�e��M76o0'��:FM+���{e(��ܹ4M-6ѕ���A�e�i>�m�>�
e�      Y      x������ � �      ]      x������ � �      Q   �   x�3估�¾��x˅v_칰Hﺰ�����X��L��\��������@���L����煅�\�p��b����{/v��7�24�325�b��1���q����Cznbf�^r~.B��������������1�IR\1z\\\ �^DI      M   D  x�}��r�@��<E�M����ݬF#"*V6��
�����df�Ɖ�Mo������e|,�2D?�<\g`^�g=K��Y�b�(�Z-2��a�q��,����c6Z�ƹE0�hf`�m�ٟ�a�4�ы��@����*A�	�!�o� ����U��������@�jG�V��'������.<5b'���$ԭ��x(Ò�(�Fv�t'#�4Z���2���e�Zt3;��B�Rw�T�j���1��o��b�*��4Y�`���n���h��6Iv{��:�4)���x�v��?��i����j�k�+�C}�؆U�BQ��&	���p���@�+%o���4����AU���^x�Nm�E�����)8�ovJTHi�&	�W\\��TS��y}M���z��v���r7�k��\/rz��}#�K9��7k�*� ^��I����Hn:�Sn���$��}I.N�B�fo��ҕ֣�ӛ뙶7��)����=}���T"��ݿ"�����d�Ķ�y�ؿg�Qh(v�I*��FGS[U����T���`k6�m˼���*a����Ex� ���@�     