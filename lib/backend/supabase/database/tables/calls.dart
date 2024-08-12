import '../database.dart';

class CallsTable extends SupabaseTable<CallsRow> {
  @override
  String get tableName => 'calls';

  @override
  CallsRow createRow(Map<String, dynamic> data) => CallsRow(data);
}

class CallsRow extends SupabaseDataRow {
  CallsRow(super.data);

  @override
  SupabaseTable get table => CallsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get companion => getField<String>('companion')!;
  set companion(String value) => setField<String>('companion', value);

  String get oldie => getField<String>('oldie')!;
  set oldie(String value) => setField<String>('oldie', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get companionName => getField<String>('companion_name')!;
  set companionName(String value) => setField<String>('companion_name', value);

  String get avatar => getField<String>('avatar')!;
  set avatar(String value) => setField<String>('avatar', value);
}
