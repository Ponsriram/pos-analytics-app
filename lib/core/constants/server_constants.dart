class ServerConstants {
  // Auth
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String userProfile = '/users/me';

  // Analytics
  static const String analyticsSummary = '/analytics/summary';
  static const String analyticsByStore = '/analytics/summary/by-store';

  // Stores
  static const String stores = '/stores';

  // Orders
  static const String orders = '/orders';
  static const String payments = '/orders/payments';

  // Products & Categories
  static const String products = '/products';
  static const String categories = '/products/categories';

  // Employees
  static const String employees = '/employees';

  // Shifts
  static const String shifts = '/shifts';
  static const String dayClose = '/shifts/day-close';

  // Inventory
  static const String inventoryItems = '/inventory/items';
  static const String inventoryStock = '/inventory/stock';
  static const String inventoryUnits = '/inventory/units';
  static const String inventoryLocations = '/inventory/locations';
  static const String inventoryRecipes = '/inventory/recipes';
  static const String inventoryTransfers = '/inventory/transfers';
  static const String inventoryOutOfStock = '/inventory/out-of-stock';

  // Reports
  static const String reportTypes = '/reports/types';
  static const String reportGenerate = '/reports/generate';
  static const String reports = '/reports';

  // Billing
  static const String invoices = '/billing/invoices';

  // Kitchen
  static const String kitchenOrders = '/kitchen/orders';

  // Management
  static const String groups = '/groups';
  static const String zones = '/zones';
}
