# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    id INT,
    name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    tag varchar(255) NOT NULL,
    url varchar(255),
    time_commitment INT,
    PRIMARY KEY (id)
);

show tables;

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (id, name, description, tag, url, time_commitment) VALUES
    (1, 'Digital Advertising', 'Create and manage online advertising campaigns', 'Skill 1', 'https://example.com/digital-advertising', 25),
    (2, 'Business Analytics', 'Analyze business data to drive strategic decisions', 'Skill 2', 'https://example.com/business-analytics', 30),
    (3, 'Cybersecurity', 'Protect computer systems and networks from security threats', 'Skill 3', 'https://example.com/cybersecurity', 35),
    (4, 'Financial Planning', 'Help individuals and businesses plan their financial future', 'Skill 4', 'https://example.com/financial-planning', 20),
    (5, 'Content Marketing', 'Develop and execute content strategies to drive audience engagement', 'Skill 5', 'https://example.com/content-marketing', 25),
    (6, 'Project Risk Management', 'Identify and mitigate risks in project execution', 'Skill 6', 'https://example.com/project-risk-management', 30),
    (7, 'User Experience Research', 'Conduct user research to improve product usability', 'Skill 7', 'https://example.com/user-experience-research', 20),
    (8, 'Strategic Negotiation', 'Negotiate effectively to achieve favorable outcomes', 'Skill 8', 'https://example.com/strategic-negotiation', 15);

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    id int,
    first_name varchar(255),
    last_name varchar(255) NOT NULL,
    email varchar(255),
    linkedin_url varchar(255),
    headshot_url varchar(255),
    discord_handle varchar(255),
    brief_bio varchar(255),
    date_joined int NOT NULL,
    PRIMARY KEY (id)
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) VALUES
    (1, 'John', 'Person 1', 'john.doe@example.com', 'https://www.linkedin.com/in/johndoe', 'https://example.com/johndoe.jpg', 'johndoe#1234', 'Experienced software engineer with a passion for problem-solving.', 20230101),
    (2, 'Jane', 'Person 2', 'jane.smith@example.com', 'https://www.linkedin.com/in/janesmith', 'https://example.com/janesmith.jpg', 'janesmith#5678', 'Marketing professional with a proven track record in digital campaigns.', 20230102),
    (3, 'Michael', 'Person 3', 'michael.johnson@example.com', 'https://www.linkedin.com/in/michaeljohnson', 'https://example.com/michaeljohnson.jpg', 'mjohnson#9012', 'Seasoned project manager skilled in leading cross-functional teams.', 20230103),
    (4, 'Emily', 'Person 4', 'emily.brown@example.com', 'https://www.linkedin.com/in/emilybrown', 'https://example.com/emilybrown.jpg', 'ebrown#3456', 'Creative graphic designer with expertise in branding and visual communication.', 20230104),
    (5, 'David', 'Person 5', 'david.wilson@example.com', 'https://www.linkedin.com/in/davidwilson', 'https://example.com/davidwilson.jpg', 'dwilson#7890', 'Financial analyst with a strong background in data analysis and forecasting.', 20230105),
    (6, 'Sarah', 'Person 6', 'sarah.taylor@example.com', 'https://www.linkedin.com/in/sarahtaylor', 'https://example.com/sarahtaylor.jpg', 'staylor#2345', 'Experienced HR professional specializing in talent acquisition and employee development.', 20230106),
    (7, 'William', 'Person 7', 'williamwilson@example.com', 'https://www.linkedin.com/in/williamwilson', 'https://example.com/williamwilson_headshot.jpg', 'williamwilson#7890', 'Experienced content writer specializing in SEO-driven content.', 20230107),
    (8, 'Olivia', 'Person 8', 'oliviagarcia@example.com', 'https://www.linkedin.com/in/oliviagarcia', 'https://example.com/oliviagarcia_headshot.jpg', 'oliviagarcia#2345', 'Skilled project manager with expertise in risk management.', 20230108),
    (9, 'James', 'Person 9', 'jamesmartinez@example.com', 'https://www.linkedin.com/in/jamesmartinez', 'https://example.com/jamesmartinez_headshot.jpg', 'jamesmartinez#6789', 'User experience researcher passionate about creating intuitive user interfaces.', 20230109),
    (10, 'Ava', 'Person 10', 'avalopez@example.com', 'https://www.linkedin.com/in/avalopez', 'https://example.com/avalopez_headshot.jpg', 'avalopez#0123', 'Skilled negotiator with expertise in strategic negotiation and deal-making.', 20230110);

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    id INT auto_increment,
    skills_id INT NOT NULL,
    people_id INT NOT NULL,
    date_acquired DATE DEFAULT (current_date) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (skills_id) references skills (id) on delete cascade,
    FOREIGN KEY (people_id) references people (id) on delete cascade,
    UNIQUE (skills_id, people_id)
);

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

INSERT INTO peopleskills (people_id, skills_id) VALUES
    (1, 1), (1, 3), (1, 5),
    (2, 3), (2, 4), (2, 5),
    (3, 1), (3, 5),
    (5, 3), (5, 6),
    (6, 2), (6, 3), (6, 4),
    (7, 3), (7, 5), (7, 6),
    (8, 1), (8, 3), (8, 5), (8, 6),
    (9, 2), (9, 5), (9, 6),
    (10, 1), (10, 4), (10, 5);

 

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles(
    id INT,
    name varchar(255),
    sort_priority INT,
    PRIMARY KEY (id)
);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (id, name, sort_priority) VALUES

    (1, 'Designer', 10),
    (2, 'Developer', 20),
    (3, 'Recruit', 30),
    (4, 'Team Lead', 40),
    (5, 'Boss', 50),
    (6, "Mentor", 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (

    id INT AUTO_INCREMENT,
    people_id INT,
    role_id INT,
    date_assigned INT DEFAULT (current_date),
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) references roles (id) on delete cascade,
    FOREIGN KEY (people_id) references people (id) on delete cascade
);


# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

INSERT INTO peopleroles (people_id, role_id) VALUES

    (1, 2),
    (2, 5), (2, 6),
    (3, 2), (3, 4),
    (4, 3),
    (5, 3),
    (6, 2), (6, 1),
    (7, 1),
    (8, 1), (8, 4),
    (9, 2),
    (10, 2), (10, 1);

