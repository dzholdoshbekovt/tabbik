class _SvgComponentsAssets {
  static const _basePath = 'packages/components/assets/svgs/';

  static const String bankNotFound = '${_basePath}bank-notfound.svg.vec';
  static const String carDefault = '${_basePath}car-default.svg.vec';
  static const String documentDefault = '${_basePath}document-default.svg.vec';
  static const String generalDeveloping =
      '${_basePath}general-developing.svg.vec';
  static const String generalError = '${_basePath}general-error.svg.vec';
  static const String generalInProcess =
      '${_basePath}general-in-process.svg.vec';
  static const String generalSuccess = '${_basePath}general-success.svg.vec';
  static const String identIdBack = '${_basePath}ident-id-back.svg.vec';
  static const String identIdFront = '${_basePath}ident-id-front.svg.vec';
  static const String identLiveness = '${_basePath}ident-liveness.svg.vec';
  static const String identPhotoId = '${_basePath}ident-photo-id.svg.vec';
  static const String identSuccess = '${_basePath}ident-success.svg.vec';
  static const String identUnsuccess = '${_basePath}ident-unsuccess.svg.vec';
  static const String loginBiometricFalse =
      '${_basePath}loginBiometricFalse.svg.vec';
  static const String loginBiometric = '${_basePath}loginBiometric.svg.vec';

  static const String miniDeposit = '${_basePath}mini_deposit.svg.vec';
  static const String miniAccount = '${_basePath}mini_account.svg.vec';
  static const String miniCredit = '${_basePath}mini_credit.svg.vec';
  static const String contact = '${_basePath}contact.svg.vec';
  static const String contactSearch = '${_basePath}contact_search.svg.vec';
  static const String contactEmpty = '${_basePath}contact_empty.svg.vec';

  static const String connectionError = '${_basePath}connection_error.svg.vec';
  static const String error = '${_basePath}error.svg.vec';
}

enum ComponentSvgs {
  banknotfound,
  carDefault,
  documentDefault,
  generalDeveloping,
  generalError,
  generalInProcess,
  generalSuccess,
  identIdBack,
  identIdFront,
  identLiveness,
  identPhotoId,
  identSuccess,
  identUnsuccess,
  loginBiometricFalse,
  loginBiometric,
  miniDeposit,
  miniCredit,
  miniAccount,
  contact,
  contactSearch,
  contactEmpty,
  connectionError,
  error,
  dummy,
}

extension ComponentSvgPath on ComponentSvgs {
  String getPath() {
    switch (this) {
      case ComponentSvgs.banknotfound:
        return _SvgComponentsAssets.bankNotFound;
      case ComponentSvgs.carDefault:
        return _SvgComponentsAssets.carDefault;
      case ComponentSvgs.documentDefault:
        return _SvgComponentsAssets.documentDefault;
      case ComponentSvgs.generalDeveloping:
        return _SvgComponentsAssets.generalDeveloping;
      case ComponentSvgs.generalError:
        return _SvgComponentsAssets.generalError;
      case ComponentSvgs.generalInProcess:
        return _SvgComponentsAssets.generalInProcess;
      case ComponentSvgs.generalSuccess:
        return _SvgComponentsAssets.generalSuccess;
      case ComponentSvgs.identIdBack:
        return _SvgComponentsAssets.identIdBack;
      case ComponentSvgs.identIdFront:
        return _SvgComponentsAssets.identIdFront;
      case ComponentSvgs.identLiveness:
        return _SvgComponentsAssets.identLiveness;
      case ComponentSvgs.identPhotoId:
        return _SvgComponentsAssets.identPhotoId;
      case ComponentSvgs.identSuccess:
        return _SvgComponentsAssets.identSuccess;
      case ComponentSvgs.identUnsuccess:
        return _SvgComponentsAssets.identUnsuccess;
      case ComponentSvgs.loginBiometricFalse:
        return _SvgComponentsAssets.loginBiometricFalse;
      case ComponentSvgs.loginBiometric:
        return _SvgComponentsAssets.loginBiometric;
      case ComponentSvgs.miniDeposit:
        return _SvgComponentsAssets.miniDeposit;
      case ComponentSvgs.miniCredit:
        return _SvgComponentsAssets.miniCredit;
      case ComponentSvgs.miniAccount:
        return _SvgComponentsAssets.miniAccount;
      case ComponentSvgs.contact:
        return _SvgComponentsAssets.contact;
      case ComponentSvgs.contactSearch:
        return _SvgComponentsAssets.contactSearch;
      case ComponentSvgs.contactEmpty:
        return _SvgComponentsAssets.contactEmpty;
      case ComponentSvgs.connectionError:
        return _SvgComponentsAssets.connectionError;
      case ComponentSvgs.error:
        return _SvgComponentsAssets.error;
      case ComponentSvgs.dummy:
        return '';
    }
  }
}
