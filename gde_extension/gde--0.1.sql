--complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION gde" to load this file. \quit

CREATE EXTENSION IF NOT EXISTS postgis_sfcgal;
CREATE EXTENSION IF NOT EXISTS postgis;

-- DROP FUNCTION public.create_roles() 
CREATE OR REPLACE FUNCTION public.create_roles() 
RETURNS TEXT
AS $BODY$
BEGIN 
	CREATE ROLE dataowner WITH NOLOGIN NOSUPERUSER NOINHERIT CREATEDB NOCREATEROLE NOREPLICATION;  
	CREATE ROLE dataviewer WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION; 
	CREATE ROLE dataeditor_del WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	CREATE ROLE ic_editor WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	CREATE ROLE el_editor WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	CREATE ROLE cg_editor WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	CREATE ROLE md_editor WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	CREATE ROLE ext_editor WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION; 
	CREATE ROLE ctm_editor WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	CREATE ROLE dom_editor WITH NOLOGIN NOSUPERUSER NOINHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
RETURN TEXT;
END;
$BODY$			
LANGUAGE plpgsql;	


-- DROP FUNCTION public.create_users() 
CREATE OR REPLACE FUNCTION public.create_schema_users() 
RETURNS TEXT
AS $BODY$
BEGIN
	--Donos de esquemas
	CREATE USER ic WITH LOGIN NOSUPERUSER INHERIT CREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dataowner TO ic;
	ALTER USER ic WITH PASSWORD 'own@dm182';

	CREATE USER el WITH LOGIN NOSUPERUSER INHERIT CREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dataowner TO el;
	ALTER USER el WITH PASSWORD 'own@dm186';

	CREATE USER cg WITH LOGIN NOSUPERUSER INHERIT CREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dataowner TO cg;
	ALTER USER cg WITH PASSWORD 'own@dm184';

	CREATE USER md WITH LOGIN NOSUPERUSER INHERIT CREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dataowner TO md;
	ALTER USER md WITH PASSWORD 'own@dm187';

	CREATE USER ctm WITH LOGIN NOSUPERUSER INHERIT CREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dataowner TO ctm;
	ALTER USER ctm WITH PASSWORD 'own@dm185';

	CREATE USER ext WITH LOGIN NOSUPERUSER INHERIT CREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dataowner TO ext;
	ALTER USER ext WITH PASSWORD 'own@dm185';

	CREATE USER dom WITH LOGIN NOSUPERUSER INHERIT CREATEDB NOSUPERUSER NOREPLICATION;
	GRANT dataowner TO dom;
	ALTER USER dom WITH PASSWORD 'own@dm188';

	CREATE USER sde LOGIN SUPERUSER INHERIT CREATEDB CREATEROLE NOREPLICATION;
	GRANT dataowner TO sde;
	ALTER USER sde WITH PASSWORD 'own@dm181';

RETURN 'Usuários dos esquemas criados.';
END;
$BODY$			
LANGUAGE plpgsql;	

