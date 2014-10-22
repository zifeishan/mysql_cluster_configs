echo "Shutting down SQL nodes..."
mysqladmin -uroot --port=3306 --socket=/lfs/local/0/zifei/mysql_cluster_data/53/mysql.socket shutdown
echo "Shutting down data nodes..."
ndb_mgm --ndb-connectstring=rambo.stanford.edu:1186 --execute=shutdown
sleep 5;
killall ndbd

