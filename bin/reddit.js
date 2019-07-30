let fetch = require('node-fetch')
let sub = process.argv[2] || 'EarthPorn'
let limit = '1000'


fetch('https://www.reddit.com/r/'+ sub +'/.json?limit=' + limit)
  .then(
    function(response) {
      if (response.status !== 200) {
        console.log('Looks like there was a problem. Status Code: ' +
          response.status);
        return;
      }

      response.json().then(function(data) {

        var children = data.data.children

          children.forEach( (k, v) => {
          let title = k.data.title
          let recalls = k.data.url
          let created = k.data.created
          let offset = 8 * 3600
          time = new Date((created - offset) * 1000).toISOString()
          //console.log(k.data)

          let user = k.data.author
          let userURI = 'https://www.reddit.com/user/' + user + '#this'
          //const time = new Date().toISOString();

          const ms = Math.floor(Math.random() * 1000);
          const uri = time.substring(0,4) + time.substring(5,7) + time.substring(8,10) + time.substring(11,13) + time.substring(14,16) + time.substring (17,19) + "." + ms;
          console.log(`
          <> <http://purl.org/dc/terms/references> <#${uri}> .\n
          \n
          <#${uri}> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/01/bookmark#Bookmark> .\n
          
          <#${uri}> <http://purl.org/dc/terms/created> "${time}"^^<http://www.w3.org/2001/XMLSchema#dateTime> .\n
          <#${uri}> <http://purl.org/dc/terms/title> """ ${title} """ .\n
          <#${uri}> <http://www.w3.org/2002/01/bookmark#recalls> <${recalls}> .\n
          <#${uri}> <http://xmlns.com/foaf/0.1/maker> <${userURI}> .\n
          `);
        
        })
        
      });
    }
  )
  .catch(function(err) {
    console.log('Fetch Error :-S', err);
  });