-- DROP FUNCTION public.create_users() 
CREATE OR REPLACE FUNCTION public.create_users() 
RETURNS TEXT
AS $BODY$
BEGIN
	--usuario de consuta
	CREATE USER consulta WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dataviewer TO consulta;
	ALTER USER consulta WITH PASSWORD 'Consultaa1';
	GRANT USAGE ON SCHEMA ic TO consulta;
	GRANT USAGE ON SCHEMA el TO consulta;
	GRANT USAGE ON SCHEMA ctm TO consulta;
	GRANT USAGE ON SCHEMA dom TO consulta;
	GRANT USAGE ON SCHEMA ext TO consulta;
	GRANT USAGE ON SCHEMA cg TO consulta;
	GRANT USAGE ON SCHEMA md TO consulta;

	--usuario de edicao
	CREATE USER editor WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dataeditor_del TO editor;
	ALTER USER editor WITH PASSWORD 'Edit@r';
	GRANT USAGE ON SCHEMA ic TO editor;
	GRANT USAGE ON SCHEMA el TO editor;
	GRANT USAGE ON SCHEMA ctm TO editor;
	GRANT USAGE ON SCHEMA dom TO editor;
	GRANT USAGE ON SCHEMA ext TO editor;
	GRANT USAGE ON SCHEMA cg TO editor;
	GRANT USAGE ON SCHEMA md TO editor;

	--usuario de edicao edicao_esquema_cg
	CREATE USER edicao_esquema_cg WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT cg_editor TO edicao_esquema_cg;
	ALTER USER edicao_esquema_cg WITH PASSWORD 'Edit@r_m1';
	GRANT USAGE ON SCHEMA cg TO edicao_esquema_cg;
	
	--usuario de edicao edicao_esquema_ctm
	CREATE USER edicao_esquema_ctm WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT ctm_editor TO edicao_esquema_ctm;
	ALTER USER edicao_esquema_ctm WITH PASSWORD 'Edit@r_m2';
	GRANT USAGE ON SCHEMA ctm TO edicao_esquema_ctm;

	--usuario de edicao edicao_esquema_dom
	CREATE USER edicao_esquema_dom WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT dom_editor TO edicao_esquema_dom;
	ALTER USER edicao_esquema_dom WITH PASSWORD 'Edit@r_m3';
	GRANT USAGE ON SCHEMA dom TO edicao_esquema_dom;

	--usuario de edicao edicao_esquema_el
	CREATE USER edicao_esquema_el WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT el_editor TO edicao_esquema_el;
	ALTER USER edicao_esquema_el WITH PASSWORD 'Edit@r_m4';
	GRANT USAGE ON SCHEMA el TO edicao_esquema_el;
	
	--usuario de edicao edicao_esquema_ext
	CREATE USER edicao_esquema_ext WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT ext_editor TO edicao_esquema_ext;
	ALTER USER edicao_esquema_ext WITH PASSWORD 'Edit@r_m5';
	GRANT USAGE ON SCHEMA ext TO edicao_esquema_ext;

	--usuario de edicao edicao_esquema_ic
	CREATE USER edicao_esquema_ic WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT ic_editor TO edicao_esquema_ic;
	ALTER USER edicao_esquema_ic WITH PASSWORD 'Edit@r_m6';
	GRANT USAGE ON SCHEMA ic TO edicao_esquema_ic;

	--usuario de edicao edicao_esquema_md
	CREATE USER edicao_esquema_md WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT md_editor TO edicao_esquema_md;
	ALTER USER edicao_esquema_md WITH PASSWORD 'Edit@r_m7';
	GRANT USAGE ON SCHEMA md TO edicao_esquema_md;

	--usuario de edicao m7
	CREATE USER geotecnia WITH LOGIN NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
	GRANT ic_editor TO geotecnia;
	GRANT el_editor TO geotecnia;
	GRANT cg_editor TO geotecnia;
	ALTER USER geotecnia WITH PASSWORD 'Edit@r_m7';
	GRANT USAGE ON SCHEMA ic TO geotecnia;
	GRANT USAGE ON SCHEMA el TO geotecnia;
	GRANT USAGE ON SCHEMA cg TO geotecnia;
RETURN 'Usuários criados.';
END;
$BODY$			
LANGUAGE plpgsql;	

