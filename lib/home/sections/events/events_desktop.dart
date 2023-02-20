part of 'events.dart';

class _EventsDesktop extends StatelessWidget {
  const _EventsDesktop();

  @override
  Widget build(BuildContext context) {
    return _EventsBase(
      child: Row(
        children: const [
          Flexible(
            child: _TextColumn(padding: 40),
          ),
          Flexible(
            child: _Photo(padding: 40),
          ),
        ],
      ),
    );
  }
}
