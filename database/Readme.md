docker run -tid --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD='admin' database
docker exec -it mysql mysql -uroot -p
use application
select * from Comment;