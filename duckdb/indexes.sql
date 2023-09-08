
--
-- Name: company_id_movie_companies; Type: INDEX; Schema: imdb. Owner: ubuntu
--

--- CREATE INDEX company_id_movie_companies ON imdb.movie_companies  (company_id);


--
-- Name: company_type_id_movie_companies; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX company_type_id_movie_companies ON imdb.movie_companies  (company_type_id);


--
-- Name: info_type_id_movie_info; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX info_type_id_movie_info ON imdb.movie_info  (info_type_id);


--
-- Name: info_type_id_movie_info_idx; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX info_type_id_movie_info_idx ON imdb.movie_info_idx  (info_type_id);


--
-- Name: info_type_id_person_info; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX info_type_id_person_info ON imdb.person_info  (info_type_id);


--
-- Name: keyword_id_movie_keyword; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX keyword_id_movie_keyword ON imdb.movie_keyword  (keyword_id);


--
-- Name: kind_id_aka_title; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX kind_id_aka_title ON imdb.aka_title  (kind_id);


--
-- Name: kind_id_title; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX kind_id_title ON imdb.title  (kind_id);


--
-- Name: link_type_id_movie_link; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX link_type_id_movie_link ON imdb.movie_link  (link_type_id);


--
-- Name: linked_movie_id_movie_link; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX linked_movie_id_movie_link ON imdb.movie_link  (linked_movie_id);


--
-- Name: movie_id_aka_title; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX movie_id_aka_title ON imdb.aka_title  (movie_id);


--
-- Name: movie_id_cast_info; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX movie_id_cast_info ON imdb.cast_info  (movie_id);


--
-- Name: movie_id_complete_cast; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX movie_id_complete_cast ON imdb.complete_cast  (movie_id);


--
-- Name: movie_id_movie_companies; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX movie_id_movie_companies ON imdb.movie_companies  (movie_id);


--
-- Name: movie_id_movie_info; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX movie_id_movie_info ON imdb.movie_info  (movie_id);


--
-- Name: movie_id_movie_info_idx; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX movie_id_movie_info_idx ON imdb.movie_info_idx  (movie_id);


--
-- Name: movie_id_movie_keyword; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX movie_id_movie_keyword ON imdb.movie_keyword  (movie_id);


--
-- Name: movie_id_movie_link; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX movie_id_movie_link ON imdb.movie_link  (movie_id);


--
-- Name: person_id_aka_name; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX person_id_aka_name ON imdb.aka_name  (person_id);


--
-- Name: person_id_cast_info; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX person_id_cast_info ON imdb.cast_info  (person_id);


--
-- Name: person_id_person_info; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX person_id_person_info ON imdb.person_info  (person_id);


--
-- Name: person_role_id_cast_info; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX person_role_id_cast_info ON imdb.cast_info  (person_role_id);


--
-- Name: role_id_cast_info; Type: INDEX; Schema: imdb. Owner: ubuntu
--

CREATE INDEX role_id_cast_info ON imdb.cast_info  (role_id);


--
-- PostgreSQL database dump complete
--

