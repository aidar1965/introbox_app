import 'package:decimal/decimal.dart';

import '../models/responses/company_dto.dart';

import '../../../domain/models/channel.dart';
import '../../../domain/models/company.dart';
import '../../../domain/models/course.dart';
import '../../../domain/models/course_category.dart';
import '../../../domain/models/fragment_category.dart';
import '../../../domain/models/pdf_fragment.dart';
import '../../../domain/models/presentation.dart';
import '../../../domain/models/presentation_with_fragments.dart';
import '../../../domain/models/subject.dart';
import '../../../domain/models/subject_category.dart';
import '../../../domain/models/token_pair.dart';
import '../../../domain/models/user.dart';
import '../../../domain/models/user_with_tokens.dart';
import '../models/responses/channel_dto.dart';
import '../models/responses/check_password_dto.dart';
import '../models/responses/course_category_dto.dart';
import '../models/responses/course_dto.dart';
import '../models/responses/fragment_category_dto.dart';
import '../models/responses/pdf_fragment_dto.dart';
import '../models/responses/presentation_dto.dart';
import '../models/responses/presentation_id_dto.dart';
import '../models/responses/presentation_with_fragments_dto.dart';
import '../models/responses/subject_category_dto.dart';
import '../models/responses/subject_dto.dart';
import '../models/responses/user_dto.dart';
import '../models/responses/user_with_tokens_dto.dart';

class ApiDataMapper {
  User mapUser(UserDto dto) => User(
      firstName: dto.firstName,
      lastName: dto.lastName,
      email: dto.email,
      secondName: dto.secondName,
      about: dto.about,
      imageUrl: dto.photo);

  UserWithTokens mapUserWithTokens(UserWithTokensDto dto) {
    return UserWithTokens(
        user: User(
            firstName: dto.firstName, lastName: dto.lastName, email: dto.email),
        tokens: TokenPair(
            accessToken: dto.accessToken, refreshToken: dto.refreshToken));
  }

  Subject mapSubject(SubjectDto dto) {
    return Subject(
        id: dto.id,
        title: dto.title,
        description: dto.description,
        firstImage: dto.firstImage,
        date: DateTime.parse(dto.createdAt),
        duration: dto.duration,
        countUncompleted: dto.countUncompleted);
  }

  PdfFragment mapPdfFragment(PdfFragmentDto dto) {
    return PdfFragment(
        id: dto.id,
        title: dto.title,
        duration: dto.duration,
        description: dto.description,
        audioPath: dto.audioPath,
        imagePath: dto.imagePath,
        isLandscape: dto.isLandscape,
        displayOrder: dto.displayOrder,
        isTitleOverImage: dto.isTitleOverImage);
  }

  Course mapCourse(CourseDto dto) {
    return Course(
        title: dto.title,
        description: dto.description,
        image: dto.image,
        price: Decimal.parse(dto.price.toString()),
        isPublished: dto.isPublished,
        id: dto.id,
        updatedAt:
            dto.updatedAt != null ? DateTime.parse(dto.updatedAt!) : null,
        createdAt: DateTime.parse(dto.createdAt),
        presentations: dto.presentations?.map(mapPresentation).toList(),
        channel: mapChannel(dto.channel));
  }

  CourseCategory mapCourseCategory(CourseCategoryDto dto) {
    return CourseCategory(name: dto.name, id: dto.id);
  }

  FragmentCategory mapFragmentCategory(FragmentCategoryDto dto) {
    return FragmentCategory(name: dto.name, id: dto.id);
  }

  SubjectCategory mapSubjectCategory(SubjectCategoryDto dto) {
    return SubjectCategory(name: dto.name, id: dto.id);
  }

  Presentation mapPresentation(PresentationDto dto) {
    return Presentation(
        id: dto.id,
        title: dto.title,
        description: dto.description,
        firstImage: dto.firstImage,
        isAudio: dto.isAudio,
        isPublic: dto.isPublic,
        includePdf: dto.includePdf,
        freeMode: dto.freeMode,
        hasPassword: dto.hasPassword,
        createdAt: DateTime.parse(dto.createdAt),
        pdfFile: dto.pdfFile,
        links: dto.links,
        isPublished: dto.isPublished,
        channel: dto.channelDto != null ? mapChannel(dto.channelDto!) : null);
  }

  PresentationWithFragments mapPresentationWithFragments(
      PresentationWithFragmentsDto dto) {
    return PresentationWithFragments(
        presentation: Presentation(
            id: dto.id,
            title: dto.title,
            firstImage: '',
            isAudio: true,
            isPublic: true,
            includePdf: false,
            hasPassword: false,
            freeMode: true,
            createdAt: DateTime.parse(dto.createdAt),
            isPublished: true,
            pdfFile: dto.pdfFile,
            description: dto.description,
            channel: mapChannel(dto.channelDto)),
        fragments: dto.fragmentDtoList.map((e) => mapPdfFragment(e)).toList());
  }

  Company mapCompany(CompanyDto dto) {
    return Company(
        id: dto.id,
        name: dto.name,
        website: dto.website,
        description: dto.description,
        isConfirmed: dto.isConfirmed);
  }

  Channel mapChannel(ChannelDto dto) {
    ChannelType getChannelType(int value) {
      switch (value) {
        case 1:
          return ChannelType.private;
        case 2:
          return ChannelType.commercial;
        case 3:
          return ChannelType.education;
        case 4:
          return ChannelType.government;

        default:
          return ChannelType.private;
      }
    }

    return Channel(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      company: dto.companyDto != null ? mapCompany(dto.companyDto!) : null,
      channelType: getChannelType(dto.channelType),
      isPublic: dto.isPublic,
    );
  }

  bool mapCheckPassword(CheckPasswordDto dto) {
    return dto.hasPassword;
  }

  String mapPresentationId(PresentationIdDto dto) {
    return dto.id;
  }
}