-- DROP FUNCTION public.create_schema() 
CREATE OR REPLACE FUNCTION public.create_schema() 
RETURNS TEXT
AS $BODY$
	BEGIN
		CREATE SCHEMA ic AUTHORIZATION ic;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ic GRANT SELECT ON tables TO dataviewer;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ic GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO dataeditor_del;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ic GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO ic_editor;

		CREATE SCHEMA el AUTHORIZATION el;
		ALTER DEFAULT PRIVILEGES IN SCHEMA el GRANT SELECT ON tables TO dataviewer;
		ALTER DEFAULT PRIVILEGES IN SCHEMA el GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO dataeditor_del;
		ALTER DEFAULT PRIVILEGES IN SCHEMA el GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO el_editor;

		CREATE SCHEMA cg AUTHORIZATION cg;
		ALTER DEFAULT PRIVILEGES IN SCHEMA cg GRANT SELECT ON tables TO dataviewer;
		ALTER DEFAULT PRIVILEGES IN SCHEMA cg GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO dataeditor_del;
		ALTER DEFAULT PRIVILEGES IN SCHEMA cg GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO cg_editor;

		CREATE SCHEMA ctm AUTHORIZATION ctm;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ctm GRANT SELECT ON tables TO dataviewer;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ctm GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO dataeditor_del;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ctm GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO ctm_editor;

		CREATE SCHEMA md AUTHORIZATION md;
		ALTER DEFAULT PRIVILEGES IN SCHEMA md GRANT SELECT ON tables TO dataviewer;
		ALTER DEFAULT PRIVILEGES IN SCHEMA md GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO dataeditor_del;
		ALTER DEFAULT PRIVILEGES IN SCHEMA md GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO md_editor;

		CREATE SCHEMA ext AUTHORIZATION ext;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ext GRANT SELECT ON tables TO dataviewer;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ext GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO dataeditor_del;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ext GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO ext_editor;

		CREATE SCHEMA dom AUTHORIZATION dom;
		ALTER DEFAULT PRIVILEGES IN SCHEMA dom GRANT SELECT ON tables TO dataviewer;
		ALTER DEFAULT PRIVILEGES IN SCHEMA dom GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO dataeditor_del;
		ALTER DEFAULT PRIVILEGES IN SCHEMA dom GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO dom_editor;

		CREATE SCHEMA sde AUTHORIZATION sde;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ic  GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO sde;
		ALTER DEFAULT PRIVILEGES IN SCHEMA sde GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO sde;
		ALTER DEFAULT PRIVILEGES IN SCHEMA el  GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO sde;
		ALTER DEFAULT PRIVILEGES IN SCHEMA ext GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO sde;
		ALTER DEFAULT PRIVILEGES IN SCHEMA cg  GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO sde;
		ALTER DEFAULT PRIVILEGES IN SCHEMA md  GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO sde;
		ALTER DEFAULT PRIVILEGES IN SCHEMA dom GRANT SELECT, INSERT, UPDATE, DELETE ON tables TO sde;
		RETURN 'Privilégios padrões criados.';
	END;
$BODY$			
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION public.drop_structure() 
RETURNS TEXT
AS $BODY$
	BEGIN
		DROP SCHEMA IF EXISTS ic;
		DROP SCHEMA IF EXISTS el;
		DROP SCHEMA IF EXISTS cg;
		DROP SCHEMA IF EXISTS md;
		DROP SCHEMA IF EXISTS dom;
		DROP SCHEMA IF EXISTS ctm;
		DROP SCHEMA IF EXISTS md;
		DROP SCHEMA IF EXISTS sde;
		DROP USER IF EXISTS edicao_esquema_md;
		DROP USER IF EXISTS edicao_esquema_ic;
		DROP USER IF EXISTS edicao_esquema_cg;
		DROP USER IF EXISTS edicao_esquema_ext;
		DROP USER IF EXISTS edicao_esquema_dom;
		DROP USER IF EXISTS edicao_esquema_el;
		DROP USER IF EXISTS edicao_esquema_ctm;
		DROP USER IF EXISTS geotecnia;
		DROP USER IF EXISTS consulta;
		DROP USER IF EXISTS editor; 
		DROP USER IF EXISTS ic;
		DROP USER IF EXISTS el;
		DROP USER IF EXISTS cg;
		DROP USER IF EXISTS md;
		DROP USER IF EXISTS dom;
		DROP USER IF EXISTS ctm;
		DROP USER IF EXISTS md;
		DROP USER IF EXISTS sde;
		DROP ROLE IF EXISTS dataowner;  
		DROP ROLE IF EXISTS dataviewer; 
		DROP ROLE IF EXISTS dataeditor;
		DROP ROLE IF EXISTS cg_editor;
		DROP ROLE IF EXISTS ic_editor;
		DROP ROLE IF EXISTS el_editor;
		DROP ROLE IF EXISTS md_editor;
		DROP ROLE IF EXISTS dom_editor; 
		DROP ROLE IF EXISTS ctm_editor;
		DROP ROLE IF EXISTS ext_editor;
		 		
		RETURN 'Estrutura removida.';
	END;
