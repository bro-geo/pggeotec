--complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pggeotec_matviews" to load this file. \quit
--
-- Copyright (c) 2022 Bruno Rodrigues de Oliveira, brunorodriguesoli@gmail.com
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

--REQUIREMENTS

--Postgresql version 11.0+
--PostGIS version 3.0+

--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
--PgGeoTec Matviews Extension Version 1.0 of 04/06/2022 
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------

INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_rotativa_ponto', 'sdg_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_rotativa_ponto', 'sdg_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_rotativa_volume', 'sdg_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_rotativa_volume', 'sdg_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_guelph_ponto', 'ec_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_guelph_ponto', 'ec_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_guelph_volume', 'ec_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_guelph_volume', 'ec_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_ponto_campo_rocha', 'i_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_ponto_campo_solo', 'i_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_mista_ponto', 'sdg_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_mista_ponto', 'sdg_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_mista_volume', 'sdg_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_mista_volume', 'sdg_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_percussao_ponto', 'sdg_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_percussao_ponto', 'sdg_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_percussao_volume', 'sdg_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_percussao_volume', 'sdg_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_trado_ponto', 'sdg_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_trado_ponto', 'sdg_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_trado_volume', 'sdg_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'ic', 'vm_sondagem_trado_volume', 'sdg_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_adensamento_ponto', 'ad_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_adensamento_ponto', 'ad_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_adensamento_volume', 'ad_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_adensamento_volume', 'ad_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_atterberg', 'la_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_atterberg', 'la_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_cisalhamento_direto_ponto', 'cd_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_cisalhamento_direto_ponto', 'cd_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_cisalhamento_direto_volume', 'cd_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_cisalhamento_direto_volume', 'cd_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_compactacao_ponto', 'c_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_compactacao_ponto', 'c_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_compactacao_volume', 'c_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_compactacao_volume', 'c_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_compressao_simples_pontos', 'co_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_compressao_simples_pontos', 'co_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_compressao_simples_volume', 'co_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_compressao_simples_volume', 'co_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_isc_pontos', 'isc_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_isc_pontos', 'isc_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_isc_volume', 'isc_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_isc_volume', 'isc_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_perm_constante_pontos', 'pco_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_perm_constante_pontos', 'pco_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_perm_constante_volume', 'pco_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_perm_constante_volume', 'pco_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_perm_variavel_pontos', 'pva_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_perm_variavel_pontos', 'pva_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_perm_variavel_volume', 'pva_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_perm_variavel_volume', 'pva_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_triaxial_pontos', 't_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_triaxial_pontos', 't_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_triaxial_volume', 't_geociu_pf', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_triaxial_volume', 't_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_indice_fisico', 'if_geociu', 'btree');
INSERT INTO pggeotec.pggeotec_index_columns VALUES (current_database(), 'el', 'vm_ensaio_indice_fisico', 'if_geociu_pf', 'btree');


INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_umidade', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_cisalhamento_direto_ponto', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_cisalhamento_direto_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_compactacao_ponto', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_compactacao_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_compressao_simples_pontos', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_compressao_simples_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_isc_pontos', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_isc_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_perm_constante_pontos', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_perm_constante_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_perm_variavel_pontos', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_perm_variavel_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_triaxial_pontos', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_triaxial_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_indice_fisico', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_adensamento_ponto', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_adensamento_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_sondagem_trado_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_sondagem_trado_ponto', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_sondagem_percussao_ponto', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_sondagem_percussao_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_sondagem_mista_ponto', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_sondagem_mista_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_ponto_campo_solo', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_sondagem_rotativa_ponto', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_sondagem_rotativa_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_guelph_ponto', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_guelph_volume', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'ic', 'vm_ponto_campo_rocha', 'SELECT', 'dataviewer');
INSERT INTO pggeotec.pggeotec_permissions_tables VALUES (current_database(), 'el', 'vm_ensaio_atterberg', 'SELECT', 'dataviewer');

--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- VIEWS - IMPLEMENTATION PART 8
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------

CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_sondagem_rotativa_ponto
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_depth_na, 
	investigacoes_consulta.i_depth_na24,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    sond.sdg_geociu, 
	sond.sdg_depth, 
	sond.sdg_geociu_pf, 
	sond.sdg_cota_in,
    sond.sdg_cota_fd, 
	sond.sdg_compr, 
	sond.sdg_raio, 
	sond.sdg_incli, 
	sond.sdg_azim, 
	sond.geom,
    rotativa_consulta.src_litotipo,
    rotativa_consulta.src_descricao,
    rotativa_consulta.src_alter,
    rotativa_consulta.src_coer,
    rotativa_consulta.src_frat,
    rotativa_consulta.src_rqd,
    rotativa_consulta.src_recup,
    rotativa_consulta.src_tm_rqd,
    rotativa_consulta.src_tm_rec,
    rotativa_consulta.src_nm_frag,
    rotativa_consulta.src_abert_desc,
    rotativa_consulta.src_rugos_desc,
    rotativa_consulta.src_inc_desc,
    rotativa_consulta.src_preenc_desc,
    rotativa_consulta.src_alt_desc,
    rotativa_consulta.src_obs
   FROM ic.sondagens AS sond
     JOIN ( SELECT rotativa.src_geociu,
            rotativa.src_profund,
            rotativa.src_geociu_pf,
            rotativa.src_litotipo,
            rotativa.src_descricao,
            rotativa.src_alter,
            rotativa.src_coer,
            rotativa.src_frat,
            rotativa.src_rqd,
            rotativa.src_recup,
            rotativa.src_tm_rqd,
            rotativa.src_tm_rec,
            rotativa.src_nm_frag,
            rotativa.src_abert_desc,
            rotativa.src_rugos_desc,
            rotativa.src_inc_desc,
            rotativa.src_preenc_desc,
            rotativa.src_alt_desc,
            rotativa.src_obs
           FROM ic.rotativa) rotativa_consulta ON sond.sdg_geociu_pf::text = rotativa_consulta.src_geociu_pf::text
     LEFT JOIN ( SELECT investigacoes.i_cod,
                        investigacoes.i_name,
                        investigacoes.i_type,
                        investigacoes.i_norm,
                        investigacoes.i_lat,
                        investigacoes.i_long,
                        investigacoes.i_date_ini,
                        investigacoes.i_date_fim,
                        investigacoes.i_operador,
                        investigacoes.i_company,
                        investigacoes.i_adress,
                        investigacoes.i_equip,
                        investigacoes.i_elev_boca,
                        investigacoes.i_depth_total,
                        investigacoes.i_depth_imp,
                        investigacoes.i_depth_rev,
                        investigacoes.i_depth_na,
                        investigacoes.i_depth_na24,
                        investigacoes.i_obs,
                        investigacoes.i_anex,
                        investigacoes.i_purpose,
                        investigacoes.i_font,
						investigacoes.i_geociu
           FROM ic.investigacoes
          WHERE investigacoes.i_type = 4::numeric) investigacoes_consulta ON sond.sdg_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_sondagem_rotativa_ponto
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------
CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_sondagem_rotativa_volume
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_depth_na, 
	investigacoes_consulta.i_depth_na24,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    sond.sdg_geociu, 
	sond.sdg_depth, 
	sond.sdg_geociu_pf, 
	sond.sdg_cota_in,
    sond.sdg_cota_fd, 
	sond.sdg_compr, 
	sond.sdg_raio, 
	sond.sdg_incli, 
	sond.sdg_azim, 
	sond.geom3d,
    rotativa_consulta.src_litotipo,
    rotativa_consulta.src_descricao,
    rotativa_consulta.src_alter,
    rotativa_consulta.src_coer,
    rotativa_consulta.src_frat,
    rotativa_consulta.src_rqd,
    rotativa_consulta.src_recup,
    rotativa_consulta.src_tm_rqd,
    rotativa_consulta.src_tm_rec,
    rotativa_consulta.src_nm_frag,
    rotativa_consulta.src_abert_desc,
    rotativa_consulta.src_rugos_desc,
    rotativa_consulta.src_inc_desc,
    rotativa_consulta.src_preenc_desc,
    rotativa_consulta.src_alt_desc,
    rotativa_consulta.src_obs
   FROM ic.sondagens AS sond
     JOIN ( SELECT rotativa.src_geociu,
            rotativa.src_profund,
            rotativa.src_geociu_pf,
            rotativa.src_litotipo,
            rotativa.src_descricao,
            rotativa.src_alter,
            rotativa.src_coer,
            rotativa.src_frat,
            rotativa.src_rqd,
            rotativa.src_recup,
            rotativa.src_tm_rqd,
            rotativa.src_tm_rec,
            rotativa.src_nm_frag,
            rotativa.src_abert_desc,
            rotativa.src_rugos_desc,
            rotativa.src_inc_desc,
            rotativa.src_preenc_desc,
            rotativa.src_alt_desc,
            rotativa.src_obs
           FROM ic.rotativa) rotativa_consulta ON sond.sdg_geociu_pf::text = rotativa_consulta.src_geociu_pf::text
     LEFT JOIN ( SELECT investigacoes.i_cod,
                        investigacoes.i_name,
                        investigacoes.i_type,
                        investigacoes.i_norm,
                        investigacoes.i_lat,
                        investigacoes.i_long,
                        investigacoes.i_date_ini,
                        investigacoes.i_date_fim,
                        investigacoes.i_operador,
                        investigacoes.i_company,
                        investigacoes.i_adress,
                        investigacoes.i_equip,
                        investigacoes.i_elev_boca,
                        investigacoes.i_depth_total,
                        investigacoes.i_depth_imp,
                        investigacoes.i_depth_rev,
                        investigacoes.i_depth_na,
                        investigacoes.i_depth_na24,
                        investigacoes.i_obs,
                        investigacoes.i_anex,
                        investigacoes.i_purpose,
                        investigacoes.i_font,
						investigacoes.i_geociu
           FROM ic.investigacoes
          WHERE investigacoes.i_type = 4::numeric) investigacoes_consulta ON sond.sdg_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_sondagem_rotativa_volume
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------
CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_guelph_ponto
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    ensaios_campo.ec_geociu,
    ensaios_campo.ec_profund,
    ensaios_campo.ec_geociu_pf ,
    ensaios_campo.ec_cota_in,
    ensaios_campo.ec_cota_fd ,
    ensaios_campo.ec_compr ,
    ensaios_campo.ec_raio,
    ensaios_campo.ec_incli,
    ensaios_campo.ec_azim,
    ensaios_campo.geom,
    consulta_guelph.gu_nome,
    consulta_guelph.gu_parameter,
    consulta_guelph.gu_ff,
    consulta_guelph.gu_raio,
    consulta_guelph.gu_inf_r1,
    consulta_guelph.gu_inf_r2,
    consulta_guelph.gu_metodo,
    consulta_guelph.gu_coef_perm,
    consulta_guelph.gu_carga_1,
    consulta_guelph.gu_carga_2
   FROM ic.ensaios_campo ensaios_campo
     JOIN ( SELECT guelph.gu_pk,
            guelph.gu_geociu,
            guelph.gu_prof,
            guelph.gu_geociu_pf,
            guelph.gu_nome,
            guelph.gu_parameter,
            guelph.gu_ff,
            guelph.gu_raio,
            guelph.gu_inf_r1,
            guelph.gu_inf_r2,
            guelph.gu_metodo,
            guelph.gu_coef_perm,
            guelph.gu_carga_1,
            guelph.gu_carga_2
           FROM ic.guelph) consulta_guelph ON ensaios_campo.ec_geociu_pf::text = consulta_guelph.gu_geociu_pf::text
     LEFT JOIN ( SELECT investigacoes.i_cod, 
                        investigacoes.i_name,
                        investigacoes.i_type, 
                        investigacoes.i_norm,
                        investigacoes.i_lat, 
                        investigacoes.i_long,
                        investigacoes.i_date_ini, 
                        investigacoes.i_date_fim,
                        investigacoes.i_operador, 
                        investigacoes.i_company,
                        investigacoes.i_adress, 
                        investigacoes.i_equip,
                        investigacoes.i_elev_boca, 
                        investigacoes.i_depth_total,
                        investigacoes.i_depth_imp, 
                        investigacoes.i_depth_rev,
                        investigacoes.i_obs, 
                        investigacoes.i_anex,
                        investigacoes.i_purpose, 
                        investigacoes.i_font,
                        investigacoes.i_geociu
           FROM ic.investigacoes
          WHERE investigacoes.i_type = 9::numeric) investigacoes_consulta ON ensaios_campo.ec_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_guelph_ponto
    OWNER TO ic;


