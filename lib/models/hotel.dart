import 'package:sqflite/sqflite.dart';

final String tableHotels = 'hotels';
final String columnId = 'id';
final String columnVille = 'ville';
final String columnNom = 'nom';
final String columnPrice = 'price';
final String columnImage = 'image';

class Hotel {
  int? id; //nullable
  late String ville; //non nullable
  late String nom;
  late double price;
  late String image;

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      columnVille: ville,
      columnNom: nom,
      columnPrice: price,
      columnImage: image
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Hotel();

  Hotel.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    ville = map[columnVille];
    nom = map[columnNom];
    price = map[columnPrice];
    image = map[columnImage];
  }
}

class HotelProvider {
  Database? db;

  Future open() async {
    var databasePath = await getDatabasesPath();
    String path = databasePath + "/demo.db";

    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('''
create table $tableHotels ( 
  $columnId integer primary key autoincrement, 
  $columnVille varchar(255) not null,
  $columnNom varchar(255) not null,
  $columnPrice double not null,
  $columnImage varchar(255) not null,
  )
''');
        });
  }

  Future<Hotel> insert(Hotel hotel) async {
    await open();
    hotel.id = await db!.insert(tableHotels, hotel.toMap());
    await close();
    return hotel;
  }

  Future<Hotel?> getHotel(int id) async {
    await open();
    List<Map<String, dynamic>> maps = await db!.query(tableHotels,
        columns: [columnId, columnVille, columnNom, columnPrice, columnImage],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.length > 0) {
      return Hotel.fromMap(maps.first);
    }
    await close();

    return null;
  }

  Future<List<Hotel>> getAllHotels() async {
    await open();
    List<Map<String, dynamic>> maps = await db!.query(tableHotels,
        columns: [columnId, columnVille, columnNom, columnPrice, columnImage],);

    List<Hotel> hotels = [];

    if (maps.length > 0) {
      maps.forEach((element) {
        hotels.add(Hotel.fromMap(element));
      }
    );

    }
    await close();
    return hotels;

  }

  Future<int> delete(int id) async {
    await open();
    int response = await db!.delete(tableHotels, where: '$columnId = ?', whereArgs: [id]);
    await close();
    return response;
  }

  Future<int> update(Hotel hotel) async {
    await open();
    int response = await db!.update(tableHotels, hotel.toMap(),
        where: '$columnId = ?', whereArgs: [hotel.id]);
    await close();
    return response;
  }

  Future close() async => db!.close();
}