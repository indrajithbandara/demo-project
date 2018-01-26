require 'dotenv'
require 'gmail'

# La méthode load! fonctionne come load mais elle renvoie une érreur si un fichier .env n' éxiste pas 
# Dotenv.load!


# On charge par défaut .env celui ci ne contient pas mes identifiant
# p Dotenv.load return #{"GMAIL_USERNAME"=>"david@gmail.com", "GMAIL_PASSWORD"=>"password", "TWITTER_CONSUMER_KEY"=>"738d5ee5-ce38-44d4-b8f9-24c95de59b03", "TWITTER_CONSUMER_SECRET"=>"474a09c3-523e-498c-9f48-b0fcb0389b28", "TWITTER_ACCESS_TOKEN"=>"aef9bd74-b52f-40fd-aa5f-77f7e079f0e8", "TWITTER_ACCESS_SECRET"=>"64a84f8d-75cb-4689-8707-57937e5f7534"}
# #<Gmail::Client0x5565bf02c130 (david@gmail.com) disconnected>
Dotenv.load

# Surcharge des variables d'environnement en argument de paramètre le fichier ou sont mes identifiants
# returns #<Gmail::Client0x560275f6bf58 (dvddcrz@gmail.com) connected>
Dotenv.overload('.env.development.local')

p Gmail.connect(ENV['GMAIL_USERNAME'], ENV['GMAIL_PASSWORD'])				