--------------------------------------------------------------------------------------------------------
CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_guelph_volume
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    ensaios_campo.ec_geociu,
    ensaios_campo.ec_profund,
    ensaios_campo.ec_geociu_pf ,
    ensaios_campo.ec_cota_in,
    ensaios_campo.ec_cota_fd ,
    ensaios_campo.ec_compr ,
    ensaios_campo.ec_raio,
    ensaios_campo.ec_incli,
    ensaios_campo.ec_azim,
    ensaios_campo.geom3d,
    consulta_guelph.gu_nome,
    consulta_guelph.gu_parameter,
    consulta_guelph.gu_ff,
    consulta_guelph.gu_raio,
    consulta_guelph.gu_inf_r1,
    consulta_guelph.gu_inf_r2,
    consulta_guelph.gu_metodo,
    consulta_guelph.gu_coef_perm,
    consulta_guelph.gu_carga_1,
    consulta_guelph.gu_carga_2
   FROM ic.ensaios_campo ensaios_campo
     JOIN ( SELECT guelph.gu_pk,
            guelph.gu_geociu,
            guelph.gu_prof,
            guelph.gu_geociu_pf,
            guelph.gu_nome,
            guelph.gu_parameter,
            guelph.gu_ff,
            guelph.gu_raio,
            guelph.gu_inf_r1,
            guelph.gu_inf_r2,
            guelph.gu_metodo,
            guelph.gu_coef_perm,
            guelph.gu_carga_1,
            guelph.gu_carga_2
           FROM ic.guelph) consulta_guelph ON ensaios_campo.ec_geociu_pf::text = consulta_guelph.gu_geociu_pf::text
     LEFT JOIN ( SELECT investigacoes.i_cod, 
                        investigacoes.i_name,
                        investigacoes.i_type, 
                        investigacoes.i_norm,
                        investigacoes.i_lat, 
                        investigacoes.i_long,
                        investigacoes.i_date_ini, 
                        investigacoes.i_date_fim,
                        investigacoes.i_operador, 
                        investigacoes.i_company,
                        investigacoes.i_adress, 
                        investigacoes.i_equip,
                        investigacoes.i_elev_boca, 
                        investigacoes.i_depth_total,
                        investigacoes.i_depth_imp, 
                        investigacoes.i_depth_rev,
                        investigacoes.i_obs, 
                        investigacoes.i_anex,
                        investigacoes.i_purpose, 
                        investigacoes.i_font,
                        investigacoes.i_geociu
           FROM ic.investigacoes
          WHERE investigacoes.i_type = 9::numeric) investigacoes_consulta ON ensaios_campo.ec_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_guelph_volume
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------
CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_ponto_campo_rocha
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    inv.i_pk,
    inv.i_cod,
    inv.i_name,
    inv.i_type,
    inv.i_norm,
    inv.i_long,
    inv.i_lat,
    inv.i_elev,
    inv.i_date_ini,
    inv.i_date_fim,
    inv.i_operador,
    inv.i_company,
    inv.i_equip,
    inv.i_elev_boca,
    inv.i_depth_total,
    inv.i_depth_imp,
    inv.i_depth_rev,
    inv.i_depth_na,
    inv.data_edit,
    inv.user_edit,
    inv.i_geociu,
    inv.geom,
    inv.i_adress,
    inv.i_anex,
    inv.i_obs,
    inv.i_depth_na24,
    inv.i_font,
    inv.i_purpose,
    pt_campo_rocha_consulta.pr_geociu,
    pt_campo_rocha_consulta.pr_litotipo,
    pt_campo_rocha_consulta.pr_geo_desc,
    pt_campo_rocha_consulta.pr_est_geo,
    pt_campo_rocha_consulta.pr_est_azi,
    pt_campo_rocha_consulta.pr_est_merg,
    pt_campo_rocha_consulta.pr_alter,
    pt_campo_rocha_consulta.pr_coer,
    pt_campo_rocha_consulta.pr_frat,
    pt_campo_rocha_consulta.pr_preenc,
    pt_campo_rocha_consulta.pr_abert,
    pt_campo_rocha_consulta.pr_rug,
    pt_campo_rocha_consulta.pr_alt,
    pt_campo_rocha_consulta.pr_fen_geodin,
    pt_campo_rocha_consulta.pr_anexo,
    pt_campo_rocha_consulta.pr_obs
   FROM ic.investigacoes inv
     RIGHT JOIN ( SELECT pt_campo_rocha.pr_pk,
            pt_campo_rocha.pr_geociu,
            pt_campo_rocha.pr_litotipo,
            pt_campo_rocha.pr_geo_desc,
            pt_campo_rocha.pr_est_geo,
            pt_campo_rocha.pr_est_azi,
            pt_campo_rocha.pr_est_merg,
            pt_campo_rocha.pr_alter,
            pt_campo_rocha.pr_coer,
            pt_campo_rocha.pr_frat,
            pt_campo_rocha.pr_preenc,
            pt_campo_rocha.pr_abert,
            pt_campo_rocha.pr_rug,
            pt_campo_rocha.pr_alt,
            pt_campo_rocha.pr_fen_geodin,
            pt_campo_rocha.pr_anexo,
            pt_campo_rocha.pr_obs
           FROM ic.pt_campo_rocha pt_campo_rocha) pt_campo_rocha_consulta ON inv.i_geociu::text = pt_campo_rocha_consulta.pr_geociu::text
WITH DATA;

ALTER TABLE ic.vm_ponto_campo_rocha
    OWNER TO ic;


