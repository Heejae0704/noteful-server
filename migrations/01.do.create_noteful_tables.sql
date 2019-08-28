CREATE TABLE noteful_folders (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    foldername TEXT NOT NULL UNIQUE
);

CREATE TABLE noteful_notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name TEXT NOT NULL,
    folderId INTEGER
        REFERENCES noteful_folders(id) ON DELETE CASCADE NOT NULL,
    content TEXT,
    modified TIMESTAMP DEFAULT now() NOT NULL
);