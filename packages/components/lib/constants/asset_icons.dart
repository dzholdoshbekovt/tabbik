class _IconComponentsAssets {
  static const _basePath = 'packages/components/assets/images/';

  static const String copyIcon = '${_basePath}copy_icon.png';
  static const String blankIcon = '${_basePath}blank.png';
  static const String badgeIcon = '${_basePath}badge.png';
  static const String infoUpIcon = '${_basePath}info_up.png';
  static const String infoDownIcon = '${_basePath}info_down.png';
  static const String idCardIcon = '${_basePath}id_card.png';
  static const String successIcon = '${_basePath}success.png';
  static const String secureBlankIcon = '${_basePath}secure_blank.png';
  static const String scalesIcon = '${_basePath}scales.png';
  static const String gearIcon = '${_basePath}gear.png';
  static const String phoneIcon = '${_basePath}phone.png';
  static const String coinsIcon = '${_basePath}coins.png';
  static const String mailIcon = '${_basePath}mail.png';
  static const String carIcon = '${_basePath}car.png';
  static const String infoIcon = '${_basePath}info.png';
  static const String timeIcon = '${_basePath}time.png';
  static const String exitIcon = '${_basePath}exit.png';
  static const String trashIcon = '${_basePath}trash.png';

  static const String plusIcon = '${_basePath}plus.png';
  static const String moreIcon = '${_basePath}more.png';
  static const String penIcon = '${_basePath}pen.png';
  static const String bellIcon = '${_basePath}bell.png';
  static const String blankSuccessIcon = '${_basePath}blank_success.png';

  static const String bellRingIcon = '${_basePath}bell_ring.png';
  static const String blankSearchIcon = '${_basePath}blank_search.png';

  static const String starIcon = '${_basePath}star.png';
}

enum ComponentIcons {
  empty,
  copy,
  blank,
  badge,
  infoUp,
  infoDown,
  idCard,
  success,
  secureBlank,
  scales,
  gear,
  phone,
  coins,
  mail,
  car,
  info,
  time,
  pen,
  more,
  bell,
  plus,
  bellRing,
  exit,
  blankSearch,
  blankSuccess,
  trash,
  star,
}

extension ComponentIconPath on ComponentIcons {
  String getPath() {
    switch (this) {
      case ComponentIcons.empty:
        return '';
      case ComponentIcons.copy:
        return _IconComponentsAssets.copyIcon;
      case ComponentIcons.blank:
        return _IconComponentsAssets.blankIcon;
      case ComponentIcons.badge:
        return _IconComponentsAssets.badgeIcon;
      case ComponentIcons.infoUp:
        return _IconComponentsAssets.infoUpIcon;
      case ComponentIcons.infoDown:
        return _IconComponentsAssets.infoDownIcon;
      case ComponentIcons.idCard:
        return _IconComponentsAssets.idCardIcon;
      case ComponentIcons.success:
        return _IconComponentsAssets.successIcon;
      case ComponentIcons.secureBlank:
        return _IconComponentsAssets.secureBlankIcon;
      case ComponentIcons.scales:
        return _IconComponentsAssets.scalesIcon;
      case ComponentIcons.gear:
        return _IconComponentsAssets.gearIcon;
      case ComponentIcons.phone:
        return _IconComponentsAssets.phoneIcon;
      case ComponentIcons.coins:
        return _IconComponentsAssets.coinsIcon;
      case ComponentIcons.mail:
        return _IconComponentsAssets.mailIcon;
      case ComponentIcons.car:
        return _IconComponentsAssets.carIcon;
      case ComponentIcons.info:
        return _IconComponentsAssets.infoIcon;
      case ComponentIcons.time:
        return _IconComponentsAssets.timeIcon;
      case ComponentIcons.pen:
        return _IconComponentsAssets.penIcon;
      case ComponentIcons.more:
        return _IconComponentsAssets.moreIcon;
      case ComponentIcons.bell:
        return _IconComponentsAssets.bellIcon;
      case ComponentIcons.plus:
        return _IconComponentsAssets.plusIcon;
      case ComponentIcons.bellRing:
        return _IconComponentsAssets.bellRingIcon;
      case ComponentIcons.blankSearch:
        return _IconComponentsAssets.blankSearchIcon;
      case ComponentIcons.exit:
        return _IconComponentsAssets.exitIcon;
      case ComponentIcons.blankSuccess:
        return _IconComponentsAssets.blankSuccessIcon;
      case ComponentIcons.trash:
        return _IconComponentsAssets.trashIcon;
      case ComponentIcons.star:
        return _IconComponentsAssets.starIcon;
    }
  }
}