--------------------------------------------------------------------------------------------------------
CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_ponto_campo_solo
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    inv.i_pk,
    inv.i_cod,
    inv.i_name,
    inv.i_type,
    inv.i_norm,
    inv.i_long,
    inv.i_lat,
    inv.i_elev,
    inv.i_date_ini,
    inv.i_date_fim,
    inv.i_operador,
    inv.i_company,
    inv.i_equip,
    inv.i_elev_boca,
    inv.i_depth_total,
    inv.i_depth_imp,
    inv.i_depth_rev,
    inv.i_depth_na,
    inv.data_edit,
    inv.user_edit,
    inv.i_geociu,
    inv.geom,
    inv.i_adress,
    inv.i_anex,
    inv.i_obs,
    inv.i_depth_na24,
    inv.i_font,
    inv.i_purpose,
    pt_campo_solo_consulta.pcs_pk,
    pt_campo_solo_consulta.pcs_geociu,
    pt_campo_solo_consulta.pcs_nome,
    pt_campo_solo_consulta.psc_uso_solo,
    pt_campo_solo_consulta.psc_cobert_veg,
    pt_campo_solo_consulta.pcs_pedologia,
    pt_campo_solo_consulta.pcs_geomorf,
    pt_campo_solo_consulta.psc_fen_geodin,
    pt_campo_solo_consulta.pcs_pedo_desc,
    pt_campo_solo_consulta.pcs_text_prim,
    pt_campo_solo_consulta.pcs_text_sec,
    pt_campo_solo_consulta.pcs_text_comp,
    pt_campo_solo_consulta.pcs_os_desc,
    pt_campo_solo_consulta.psc_trecho_in,
    pt_campo_solo_consulta.psc_trecho_fim,
    pt_campo_solo_consulta.psc_espess,
    pt_campo_solo_consulta.pcs_anexo,
    pt_campo_solo_consulta.pcs_obs
   FROM ic.investigacoes inv
     RIGHT JOIN ( SELECT pt_campo_solo.pcs_pk,
            pt_campo_solo.pcs_geociu,
            pt_campo_solo.pcs_nome,
            pt_campo_solo.psc_uso_solo,
            pt_campo_solo.psc_cobert_veg,
            pt_campo_solo.pcs_pedologia,
            pt_campo_solo.pcs_geomorf,
            pt_campo_solo.psc_fen_geodin,
            pt_campo_solo.pcs_pedo_desc,
            pt_campo_solo.pcs_text_prim,
            pt_campo_solo.pcs_text_sec,
            pt_campo_solo.pcs_text_comp,
            pt_campo_solo.pcs_os_desc,
            pt_campo_solo.psc_trecho_in,
            pt_campo_solo.psc_trecho_fim,
            pt_campo_solo.psc_espess,
            pt_campo_solo.pcs_anexo,
            pt_campo_solo.pcs_obs
           FROM ic.pt_campo_solo pt_campo_solo) pt_campo_solo_consulta ON inv.i_geociu::text = pt_campo_solo_consulta.pcs_geociu::text
WITH DATA;

ALTER TABLE ic.vm_ponto_campo_solo
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------
CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_sondagem_mista_ponto
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_depth_na, 
	investigacoes_consulta.i_depth_na24,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    sond.sdg_geociu, 
	sond.sdg_depth, 
	sond.sdg_geociu_pf, 
	sond.sdg_cota_in,
    sond.sdg_cota_fd, 
	sond.sdg_compr, 
	sond.sdg_raio, 
	sond.sdg_incli, 
	sond.sdg_azim, 
	sond.geom,
    percussao_consulta.spc_text_prim,
    percussao_consulta.spc_text_sec,
    percussao_consulta.spc_text_comp,
    percussao_consulta.spc_cor,
    percussao_consulta.spc_golpes_15cm,
    percussao_consulta.spc_golpes_30cm,
    percussao_consulta.spc_golpes_45cm,
    percussao_consulta.spc_penet_15cm,
    percussao_consulta.spc_penet_30cm,
    percussao_consulta.spc_penet_45cm,
    percussao_consulta.spc_spt15,
    percussao_consulta.spc_spt30,
    percussao_consulta.spc_spt45,
    percussao_consulta.spc_inic,
    percussao_consulta.spc_final,
    percussao_consulta.spc_lav_et1,
    percussao_consulta.spc_lav_et2,
    percussao_consulta.spc_lav_et3,
    percussao_consulta.spc_lav_final,
    percussao_consulta.spc_comp,
    percussao_consulta.spc_os_desc,
    percussao_consulta.spc_obs,
    rotativa_consulta.src_litotipo,
    rotativa_consulta.src_descricao,
    rotativa_consulta.src_alter,
    rotativa_consulta.src_coer,
    rotativa_consulta.src_frat,
    rotativa_consulta.src_rqd,
    rotativa_consulta.src_recup,
    rotativa_consulta.src_tm_rqd,
    rotativa_consulta.src_tm_rec,
    rotativa_consulta.src_nm_frag,
    rotativa_consulta.src_abert_desc,
    rotativa_consulta.src_rugos_desc,
    rotativa_consulta.src_inc_desc,
    rotativa_consulta.src_preenc_desc,
    rotativa_consulta.src_alt_desc,
    rotativa_consulta.src_obs
   FROM ic.sondagens sond
     JOIN ( SELECT rotativa.src_geociu,
            rotativa.src_profund,
            rotativa.src_geociu_pf,
            rotativa.src_litotipo,
            rotativa.src_descricao,
            rotativa.src_alter,
            rotativa.src_coer,
            rotativa.src_frat,
            rotativa.src_rqd,
            rotativa.src_recup,
            rotativa.src_tm_rqd,
            rotativa.src_tm_rec,
            rotativa.src_nm_frag,
            rotativa.src_abert_desc,
            rotativa.src_rugos_desc,
            rotativa.src_inc_desc,
            rotativa.src_preenc_desc,
            rotativa.src_alt_desc,
            rotativa.src_obs
           FROM ic.rotativa) rotativa_consulta ON sond.sdg_geociu_pf::text = rotativa_consulta.src_geociu_pf::text
     LEFT JOIN ( SELECT perc.spc_geociu_pf,
            perc.spc_text_prim,
            perc.spc_text_sec,
            perc.spc_text_comp,
            perc.spc_cor,
            perc.spc_golpes_15cm,
            perc.spc_golpes_30cm,
            perc.spc_golpes_45cm,
            perc.spc_penet_15cm,
            perc.spc_penet_30cm,
            perc.spc_penet_45cm,
            perc.spc_spt15,
            perc.spc_spt30,
            perc.spc_spt45,
            perc.spc_inic,
            perc.spc_final,
            perc.spc_lav_et1,
            perc.spc_lav_et2,
            perc.spc_lav_et3,
            perc.spc_lav_final,
            perc.spc_comp,
            perc.spc_os_desc,
            perc.spc_obs
           FROM ic.percussao perc) percussao_consulta ON sond.sdg_geociu_pf::text = percussao_consulta.spc_geociu_pf::text
     LEFT JOIN ( SELECT 
            investigacoes.i_cod,
            investigacoes.i_name,
            investigacoes.i_type,
            investigacoes.i_norm,
            investigacoes.i_lat,
            investigacoes.i_long,
            investigacoes.i_date_ini,
            investigacoes.i_date_fim,
            investigacoes.i_operador,
            investigacoes.i_company,
            investigacoes.i_adress,
            investigacoes.i_equip,
            investigacoes.i_elev_boca,
            investigacoes.i_depth_total,
            investigacoes.i_depth_imp,
            investigacoes.i_depth_rev,
            investigacoes.i_depth_na,
            investigacoes.i_depth_na24,
            investigacoes.i_obs,
            investigacoes.i_anex,
            investigacoes.i_purpose,
            investigacoes.i_font,
            investigacoes.i_geociu
           FROM ic.investigacoes) investigacoes_consulta ON sond.sdg_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_sondagem_mista_ponto
    OWNER TO ic;


