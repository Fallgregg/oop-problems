#include "CMS.h"

Quantity CMS::get_reserved_goods_quantity(GoodsID id) {
  return _reservations[id];
}

bool CMS::reserve(GoodsID id, Quantity quantity) {
  _reservations[id] += quantity;
  return true;
}

Order *CMS::get_order_by_id(OrderID id) {
  for (auto &order : _orders) {
    if (order->get_id() == id) {
      return order;
    }
  }

  return nullptr;
}

Order *CMS::get_order_copy(Order *order) {
  return new Order(order->get_id(), order->get_list(), order->get_status());
}

CMS::CMS() {
  _curr_id = 0;
  _warehouse = Warehouse();
}

CMS::~CMS() {
  _shortages.clear();
  _reservations.clear();

  for (Order *order : _orders) {
    delete order;
  }
  _orders.clear();
}

set<Goods> CMS::get_catalog() {
  return _warehouse.get_catalog();
}

map<GoodsID, Quantity> CMS::get_shortages() {
  return _shortages;
}

map<GoodsID, Quantity> CMS::get_reservations() {
  return _reservations;
}

Order *CMS::get_order_info(OrderID id) {
  Order *order = get_order_by_id(id);
  if (order) {
    return get_order_copy(order);
  }

  return nullptr;
}

bool CMS::add_stock(map<GoodsID, Quantity> list) {
  bool push_result = _warehouse.push(list);

  if (push_result) {
    for (auto &it : list) {
      GoodsID id = it.first;
      Quantity quantity = it.second;

      int temp = (int) (_shortages[id] - quantity);
      _shortages[id] = temp < 0 ? 0 : (unsigned int) temp;
    }
  }

  return push_result;
}

int CMS::make_order(map<GoodsID, Quantity> list) {
  if (!_warehouse.is_exist(list)) {
    return -1;
  }

  for (auto &it : list) {
    GoodsID id = it.first;
    Quantity quantity = it.second;

    int available = (int) (_warehouse.get_goods_quantity(id) - get_reserved_goods_quantity(id));
    if (available < quantity) {
      _shortages[id] = quantity - available;
    }
    reserve(id, quantity);
  }

  auto *order = new Order(_curr_id++, list);
  _orders.push_back(order);

  return order->get_id();
}

bool CMS::collect_order(OrderID id) {
  Order *order = get_order_by_id(id);
  if (order && order->get_status() == Status::PROCESSING) {
    map<GoodsID, Quantity> goods_list = order->get_list();
    for (auto &it : goods_list) {
      GoodsID goods_id = it.first;
      if (_shortages[goods_id] != 0) {
        return false;
      }
    }
    order->set_status(Status::PREPARED);
    return true;
  }
  return false;
}

Order *CMS::get_order(OrderID id) {
  Order *order = get_order_by_id(id);
  if (order && order->get_status() == Status::PREPARED) {
    map<GoodsID, Quantity> goods_list = order->get_list();
    if (_warehouse.take(goods_list)) {
      for (auto &it : goods_list) {
        GoodsID goods_id = it.first;
        Quantity goods_quantity = it.second;
        _shortages[goods_id] -= goods_quantity;
      }
      order->set_status(Status::COMPLETED);
      return get_order_copy(order);
    }
  }

  return nullptr;
}