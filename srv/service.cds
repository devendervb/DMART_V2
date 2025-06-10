using dmart from '../db/schema';

service CatalogService {
  entity Items as projection on dmart.Item;

  entity ItemstoBuy as select from dmart.Item{*} where Status = 'Buy';

  action ResetItemsStatus();
  
}