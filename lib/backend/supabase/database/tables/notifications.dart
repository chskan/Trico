import '../database.dart';

class NotificationsTable extends SupabaseTable<NotificationsRow> {
  @override
  String get tableName => 'notifications';

  @override
  NotificationsRow createRow(Map<String, dynamic> data) =>
      NotificationsRow(data);
}

class NotificationsRow extends SupabaseDataRow {
  NotificationsRow(super.data);

  @override
  SupabaseTable get table => NotificationsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get body => getField<String>('body')!;
  set body(String value) => setField<String>('body', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get hour => getField<String>('hour')!;
  set hour(String value) => setField<String>('hour', value);

  String get minute => getField<String>('minute')!;
  set minute(String value) => setField<String>('minute', value);
}
