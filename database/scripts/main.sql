-- User table
CREATE TABLE users (
    User_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    Username VARCHAR(50),
    Password VARCHAR(255),
    Created BIGINT
);

-- Different levels
CREATE TABLE levels (
    LevelID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    LevelName VARCHAR(255),
    MaxEntries INT NOT NULL
);

-- User progress
CREATE TABLE level_progress (
    ProgressID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    UserID INT NOT NULL,
    LevelID INT NOT NULL,
    Progress INT DEFAULT 0,
    
    FOREIGN KEY (UserID) REFERENCES users(User_ID),
    FOREIGN KEY (LevelID) REFERENCES levels(LevelID)
);

-- Level data
INSERT INTO levels (LevelName, MaxEntries) VALUES
    ('Hiragana Basic', 46),
    ('Hiragana Extended', 25),

-- Hiragana table
CREATE TABLE hiragana (
    HiraID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    Symbol VARCHAR(5),
    Translation VARCHAR(5)
);

-- load Hiragana characters data
INSERT INTO hiragana (Symbol, Translation) VALUES
-- base
    ('あ', 'a'),
    ('い', 'i'),
    ('う', 'u'),
    ('え', 'e'),
    ('お', 'o'),
-- k
    ('か', 'ka'),
    ('き', 'ki'),
    ('く', 'ku'),
    ('け', 'ke'),
    ('こ', 'ko'),
-- s
    ('さ', 'sa'),
    ('し', 'shi'),
    ('す', 'su'),
    ('せ', 'se'),
    ('そ', 'so'),
-- t
    ('た', 'ta'),
    ('ち', 'chi'),
    ('つ', 'tsu'),
    ('て', 'te'),
    ('と', 'to'),
-- n
    ('な', 'na'),
    ('に', 'ni'),
    ('ぬ', 'nu'),
    ('ね', 'ne'),
    ('の', 'no'),
-- h
    ('は', 'ha'),
    ('ひ', 'hi'),
    ('ふ', 'fu'),
    ('へ', 'he'),
    ('ほ', 'ho'),
-- m
    ('ま', 'ma'),
    ('み', 'mi'),
    ('む', 'mu'),
    ('め', 'me'),
    ('も', 'mo'),
-- y
    ('や', 'ya'),
    ('ゆ', 'yu'),
    ('よ', 'yo'),
-- r
    ('ら', 'ra'),
    ('り', 'ri'),
    ('る', 'ru'),
    ('れ', 're'),
    ('ろ', 'ro'),
-- else
    ('わ', 'wa'),
    ('を', 'wo'),
    ('ん', 'n');

-- more hiragana characters
CREATE TABLE hiragana_extended (
    HiraExtID INT NOT NULL AUTO_INCREMENT,
    Symbol VARCHAR(5),
    Translation VARCHAR(5),

    PRIMARY KEY(HiraExtID)
);

-- add extended hiragana characters
INSERT INTO hiragana_extended (Symbol, Translation) VALUES
-- g
    ('が', 'ga'),
    ('ぎ', 'gi'),
    ('ぐ', 'gu'),
    ('げ', 'ge'),
    ('ご', 'go'),
-- z
    ('ざ', 'za'),
    ('じ', 'ji'),
    ('ず', 'zu'),
    ('ぜ', 'ze'),
    ('ぞ', 'zo'),
-- d
    ('だ', 'da'),
    ('ぢ', 'dji'),
    ('づ', 'dzu'),
    ('で', 'de'),
    ('ど', 'do'),
-- b
    ('ば', 'ba'),
    ('び', 'bi'),
    ('ぶ', 'bu'),
    ('べ', 'be'),
    ('ぼ', 'bo'),
-- p
    ('ぱ', 'pa'),
    ('ぴ', 'pi'),
    ('ぷ', 'pu'),
    ('ぺ', 'pe'),
    ('ぽ', 'po');
