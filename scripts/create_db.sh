# Move to the script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
cd ..

echo ">>> Working directory: `pwd`"

echo ">>> Creating database"

echo ">>> Starting population of database for E Corp..."

# Populate database using ecorp_db.sql file
# This script assumes the database username is root
cat database/ecorp_db.sql | sudo mysql -u root -p

# Check the exit status
if [ ! $? -eq 0 ]; then
   echo "  > Database population failed. Exiting."
   exit 1
fi

echo ">>> Finished."