$BODY$			
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION public.create_structure() 
RETURNS TEXT
AS $BODY$
	BEGIN
		PERFORM public.drop_structure();
		PERFORM public.create_roles();
		PERFORM public.create_schema_users();
		PERFORM public.create_schema();
		PERFORM public.create_users(); 
	RETURN 'Estrutura criada';
	END;
$BODY$			
LANGUAGE plpgsql;

ALTER TABLE public.create_structure()
    OWNER to public; 

CREATE OR REPLACE FUNCTION public.enable_tracking(nome_do_esquema text, nome_da_tabela text) 
	RETURNS TEXT
	AS $BODY$
	DECLARE
		esquema_tabela text;
		nome_gatilho text;
		BEGIN
			esquema_tabela := nome_do_esquema || '.' || nome_da_tabela;
			nome_gatilho := 'controle_edicao_' || nome_do_esquema || '_' || nome_da_tabela;
			CREATE OR REPLACE FUNCTION public.controle_edicao() 
				RETURNS trigger AS $$   
			        BEGIN     
			            NEW.user_edit := current_user;
			            NEW.data_edit := current_timestamp;
			            RETURN NEW;   
			        END; 
			        $$ 
			        LANGUAGE plpgsql;

			EXECUTE ('ALTER TABLE IF EXISTS ' || esquema_tabela || ' ADD COLUMN IF NOT EXISTS user_edit character varying(100);');
			EXECUTE ('ALTER TABLE IF EXISTS ' || esquema_tabela || ' ADD COLUMN IF NOT EXISTS data_edit date;');
			EXECUTE ('CREATE TRIGGER ' ||nome_gatilho|| ' AFTER INSERT OR UPDATE ON ' || esquema_tabela || ' FOR EACH ROW EXECUTE PROCEDURE public.controle_edicao();');

		RETURN 'Tracking ativado';
		END;
	$BODY$			
	LANGUAGE plpgsql;

ALTER TABLE public.enable_tracking(nome_do_esquema text, nome_da_tabela text) 
    OWNER to public; 

CREATE OR REPLACE FUNCTION public.disable_tracking(nome_do_esquema text, nome_da_tabela text) 
	RETURNS TEXT
	AS $BODY$
	DECLARE
		esquema_tabela text;
		nome_gatilho text;
		BEGIN
			esquema_tabela := nome_do_esquema || '.' || nome_da_tabela;
			nome_gatilho := 'controle_edicao_' || nome_do_esquema || '_' || nome_da_tabela;

			EXECUTE ('DROP TRIGGER ' ||nome_gatilho|| ' ON ' || esquema_tabela || ';');

		RETURN 'Tracking desativado';
		END;
	$BODY$			
	LANGUAGE plpgsql;
	
ALTER TABLE public.disable_tracking(nome_do_esquema text, nome_da_tabela text) 
    OWNER to public; 	        

