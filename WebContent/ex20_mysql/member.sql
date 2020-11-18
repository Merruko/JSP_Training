-- 잡다 테이블 정리
SHOW TABLES;
DROP TABLE user;

-- member 테이블 생성
-- IF NOT EXISTS : 이미 존재하지 않는다면
CREATE TABLE IF NOT EXISTS member (
	id			VARCHAR(20) NOT NULL,
	passwd		VARCHAR(20) NOT NULL,
	name		VARCHAR(30),
	PRIMARY KEY(id)
)DEFAULT CHARSET=utf8;

DESC member;

INSERT INTO member VALUES ('chu17', '12345', 'Steve');
INSERT INTO member VALUES ('chu18', '12345', '추신수');

SELECT * FROM member;