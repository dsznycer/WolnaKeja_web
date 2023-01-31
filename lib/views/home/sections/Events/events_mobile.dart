part of 'events.dart';

class EventsMobile extends StatelessWidget {
  const EventsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EventsBase(
      child: Column(
        children: const [
          _TextColumn(padding: 30),
          _Photo(padding: 20),
        ],
      ),
    );
  }
}
