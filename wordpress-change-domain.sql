SET @oldsite='http://oldsite.com' ;
SET @newsite='http://newsite.com' ; 
UPDATE wp_options SET option_value = REPLACE(option_value, @oldsite, @newsite) WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET post_content = REPLACE(post_content, @oldsite, @newsite);
UPDATE wp_links SET link_url = REPLACE(link_url, @oldsite, @newsite);
UPDATE wp_postmeta SET meta_value = REPLACE(meta_value, @oldsite, @newsite);

/* only uncomment next line if you want all your current posts to post to RSS again as new */
#UPDATE wp_posts SET guid = replace(guid, @oldsite, @newsite);