-- DROP FUNCTION public.tabela_dominio() 
CREATE OR REPLACE FUNCTION public.tabela_dominio() 
RETURNS TEXT
AS $BODY$
	BEGIN
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_category_type
	-- DROP TABLE dom.tb_category_type;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_category_type
	(
	    id integer NOT NULL DEFAULT nextval('dom.tb_category_type_id_seq'::regclass),
	    dm_ct_pk integer,
	    dm_ct_desc character varying(80) COLLATE pg_catalog."default",
	    CONSTRAINT tb_category_type_pkey PRIMARY KEY (id)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_category_type OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_category_type TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_category_type TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_category_type TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_category_type TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dicionario_dados
	-- DROP TABLE dom.tb_dicionario_dados;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dicionario_dados
	(
	    dd_pk integer NOT NULL DEFAULT nextval('dom.tb_dicionario_dados_dd_pk_seq'::regclass),
	    dd_esquema character varying(200) COLLATE pg_catalog."default",
	    dd_tabela character varying(200) COLLATE pg_catalog."default",
	    dd_coluna character varying(200) COLLATE pg_catalog."default",
	    dd_dominio character varying(200) COLLATE pg_catalog."default",
	    dd_descricao character varying(254) COLLATE pg_catalog."default",
	    dd_nome character varying(200) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dicionario_dados_pkey PRIMARY KEY (dd_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dicionario_dados OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dicionario_dados TO dataviewer;
	GRANT ALL ON TABLE dom.tb_dicionario_dados TO dom;
	GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE dom.tb_dicionario_dados TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dicionario_dados TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dist_format
	-- DROP TABLE dom.tb_dist_format;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dist_format
	(
	    id integer NOT NULL DEFAULT nextval('dom.tb_dist_format_id_seq'::regclass),
	    dm_df_pk integer,
	    dm_df_desc character varying(80) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dist_format_pkey PRIMARY KEY (id)
	) WITH (OIDS = FALSE)TABLESPACE pg_default;

	ALTER TABLE dom.tb_dist_format OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dist_format TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dist_format TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dist_format TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dist_format TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_cd_corpo_prova
	-- DROP TABLE dom.tb_dom_cd_corpo_prova;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_cd_corpo_prova
	(
	    dm_corpo_prova_pk numeric(2,0) NOT NULL,
	    dm_corpo_prova character varying(22) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_cd_corpo_prova_pkey PRIMARY KEY (dm_corpo_prova_pk)
	) WITH (OIDS = FALSE)TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_cd_corpo_prova OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_cd_corpo_prova TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_cd_corpo_prova TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_cd_corpo_prova TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_cd_corpo_prova TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_compacidade_solo
	-- DROP TABLE dom.tb_dom_compacidade_solo;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_compacidade_solo
	(
	    dm_comp_pk numeric(2,0) NOT NULL,
	    dm_comp_desc character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_compacidade_solo_pkey PRIMARY KEY (dm_comp_pk)
	) WITH (OIDS = FALSE)TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_compacidade_solo OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_compacidade_solo TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_compacidade_solo TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_compacidade_solo TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_compacidade_solo TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_controle
	-- DROP TABLE dom.tb_dom_controle;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_controle
	(
	    id integer NOT NULL DEFAULT nextval('dom.tb_dom_controle_id_seq'::regclass),
	    esquema character varying COLLATE pg_catalog."default",
	    tabela character varying COLLATE pg_catalog."default",
	    coluna character varying COLLATE pg_catalog."default",
	    tab_dom character varying COLLATE pg_catalog."default",
	    chave_tb_dom character varying COLLATE pg_catalog."default",
	    col_tb_dom character varying COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_controle_pkey PRIMARY KEY (id)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_controle OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_controle TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_controle TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_controle TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_controle TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_desc_alt
	-- DROP TABLE dom.tb_dom_desc_alt;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_desc_alt
	(
	    dm_desc_alt_pk numeric(2,0) NOT NULL,
	    dm_desc_alt character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_desc_alt_pkey PRIMARY KEY (dm_desc_alt_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_desc_alt OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_desc_alt TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_desc_alt TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_desc_alt TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_desc_alt TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_desc_inc
	-- DROP TABLE dom.tb_dom_desc_inc;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_desc_inc
	(
	    dm_desc_inc_pk numeric(2,0) NOT NULL,
	    dm_desc_inc character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_desc_inc_pkey PRIMARY KEY (dm_desc_inc_pk)
	)WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_desc_inc OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_desc_inc TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_desc_inc TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_desc_inc TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_desc_inc TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_desc_preenc
	-- DROP TABLE dom.tb_dom_desc_preenc;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_desc_preenc
	(
	    dm_desc_preenc_pk numeric(2,0) NOT NULL,
	    dm_desc_preenc_alt character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_desc_preenc_pkey PRIMARY KEY (dm_desc_preenc_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_desc_preenc OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_desc_preenc TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_desc_preenc TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_desc_preenc TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_desc_preenc TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_descont_abertura
	-- DROP TABLE dom.tb_dom_descont_abertura;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_descont_abertura
	(
	    dm_descont_abertura_pk numeric(2,0) NOT NULL,
	    dm_descont_abertura character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_descont_abertura_pkey PRIMARY KEY (dm_descont_abertura_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_descont_abertura OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_descont_abertura TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_descont_abertura TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_descont_abertura TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_descont_abertura TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_descont_rugosidade
	-- DROP TABLE dom.tb_dom_descont_rugosidade;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_descont_rugosidade
	(
	    dm_descont_rugosidade_pk numeric(2,0) NOT NULL,
	    dm_descont_rugosidade character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_descont_rugosidade_pkey PRIMARY KEY (dm_descont_rugosidade_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_descont_rugosidade OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_descont_rugosidade TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_descont_rugosidade TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_descont_rugosidade TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_descont_rugosidade TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_estrut
	-- DROP TABLE dom.tb_dom_estrut;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_estrut
	(
	    dm_estrut_pk numeric(2,0) NOT NULL,
	    dm_estrut character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_estrut_pkey PRIMARY KEY (dm_estrut_pk)
	)WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_estrut OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_estrut TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_estrut TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_estrut TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_estrut TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_finalidade
	-- DROP TABLE dom.tb_dom_finalidade;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_finalidade
	(
	    dm_fin_pk numeric(2,0) NOT NULL,
	    dm_fin character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_finalidade_pkey PRIMARY KEY (dm_fin_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_finalidade OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_finalidade TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_finalidade TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_finalidade TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_finalidade TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_investigacao
	-- DROP TABLE dom.tb_dom_investigacao;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_investigacao
	(
	    dm_inv_pk numeric(2,0) NOT NULL,
	    dm_inv character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_investigacao_ic_pkey PRIMARY KEY (dm_inv_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_investigacao OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_investigacao TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_investigacao TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_investigacao TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_investigacao TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_normas
	-- DROP TABLE dom.tb_dom_normas;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_normas
	(
	    dm_norma_pk numeric(2,0) NOT NULL,
	    dm_norma character varying(100) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_normas_ic_pkey PRIMARY KEY (dm_norma_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_normas OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_normas TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_normas TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_normas TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_normas TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_origem_solo
	-- DROP TABLE dom.tb_dom_origem_solo;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_origem_solo
	(
	    dm_os_pk numeric(2,0) NOT NULL,
	    dm_os_desc character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_origem_solo_pkey PRIMARY KEY (dm_os_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_origem_solo OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_origem_solo TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_origem_solo TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_origem_solo TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_origem_solo TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_textura_solo
	-- DROP TABLE dom.tb_dom_textura_solo;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_textura_solo
	(
	    dm_text_pk numeric(2,0) NOT NULL,
	    dm_text_desc character varying(50) COLLATE pg_catalog."default",
	    CONSTRAINT tb_dom_textura_solo_pkey PRIMARY KEY (dm_text_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_textura_solo OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_textura_solo TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_textura_solo TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_textura_solo TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_textura_solo TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_dom_tipo_amostra
	-- DROP TABLE dom.tb_dom_tipo_amostra;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_dom_tipo_amostra
	(
	    dm_tipo_amostra_pk numeric(2,0) NOT NULL,
	    dm_tipo_amostra character varying(20) COLLATE pg_catalog."default",
	    CONSTRAINT dom_tipo_amostra_pkey PRIMARY KEY (dm_tipo_amostra_pk)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;

	ALTER TABLE dom.tb_dom_tipo_amostra OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_dom_tipo_amostra TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_dom_tipo_amostra TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_dom_tipo_amostra TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_dom_tipo_amostra TO sde;
	-----------------------------------------------------------------------------------
	-- Table: dom.tb_situacao
	-- DROP TABLE dom.tb_situacao;
	-----------------------------------------------------------------------------------
	CREATE TABLE dom.tb_situacao
	(
	    id integer NOT NULL DEFAULT nextval('dom.tb_situacao_id_seq'::regclass),
	    dm_st_pk integer,
	    dm_st_desc character varying(15) COLLATE pg_catalog."default",
	    CONSTRAINT tb_situacao_pkey PRIMARY KEY (id)
	) WITH (OIDS = FALSE) TABLESPACE pg_default;
	ALTER TABLE dom.tb_situacao OWNER to dom;
	GRANT SELECT ON TABLE dom.tb_situacao TO dataviewer;
	GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dom.tb_situacao TO dom;
	GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE dom.tb_situacao TO dom_editor;
	GRANT INSERT, UPDATE, DELETE, SELECT ON TABLE dom.tb_situacao TO sde;
	-----------------------------------------------------------------------------------

	RETURN 'Tabelas de domínio criadas';
	END;
$BODY$			
LANGUAGE plpgsql;


ALTER TABLE public.tabela_dominio() 
    OWNER to public; 	

    
-- DROP FUNCTION public.populando_tabela_dominio() 
CREATE OR REPLACE FUNCTION public.populando_tabela_dominio() 
RETURNS TEXT
AS $BODY$
	BEGIN
	INSERT INTO dom.tb_category_type(id, dm_ct_pk, dm_ct_desc)
		VALUES 
			(1,	0,	'Não informado'),
			(2,	1,	'agriculturaPescaPecuari'),
			(3,	2,	'biotopos'),
			(4,	3,	'limitesAdministrativos'),
			(5,	4,	'climatologiaAtmosfera'),
			(6,	5,	'economia'),
			(7,	6,	'altimetriaBatimetria'),
			(8,	7,	'ambiente'),
			(9,	8,	'geociencias'),
			(10,9,	'saude'),
			(11,10,	'cartografiaDeBaseCoberturasAereasImagensSatelite'),
			(12,11,	'informacaoMilitar'),
			(13,12,	'aguasInteriores'),
			(14,13,	'localizacao'),
			(15,14,	'oceanos'),
			(16,15,	'planejamentoECadastro'),
			(17,16,	'sociedadeECultura'),
			(18,17,	'patrimonioEdificado'),
			(19,18,	'transportes'),
			(20,19,	'concessoesComunicacao'),
			(21,21,	'redesGeodesicas'),
			(22,22,	'mapeamentoBasicoGeografico'),
			(23,23,	'mapeamentoBasicoTopografico'),
			(24,24,	'mapeamentoBasicoCadastral'),
			(25,25,	'imageamentoOrtoimagem'),
			(26,26,	'mapeamentoNautico'),
			(27,27,	'mapeamentoAeronautico'),
			(28,28,	'mapeamentoFundiario'),
			(29,30,	'geografia'),
			(30,31,	'nomesGeograficos'),
			(31,32,	'elevação (altimetria e batimetria)'),
			(32,33,	'LimitesPoliticoAdministrativos (Nacional, Estaduais, Municipais e Distritais)'),
			(33,34,	'climaMeteorologia'),
			(34,35,	'vegetacao'),
			(35,36,	'geologiaRecursosMinerais'),
			(36,37,	'geomorfologia (relevo)'),
			(37,38,	'solos'),
			(38,39,	'monitoramentoAmbiental'),
			(39,40,	'areasProtegidas'),
			(40,41,	'faunaFlora'),
			(41,42,	'biomas'),
			(42,43,	'hidrografiaHidrologia'),
			(43,44,	'agriculturaPecuaria'),
			(44,45,	'pescaAqüicultura'),
			(45,46,	'culturaEsportesLazer'),
			(46,47,	'defesa'),
			(47,48,	'educacao'),
			(48,49,	'saúde'),
			(49,50,	'habitacao'),
			(50,51,	'saneamento'),
			(51,52,	'energia'),
			(52,53,	'serviçosConcessionados'),
			(53,54,	'transporte'),
			(54,55,	'socioeconomia'),
			(55,99,	'normasEspecificacoesEMetodologia');

	RETURN 'Populando as tabelas de domínio.';
	END;
$BODY$			
LANGUAGE plpgsql;