part of 'events.dart';

class _EventsMobile extends StatelessWidget {
  const _EventsMobile();

  @override
  Widget build(BuildContext context) {
    return _EventsBase(
      child: Column(
        children: const [
          _TextColumn(padding: 30),
          _Photo(padding: 20),
        ],
      ),
    );
  }
}
