part of 'events.dart';

class EventsDesktop extends StatelessWidget {
  const EventsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EventsBase(
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
