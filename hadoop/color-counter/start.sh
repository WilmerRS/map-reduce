echo "✳️  Create input folder. Remove if exist"
hadoop fs -rm -r /input
hadoop fs -mkdir /input

echo "🚀 Put dataset file"
hadoop fs -put dataset.csv /input

echo "🐀 Remove output folder"
hadoop fs -rm -r /colors

echo "👨‍✈️  Add execution mode to python files"
chmod u+x mapper.py
chmod u+x reducer.py

echo "🌀 Map reduce" &&
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
  -file mapper.py reducer.py \
  -mapper mapper.py \
  -reducer reducer.py \
  -input /input/dataset.csv \
  -output /colors &&

echo "\n🚀 Show input"
hdfs dfs -cat /input/dataset.csv

echo "\n\n🌀 Unparallelized"
cat dataset.csv | ./mapper.py | sort | ./reducer.py

echo "\n✅ Show output"
hdfs dfs -cat /colors/part-00000