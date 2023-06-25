abstract class SearchEvent {}

class SearchRequested extends SearchEvent {
  String searchTerm;
  SearchRequested(this.searchTerm);
}
