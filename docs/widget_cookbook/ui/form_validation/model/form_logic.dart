// フォームのバリデーションロジックを定義するクラス
class FormLogic {
  // 電話番号のバリデーション
  String? phoneNumberValidator(String? value) {
    // 正規表現を使って、数字のみかどうかをチェック
  final regex = RegExp(r'^\d+$');
  // 正規表現にマッチしない場合は、エラーメッセージを返す
  if (!regex.hasMatch(value!)) {
    return '電話番号は数字のみで入力してください';
  }
  // 電話番号は12桁まで制限をかける
  if (value.length > 12) {
    return '電話番号は最大12桁までです';
  }
  // エラーがない場合はnullを返す
  return null;
}
  // パスワードのバリデーション
  String? passwordValidator(String? value) {
    // 正規表現を使って、英語の大文字、小文字、数字を含む8文字以上かどうかをチェック
    final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$');
    // 正規表現にマッチしない場合は、エラーメッセージを返す
    if (!regex.hasMatch(value!)) {
      return 'パスワードは英語の大文字、小文字、数字を含む8文字以上である必要があります';
    }
    // エラーがない場合はnullを返す
    return null;
  }
}
