CREATE KEYSPACE "VIDEO_SHARING_APP"
	WITH  REPLICATION = { 'class' : 'SimpleStrategy'
		,'replication_factor' : 4 };


CREATE TABLE “CHANNELS_IN_CATEGORY” (
	“Category” VARCHAR
	,“Channel_ID” VARCHAR
	,“Channel_name” TEXT
	,“Thumbnail_photo_url” TEXT
	,PRIMARY KEY (
		“Category”
		,“Channel_ID”
		)
	);

CREATE TABLE “VIDEOS_IN_CHANNEL” (
	“Channel_ID” VARCHAR
	,“Video_ID” VARCHAR
	,“Video_title” TEXT
	,“Duration” VARCHAR
	,“Thumbnail_photo_url” TEXT
	,“Upload_time” TIMESTAMP
	,PRIMARY KEY (
		“Channel_ID”
		,”Upload_time”
		)
	);


CREATE TABLE “CHANNEL_SUBSCRIBERS” (
		“Channel_ID” VARCHAR
		,“User_ID” VARCHAR
		,“First_name” TEXT
		,“Last_name” TEXT
		,“Subscription_time“ TIMESTAMP
		,PRIMARY KEY (
			“Channel_ID”
			,”User_ID”
			)
		);

CREATE TABLE “CHANNELS_CREATED” (
       	 		“User_ID” VARCHAR
        			,“Channel_ID” VARCHAR
      			,“Channel_name” TEXT
     			 ,“Description” TEXT
        			,“Category” VARCHAR
        			,“Thumbnail_photo_url” TEXT
       			 ,“Creation_time” TIMESTAMP
        			,PRIMARY KEY (
               			“User_ID”
              			 ,”Channel_ID”
             		  )
      		  );

CREATE TABLE “VIDEOS_UPLOADED” (
        			“User_ID” VARCHAR
        			,"Video_url" TEXT
       			,“Video_ID” VARCHAR
       			 ,PRIMARY KEY (
              			 “User_ID”
               			,”Video_ID”
             		  )
       		 );

CREATE TABLE “VIDEO_COMMENTS” (
     			 “Video_ID” VARCHAR
       	 		,“User_ID” VARCHAR
        			,“Review” TEXT
        		,PRIMARY KEY (
        	  	     	“Video_ID”
              		 ,”User_ID”
              		 )
        		);

CREATE TABLE “VIDEOS_LIKED” (
        			“User_ID” VARCHAR
        ,			“Video_ID” VARCHAR
        			,PRIMARY KEY (
           				    “User_ID”
             			  ,”Video_ID”
             		  )
       		 );	








