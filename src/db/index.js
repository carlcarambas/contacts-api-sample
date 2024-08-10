import mongodb from 'mongodb'

export default async function makeDb () {
  const MongoClient = mongodb.MongoClient
  const url = process.env.DB_HOST || 'mongodb://localhost:27017'
  const dbName = process.env.DB_NAME || 'contacts-db'
  const client = new MongoClient(url, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
    auth: {
      username: process.env.DB_USERNAME || 'root',
      password: process.env.DB_PASSWORD || 'example',
    },
  })
  await client.connect()
  const db = await client.db(dbName)
  db.makeId = makeIdFromString
  return db
}
function makeIdFromString (id) {
  return new mongodb.ObjectID(id)
}
