drop table if exists terms;
drop table if exists contributors;
drop table if exists admins;

CREATE TABLE terms (
  id       SERIAL PRIMARY KEY,
  term     VARCHAR(30) NOT NULL,
  definitions TEXT NOT NULL,
  links  TEXT[],
  admin_id INT,
  programming_language VARCHAR(20),
  contributor_id INT,
  creation_date DATE DEFAULT NOW(),
  last_edit_date DATE
);

CREATE TABLE contributors (
  id       SERIAL PRIMARY KEY,
  contributor_name     VARCHAR(120) NOT NULL,
  region    VARCHAR(20) NOT NULL,
  email VARCHAR(30)
);

CREATE TABLE admins (
  id            SERIAL PRIMARY KEY,
  admin_name   VARCHAR(100) NOT NULL,
  email      VARCHAR(100),
  admin_password  VARCHAR(30)
);

INSERT INTO admins (admin_name, email, admin_password) VALUES ('Tina', 'Tina@email', 'Funny');
INSERT INTO admins (admin_name, email, admin_password) VALUES ('Frank', 'F@google', 'Star');
INSERT INTO admins (admin_name, email, admin_password) VALUES ('Claire', 'Claire@yahoo.com', 'Time');

INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Class','HTML elements can have one or more classes, separated by spaces. You can style elements using CSS by selecting them with their classes.', '{"https://www.youtube.com/watch?v=wXUhTZpF_HQ", "https://www.youtube.com/watch?v=UB1O30fR-EE", "https://www.w3schools.com/html/html_classes.asp", "https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/class"}', 1,'HTML', 2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Body','The body is the container for all of a page’s content. Comes after the <head> tag, within the overall <html> tag.', '{"https://www.youtube.com/watch?v=RgwEVLoExGQ", "https://www.youtube.com/watch?v=mNRzWMH5xK0", "https://www.w3schools.com/tags/tag_body.asp", "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/body"}', 2,'HTML', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Id','An HTML element can have an id attribute to identify it. id elements should always be unique to that single element, and each element should never have more than one id.', '{"https://www.youtube.com/watch?v=wXUhTZpF_HQ", "https://www.youtube.com/watch?v=-voQMXA_H6s", "https://www.w3schools.com/html/html_id.asp", "https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id"}',3,'HTML', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Header','Heading elements like <h1>, <h2>, <h3>, … allow you to use six levels of document headings, ranging from largest to smallest, breaking up the document into logical sections. For example, the word ‘Headings’ above is wrapped in a <h2> tag.', '{"https://www.youtube.com/watch?v=H519o8BvpQA", "https://www.youtube.com/watch?v=Pq9DkCt4fqI", "https://www.w3schools.com/html/html_headings.asp", "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements"}',2,'HTML', 3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('href','Links tell the browser where to go using an href attribute, which stores a URL.', '{"https://www.youtube.com/watch?v=tK4nF_TPQyo", "https://www.youtube.com/watch?v=GxwHXxumdQk", "https://www.w3schools.com/tags/att_a_href.asp", "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a"}',1,'HTML',2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('align-items','The CSS align-items property sets the align-self value on all direct children as a group. In Flexbox, it controls the alignment of items on the Cross Axis. In Grid Layout, it controls the alignment of items on the Block Axis within their grid area.', '{"https://www.youtube.com/watch?v=BUNsmd17YB4", "https://www.youtube.com/watch?v=XIJZjhqs7m0", "https://www.w3schools.com/cssref/css3_pr_align-items.asp", "https://developer.mozilla.org/en-US/docs/Web/CSS/align-items"}',2,'CSS',1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('flex','The flex CSS shorthand property sets how a flex item will grow or shrink to fit the space available in its flex container.', '{"https://www.youtube.com/watch?v=fYq5PXgSsbE", "https://www.youtube.com/watch?v=fqNPSSoMO9Y", "https://www.w3schools.com/cssref/css3_pr_flex.asp", "https://developer.mozilla.org/en-US/docs/Web/CSS/flex"}',2,'CSS',2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Grid','To specify the number of columns of the grid and the widths of each column, the CSS property grid-template-columns is used on the grid container. The number of width values determines the number of columns and each width value can be either in pixels(px) or percentages(%).', '{"https://www.youtube.com/watch?v=9zBsdzdE4sM", "https://www.youtube.com/watch?v=EFafSYg-PkI", "https://www.w3schools.com/cssref/pr_grid.asp", "https://developer.mozilla.org/en-US/docs/Glossary/Grid"}',3,'CSS',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Margin','The margin property sets the margins for an element, and is a shorthand property for the following properties:margin-top,margin-right,margin-bottom,margin-left.', '{"https://www.youtube.com/watch?v=EhbZGV2dqZ4", "https://www.youtube.com/watch?v=Azfj1efPAH0", "https://www.w3schools.com/cssref/pr_margin.asp", "https://developer.mozilla.org/en-US/docs/Web/CSS/margin"}',1,'CSS',2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('text-align','The text-align property specifies the horizontal alignment of text in an element.', '{"https://www.youtube.com/watch?v=sLAunIX5RXw", "https://www.youtube.com/watch?v=4Y1XlQ7bsCI", "https://www.w3schools.com/cssref/pr_text_text-align.asp", "https://developer.mozilla.org/en-US/docs/Web/CSS/text-align"}',2,'CSS',1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Variable','JavaScript variables are containers for storing data values.', '{"https://www.youtube.com/watch?v=edlFjlzxkSI", "https://www.youtube.com/watch?v=u0Mq3FzpsmI", "https://www.w3schools.com/js/js_variables.asp", "https://developer.mozilla.org/en-US/docs/Glossary/Variable"}',1,'Javascript',2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Loop','Loops can execute a block of code a number of times.', '{"https://www.youtube.com/watch?v=s9wW2PpJsmQ", "https://www.youtube.com/watch?v=24Wpg6njlYI", "https://www.w3schools.com/js/js_loop_for.asp", "https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Looping_code"}',3,'Javascript',1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Boolean','A JavaScript Boolean represents one of two values: true or false.', '{"https://www.youtube.com/watch?v=yVJR6QyF2uk", "https://www.youtube.com/watch?v=Rk-_syQluvc", "https://www.w3schools.com/js/js_booleans.asp", "https://developer.mozilla.org/en-US/docs/Glossary/Boolean"}', 1,'Javascript', 2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Array','An array is a special variable, which can hold more than one value at a time.','{"https://www.youtube.com/watch?v=R8rmfD9Y5-c", "https://www.youtube.com/watch?v=orAS-MBh5f4", "https://www.w3schools.com/js/js_arrays.asp", "https://developer.mozilla.org/en-US/docs/Glossary/array"}',1, 'Javascript',1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Object','The Object class represents one of JavaScripts data types. It is used to store various keyed collections and more complex entities.','{"https://www.youtube.com/watch?v=PFmuCDHHpwk", "https://www.youtube.com/watch?v=X0ipw1k7ygU", "https://www.w3schools.com/js/js_objects.asp", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object"}',2, 'Javascript',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('require()','A function used to import modules from other files or Node packages.','{"https://www.youtube.com/watch?v=HHilfLuFofw", "https://www.youtube.com/watch?v=DZSMhgklXmw", "https://nodejs.org/en/knowledge/getting-started/what-is-require/", "https://www.w3schools.com/nodejs/nodejs_modules.asp"}',2, 'Node',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('express.js','Express.js is a Node.js web application server framework, designed for building single-page, multi-page, and hybrid web applications','{"https://www.youtube.com/watch?v=45dAt9Gz8rE", "https://www.youtube.com/watch?v=AZDTM0DiLG8", "http://expressjs.com", "https://developer.mozilla.org/en-US/docs/Learn/Server-side/Express_Nodejs"}',2, 'Node',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('GET','The HTTP GET method requests a representation of the specified resource. Requests using GET should only be used to request data','{"https://www.youtube.com/watch?v=O9LbCvUEjVo", "https://www.youtube.com/watch?v=Sb8xyCa2p7A", "https://stackabuse.com/the-node-js-request-module/", "https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/GET"}',2, 'Node',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('POST','The HTTP POST method sends data to the server. The type of the body of the request is indicated by the Content-Type header.','{"https://www.youtube.com/watch?v=Sb8xyCa2p7A", "https://www.youtube.com/watch?v=jL1K0DrGLzw", "https://nodejs.dev/learn/make-an-http-post-request-using-nodejs", "https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/GET"}',2, 'Node',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Node.js','Node.js is an open-source, cross-platform, back-end JavaScript runtime environment that executes JavaScript code outside a web browser.','{"https://www.youtube.com/watch?v=TlB_eWDSMt4&t=21s", "https://www.youtube.com/watch?v=zQRrXTSkvfw", "https://www.freecodecamp.org/news/what-exactly-is-node-js-ae36e97449f5/", "https://nodejs.org/en/"}',2, 'Node',3);



INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('SELECT Statement','The SELECT statement is used to select data from a database. The data returned is stored in a result table, called the result-set.', '{"https://youtu.be/YufocuHbYZo", "https://youtu.be/gbHXhXmACgI", "https://www.w3schools.com/sql/sql_select.asp", "https://www.codecademy.com/courses/learn-sql/lessons/manipulation/exercises/select"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('SELECT DISTINCT Statement','The SELECT DISTINCT statement is used to return only distinct (different) values. Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.', '{"https://youtu.be/dGo9T1pQzPk", "https://youtu.be/zp0_edjxuyU", "https://www.w3schools.com/sql/sql_distinct.asp", "https://www.codecademy.com/courses/learn-sql/lessons/manipulation/exercises/select"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('WHERE Clause','The WHERE clause is used to filter records. The WHERE clause is used to extract only those records that fulfill a specified condition.', '{"https://youtu.be/vxlD94G0Geo", "https://youtu.be/JeZCabShIFk", "https://www.w3schools.com/sql/sql_where.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('AND, OR and NOT Operators','The WHERE clause can be combined with AND, OR, and NOT operators. The AND and OR operators are used to filter records based on more than one condition: The AND operator displays a record if all the conditions separated by AND are TRUE. The OR operator displays a record if any of the conditions separated by OR is TRUE. The NOT operator displays a record if the condition(s) is NOT TRUE.', '{"https://youtu.be/vxlD94G0Geo", "https://youtu.be/JeZCabShIFk", "https://www.w3schools.com/sql/sql_and_or.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('ORDER BY Keyword','The ORDER BY keyword is used to sort the result-set in ascending or descending order.The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('INSERT INTO Statement','The INSERT INTO statement is used to insert new records in a table.', '{"https://youtu.be/VkabxQgtGsA", "https://youtu.be/Tet3Z7Yb2gg", "https://www.w3schools.com/sql/sql_insert.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('NULL Value','A field with a NULL value is a field with no value. If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('UPDATE Statement','The UPDATE statement is used to modify the existing records in a table.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('DELETE Statement','The DELETE statement is used to delete existing records in a table.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('SELECT TOP Clause','The SELECT TOP clause is used to specify the number of records to return. The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('MIN and MAX Functions','The MIN() function returns the smallest value of the selected column. The MAX() function returns the largest value of the selected column.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('COUNT AVG and SUM Functions','The COUNT() function returns the number of rows that matches a specified criterion. The AVG() function returns the average value of a numeric column. The SUM() function returns the total sum of a numeric column.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('LIKE Operator','The LIKE operator is used in a WHERE clause to search for a specified pattern in a column. There are two wildcards often used in conjunction with the LIKE operator: % - The percent sign represents zero, one, or multiple characters _ - The underscore represents a single character', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Wildcard Characters','A wildcard character is used to substitute one or more characters in a string. Wildcard characters are used with the SQL LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('IN Operator','The IN operator allows you to specify multiple values in a WHERE clause. The IN operator is a shorthand for multiple OR conditions.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('BETWEEN Operator','The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates. The BETWEEN operator is inclusive: begin and end values are included.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Aliases','SQL aliases are used to give a table, or a column in a table, a temporary name. Aliases are often used to make column names more readable. An alias only exists for the duration of the query.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('JOIN','A JOIN clause is used to combine rows from two or more tables, based on a related column between them.', '{"https://youtu.be/6Rrau_fr7p0", "https://youtu.be/6YGvqrwQ9d4", "https://www.w3schools.com/sql/sql_orderby.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('INNER JOIN Keyword','The INNER JOIN keyword selects records that have matching values in both tables.', '{"https://youtu.be/wz6XnW9nk4w", "https://youtu.be/2HVMiPPuPIM", "https://www.w3schools.com/sql/sql_join_inner.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('LEFT JOIN Keyword','The LEFT JOIN keyword returns all records from the left table (table1), and the matched records from the right table (table2). The result is NULL from the right side, if there is no match.', '{"https://youtu.be/2HVMiPPuPIM", "https://youtu.be/ajPjRoLG_3A", "https://www.w3schools.com/sql/sql_join_left.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('RIGHT JOIN Keyword','The RIGHT JOIN keyword returns all records from the right table (table2), and the matched records from the left table (table1). The result is NULL from the left side, when there is no match.', '{"https://youtu.be/2HVMiPPuPIM", "https://youtu.be/ajPjRoLG_3A", "https://www.w3schools.com/sql/sql_join_right.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('FULL OUTER JOIN Keyword','The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records. Note: FULL OUTER JOIN can potentially return very large result-sets!', '{"https://youtu.be/2HVMiPPuPIM", "https://youtu.be/5tCOkFAvWkw", "https://www.w3schools.com/sql/sql_join_full.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Self JOIN','A self JOIN is a regular join, but the table is joined with itself.', '{"https://youtu.be/G4vO83UUzek", "https://youtu.be/KHiQr3MG_8E", "https://www.w3schools.com/sql/sql_join_self.asp", "https://www.codecademy.com/articles/sql-commands"}', 2,'SQL', 1);


INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Hyperlinks' , 'Hyperlinks (or just links) take the user to another webpage when they click on it. The most common attribute used with links is href, which tells the browser where the link goes.', '{"https://www.youtube.com/watch?v=DiSvq5SgLMI", "https://www.youtube.com/watch?v=EuLfUUqoEqU", "https://www.w3schools.com/html/html_links.asp", "https://developer.mozilla.org/en-US/docs/Glossary/Hyperlink"}',3,'HTML',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Links' , 'HTML supports two kinds of lists: ordered lists and unordered lists. Within lists each individual list item has its own tag.Unordered Lists:Unordered lists are just lists whose items are denoted with bullet points.Ordered List:Ordered lists’ items are denoted with numbers.', '{"https://www.youtube.com/watch?v=09oErCBjVns", "https://www.youtube.com/watch?v=SDedUcOgO_I", "https://www.w3schools.com/html/html_lists.asp", "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol"}',3,'HTML',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Tags & Elements' , 'Tags are basic labels that define and separate parts of your markup into elements. They are comprised of a keyword surrounded by angle brackets <>. Content goes between two tags and the closing one is prefixed with a slash (Note: there are some self-closing HTML tags, like image tags).', '{"https://www.youtube.com/watch?v=vNOyRZIkC7o", "https://www.youtube.com/watch?v=XXrpsQqAlIQ", "https://www.w3schools.com/html/html_elements.asp", "https://developer.mozilla.org/en-US/docs/Web/HTML/Element"}',3,'HTML',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Title' , 'This tag tells the browser what to display as the page title at the top and tells search engines what the title of your site is. It goes inside <head> tags. Try and make your page titles descriptive, but not overly verbose.', '{"https://www.youtube.com/watch?v=8bZ4RPjOPYE", "https://www.youtube.com/watch?v=eQlxRDaUppk", "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/title"}',3,'HTML',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Padding' , 'The padding is the spacing between the content and the border (edge of the element.). We can adjust this value with CSS to move the border closer to or farther from the content. Here, the div with id ‘box’ will get 10px of padding all around it.', '{"https://www.youtube.com/watch?v=NZEz4yNITd8", "https://www.youtube.com/watch?v=EhbZGV2dqZ4&t=1s", "https://developer.mozilla.org/en-US/docs/Web/CSS/padding-inline","https://www.w3schools.com/cssref/pr_padding.asp"}',3,'CSS',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Child and  Universal selectors' , 'Child Selector You can also use multiple selectors to get the exact elements you want, by using parental nesting. By using the “greater-than” symbol (>), you can select only the direct children of an element, going down only one level  Universal selector The universal selector (*) may be used to select all the elements in a particular range. Be aware that the universal selector is the most performance taxing selector, and should be used sparingly.', '{"https://www.youtube.com/watch?v=EO4ToIX-ZQk", "https://www.youtube.com/watch?v=l1mER1bV0N0", "https://developer.mozilla.org/en-US/docs/Web/CSS/Universal_selectors", "http://www.stevesouders.com/blog/2009/06/18/simplifying-css-selectors/"}',3,'CSS',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('ID Selector' , 'ID selectors are used to select only a single item on a page. Like the term (“identification”) indicates, ID selectors will ONLY select the first element with a matching ID.', '{"https://www.youtube.com/watch?v=Us4AV8HlCM0", "https://www.youtube.com/watch?v=SHIMUoAJHYU", "https://www.w3schools.com/cssref/default.asp", "https://developer.mozilla.org/en-US/docs/Web/CSS/Reference#Basic_rule_syntax"}',3,'CSS',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Classes' , 'A class is a type of function, but instead of using the keyword function to initiate it, we use the keyword class', '{"https://www.youtube.com/watch?v=Ug4ChzopcE4", "https://www.youtube.com/watch?v=T-HGdc8L-7w", "https://www.w3schools.com/jsref/jsref_classes.asp", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide"}',3,'Javascript',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Console.log' , 'Prints text to the console. Useful for debugging.', '{"https://www.youtube.com/watch?v=WPAW6agH1lo", "https://www.youtube.com/watch?v=RLCpvCTiDRo", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference", "https://www.w3schools.com/jsref/met_console_log.asp"}',3,'Javascript',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Function' , 'A function is a JavaScript procedure—a set of statements that performs a task or calculates a value.It is like a reusable piece of code. Imagine , having 20 for loops ,and then having a single function to handle it all . To use a function, you must define it somewhere in the scope from which you wish to call it. A function definition (also called a function declaration) consists of the function keyword, followed by the name of the function, a list of arguments to the function, enclosed in parentheses and separated by commas, the JavaScript statements that define the function, enclosed in curly braces, { }.', '{"https://www.youtube.com/watch?v=N8ap4k_1QEQ", "https://www.youtube.com/watch?v=xjAu2Y2nJ34", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference#Function_properties", "https://www.w3schools.com/js/js_function_definition.asp"}',3,'Javascript',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('IF Statement' , 'It simply states that if this condition is true, do this, else do something else (or nothing). It occurs in varied forms.', '{"https://www.youtube.com/watch?v=IsG4Xd6LlsM", "https://www.youtube.com/watch?v=Lp-Du2fKoug", "https://www.w3schools.com/js/js_if_else.asp", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else"}',3,'Javascript',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Math' , 'The JavaScript Math object allows you to perform mathematical tasks on numbers.', '{"https://www.youtube.com/watch?v=F30jLIqGQpo", "https://www.youtube.com/watch?v=0n6hFpk62BI", "https://www.w3schools.com/js/js_math.asp", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math"}',3,'Javascript',3);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Scope' , 'Scope determines the accessibility (visibility) of variables..', '{"https://www.youtube.com/watch?v=hTU1OSbnov8", "https://www.youtube.com/watch?v=gNhdufVqXeE", "https://www.w3schools.com/js/js_scope.asp", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference#Function_properties"}',3,'Javascript',3);

INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('React Directly in HTML','The quickest way start learning React is to write React directly in your HTML files. Start by including three scripts, the first two let us write React code in our JavaScripts, and the third, Babel, allows us to write JSX syntax and ES6 in older browsers.', '{"https://www.youtube.com/watch?v=YnrgTBdhgV4", "https://www.youtube.com/watch?v=iUHtCKEZm8w", "https://www.w3schools.com/react/react_getstarted.asp", "https://www.codecademy.com/learn/react-101/modules/react-101-jsx-u"}', 1,'React', 2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Setting up a React Environment','If you have NPM and Node.js installed, you can create a React application by first installing the create-react-app.', '{"https://www.youtube.com/watch?v=z-vLtsKvp_4", "https://www.youtube.com/watch?v=0twjvW0c1r0", "https://www.w3schools.com/react/react_getstarted.asp", "https://reactjs.org/docs/create-a-new-react-app.html"}', 1,'React', 2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('React Render HTML','React''s goal is in many ways to render HTML in a web page, React renders HTML to the web page by using a function called ReactDOM.render().' '{"https://www.youtube.com/watch?v=YP2f-ErXG_M","https://www.youtube.com/watch?v=VPtL6dU0YXc "https://www.w3schools.com/react/react_render.asp","https://developer.mozilla.org/en-US/search?q=react+render"}', 1,'React', 2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Lifecyles','Each component in React has a lifecycle which you can monitor and manipulate during its three main phases.', '{"https://www.youtube.com/watch?v=Oioo0IdoEls", "https://www.youtube.com/watch?v=Zz9pLellSQA","https://www.w3schools.com/react/react_lifecycle.asp",”https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Client-side_JavaScript_frameworks/React_resources”}', 1,'React', 2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('State','The quickest way start learning React is to write React directly in your HTML files. Start by including three scripts, the first two let us write React code in our JavaScripts, and the third, Babel, allows us to write JSX syntax and ES6 in older browsers.','{"https://www.youtube.com/watch?v=YnrgTBdhgV4", "https://www.youtube.com/watch?v=iUHtCKEZm8w", "https://www.w3schools.com/react/react_getstarted.asp", "https://www.codecademy.com/learn/react-101/modules/react-101-jsx-u"}', 1,'React', 2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('React Props','React Props are like function arguments in JavaScript and attributes in HTML.', '{"https://www.youtube.com/watch?v=m7OWXtbiXX8", "https://www.youtube.com/watch?v=dMH1_YtUTSQ","https://www.w3schools.com/react/react_props.asp", "https://reactjs.org/docs/components-and-props.html"}', 1,'React', 2);
INSERT INTO terms (term, definitions, links, admin_id, programming_language, contributor_id) VALUES ('Body','Props are arguments passed into React components. Props are passed to components via HTML attributes.React Props are like function arguments in JavaScript and attributes in HTML', '{"https://www.youtube.com/watch?v=m7OWXtbiXX8"," https://www.youtube.com/watch?v=dMH1_YtUTSQ","https://www.w3schools.com/react/react_props.asp", "https://developer.mozilla.org/en-US/search?q=react+props" }', 2,'React', 1);

INSERT INTO contributors (contributor_name, region, email) VALUES ('Paul', 'West Midlands', 'Paul@com');
INSERT INTO contributors (contributor_name, region, email) VALUES ('Sunayna', 'West Midlans', 'Sunayna@com');
INSERT INTO contributors (contributor_name, region, email) VALUES ('Kevin', 'London', 'Kevin@com');