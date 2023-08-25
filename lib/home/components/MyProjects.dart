import 'package:flutter/material.dart';
import 'package:portfolio/home/components/ProjectCard.dart';
import 'package:portfolio/home/components/expanded_widget.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/screens/constants.dart';
import 'package:portfolio/screens/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: defaultPadding),
          // GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //   ),
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         color: darkColor,
          //         borderRadius: BorderRadius.all(Radius.circular(50)),
          //       ),
          //       child: ExpandedWidget(label: 'MATERNIO',
          //         text: "Maternio is an application designed to provide information and support to women during their pregnancy journey and after childbirth. This app is typically available for download on mobile devices and offers a range of features and resources to help expectant mothers navigate pregnancy, prepare for childbirth, track their baby’s growth, provide doctors consultancy, and also baby caretaker service. The purpose of Maternio is to provide women with a comprehensive resource that can help them stay informed about their health, their baby's development, and any changes or symptoms they may experience during pregnancy. Many apps offer features such as personalized pregnancy trackers, nutritional guidance, exercise recommendations, and tools for tracking appointments and medications. In addition to providing helpful information and resources, pregnancy apps can also connect women with online communities of other expectant mothers. This can be a valuable source of support, allowing women to share experiences, ask questions, and receive encouragement and advice from others who are going through similar experiences. Overall, the Maternio app is a helpful tool for expectant mothers, providing them with access to information, resources, and support throughout and after their pregnancy journey.",
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Container(
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ExpandedWidget(label: 'MATERNIO',
                text: "Maternio developed in Flutter. Maternio is an application designed to provide information and support to women during their pregnancy journey and after childbirth. This app is typically available for download on mobile devices and offers a range of features and resources to help expectant mothers navigate pregnancy, prepare for childbirth, track their baby’s growth, provide doctors consultancy, and also baby caretaker service. The purpose of Maternio is to provide women with a comprehensive resource that can help them stay informed about their health, their baby's development, and any changes or symptoms they may experience during pregnancy. Many apps offer features such as personalized pregnancy trackers, nutritional guidance, exercise recommendations, and tools for tracking appointments and medications. In addition to providing helpful information and resources, pregnancy apps can also connect women with online communities of other expectant mothers. This can be a valuable source of support, allowing women to share experiences, ask questions, and receive encouragement and advice from others who are going through similar experiences. Overall, the Maternio app is a helpful tool for expectant mothers, providing them with access to information, resources, and support throughout and after their pregnancy journey.",
              ),
            ),
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Container(
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ExpandedWidget(label: 'COMPUTER STORE MANAGEMENT',
                text:
                  "The computer store management system developed in C++ offers an array of functionalities to enhance the overall efficiency and effectiveness of managing orders, billing, and generating daily summaries. With features like adding, deleting, and modifying orders, as well as generating bills and daily summaries, the system provides a comprehensive solution for streamlining these crucial aspects of running a computer store. The computer store management system incorporates a daily summary feature. This feature provides a consolidated report summarizing the day's activities. It includes key information such as total sales, total revenue, the number of orders processed, and any notable events or transactions that occurred during the day. The daily summary offers a quick snapshot of the store's performance and helps the management team gain insights into sales trends, customer preferences, and overall business operations. This information can be used for decision-making, identifying areas for improvement, and planning future strategies. ",
              ),
            ),
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Container(
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ExpandedWidget(label: 'HOSPITAL MANAGEMENT SYSTEM',
                text:
                "The hospital management system developed in C++ combines crucial functionalities to optimize administrative and clinical processes within a healthcare facility. By enabling the addition of new patients, recording diagnosis information, and providing access to comprehensive medical histories, the system enhances patient care, streamlines operations, and improves decision-making. Additionally, by offering relevant information about the hospital itself, it ensures effective communication and creates a user-friendly environment for patients and healthcare professionals. With its robust features and user-friendly interface, the system contributes to the efficient management and delivery of healthcare services, ultimately enhancing the overall patient experience and satisfaction.",
              ),
            ),
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Container(
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ExpandedWidget(label: 'LIBRARY MANAGEMENT SYSTEM',
                text: "The Library Management System developed in C++ simplifies and automates various library tasks, improving operational efficiency and enhancing user experience. By managing books, borrowers, and financial transactions, the system streamlines processes, reduces manual work, and ensures accurate record-keeping. Librarians can focus more on providing quality services to library users, optimizing resource allocation, and enhancing the overall management of the library.",
              ),
            ),
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Container(
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ExpandedWidget(label: 'BANK MANAGEMENT SYSTEM',
                text: "The Bank Management System developed in C++ is a comprehensive software application designed to facilitate efficient management of banking operations. This system incorporates various features to handle customer accounts, transactions, and other essential aspects of banking. With its robust functionalities and user-friendly interface, the Bank Management System developed in C++ streamlines banking operations, enhances customer service, and ensures efficient management of customer accounts and transactions. By automating various tasks and providing real-time access to account information, the system improves operational efficiency, reduces errors, and enhances the overall banking experience for both customers and bank employees",
              ),
            ),
          ),
          SizedBox(height: defaultPadding,),

        ],
      ),
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}