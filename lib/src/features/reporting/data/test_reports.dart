import '../domain/report.dart';

final kTestReports = <Report>[
  Report(
    userId: "1",
    buildingId: "building1",
    buildingSpot: "room1",
    priority: PriorityLevel.urgent,
    title: 'Fridge Broken',
    description: "",
    status: ReportStatus.assigned,
    timestamp: DateTime.parse('2024-10-08'),
    photoUrls: [
      "https://static.italiaoggi.it/content_upload/img/2608/75/2608751/dannimaltempo-631775.jpg",
      "https://media-assets.wired.it/photos/646b383a14e3921f4e7c7c3b/16:9/w_2560%2Cc_limit/1256998159",
      "https://static.italiaoggi.it/content_upload/img/2608/75/2608751/dannimaltempo-631775.jpg",
      "https://media-assets.wired.it/photos/646b383a14e3921f4e7c7c3b/16:9/w_2560%2Cc_limit/1256998159",
    ],
    operatorId: "1",
    repairDescription: '',
    repairPhotosUrls: [],
  ),
  Report(
    userId: "1",
    buildingId: "building2",
    buildingSpot: "room1",
    priority: PriorityLevel.normal,
    title: 'Light Broken',
    description: "",
    status: ReportStatus.open,
    timestamp: DateTime.parse('2024-10-07'),
    photoUrls: [
      "https://static.italiaoggi.it/content_upload/img/2608/75/2608751/dannimaltempo-631775.jpg",
      "https://media-assets.wired.it/photos/646b383a14e3921f4e7c7c3b/16:9/w_2560%2Cc_limit/1256998159",
    ],
    operatorId: "1",
    repairDescription: '',
    repairPhotosUrls: [],
  ),
  Report(
    userId: "1",
    buildingId: "building3",
    buildingSpot: "room1",
    priority: PriorityLevel.urgent,
    title: 'Door Fixed',
    description: "",
    status: ReportStatus.completed,
    timestamp: DateTime.parse('2024-09-15'),
    photoUrls: [
      "https://static.italiaoggi.it/content_upload/img/2608/75/2608751/dannimaltempo-631775.jpg",
      "https://media-assets.wired.it/photos/646b383a14e3921f4e7c7c3b/16:9/w_2560%2Cc_limit/1256998159",
    ],
    operatorId: "1",
    repairDescription: '',
    repairPhotosUrls: [],
  ),
  Report(
    userId: "1",
    buildingId: "building1",
    buildingSpot: "room1",
    priority: PriorityLevel.normal,
    title: 'Window Broken',
    description: "",
    status: ReportStatus.deleted,
    timestamp: DateTime.parse('2024-08-01'),
    photoUrls: [
      "https://static.italiaoggi.it/content_upload/img/2608/75/2608751/dannimaltempo-631775.jpg",
      "https://media-assets.wired.it/photos/646b383a14e3921f4e7c7c3b/16:9/w_2560%2Cc_limit/1256998159",
    ],
    operatorId: "1",
    repairDescription: '',
    repairPhotosUrls: [],
  ),
  Report(
    userId: "1",
    buildingId: "building1",
    buildingSpot: "room2",
    priority: PriorityLevel.normal,
    title: 'Hoven Broken',
    description: "",
    status: ReportStatus.completed,
    timestamp: DateTime.parse('2024-08-01'),
    photoUrls: [
      "https://static.italiaoggi.it/content_upload/img/2608/75/2608751/dannimaltempo-631775.jpg",
      "https://media-assets.wired.it/photos/646b383a14e3921f4e7c7c3b/16:9/w_2560%2Cc_limit/1256998159",
    ],
    operatorId: "1",
    repairDescription: '',
    repairPhotosUrls: [],
  ),
];
