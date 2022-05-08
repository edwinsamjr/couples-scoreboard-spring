PGDMP     3    4    	            z           ScoreboardDB    14.2    14.2 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    ScoreboardDB    DATABASE     r   CREATE DATABASE "ScoreboardDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "ScoreboardDB";
                postgres    false            �            1259    16398    gamelog_game_id_seq    SEQUENCE     |   CREATE SEQUENCE public.gamelog_game_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.gamelog_game_id_seq;
       public          postgres    false            �            1259    16399    gamelog    TABLE     '  CREATE TABLE public.gamelog (
    game_id integer DEFAULT nextval('public.gamelog_game_id_seq'::regclass) NOT NULL,
    date date NOT NULL,
    game character varying(50) NOT NULL,
    winner character varying(50) NOT NULL,
    rachel_score integer NOT NULL,
    edwin_score integer NOT NULL
);
    DROP TABLE public.gamelog;
       public         heap    postgres    false    209            �          0    16399    gamelog 
   TABLE DATA           Y   COPY public.gamelog (game_id, date, game, winner, rachel_score, edwin_score) FROM stdin;
    public          postgres    false    210   /	       �           0    0    gamelog_game_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.gamelog_game_id_seq', 201, true);
          public          postgres    false    209            ^           2606    16404    gamelog pk_game_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.gamelog
    ADD CONSTRAINT pk_game_id PRIMARY KEY (game_id);
 <   ALTER TABLE ONLY public.gamelog DROP CONSTRAINT pk_game_id;
       public            postgres    false    210            �   �  x�}���7�뙧�8)�V'靤H�f}Ab�����%���?"g��~.��"����@�o������?^������[��^���8�/߷��t'�;�܉�:���ޮ�W�H�V�[�C��GJ�KPS�$5�KTS�d5U������߲�[V|ˊ=V��lig��/�/���^��%���KbS�$6�KbS�$6����euMգ�ۇly�,�/i�-���P�Ƀ����raU�����sXiȢr�QKR�-���K>�~	�oUmw��*��ǼKS9��6ZfPYβ�P����R�'�yRn��ʍ�I-)6�V}B���KEu���z��O����חw�4�ұ����=�C���g��YJ�O���Za]�(/'�c�=�Z${�9��t0�͓�<����N����3 -�1(sC}I���pP��xH�B��at�c��|�立_��sp{��\�"��Y�eQ�l'(��Ø��EI�x�(���8"P����k@�VJ_h#E���8�#����UP^)�qN(&�r֌�{0:��V�W2= HS��Q�[@����ހ�Z�c]m��Zmр�E�5A��Z�(�2>��m�%�yi��tL���K�{S�:����P��=�s�ќzp�[0Z�1GA1�)�%A�`�5�#��&������9�ߎ��hc] �bJ��NO�ƾ*�f6�@�(/��W�8l g�-�HP_��G7\(�he�@u��)θ��1�xn��6���!��+�|���HǛC�L����]�����L�,��m��j������x`�P�#����^7��{6���7'�2���&���Hܶ;��֮:O�x�z�F��A�ぢr�9��8am-�����'���R_G�,�����$sp���m�p��0��t�� b�n�"�7H��.�y$��{ �땊}֑T4�H��ٟ�@Im��� ���Ĩ���Pu+9	8[9%@��	$e40����B��aT4p��[�*���WY����8�"��I������ʠ�L�1��A�.~3���~�h`�[?�P�3�rE�/��֖;����Fhb�Xdޫ�����ٽ�H�|�.*�N��5V�gl��/�	���*��<���myTر�'��dCyM����?��3�c�O8��N���&�8��?�Sp��Ykt�=�X��7��������H���Mf:�����S�P�kB�|�y������ �q     