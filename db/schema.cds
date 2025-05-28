namespace dmart;

entity Item {
  key ID: String(20);              
  Name: String(100);
  Name_in_telugu: String(100);
  Status: String(20);
  Quantity: String(10);           
  UoM: String(20);
  Category: String(20);
}
