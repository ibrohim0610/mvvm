import 'package:equatable/equatable.dart';
import '../../../../core/data/models/top_chef_model.dart';

enum TopChefsStatus { idle, loading, success, error }

class TopChefsState extends Equatable {
  final List<TopChefModel> mostViewedChefs;
  final TopChefsStatus mostViewedChefsStatus;
  final List<TopChefModel> mostLikedChefs;
  final TopChefsStatus mostLikedChefsStatus;
  final List<TopChefModel> newChefs;
  final TopChefsStatus newChefsStatus;

  const TopChefsState({
    required this.mostViewedChefs,
    required this.mostLikedChefs,
    required this.newChefs,
    required this.mostViewedChefsStatus,
    required this.mostLikedChefsStatus,
    required this.newChefsStatus,
  });

  factory TopChefsState.initial() {
    return TopChefsState(
      mostViewedChefs: [],
      mostLikedChefs: [],
      newChefs: [],
      mostViewedChefsStatus: TopChefsStatus.idle,
      mostLikedChefsStatus: TopChefsStatus.idle,
      newChefsStatus: TopChefsStatus.idle,
    );
  }

  TopChefsState copyWith({
    List<TopChefModel>? mostViewedChefs,
    List<TopChefModel>? mostLikedChefs,
    List<TopChefModel>? newChefs,
    TopChefsStatus? mostViewedChefsStatus,
    TopChefsStatus? mostLikedChefsStatus,
    TopChefsStatus? newChefsStatus,
  }) {
    return TopChefsState(
      mostViewedChefs: mostViewedChefs ?? this.mostViewedChefs,
      mostViewedChefsStatus: mostViewedChefsStatus ?? this.mostViewedChefsStatus,
      mostLikedChefs: mostLikedChefs ?? this.mostLikedChefs,
      mostLikedChefsStatus: mostLikedChefsStatus ?? this.mostLikedChefsStatus,
      newChefs: newChefs ?? this.newChefs,
      newChefsStatus: newChefsStatus ?? this.newChefsStatus,
    );
  }

  @override
  List<Object?> get props => [
    mostViewedChefs,
    mostLikedChefs,
    newChefs,
    mostViewedChefsStatus,
    mostLikedChefsStatus,
    newChefsStatus,
  ];
}
