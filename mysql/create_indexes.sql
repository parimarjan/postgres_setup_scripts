CREATE INDEX movie_info1 ON movie_info(movie_id);
CREATE INDEX movie_info2 ON movie_info(info_type_id);

CREATE INDEX movie_ii1 ON movie_info_idx(movie_id);
CREATE INDEX movie_ii2 ON movie_info_idx(info_type_id);

CREATE INDEX akat ON aka_title(kind_id);
CREATE INDEX title1 ON title(kind_id);
CREATE INDEX movie_link1 ON movie_link(link_type_id);
CREATE INDEX movie_link2 ON movie_link(linked_movie_id);
CREATE INDEX movie_link3 ON movie_link(movie_id);

CREATE INDEX movie_keyword1 ON movie_keyword(movie_id);
CREATE INDEX movie_keyword2 ON movie_keyword(keyword_id);
CREATE INDEX movie_companies1 ON movie_companies(company_id);
CREATE INDEX movie_companies2 ON movie_companies(company_type_id);
CREATE INDEX movie_companies3 ON movie_companies(movie_id);

CREATE INDEX ci1 ON cast_info(movie_id);
CREATE INDEX ci2 ON cast_info(person_id);
CREATE INDEX ci3 ON cast_info(role_id);
CREATE INDEX ci4 ON cast_info(person_role_id);

CREATE INDEX aka_name1 ON aka_name(person_id);
CREATE INDEX pi1 ON person_info(info_type_id);
CREATE INDEX pi2 ON person_info(person_id);
