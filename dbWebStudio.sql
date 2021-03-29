CREATE DATABASE dbWebStudio;
GO

USE dbWebStudio;
GO

-- Table for Services List on the Home Page --

CREATE TABLE tblPrdList (prdId int IDENTITY(1,1) PRIMARY KEY, prdTitle varchar(255), prdDescription varchar(255), prdUrl varchar(100));
GO

-- Table Data --

INSERT INTO tblPrdList VALUES ('Web Design', 'We offer either a custom design for your website or a great choice of customisable templates for affordable prices.', 'Design' );
GO
INSERT INTO tblPrdList VALUES ('Web Development', 'Only the latest and the most trustworthy technologies for your satisfaction! We develop with Python, PHP, C#, JavaScript, WordPress, Django.', 'Development' );
GO
INSERT INTO tblPrdList VALUES ('Web Hosting', 'Affordable hosting starting only from NZD 10 a month. We guarantee 99% uptime and the fastest speed of your website.', 'Hosting' );
GO

-- End of Table Data --

-- Table for Web Development Page --

CREATE TABLE tblWebDev (prdId int IDENTITY(1,1) PRIMARY KEY, prdType varchar(100), prdDescription varchar(255), prdPrice int);
GO

-- Table Data --

INSERT INTO tblWebDev VALUES ('Promo', 'One long landing page. We implement any changes if needed (additionally charged).', 200 );
GO
INSERT INTO tblWebDev VALUES ('Brochure', 'Simple website. 4-5 pages of info. We implement any changes if needed (additionally charged).', 250 );
GO
INSERT INTO tblWebDev VALUES ('Corporate', 'Content managed site. Dynamic functionality. Customer can add, edit, or delete any info (editor access).', 300 );
GO
INSERT INTO tblWebDev VALUES ('e-Commerce', 'Full "Corporate" functionality, plus products (services) catalogue, shopping cart, payment processing.', 500 );
GO
INSERT INTO tblWebDev VALUES ('Audit', 'Your current web site audit.', 50 );
GO
INSERT INTO tblWebDev VALUES ('Maintanence', 'Maintenance Package. No monthly subscription! Charged <b>hourly</b>, only when really needed.', 30 );
GO

-- End of Table Data --

-- Table for Users --

CREATE TABLE tblUsers (Id int IDENTITY(1,1) PRIMARY KEY, userId varchar(100), firstName varchar(100), lastName varchar(100), passwd varchar(100), role int NULL);
GO

-- Table Data --

INSERT INTO tblUsers VALUES ('me@sergeek.space', 'Serg', 'Sheshukov', 'Password01', 1 );
GO
INSERT INTO tblUsers VALUES ('j.doe@gmail.com', 'Jane', 'Doe', 'Password01', 0 );
GO

-- End of Table Data --

-- Table for Web Design Page --

CREATE TABLE tblWebDesign (prdId int IDENTITY(1,1) PRIMARY KEY, prdType varchar(255), prdDescription varchar(255));
GO

-- Table Data --

INSERT INTO tblWebDesign VALUES ('Template', 'For the cost-consciousness buyers. Chose a nice one from our collection of templates, and we will adapt it according to your brand' );
GO
INSERT INTO tblWebDesign VALUES ('Unique', 'For the perfection seekers. Our designers will create a unique design according to your needs. Initial setup starting only from NZD 500' );
GO
-- End of Table Data --