SCHEMABASE=$HOME/.local/share/xml/docbook/schema/5.1/schemas
RNG=$SCHEMABASE/rng/docbookxi.rng
SCH=$SCHEMABASE/sch/docbookxi.sch

for FILE in docbook/*.xml; do
	echo Validating $FILE
	jing $RNG $FILE && echo RelaxNG Valid
	mausotron validate $SCH $FILE
done
