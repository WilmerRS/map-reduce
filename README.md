<h1 style="margin-top:10px;" align="center"> πΊοΈ
  <strong> Map Reduce </strong> γοΈ
</h1>

## π§ Project explanation

Examples of map reduce implementation with python. π

## β³οΈ Unparallelized

1. Run `cat dataset.csv | python mapper.py | sort | python reducer.py`

## π Hadoop

1. Run `docker network create hadoop`. Only if you don't have this network created yet.
2. Run `sh ./hadoop/start-container.sh`.
3. Run `sh start_hadoop.sh`. Inside the master container.
4. Run `sh copy-files.sh` to copy the mapper, reducer and data to the master container.
5. Run `sh start.sh` to run hadoop. Verify hadoop-streaming version.
