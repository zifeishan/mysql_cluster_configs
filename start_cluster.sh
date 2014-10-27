set -e
ndb_mgmd --initial --ndb-nodeid=49 --config-dir=/lfs/local/0/zifei/mysql_cluster_data/49/ --config-file=/lfs/local/0/zifei/mysql_cluster_data/49/config.ini
sleep 1;
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=1
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=2
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=3
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=4
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=5
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=6
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=7
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=8
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=9
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=10
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=11
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=12
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=13
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=14
ndbmtd --ndb-connectstring=rambo.stanford.edu:1186 --ndb-nodeid=15

sleep 10;
echo "Starting SQL node 53..."
mysqld --defaults-file=/lfs/local/0/zifei/mysql_cluster_data/53/my.cnf &
echo "Waiting for ready..."
sleep 30;

