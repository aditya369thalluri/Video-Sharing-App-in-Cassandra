
/* 8 commands to satisfy the 8 given queries */

/* Query 1 */
SELECT “Channel_name”
	,“Thumbnail_photo_url”
FROM “CHANNELS_IN_CATEGORY”
WHERE “Category” = ’music’;


/* Query 2 */
SELECT “Video_title”
	,”Duration”
	,”Thumbnail_photo_url”
	,”Upload_time”
FROM “VIDEOS_IN_CHANNEL”
WHERE “Channel_ID” = ’C2’;


/* Query 3 */

SELECT "Video_title"
	,"Duration"
	,"Thumbnail_photo_url"
FROM "VIDEOS_IN_CHANNEL"
AND “Upload_time”>’2019-04-01 00:00:00’
AND “Upload_time"<’2019-05-01 00:00:00’ ;


/* Query 4 */

SELECT "First_name"
	,"Last_name"
	,"Subscription_time"
FROM "CHANNEL_SUBSCRIBERS"
WHERE "Channel_ID" = ’C7’;


/* Query 5 */

SELECT “Channel_ID”
	,“Channel_name”
	,“Description”
	,“Category”
	,“Thumbnail_photo_url”
	,“Creation_time”
FROM “CHANNELS_CREATED”
WHERE “User_ID” = ’U1’;

/* Query 6 */

SELECT “Video_url”
FROM “VIDEOS_UPLOADED”
WHERE “User_ID” = ’U5’;

/* Query 7 */

SELECT “Review”
FROM “VIDEO_COMMENTS”
WHERE “Video_ID” = ’V4’;

/* Query 8 */

SELECT “Video_ID”
FROM “VIDEOS_LIKED”
WHERE “User_ID” = ’U9’;





