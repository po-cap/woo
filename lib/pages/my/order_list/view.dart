import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:woo/common/index.dart';

import 'index.dart';

class OrderListPage extends GetView<OrderListController> {
  const OrderListPage({super.key});

  // 列表
  Widget _buildList() {
    return ListView.separated(
      itemBuilder: (context, index) {
        OrderModel item = controller.items[index];
        return BuildOrderListItem(item: item)
            .onTap(() => controller.onOrderItemTap(item));
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: AppSpace.listRow * 2);
      },
      itemCount: controller.items.length,
    );
  }


  // 主视图
  Widget _buildView() {
    return _buildList();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderListController>(
      init: OrderListController(),
      id: "order_list",
      builder: (_) {
        return Scaffold(
          appBar: mainAppBarWidget(titleString: LocaleKeys.orderListTitle.tr),
          body: SafeArea(
            child: SmartRefresher(
              controller: controller.refreshController, // 刷新控制器
              enablePullUp: true, // 启用上拉加载
              onRefresh: controller.onRefresh, // 下拉刷新回调
              onLoading: controller.onLoading, // 上拉加载回调
              footer: const SmartRefresherFooterWidget(), // 底部加载更多
              child: _buildView(),
            ).paddingAll(AppSpace.page),
          ),
        );
      },
    );
  }

}
