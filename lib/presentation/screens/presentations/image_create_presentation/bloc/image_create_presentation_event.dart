part of 'image_create_presentation_bloc.dart';

@freezed
class ImageCreatePresentationEvent with _$ImageCreatePresentationEvent {
  const factory ImageCreatePresentationEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory ImageCreatePresentationEvent.channelSelected(
      {required Channel channel}) = _EventChannelSelected;
  const factory ImageCreatePresentationEvent.fragmentAdded(
      {required ImageFragment imageFragment,
      String? title,
      String? description}) = _EventFragmentAdded;
  const factory ImageCreatePresentationEvent.saveImagePresentation({
    required String title,
    required String description,
  }) = _EventSaveImagePresentation;

  const factory ImageCreatePresentationEvent.onReorderFragments(
      {required List<ImageFragment> fragments}) = _EventOnReorderFragments;
  const factory ImageCreatePresentationEvent.onDeleteFragment(
      {required int index}) = _EventOnDeleteFragment;
}
