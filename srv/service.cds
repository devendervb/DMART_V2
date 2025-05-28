using dmart from '../db/schema';

service CatalogService {
  entity Items as projection on dmart.Item;
}