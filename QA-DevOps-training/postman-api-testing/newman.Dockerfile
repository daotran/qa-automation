# Use the official newman image
FROM postman/newman:alpine

# Set the working directory to /app
WORKDIR /app

# Install newman-reporter-html
RUN npm install -g newman newman-reporter-htmlextra

# Copy the environment and collection JSON files to the container
COPY docker.environment.json collection.json ./

# Run the newman command with the environment and collection files
ENTRYPOINT ["newman", "run", "collection.json", "--environment", "docker.environment.json", "-r", "htmlextra", "--reporter-htmlextra-export", "reports/reports.html"]

# Syntax
# newman run {{path to collection json}} -e {{path to environment json}} -r html --reporter-html-template
# {{path to custom template}}
# The template files are the ones with .hbs extension. It is actually a handlebar template file. 
# To learn more about the handlebars, please refer to the official handlebar documentation here: https://handlebarsjs.com/
# eg: 
# newman run https://api.postman.com/collections/159692-d4e8cd87-9158-4e63-8ea0-b9d72973fb8b?access_key=PMAT-01HEPE6XBWERVCWYGRMCMBPZSZ -r htmlextra
# newman run collection.json -e docker.environment.json -k -r htmlextra --reporter-htmlextra-export reports/reports.html