--------------------------------------------------------------------------------------------------------
CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_sondagem_mista_volume
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_depth_na, 
	investigacoes_consulta.i_depth_na24,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    sond.sdg_geociu, 
	sond.sdg_depth, 
	sond.sdg_geociu_pf, 
	sond.sdg_cota_in,
    sond.sdg_cota_fd, 
	sond.sdg_compr, 
	sond.sdg_raio, 
	sond.sdg_incli, 
	sond.sdg_azim, 
	sond.geom3d,
    percussao_consulta.spc_text_prim,
    percussao_consulta.spc_text_sec,
    percussao_consulta.spc_text_comp,
    percussao_consulta.spc_cor,
    percussao_consulta.spc_golpes_15cm,
    percussao_consulta.spc_golpes_30cm,
    percussao_consulta.spc_golpes_45cm,
    percussao_consulta.spc_penet_15cm,
    percussao_consulta.spc_penet_30cm,
    percussao_consulta.spc_penet_45cm,
    percussao_consulta.spc_spt15,
    percussao_consulta.spc_spt30,
    percussao_consulta.spc_spt45,
    percussao_consulta.spc_inic,
    percussao_consulta.spc_final,
    percussao_consulta.spc_lav_et1,
    percussao_consulta.spc_lav_et2,
    percussao_consulta.spc_lav_et3,
    percussao_consulta.spc_lav_final,
    percussao_consulta.spc_comp,
    percussao_consulta.spc_os_desc,
    percussao_consulta.spc_obs,
    rotativa_consulta.src_litotipo,
    rotativa_consulta.src_descricao,
    rotativa_consulta.src_alter,
    rotativa_consulta.src_coer,
    rotativa_consulta.src_frat,
    rotativa_consulta.src_rqd,
    rotativa_consulta.src_recup,
    rotativa_consulta.src_tm_rqd,
    rotativa_consulta.src_tm_rec,
    rotativa_consulta.src_nm_frag,
    rotativa_consulta.src_abert_desc,
    rotativa_consulta.src_rugos_desc,
    rotativa_consulta.src_inc_desc,
    rotativa_consulta.src_preenc_desc,
    rotativa_consulta.src_alt_desc,
    rotativa_consulta.src_obs
   FROM ic.sondagens sond
     JOIN ( SELECT rotativa.src_geociu,
            rotativa.src_profund,
            rotativa.src_geociu_pf,
            rotativa.src_litotipo,
            rotativa.src_descricao,
            rotativa.src_alter,
            rotativa.src_coer,
            rotativa.src_frat,
            rotativa.src_rqd,
            rotativa.src_recup,
            rotativa.src_tm_rqd,
            rotativa.src_tm_rec,
            rotativa.src_nm_frag,
            rotativa.src_abert_desc,
            rotativa.src_rugos_desc,
            rotativa.src_inc_desc,
            rotativa.src_preenc_desc,
            rotativa.src_alt_desc,
            rotativa.src_obs
           FROM ic.rotativa) rotativa_consulta ON sond.sdg_geociu_pf::text = rotativa_consulta.src_geociu_pf::text
     LEFT JOIN ( SELECT perc.spc_geociu_pf,
            perc.spc_text_prim,
            perc.spc_text_sec,
            perc.spc_text_comp,
            perc.spc_cor,
            perc.spc_golpes_15cm,
            perc.spc_golpes_30cm,
            perc.spc_golpes_45cm,
            perc.spc_penet_15cm,
            perc.spc_penet_30cm,
            perc.spc_penet_45cm,
            perc.spc_spt15,
            perc.spc_spt30,
            perc.spc_spt45,
            perc.spc_inic,
            perc.spc_final,
            perc.spc_lav_et1,
            perc.spc_lav_et2,
            perc.spc_lav_et3,
            perc.spc_lav_final,
            perc.spc_comp,
            perc.spc_os_desc,
            perc.spc_obs
           FROM ic.percussao perc) percussao_consulta ON sond.sdg_geociu_pf::text = percussao_consulta.spc_geociu_pf::text
     LEFT JOIN ( SELECT 
            investigacoes.i_cod,
            investigacoes.i_name,
            investigacoes.i_type,
            investigacoes.i_norm,
            investigacoes.i_lat,
            investigacoes.i_long,
            investigacoes.i_date_ini,
            investigacoes.i_date_fim,
            investigacoes.i_operador,
            investigacoes.i_company,
            investigacoes.i_adress,
            investigacoes.i_equip,
            investigacoes.i_elev_boca,
            investigacoes.i_depth_total,
            investigacoes.i_depth_imp,
            investigacoes.i_depth_rev,
            investigacoes.i_depth_na,
            investigacoes.i_depth_na24,
            investigacoes.i_obs,
            investigacoes.i_anex,
            investigacoes.i_purpose,
            investigacoes.i_font,
            investigacoes.i_geociu
           FROM ic.investigacoes) investigacoes_consulta ON sond.sdg_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_sondagem_mista_volume
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_sondagem_percussao_ponto
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_depth_na, 
	investigacoes_consulta.i_depth_na24,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    sond.sdg_geociu, 
	sond.sdg_depth, 
	sond.sdg_geociu_pf, 
	sond.sdg_cota_in,
    sond.sdg_cota_fd, 
	sond.sdg_compr, 
	sond.sdg_raio, 
	sond.sdg_incli, 
	sond.sdg_azim, 
	sond.geom,
    percussao_consulta.spc_text_prim,
    percussao_consulta.spc_text_sec,
    percussao_consulta.spc_text_comp,
    percussao_consulta.spc_cor,
    percussao_consulta.spc_golpes_15cm,
    percussao_consulta.spc_golpes_30cm,
    percussao_consulta.spc_golpes_45cm,
    percussao_consulta.spc_penet_15cm,
    percussao_consulta.spc_penet_30cm,
    percussao_consulta.spc_penet_45cm,
    percussao_consulta.spc_spt15,
    percussao_consulta.spc_spt30,
    percussao_consulta.spc_spt45,
    percussao_consulta.spc_inic,
    percussao_consulta.spc_final,
    percussao_consulta.spc_lav_et1,
    percussao_consulta.spc_lav_et2,
    percussao_consulta.spc_lav_et3,
    percussao_consulta.spc_lav_final,
    percussao_consulta.spc_comp,
    percussao_consulta.spc_os_desc,
    percussao_consulta.spc_obs
   FROM ic.sondagens sond
     JOIN ( SELECT perc.spc_geociu_pf,
            perc.spc_text_prim,
            perc.spc_text_sec,
            perc.spc_text_comp,
            perc.spc_cor,
            perc.spc_golpes_15cm,
            perc.spc_golpes_30cm,
            perc.spc_golpes_45cm,
            perc.spc_penet_15cm,
            perc.spc_penet_30cm,
            perc.spc_penet_45cm,
            perc.spc_spt15,
            perc.spc_spt30,
            perc.spc_spt45,
            perc.spc_inic,
            perc.spc_final,
            perc.spc_lav_et1,
            perc.spc_lav_et2,
            perc.spc_lav_et3,
            perc.spc_lav_final,
            perc.spc_comp,
            perc.spc_os_desc,
            perc.spc_obs
           FROM ic.percussao perc) percussao_consulta ON sond.sdg_geociu_pf::text = percussao_consulta.spc_geociu_pf::text
     LEFT JOIN ( SELECT investigacoes.i_cod,
            investigacoes.i_name,
            investigacoes.i_type,
            investigacoes.i_norm,
            investigacoes.i_lat,
            investigacoes.i_long,
            investigacoes.i_date_ini,
            investigacoes.i_date_fim,
            investigacoes.i_operador,
            investigacoes.i_company,
            investigacoes.i_adress,
            investigacoes.i_equip,
            investigacoes.i_elev_boca,
            investigacoes.i_depth_total,
            investigacoes.i_depth_imp,
            investigacoes.i_depth_rev,
            investigacoes.i_depth_na,
            investigacoes.i_depth_na24,
            investigacoes.i_obs,
            investigacoes.i_anex,
            investigacoes.i_purpose,
            investigacoes.i_font,
            investigacoes.i_geociu
           FROM ic.investigacoes) investigacoes_consulta ON sond.sdg_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_sondagem_percussao_ponto
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_sondagem_percussao_volume
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_depth_na, 
	investigacoes_consulta.i_depth_na24,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    sond.sdg_geociu, 
	sond.sdg_depth, 
	sond.sdg_geociu_pf, 
	sond.sdg_cota_in,
    sond.sdg_cota_fd, 
	sond.sdg_compr, 
	sond.sdg_raio, 
	sond.sdg_incli, 
	sond.sdg_azim, 
	sond.geom3d,
    percussao_consulta.spc_text_prim,
    percussao_consulta.spc_text_sec,
    percussao_consulta.spc_text_comp,
    percussao_consulta.spc_cor,
    percussao_consulta.spc_golpes_15cm,
    percussao_consulta.spc_golpes_30cm,
    percussao_consulta.spc_golpes_45cm,
    percussao_consulta.spc_penet_15cm,
    percussao_consulta.spc_penet_30cm,
    percussao_consulta.spc_penet_45cm,
    percussao_consulta.spc_spt15,
    percussao_consulta.spc_spt30,
    percussao_consulta.spc_spt45,
    percussao_consulta.spc_inic,
    percussao_consulta.spc_final,
    percussao_consulta.spc_lav_et1,
    percussao_consulta.spc_lav_et2,
    percussao_consulta.spc_lav_et3,
    percussao_consulta.spc_lav_final,
    percussao_consulta.spc_comp,
    percussao_consulta.spc_os_desc,
    percussao_consulta.spc_obs
   FROM ic.sondagens sond
     JOIN ( SELECT perc.spc_geociu_pf,
            perc.spc_text_prim,
            perc.spc_text_sec,
            perc.spc_text_comp,
            perc.spc_cor,
            perc.spc_golpes_15cm,
            perc.spc_golpes_30cm,
            perc.spc_golpes_45cm,
            perc.spc_penet_15cm,
            perc.spc_penet_30cm,
            perc.spc_penet_45cm,
            perc.spc_spt15,
            perc.spc_spt30,
            perc.spc_spt45,
            perc.spc_inic,
            perc.spc_final,
            perc.spc_lav_et1,
            perc.spc_lav_et2,
            perc.spc_lav_et3,
            perc.spc_lav_final,
            perc.spc_comp,
            perc.spc_os_desc,
            perc.spc_obs
           FROM ic.percussao perc) percussao_consulta ON sond.sdg_geociu_pf::text = percussao_consulta.spc_geociu_pf::text
     LEFT JOIN ( SELECT investigacoes.i_cod,
            investigacoes.i_name,
            investigacoes.i_type,
            investigacoes.i_norm,
            investigacoes.i_lat,
            investigacoes.i_long,
            investigacoes.i_date_ini,
            investigacoes.i_date_fim,
            investigacoes.i_operador,
            investigacoes.i_company,
            investigacoes.i_adress,
            investigacoes.i_equip,
            investigacoes.i_elev_boca,
            investigacoes.i_depth_total,
            investigacoes.i_depth_imp,
            investigacoes.i_depth_rev,
            investigacoes.i_depth_na,
            investigacoes.i_depth_na24,
            investigacoes.i_obs,
            investigacoes.i_anex,
            investigacoes.i_purpose,
            investigacoes.i_font,
            investigacoes.i_geociu
           FROM ic.investigacoes) investigacoes_consulta ON sond.sdg_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_sondagem_percussao_volume
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------

CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_sondagem_trado_volume
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_depth_na, 
	investigacoes_consulta.i_depth_na24,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    sond.sdg_geociu,
    sond.sdg_depth,
    sond.sdg_geociu_pf,
    sond.sdg_cota_in,
    sond.sdg_cota_fd,
    sond.sdg_compr,
    sond.sdg_raio,
    sond.sdg_incli,
    sond.sdg_azim,
    sond.geom3d,
    trado_consulta.stc_text_prim,
    trado_consulta.stc_text_sec,
    trado_consulta.stc_text_comp,
    trado_consulta.stc_cor,
    trado_consulta.stc_os_desc,
    trado_consulta.stc_obs
   FROM ic.sondagens sond
     JOIN ( SELECT trad.stc_geociu_pf,
            trad.stc_text_prim,
            trad.stc_text_sec,
            trad.stc_text_comp,
            trad.stc_cor,
            trad.stc_os_desc,
            trad.stc_obs
           FROM ic.trado trad) trado_consulta ON sond.sdg_geociu_pf::text = trado_consulta.stc_geociu_pf::text
     LEFT JOIN ( SELECT investigacoes.i_cod,
            investigacoes.i_name,
            investigacoes.i_type,
            investigacoes.i_norm,
            investigacoes.i_lat,
            investigacoes.i_long,
            investigacoes.i_date_ini,
            investigacoes.i_date_fim,
            investigacoes.i_operador,
            investigacoes.i_company,
            investigacoes.i_adress,
            investigacoes.i_equip,
            investigacoes.i_elev_boca,
            investigacoes.i_depth_total,
            investigacoes.i_depth_imp,
            investigacoes.i_depth_rev,
            investigacoes.i_depth_na,
            investigacoes.i_depth_na24,
            investigacoes.i_obs,
            investigacoes.i_anex,
            investigacoes.i_purpose,
            investigacoes.i_font,
            investigacoes.i_geociu
           FROM ic.investigacoes) investigacoes_consulta ON sond.sdg_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_sondagem_trado_volume
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------

CREATE MATERIALIZED VIEW IF NOT EXISTS ic.vm_sondagem_trado_ponto
TABLESPACE pg_default
AS
 SELECT row_number() OVER (ORDER BY 0::integer) AS objectid,
    investigacoes_consulta.i_cod, 
	investigacoes_consulta.i_name,
    investigacoes_consulta.i_type, 
	investigacoes_consulta.i_norm,
    investigacoes_consulta.i_lat, 
	investigacoes_consulta.i_long,
    investigacoes_consulta.i_date_ini, 
	investigacoes_consulta.i_date_fim,
    investigacoes_consulta.i_operador, 
	investigacoes_consulta.i_company,
    investigacoes_consulta.i_adress, 
	investigacoes_consulta.i_equip,
    investigacoes_consulta.i_elev_boca, 
	investigacoes_consulta.i_depth_total,
    investigacoes_consulta.i_depth_imp, 
	investigacoes_consulta.i_depth_rev,
    investigacoes_consulta.i_depth_na, 
	investigacoes_consulta.i_depth_na24,
    investigacoes_consulta.i_obs, 
	investigacoes_consulta.i_anex,
    investigacoes_consulta.i_purpose, 
	investigacoes_consulta.i_font,
    sond.sdg_geociu,
    sond.sdg_depth,
    sond.sdg_geociu_pf,
    sond.sdg_cota_in,
    sond.sdg_cota_fd,
    sond.sdg_compr,
    sond.sdg_raio,
    sond.sdg_incli,
    sond.sdg_azim,
    sond.geom,
    trado_consulta.stc_text_prim,
    trado_consulta.stc_text_sec,
    trado_consulta.stc_text_comp,
    trado_consulta.stc_cor,
    trado_consulta.stc_os_desc,
    trado_consulta.stc_obs
   FROM ic.sondagens sond
     JOIN ( SELECT trad.stc_geociu_pf,
            trad.stc_text_prim,
            trad.stc_text_sec,
            trad.stc_text_comp,
            trad.stc_cor,
            trad.stc_os_desc,
            trad.stc_obs
           FROM ic.trado trad) trado_consulta ON sond.sdg_geociu_pf::text = trado_consulta.stc_geociu_pf::text
     LEFT JOIN ( SELECT investigacoes.i_cod,
            investigacoes.i_name,
            investigacoes.i_type,
            investigacoes.i_norm,
            investigacoes.i_lat,
            investigacoes.i_long,
            investigacoes.i_date_ini,
            investigacoes.i_date_fim,
            investigacoes.i_operador,
            investigacoes.i_company,
            investigacoes.i_adress,
            investigacoes.i_equip,
            investigacoes.i_elev_boca,
            investigacoes.i_depth_total,
            investigacoes.i_depth_imp,
            investigacoes.i_depth_rev,
            investigacoes.i_depth_na,
            investigacoes.i_depth_na24,
            investigacoes.i_obs,
            investigacoes.i_anex,
            investigacoes.i_purpose,
            investigacoes.i_font,
            investigacoes.i_geociu
           FROM ic.investigacoes) investigacoes_consulta ON sond.sdg_geociu::text = investigacoes_consulta.i_geociu::text
WITH DATA;

ALTER TABLE ic.vm_sondagem_trado_ponto
    OWNER TO ic;

--------------------------------------------------------------------------------------------------------

CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_adensamento_ponto
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (adensamento.ad_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    adensamento.ad_pk,
    adensamento.ad_geociu,
    adensamento.ad_geociu_pf,
    adensamento.ad_ident,
    adensamento.ad_peso_esp_in,
    adensamento.ad_peso_esp_fn,
    adensamento.ad_ivi,
    adensamento.ad_grau_sat,
    adensamento.ad_cv,
    adensamento.ad_h50,
    adensamento.ad_t50,
    adensamento.ad_t90,
    adensamento.ad_cc,
    adensamento.ad_e1,
    adensamento.ad_e2,
    adensamento.ad_p1,
    adensamento.ad_p2,
    adensamento.ad_pre_adens,
    adensamento.ad_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte,
    ensaio_consulta.e_raio,
    ensaio_consulta.e_altura
   FROM el.adensamento adensamento
     LEFT JOIN ( SELECT 
            ens.e_geociu,
            ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte,
            ens.e_altura,
            ens.e_raio,
            ens.geom
           FROM el.ensaios ens) ensaio_consulta ON adensamento.ad_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON adensamento.ad_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE adensamento.ad_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_adensamento_ponto
    OWNER TO el;

--------------------------------------------------------------------------------------------------------

CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_adensamento_volume
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (adensamento.ad_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    adensamento.ad_pk,
    adensamento.ad_geociu,
    adensamento.ad_geociu_pf,
    adensamento.ad_ident,
    adensamento.ad_peso_esp_in,
    adensamento.ad_peso_esp_fn,
    adensamento.ad_ivi,
    adensamento.ad_grau_sat,
    adensamento.ad_cv,
    adensamento.ad_h50,
    adensamento.ad_t50,
    adensamento.ad_t90,
    adensamento.ad_cc,
    adensamento.ad_e1,
    adensamento.ad_e2,
    adensamento.ad_p1,
    adensamento.ad_p2,
    adensamento.ad_pre_adens,
    adensamento.ad_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom3d,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte,
    ensaio_consulta.e_raio,
    ensaio_consulta.e_altura
   FROM el.adensamento adensamento
     LEFT JOIN ( SELECT 
            ens.e_geociu,
            ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte,
            ens.e_altura,
            ens.e_raio,
            ens.geom3d
           FROM el.ensaios ens) ensaio_consulta ON adensamento.ad_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON adensamento.ad_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE adensamento.ad_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_adensamento_volume
    OWNER TO el;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_cisalhamento_direto_ponto
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (cisalhamento_direto.cd_pk) 
 row_number() OVER (ORDER BY 0::integer) AS objectid,
    cisalhamento_direto.cd_pk,
    cisalhamento_direto.cd_geociu,
    cisalhamento_direto.cd_geociu_pf,
    cisalhamento_direto.cd_ident,
    cisalhamento_direto.cd_tv_inicial,
    cisalhamento_direto.cd_tc_inicial,
    cisalhamento_direto.cd_desl_inicial,
    cisalhamento_direto.cd_tv_pico,
    cisalhamento_direto.cd_tc_pico,
    cisalhamento_direto.cd_desl_pico,
    cisalhamento_direto.cd_tv_final,
    cisalhamento_direto.cd_tc_pospico,
    cisalhamento_direto.cd_desl_pospico,
    cisalhamento_direto.cd_umi_inicial,
    cisalhamento_direto.cd_uni_final,
    cisalhamento_direto.cd_meg,
    cisalhamento_direto.cd_poro,
    cisalhamento_direto.cd_gs,
    cisalhamento_direto.cd_ind_vazios,
    cisalhamento_direto.cd_peso_esp_sol,
    cisalhamento_direto.cd_peso_esp_nat,
    cisalhamento_direto.cd_peso_esp_seco,
    cisalhamento_direto.cd_peso_esp_sat,
    cisalhamento_direto.cd_pesp_esp_sub,
    cisalhamento_direto.cd_veloc,
    cisalhamento_direto.cd_corpo_prova,
    cisalhamento_direto.cd_area_corr,
    cisalhamento_direto.cd_area_corr_pospico,
    cisalhamento_direto.cd_fnap,
    cisalhamento_direto.cd_tnc,
    cisalhamento_direto.cd_ttg,
    cisalhamento_direto.cd_ang_atrito,
    cisalhamento_direto.cd_interc_coesao,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.cisalhamento_direto cisalhamento_direto
     LEFT JOIN ( SELECT 
            ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte,
            ens.geom
           FROM el.ensaios ens) ensaio_consulta ON cisalhamento_direto.cd_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT 
            amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON cisalhamento_direto.cd_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE cisalhamento_direto.cd_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_cisalhamento_direto_ponto
    OWNER TO el;
--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_cisalhamento_direto_volume
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (cisalhamento_direto.cd_pk) 
 row_number() OVER (ORDER BY 0::integer) AS objectid,
    cisalhamento_direto.cd_pk,
    cisalhamento_direto.cd_geociu,
    cisalhamento_direto.cd_geociu_pf,
    cisalhamento_direto.cd_ident,
    cisalhamento_direto.cd_tv_inicial,
    cisalhamento_direto.cd_tc_inicial,
    cisalhamento_direto.cd_desl_inicial,
    cisalhamento_direto.cd_tv_pico,
    cisalhamento_direto.cd_tc_pico,
    cisalhamento_direto.cd_desl_pico,
    cisalhamento_direto.cd_tv_final,
    cisalhamento_direto.cd_tc_pospico,
    cisalhamento_direto.cd_desl_pospico,
    cisalhamento_direto.cd_umi_inicial,
    cisalhamento_direto.cd_uni_final,
    cisalhamento_direto.cd_meg,
    cisalhamento_direto.cd_poro,
    cisalhamento_direto.cd_gs,
    cisalhamento_direto.cd_ind_vazios,
    cisalhamento_direto.cd_peso_esp_sol,
    cisalhamento_direto.cd_peso_esp_nat,
    cisalhamento_direto.cd_peso_esp_seco,
    cisalhamento_direto.cd_peso_esp_sat,
    cisalhamento_direto.cd_pesp_esp_sub,
    cisalhamento_direto.cd_veloc,
    cisalhamento_direto.cd_corpo_prova,
    cisalhamento_direto.cd_area_corr,
    cisalhamento_direto.cd_area_corr_pospico,
    cisalhamento_direto.cd_fnap,
    cisalhamento_direto.cd_tnc,
    cisalhamento_direto.cd_ttg,
    cisalhamento_direto.cd_ang_atrito,
    cisalhamento_direto.cd_interc_coesao,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom3d,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.cisalhamento_direto cisalhamento_direto
     LEFT JOIN ( SELECT 
            ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte,
            ens.geom3d
           FROM el.ensaios ens) ensaio_consulta ON cisalhamento_direto.cd_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT 
            amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON cisalhamento_direto.cd_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE cisalhamento_direto.cd_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_cisalhamento_direto_volume
    OWNER TO el;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_compactacao_ponto
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (compactacao.c_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    compactacao.c_pk,
    compactacao.c_geociu,
    compactacao.c_geociu_pf,
    compactacao.c_ident,
    compactacao.c_peso_molde,
    compactacao.c_amostra_peso,
    compactacao.c_amostra_cmd,
    compactacao.c_dens_ot,
    compactacao.c_umid_ot,
    compactacao.c_obs,
    compactacao.c_energia,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.compactacao compactacao
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON compactacao.c_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON compactacao.c_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE compactacao.c_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_compactacao_ponto
    OWNER TO el;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_compactacao_volume
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (compactacao.c_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    compactacao.c_pk,
    compactacao.c_geociu,
    compactacao.c_geociu_pf,
    compactacao.c_ident,
    compactacao.c_peso_molde,
    compactacao.c_amostra_peso,
    compactacao.c_amostra_cmd,
    compactacao.c_dens_ot,
    compactacao.c_umid_ot,
    compactacao.c_obs,
    compactacao.c_energia,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom3d,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.compactacao compactacao
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom3d,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON compactacao.c_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON compactacao.c_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE compactacao.c_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_compactacao_volume
    OWNER TO el;
--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_compressao_simples_pontos
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (compressao_simples.co_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    compressao_simples.co_geociu,
    compressao_simples.co_geociu_pf,
    compressao_simples.co_ident,
    compressao_simples.co_veloc,
    compressao_simples.co_peso_am,
    compressao_simples.co_peso_niv,
    compressao_simples.co_umidade,
    compressao_simples.co_anel,
    compressao_simples.co_res_comp,
    compressao_simples.co_res_cis,
    compressao_simples.co_atrito,
    compressao_simples.co_coesao,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.compressao_simples compressao_simples
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON compressao_simples.co_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON compressao_simples.co_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE compressao_simples.co_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_compressao_simples_pontos
    OWNER TO el;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_compressao_simples_volume
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (compressao_simples.co_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    compressao_simples.co_geociu,
    compressao_simples.co_geociu_pf,
    compressao_simples.co_ident,
    compressao_simples.co_veloc,
    compressao_simples.co_peso_am,
    compressao_simples.co_peso_niv,
    compressao_simples.co_umidade,
    compressao_simples.co_anel,
    compressao_simples.co_res_comp,
    compressao_simples.co_res_cis,
    compressao_simples.co_atrito,
    compressao_simples.co_coesao,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom3d,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.compressao_simples compressao_simples
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom3d,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON compressao_simples.co_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON compressao_simples.co_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE compressao_simples.co_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_compressao_simples_volume
    OWNER TO el;

--------------------------------------------------------------------------------------------------------

CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_isc_pontos
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (isc.isc_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    isc.isc_geociu,
    isc.isc_geociu_pf,
    isc.isc_ident,
    isc.isc_energia,
    isc.isc_camadas,
    isc.isc_umidade,
    isc.isc_mas_esp,
    isc.isc_expansao,
    isc.isc_valor,
    isc.isc_obs,
    isc.isc_altura,
    isc.isc_raio,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.isc isc
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON isc.isc_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON isc.isc_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE isc.isc_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_isc_pontos
    OWNER TO el;
--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_isc_volume
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (isc.isc_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    isc.isc_geociu,
    isc.isc_geociu_pf,
    isc.isc_ident,
    isc.isc_energia,
    isc.isc_camadas,
    isc.isc_umidade,
    isc.isc_mas_esp,
    isc.isc_expansao,
    isc.isc_valor,
    isc.isc_obs,
    isc.isc_altura,
    isc.isc_raio,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom3d,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.isc isc
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom3d,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON isc.isc_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON isc.isc_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE isc.isc_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_isc_volume
    OWNER TO el;
--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_perm_constante_pontos
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (pco.pco_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    pco.pco_geociu,
    pco.pco_geociu_pf,
    pco.pco_ident,
    pco.pco_carga_hid,
    pco.pco_tempo,
    pco.pco_permeab,
    pco.pco_ic,
    pco.pco_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.perm_const pco
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON pco.pco_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON pco.pco_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE pco.pco_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_perm_constante_pontos
    OWNER TO el;
--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_perm_constante_volume
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (pco.pco_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    pco.pco_geociu,
    pco.pco_geociu_pf,
    pco.pco_ident,
    pco.pco_carga_hid,
    pco.pco_tempo,
    pco.pco_permeab,
    pco.pco_ic,
    pco.pco_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom3d,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.perm_const pco
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom3d,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON pco.pco_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON pco.pco_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE pco.pco_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_perm_constante_volume
    OWNER TO el;
--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_perm_variavel_pontos
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (pva.pva_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    pva.pva_geociu,
    pva.pva_geociu_pf,
    pva.pva_ident,
    pva.pva_carga_hid,
    pva.pva_tubo_area,
    pva.pva_tempo_inic,
    pva.pva_tempo_final,
    pva.pva_permeab,
	pva.pva_ic,
	pva.pva_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.perm_var pva
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON pva.pva_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON pva.pva_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE pva.pva_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_perm_variavel_pontos
    OWNER TO el;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_perm_variavel_volume
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (pva.pva_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    pva.pva_geociu,
    pva.pva_geociu_pf,
    pva.pva_ident,
    pva.pva_carga_hid,
    pva.pva_tubo_area,
    pva.pva_tempo_inic,
    pva.pva_tempo_final,
    pva.pva_permeab,
	pva.pva_ic,
	pva.pva_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom3d,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.perm_var pva
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom3d,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON pva.pva_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON pva.pva_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE pva.pva_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_perm_variavel_volume
    OWNER TO el;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_triaxial_pontos
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (triaxial.t_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    triaxial.t_geociu,
    triaxial.t_geociu_pf,
    triaxial.t_ident,
    triaxial.t_tensao_conf,
    triaxial.t_poro,
    triaxial.t_tensao_efet,
    triaxial.t_dreno_lat,
    triaxial.t_veloc_cis,
    triaxial.t_pressao_tcr,
    triaxial.t_pressao_tar,
    triaxial.t_pressao_ecr,
    triaxial.t_pressao_ear,
    triaxial.t_pressao_dr,
    triaxial.t_af,
    triaxial.t_atrito,
    triaxial.t_coesao,
    triaxial.t_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.triaxial AS triaxial
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON triaxial.t_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON triaxial.t_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE triaxial.t_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_triaxial_pontos
    OWNER TO el;


--------------------------------------------------------------------------------------------------------

CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_triaxial_volume
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (triaxial.t_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    triaxial.t_geociu,
    triaxial.t_geociu_pf,
    triaxial.t_ident,
    triaxial.t_tensao_conf,
    triaxial.t_poro,
    triaxial.t_tensao_efet,
    triaxial.t_dreno_lat,
    triaxial.t_veloc_cis,
    triaxial.t_pressao_tcr,
    triaxial.t_pressao_tar,
    triaxial.t_pressao_ecr,
    triaxial.t_pressao_ear,
    triaxial.t_pressao_dr,
    triaxial.t_af,
    triaxial.t_atrito,
    triaxial.t_coesao,
    triaxial.t_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom3d,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.triaxial AS triaxial
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom3d,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON triaxial.t_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON triaxial.t_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE triaxial.t_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_triaxial_volume
    OWNER TO el;


--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_indice_fisico
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (indice_fisico.if_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    indice_fisico.if_geociu,
    indice_fisico.if_geociu_pf,
    indice_fisico.if_ident,
    indice_fisico.if_me,
    indice_fisico.if_me_seca,
    indice_fisico.if_me_seca_ot,
    indice_fisico.if_me_sat,
    indice_fisico.if_me_sub,
    indice_fisico.if_me_solid,
    indice_fisico.if_e_min,
    indice_fisico.if_e_max,
    indice_fisico.if_e,
    indice_fisico.if_e_critico,
    indice_fisico.if_e_inicial,
    indice_fisico.if_poro,
    indice_fisico.if_grau_sat,
    indice_fisico.if_dens_relat,
    indice_fisico.if_pe,
    indice_fisico.if_pe_seco,
    indice_fisico.if_pe_sat,
    indice_fisico.if_pe_sub,
    indice_fisico.if_pe_solid,
    indice_fisico.if_teor_um_vol,
    indice_fisico.if_teor_um,
    indice_fisico.if_obs,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.indice_fisico indice_fisico
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON indice_fisico.if_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON indice_fisico.if_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE indice_fisico.if_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_indice_fisico
    OWNER TO el;

--------------------------------------------------------------------------------------------------------


CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_umidade
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (umidade.u_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    umidade.u_geociu,
    umidade.u_geociu_pf,
    umidade.u_ident,
    umidade.u_massa,
    umidade.u_solo_ur,
    umidade.u_solo_sr,
    umidade.u_recipiente,
    umidade.u_solo_seco,
    umidade.u_perda_umid,
    umidade.u_umidade,
    umidade.u_obs,
    umidade.u_higro,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.umidade umidade
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.geom,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte
           FROM el.ensaios ens) ensaio_consulta ON umidade.u_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT amostras.am_geociu,
            amostras.am_geociu_pf,
            amostras.am_text_prim,
            amostras.am_text_sec,
            amostras.am_text_comp,
            amostras.am_comp,
            amostras.am_os_desc,
            amostras.am_litotipo,
            amostras.am_tipo,
            amostras.am_descricao,
            amostras.am_anexo
           FROM el.amostras amostras) amostra_consulta ON umidade.u_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE umidade.u_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_umidade
    OWNER TO el;
--------------------------------------------------------------------------------------------------------

-- View: el.vm_ensaio_atterberg
-- DROP MATERIALIZED VIEW el.vm_ensaio_atterberg;

CREATE MATERIALIZED VIEW IF NOT EXISTS el.vm_ensaio_atterberg
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (atterberg.la_pk) row_number() OVER (ORDER BY 0::integer) AS objectid,
    atterberg.la_pk,
    atterberg.la_geociu,
    atterberg.la_geociu_pf,
    atterberg.la_lp,
    atterberg.la_limit_liq,
    atterberg.la_arg_ativ,
    atterberg.la_ind_plast,
    atterberg.la_anexo,
    atterberg.la_obs,
    amostra_consulta.am_geociu,
    amostra_consulta.am_geociu_pf,
    amostra_consulta.am_text_prim,
    amostra_consulta.am_text_sec,
    amostra_consulta.am_text_comp,
    amostra_consulta.am_comp,
    amostra_consulta.am_os_desc,
    amostra_consulta.am_litotipo,
    amostra_consulta.am_tipo,
    amostra_consulta.am_descricao,
    amostra_consulta.am_anexo,
    ensaio_consulta.geom,
    amostra_consulta.am_ident,
    ensaio_consulta.e_geociu_pf,
    ensaio_consulta.e_lat,
    ensaio_consulta.e_long,
    ensaio_consulta.e_elev,
    ensaio_consulta.e_equip,
    ensaio_consulta.e_tipo,
    ensaio_consulta.e_data_ini,
    ensaio_consulta.e_data_fim,
    ensaio_consulta.e_operador,
    ensaio_consulta.e_empresa,
    ensaio_consulta.e_anexo,
    ensaio_consulta.e_obs,
    ensaio_consulta.e_nome,
    ensaio_consulta.e_fonte
   FROM el.atterberg atterberg
     LEFT JOIN ( SELECT ens.e_geociu_pf,
            ens.e_lat,
            ens.e_long,
            ens.e_elev,
            ens.e_equip,
            ens.e_tipo,
            ens.e_data_ini,
            ens.e_data_fim,
            ens.e_operador,
            ens.e_empresa,
            ens.e_anexo,
            ens.e_obs,
            ens.e_nome,
            ens.e_fonte,
            ens.geom
           FROM el.ensaios ens) ensaio_consulta ON atterberg.la_geociu_pf::text = ensaio_consulta.e_geociu_pf::text
     LEFT JOIN ( SELECT ens.am_geociu,
            ens.am_geociu_pf,
            ens.am_text_prim,
            ens.am_text_sec,
            ens.am_text_comp,
            ens.am_comp,
            ens.am_os_desc,
            ens.am_litotipo,
            ens.am_tipo,
            ens.am_descricao,
            ens.am_anexo,
            ens.am_ident
           FROM el.amostras ens) amostra_consulta ON atterberg.la_geociu_pf::text = amostra_consulta.am_geociu_pf::text
  WHERE atterberg.la_geociu_pf IS NOT NULL
WITH DATA;

ALTER TABLE el.vm_ensaio_atterberg
    OWNER TO el;

--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
-- FUNÇÕES - IMPLEMENTATION PART 7
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------

----------------------------------------------------
--FUNCTION pggeotec.validateSelectedGeociu(geociu text)
----------------------------------------------------

CREATE OR REPLACE FUNCTION pggeotec.validateSelectedGeociu(geociu text)
	RETURNS TABLE (geociu_query text, 
					type_investigation integer, 
					count_tests integer, 
					count_samples integer,
					auger integer,
					spt integer,
					rotativa integer,
					guelph integer,
					aneis_concentricos integer,
					palheta integer,
					panda integer,
					cone integer,
					indicador_na integer,
					piezometro integer,
					pt_rocha integer,
					pt_solo integer,
					trincheira integer,
					sondagens integer,
					instrumentacao integer,
					ensaio_campo integer,
					project text,
					has_project boolean)
					LANGUAGE 'plpgsql'
	AS $BODY$
		DECLARE
		time_ timestamp;
		type_investigation integer;
		count_tests integer;
		count_samples integer;
		auger integer;
		spt integer;
		rotativa integer;
		guelph integer;
		aneis_concentricos integer;
		palheta integer;
		panda integer;
		cone integer;
		indicador_na integer;
		piezometro integer;
		pt_rocha integer;
		pt_solo integer;
		trincheira integer;
		sondagens integer;
		instrumentacao integer;
		ensaio_campo integer;
		project text;
		has_project boolean;

		BEGIN
			time_ := timeofday();
			RAISE NOTICE 'BEGIN OF PROCESS IN : %', time_;

			type_investigation := (SELECT i_type FROM ic.investigacoes WHERE i_geociu = geociu);
			count_tests := (SELECT Count(*)::integer FROM el.ensaios WHERE e_geociu = geociu);
			count_samples := (SELECT Count(*)::integer FROM el.amostras WHERE am_geociu = geociu);
			auger :=  (SELECT Count(*)::integer FROM ic.trado WHERE stc_geociu = geociu);
			spt :=  (SELECT Count(*)::integer FROM ic.percussao WHERE spc_geociu = geociu);
			rotativa :=  (SELECT Count(*)::integer FROM ic.rotativa WHERE src_geociu = geociu);
			trincheira :=  (SELECT Count(*)::integer FROM ic.trincheira WHERE tr_geociu = geociu);
			guelph :=  (SELECT Count(*)::integer FROM ic.guelph WHERE gu_geociu = geociu);
			aneis_concentricos :=  (SELECT Count(*)::integer FROM ic.aneis_concentricos WHERE ac_geociu = geociu);
			palheta :=  (SELECT Count(*)::integer FROM ic.palheta WHERE pa_geociu = geociu);
			panda :=  (SELECT Count(*)::integer FROM ic.panda WHERE pp_geociu = geociu);
			cone :=  (SELECT Count(*)::integer FROM ic.cone WHERE cp_geociu = geociu);
			indicador_na :=  (SELECT Count(*)::integer FROM ic.indicador_na WHERE ina_geociu = geociu);
			piezometro :=  (SELECT Count(*)::integer FROM ic.piezometro WHERE pz_geociu = geociu);
			pt_rocha :=  (SELECT Count(*)::integer FROM ic.pt_campo_rocha WHERE pr_geociu = geociu);
			pt_solo :=  (SELECT Count(*)::integer FROM ic.pt_campo_solo WHERE pcs_geociu = geociu);
			sondagens :=  (SELECT Count(*) FROM ic.sondagens WHERE sdg_geociu = geociu);
			instrumentacao := (SELECT Count(*)::integer FROM ic.instrumentacao WHERE ins_geociu = geociu);
			ensaio_campo :=  (SELECT Count(*)::integer FROM ic.ensaios_campo WHERE ec_geociu = geociu);
			project :=  (SELECT i_project::text FROM ic.investigacoes WHERE i_geociu = geociu);
			has_project := (CASE project IN (SELECT p_project::text FROM ic.projetos) WHEN TRUE THEN TRUE ELSE FALSE END);

			IF (has_project IS FALSE) THEN
				RAISE EXCEPTION 'INVÁLIDO - INVESTIGAÇÃO NÃO TEM PROJETO RELACIONADO.';
			ELSIF (type_investigation = 1) THEN -- SONDAGEM A TRADO
				IF (sondagens = auger) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS DA SONDAGEM A TRADO E DA TABELA DE SONDAGENS SÃO DIFERENTES';
				ELSIF (auger = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA SONDAGEM A TRADO É NULO';
				ELSIF (sondagens = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE SONDAGEM É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS DA SONDAGEM A TRADO E DA TABELA DE SONDAGENS NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 2) THEN -- SONDAGEM A PERCUSSÃO
				IF (sondagens = spt) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS DA SONDAGEM A PERCUSSÃO E DA TABELA DE SONDAGENS SÃO DIFERENTES';
				ELSIF (spt = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA SONDAGEM A PERCUSSÃO É NULO';
				ELSIF (sondagens = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE SONDAGEM É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS DA SONDAGEM A PERCUSSÃO E DA TABELA DE SONDAGENS NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 3) THEN -- SONDAGEM ROTATIVA
				IF (sondagens = rotativa) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS DA SONDAGEM A ROTATIVA E DA TABELA DE SONDAGENS SÃO DIFERENTES';
				ELSIF (rotativa = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA SONDAGEM A ROTATIVA É NULO';
				ELSIF (sondagens = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE SONDAGEM É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS DA SONDAGEM A ROTATIVA E DA TABELA DE SONDAGENS NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 4) THEN -- SONDAGEM MISTA
				IF (sondagens = rotativa) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS DA SONDAGEM A ROTATIVA E DA TABELA DE SONDAGENS SÃO DIFERENTES';
				ELSIF (rotativa = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA SONDAGEM A ROTATIVA É NULO';
				ELSIF (spt = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA SONDAGEM A PERCUSSÃO É NULO';
				ELSIF (sondagens = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE SONDAGEM É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS DA SONDAGEM A ROTATIVA E DA TABELA DE SONDAGENS NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 5) THEN -- MAPEAMENTO
				IF (pt_rocha = 0 AND pt_solo = 0) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE PERFIS DE SOLO OU PONTOS DE ROCHA SÃO NULOS';
				ELSIF (pt_rocha = 0) THEN
					RAISE NOTICE 'ATENÇÃO - NÚMERO DE REGISTROS NA TABELA DE PONTOS DE ROCHA É NULO';
				ELSIF (pt_solo = 0) THEN
					RAISE NOTICE 'ATENÇÃO - NÚMERO DE REGISTROS NA TABELA DE PERFIS DE SOLO É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS NA TABELA DE PERFIS DE SOLO OU PONTOS DE ROCHA NÃO SÃO NULOS';
				END IF;
			ELSIF (type_investigation = 6) THEN -- TRINCHEIRA
				IF (trincheira = 0) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE TRINCHEIRA É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS DA TRINCHEIRA NÃO É NULO';
				END IF;
			ELSIF (type_investigation = 7) THEN -- CONE/PIEZOCONE
				IF (ensaio_campo = cone) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO E DA TABELA DE CONE SÃO DIFERENTES';
				ELSIF (ensaio_campo = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO É NULO';
				ELSIF (cone = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE CONE É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO E DA TABELA DE CONE NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 8) THEN -- POÇO DE INSPEÇÃO
				IF (trincheira = 0) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE TRINCHEIRA É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS DA TRINCHEIRA NÃO É NULO';
				END IF;
			ELSIF (type_investigation = 9) THEN -- PERMEÂMETRO GUELPH
				IF (ensaio_campo = guelph) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO E DA TABELA DE GUELPH SÃO DIFERENTES';
				ELSIF (ensaio_campo = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO É NULO';
				ELSIF (guelph = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE GUELPH É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO E DA TABELA DE GUELPH NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 10) THEN -- ANÉIS CONCÊNTRICOS
				IF (ensaio_campo = aneis_concentricos) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO E DA TABELA DE ANEIS CONCENTRICOS SÃO DIFERENTES';
				ELSIF (ensaio_campo = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO É NULO';
				ELSIF (aneis_concentricos = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE ANEIS CONCENTRICOS É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO E DA TABELA DE ANEIS CONCENTRICOS NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 11) THEN -- PENETRÔMETRO PANDA
				IF (ensaio_campo = panda) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO E DA TABELA DE PENETROMETRO PANDA SÃO DIFERENTES';
				ELSIF (ensaio_campo = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO É NULO';
				ELSIF (panda = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE PENETROMETRO PANDA  É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS NA TABELA DOS ENSAIOS DE CAMPO E DA TABELA DE PENETROMETRO PANDA NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 12) THEN -- PROVA DE CARGA
				RAISE NOTICE 'NÃO IMPLEMENTADO';
			ELSIF (type_investigation = 13) THEN -- PIEZÔMETRO
				IF (instrumentacao = piezometro) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE INSTRUMENTAÇÃO E DA TABELA DE PIEZOMETRO SÃO DIFERENTES';
				ELSIF (instrumentacao = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE INSTRUMENTAÇÃO É NULO';
				ELSIF (piezometro = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE PIEZOMETRO É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS NA TABELA DE INSTRUMENTAÇÃO E DA TABELA DE PIEZOMETRO NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 14) THEN -- PONTO DE COLETA
				IF (count_samples = 0) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE AMOSTRAS É NULO';
				ELSIF (count_tests = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE ENSAIOS É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS NA TABELA DE AMOSTRAS E NA TABELA DE ENSAIOS NÃO SÃO NULOS';
				END IF;
			ELSIF (type_investigation = 34) THEN -- POÇO TUBULAR 
				IF (instrumentacao = indicador_na) THEN 
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE INSTRUMENTAÇÃO E DA TABELA DE INDICADOR DE NÍVEL DE ÁGUA SÃO DIFERENTES';
				ELSIF (instrumentacao = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE INSTRUMENTAÇÃO É NULO';
				ELSIF (indicador_na = 0) THEN
					RAISE EXCEPTION 'INVÁLIDO - NÚMERO DE REGISTROS NA TABELA DE INDICADOR DE NÍVEL DE ÁGUA  É NULO';
				ELSE
					RAISE NOTICE 'VÁLIDO - NÚMERO DE REGISTROS NA TABELA DE INSTRUMENTAÇÃO E DA TABELA DE INDICADOR DE NÍVEL DE ÁGUA NÃO SÃO DIFERENTES';
				END IF;
			ELSIF (type_investigation = 35) THEN -- VANE TEST
				RAISE NOTICE 'NÃO IMPLEMENTADO';
			ELSE
				RAISE NOTICE 'NENHUM ERRO DE CÓDIGO ENCONTRADO';
			END IF;

			RETURN QUERY
			SELECT 	
					geociu,
					type_investigation, 
					count_tests, 
					count_samples,
					auger,
					spt,
					rotativa,
					guelph,
					aneis_concentricos,
					palheta,
					panda,
					cone,
					indicador_na,
					piezometro,
					pt_rocha,
					pt_solo,
					trincheira,
					sondagens,
					instrumentacao,
					ensaio_campo,
					project,
					has_project;

		END;
	$BODY$;


ALTER FUNCTION pggeotec.validateSelectedGeociu(geociu text)
    OWNER TO pggeotec;





