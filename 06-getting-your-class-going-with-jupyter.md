# Chapter 6. Getting Your Class Going with Jupyter

You have several options on how to get Jupyter Notebooks to your students. You can ask students to install Jupyter on their own computers, install Jupyter on lab computers for students to use, or run Jupyter on a remote server that your students access on the internet.   


## Local installation on students' or lab computers

"Local installation" means that each computer is running the software that includes the Jupyter Notebook. Typically, this requires installing a distribution that includes Jupyter, Python, and possibly other language kernels.

A popular distribution for Jupyter is Anaconda, which is easy to install on Windows, Mac, and Linux.  Because it can install everything at the user level, it does not require the installer to have administrator (or root) permissions.

Two other popular open source projects that can run Jupyter notebooks are [nteract](https://nteract.io/) and [Hydrogen](https://nteract.io/atom). nteract is installed by downloading a binary installer from their website and double-clicking the installation file. Once nteract is installed, any Jupyter notebook on a student's local system can be double-clicked and it will open within nteract. nteract's simple user interface make it an excellent choice for students new to computer programming. Hydrogen is a [very popular plugin](https://atom.io/packages/hydrogen) for the open source Atom editor; it's currently used by over 700,000 people. Hydrogen lets a user edit, display, and execute a notebook within the Atom editor.

You can ask students to install Jupyter on their own computer or make it possible for them to use lab computers. These can also be combined: give students the instructions to install it on their own, but also tell them that it's available in the lab if they can't get it to work on their laptop. This way you don't need a large enough computer lab for everyone, and don't need to worry that not everyone can get it to work on their own.


### Jupyter on student-owned computers

The benefits of installation on student-owned computers include:



*   Once students have the software on their computers, they always have access to it; they can work anywhere, and they can use it for internships, jobs, and other non-school activities.
*   It is easy for them to install additional packages later.
*   Students learn to install and set up Jupyter, and software in general, which is a skill they are likely to need.
*   The total computing power for the class scales with the number of students, as long as each student has enough CPU power and memory to support the intended applications.
*   You can adopt Jupyter without support or resources from your institution. 
*   Students learn to use Jupyter on their preferred OS, e.g. Linux, Mac, or Windows, which means they are already familiar with the basic idioms of their OS.

Drawbacks include:



*   This approach is only possible if every student owns a computer with enough capacity. 
*   Students with less powerful computers might be at an unfair disadvantage. 
*   Although installation is generally easy, it still takes time.  The time you spend at the beginning of a class can be worthwhile for a semester-long course that uses Jupyter throughout, but it is a barrier to using Jupyter for a single module or one-off assignment in a course about something else.
*   Also, the amount of time spent debugging esoteric problems scales with the number of students: a class of 25 students is bound to have a few people with 32-bit processors, incompatible libraries, out-of-date operating systems, over-zealous virus checkers, etc., and a class with 100 students will have four times as many. One work-around is to have students work in pairs: the probability that more than half of the students cannot get it working is reduced.
*   Discrepancies in installed library versions can cause issues for students and may lead to different behaviors when students run code.

Although Jupyter is cross-platform and ideally behaves the same on Windows, Mac, or Linux, and distributions such as Anaconda also behave very similarly on all platforms, the instructions for installing and launching it are slightly different on each operating system, so fine-grained instructions such as "double click here" or "type this command" need different versions for Linux, Mac, and Windows users, which can be challenging when the instructor presenting the material has only one platform at their disposal. It is worth developing detailed instructions that the students can go through at their own pace, rather than relying only on a live demo in class that will only apply to a fraction of the students.


### Jupyter on lab computers

Using lab computers instead of student-owned computers has the benefits of uniformity and improved equity. Each student will have exactly the same setup, and the instructions will work the same for everyone. This reduces the amount of individual tech support required and guarantees that all students have access to enough computational power. 

However, this deployment has some disadvantages:



*   Depending on how much control you have of the computer lab, you might need institutional permission and support.
*   Students might be limited to working on assignments only when they are on campus and when computer labs are open, which might be an unfair disadvantage for non-resident students or those with full time jobs.
*   It might be difficult to install additional packages as the need arises, and students might not be allowed to install packages they need for projects.
*   Even in a computer lab, it can be difficult to maintain consistency across machines, and to keep all installations functional.

    **— Box**


    What is Anaconda? You will see the Anaconda distribution recommended by many educators and course authors. Anaconda is a package manager, an environment manager, a Python distribution, a collection of [over 1,500+ open source packages](https://docs.anaconda.com/anaconda/packages/pkg-docs/), and also Jupyter. It is free to download, open source, and easy to install, on any computer system (Windows, Mac OS X or Linux). It also includes the conda packaging utility to update and install new packages of the Python and R ecosystems, and to manage computational environments. According to the company's webpage, Anaconda has more than 6 million users. [https://www.anaconda.com/what-is-anaconda/](https://www.anaconda.com/what-is-anaconda/) .  The Software Carpentry project provides installation instructions with videos for anaconda: [https://swcarpentry.github.io/python-novice-gapminder/setup/](https://swcarpentry.github.io/python-novice-gapminder/setup/) 


    **— Box**


    Two other popular open source projects that can run Jupyter notebooks are [nteract](https://nteract.io/) and [Hydrogen](https://nteract.io/atom). nteract is installed by downloading a binary installer from their website and double-clicking the installation file. Once nteract is installed, any Jupyter notebook on a student's local system can be double-clicked and it will open within nteract. nteract's simple user interface make it an excellent choice for students new to computer programming. Hydrogen is a [very popular plugin](https://atom.io/packages/hydrogen) for the open source Atom editor; it's currently used by over 700,000 people. Hydrogen lets a user edit, display, and execute a notebook within the Atom editor.


    



## Jupyter on remote servers

Even when Jupyter runs locally, it runs as a web application; that is, it runs in a browser connected to a server.  In a local installation, the browser and the server run on the same machine.  But it is also possible to run the server remotely.

In that case, students don't have to install anything; they only have to run a browser and load a URL.

There are several ways to run Jupyter on a remote server:



1.  You can run Jupyter on a server owned by you or your institution.
1.  You can run Jupyter in a temporary environment running in the cloud.
1.  You can run Jupyter in a persistent environment running in the cloud.

Running Jupyter remotely has many of the advantages of running in a lab: you can provide a consistent environment and guarantee that all students have access to sufficient computation resources.  And it mitigates one of the drawbacks of a lab installation, since students have access to cloud resources from anywhere, not just on campus.

Working in the cloud also means that students do not have to manage their own backups of a laptop hard drive. Although a student could still inadvertently overwrite, delete, or destroy the contents of a notebook stored in the cloud, they will not lose their entire work if a laptop is damaged or lost.

For simple, one-off uses of Jupyter (say, for a single assignment or in-class activity) the cloud option is very attractive as it requires little in-class time to discuss installation of additional software.


### Running in a temporary environment in the cloud

The easiest option for running Jupyter in the cloud is to use a cloud service that provides temporary environments.  Some of these services are free of cost, and you can use them without installing anything.  

These environments are well-suited for short examples in classes that do not use Jupyter extensively.  Students can open a notebook and start running with the push of a button.

However, there are some limitations to these services:



*   If your notebooks depend on particular packages, or particular versions of packages, it can be difficult to satisfy these requirements.
*   These services run notebooks in a temporary environment that disappears if it is left idle.  So they might not be suitable for managing student work.
*   Some of these services do not guarantee a level of service and may not be as reliable as you need for a class or workshop.

    **— Box**


    **Binder** ([https://mybinder.](https://mybinder.org)org) is an open-source service provided by Project Jupyter. It allows the owner of a set of notebooks residing in a git repository to pre-build an image in the Binder service, and get a shareable link that any visitor can click to obtain a working instance of JupyterHub, with the notebooks in the repository. The session is temporary (any changes the user makes will be deleted when closing the tab or window), but it's fully interactive. Binder is currently one of the favorite services for running one-off workshops or tutorials.



### Running on servers you control

If you have access to a server or cluster with enough computing power to support your class—including CPU and especially memory—you can provide a Jupyter as a service using JupyterHub.

JupyterHub is open-source software that provides a cloud-based Jupyter application for each user in a group. Each user has their own account and home directory on the server. The Hub, JupyterHub's central system, allows authenticating users and starting individual Jupyter notebook servers. Programs that start notebook servers can use a variety of technical solutions. For more details, see: [https://github.com/jupyterhub/jupyterhub/wiki/Spawners](https://github.com/jupyterhub/jupyterhub/wiki/Spawners)  

Once the Hub starts a user's notebook server, the Jupyter Notebook running in the cloud behaves just like Jupyter does when installed on an individual's computer, but JupyterHub will be running notebooks and storing files on a remote cloud computer. Students can download notebooks stored in the cloud to their local computer if they wish to work with a local installation as well. Additionally, students can upload notebooks (and other files) from their local computer to the cloud.

While anyone can run a JupyterHub server on their own Linux or Mac computer, installing and configuring JupyterHub requires sophisticated knowledge spanning the Linux/Unix operating system, system administration, and networking. For more information, see: 



*   [https://github.com/jupyterhub/jupyterhub](https://github.com/jupyterhub/jupyterhub) (the basic JupyterHub project, which can be installed on a bare-metal server, a virtual private server (VPS), or a commercial cloud cluster)
*   [https://github.com/jupyterhub/the-littlest-jupyterhub](https://github.com/jupyterhub/the-littlest-jupyterhub) (a simplified installation of JupyterHub on a remote server or VPS)
*   [https://github.com/jupyterhub/zero-to-jupyterhub-k8s](https://github.com/jupyterhub/zero-to-jupyterhub-k8s) (a step-by-step guide to install JupyterHub on a Kubernetes cloud system)

Providing a JupyterHub service offers several benefits. First, students get up and running immediately—they spend no time installing software. They navigate to a web URL, log in to JupyterHub, and begin using Jupyter. This ability to quickly log in and begin computing is a powerful way to get students to engage with the lesson, builds confidence, and  avoids the sometimes-stressful experience of installing software on the student's computer.

However, running JupyterHub on your own server has drawbacks:



*   Getting started is not easy; most instructors would require (or at least benefit from) institutional support that may not be available.
*   It can be difficult to scale: if the number of students increases, you might need more computing power.  And the load students generate can be uneven; for example, if everyone runs a computationally-intensive example at the same time, your server might not be able to handle it.
*   This option can be expensive, unless you already have servers with sufficient power.


### Running Jupyter in the cloud

If you or your institution don't own computing hardware with the power to support your class, you can run JupyterHub on virtual servers provided by cloud services like AWS and Microsoft Azure.  In those environment, you can install JupyterHub as described in the previous section

Commercial offerings also exist to use Jupyter in the cloud, some of which provide free trials or a "freemium" pricing model. They include:



*   CoCalc, previously MathSageCloud ([https://cocalc.com](https://cocalc.com)) is a subscription service with a free trial plan. The service also includes the ability to share files with project collaborators. The no-cost version does not allow network access. This has some important limitations (for example, you cannot install additional packages or kernels).
*   Gryd ([https://gryd.us](https://gryd.us)) is another subscription service with a free tier. It includes course-management features, like a way to create a course, invite students, and deploy auto-graded assignments.
*   codio ([https://codio.com/features/ide](https://codio.com/features/ide))
*   Microsoft Azure notebooks ([https://notebooks.azure.com/](https://notebooks.azure.com/) )
*   Amazon Sagemaker ([https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-prepare.html](https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-prepare.html))
*   Gradient by Paperspace ([https://www.paperspace.com/gradient](https://www.paperspace.com/gradient))
*   Google Colaboratory ([https://colab.research.google.com/](https://colab.research.google.com/) )

The biggest advantage of these services is that they require no installation and minimal setup by instructors, and some of them provide features that integrate with learning management systems.  However, instructors generally have to create student accounts and set up student environments.

These services are highly scalable; that is, they can handle large numbers of students and uneven loads.  However, they are not infallible; they might require some tending to make sure students have access to enough resources.

The biggest drawback of these services is that they can be expensive.  Some charge on a per-student basis, with limits on computation and memory use.  Some charge on the basis of actual use, which can be unpredictable (and might require instructors to enforce limits on student activities).

Other drawbacks include:



*   It may be difficult or impossible to install packages you, or particular versions of packages.
*   Some of these services impose limits on what students can do; for example, they might have limited ability to access external services.
*   Many of these services are relatively new, and they sometimes expose instructors and students to rough edges.
*   Students generally lose access to their accounts when the class ends (or a limited time after).
*   There may be privacy concerns with sharing student information on commercial servers.  Some institutions have agreements with one or more of these providers that address privacy.




# Distribution and Collection of Materials

You may want to distribute course materials to and collect them from students. A variety of options are available.  Some important things to consider:



*   Do you want to share your notebooks publicly, or do they require privacy?
*   Can the notebooks that the students create or edit be public? Or do they require privacy?
*   How do you plan to assess collected notebooks?
*   Do you need integration with your LMS?
*   Do you need integration with a file-sharing system?
*   Do you want to distribute with the cell output showing?
*   Do students need software that is not easily available on their own (or laboratory) computers?

Jupyter notebooks are plain text computer files, so you can distribute them to students and collect them using any system that handles text files, including GitHub, Google Drive, and (as a last resort) email.


### Learning Management Systems

Many instructors use a Learning Management System (LMS) to communicate with students. These tools offer private file sharing and assignments that connect to the students' institutional computing accounts and they can be used to distribute and collect notebooks as text files. However, most LMS tools are not yet notebook-aware, so they don't render notebooks or make it easy for instructors to comment on or grade them. 

Some tools and workflows are being actively developed to connect the Jupyter ecosystem to the LMS ecosystem using the [Learning Tools Interoperability (LTI) ](https://open.edx.org/learning-tools-interoperability)([https://open.edx.org/learning-tools-interoperability](https://open.edx.org/learning-tools-interoperability)) standard. By the time you read this, you might find that the options have improved. 


### Web hosting

Notebooks can be publicly hosted on any website, so students can download the files by clicking on a link. Most web hosting software is not notebook-aware,

but nbviewer is a web service that renders notebooks ([https://nbviewer.jupyter.org/](https://nbviewer.jupyter.org/)).  Also, some browser extensions can open notebook files via nbviewer ([https://github.com/jiffyclub/open-in-nbviewer](https://github.com/jiffyclub/open-in-nbviewer)).

GitHub Pages (and other similar services) can be used to host rendered notebooks, and continuous integration services can build the web pages from the notebooks and then display content. See Jupyter Book ([https://github.com/choldgraf/jupyter-book](https://github.com/choldgraf/jupyter-book)) and use of [doctr](https://drdoctr.github.io/doctr) to do this.


### Git

One of the most popular tools for distributing and collecting notebooks is Git, which is a version control system.  Files under Git control are often hosted on services like GitHub, GitLab, and Bitbucket.  Many of these services are notebook-aware; for example, when you view a notebook on GitHub, you see a rendered notebook that includes formatted text, typeset mathematics, code highlighting, and the output of the code, including figures.

Educators at academic institutions can use GitHub Classroom, which allows instructors to set up assignments for a class.  Students click on a link for an assignment and a copy of the assignment repo is created and initialized with the assignment content, which can be a notebook.  Each student's repository can be made private, with access only granted for the student and instructor.  This can be an efficient way to distribute assignments to a large class.

A drawback of Git is that it is hard to use.  It might be worth spending time in your class to teach Git if it is valuable for students to learn about version control.  But if this is not one of the learning goals for your class, you can minimize the students' exposure to Git using graphical interfaces like GitHub Desktop and Git for Windows.

The default Git tools for comparing files and merging changes do not work well with Jupyter notebooks.  However, there are specialized tools to help with these tasks  (see Notebooks Under Version Control).


### JupyterHub

If your students are using JupyterHub, you can place notebooks and any related files directly into the students' directories manually or via a script.  If nbgrader is available on your JupyterHub instance you can use it to collect and distribute notebooks (whether or not you choose to use nbgrader's assessment features).  This allows you to develop the notebooks and incrementally make them visible to the students for them to "fetch". They can then edit the notebooks or create new ones in the directory created in their storage space, and then publish their notebooks back to you for downloading, viewing, or assessing with the nbgrader tools (see the next section for details on this tool).


    **— Box**


    **What is nbgrader?** `nbgrader` is a tool for creating, handling, and automatically grading assignments based on Jupyter notebooks. It works as a Jupyter extension that the course creator installs on their computer. `nbgrader` is a flexible project in the Jupyter ecosystem that allows the distribution and collection of materials. As its name implies, it also can grade assignments; it can be used in a distributed manner where each student is running Jupyter on their own computers, or in a centralized manner, for example, if the students each have an account on a JupyterHub installation. (More details in the Assessment section.)


    [https://nbgrader.readthedocs.io](https://nbgrader.readthedocs.io) 


### Using an LMS and nbgrader together:

Integration of nbgrader with learning management systems is still primitive, but the following is a strategy that works with current tools.



1.  The instructor creates an assignment notebook using nbgrader, then distributes the assignment to students via an LMS.
1.  Students complete the assignment and upload the solution to the LMS.
1.  The instructor downloads the completed assignments as zip file and extracts the students' solutions in a Jupyter environment.
1.  Instructors and graders use nbgrader to grade the assignment and save the grades to a CSV file.
1.  The CSV file is then uploaded to the LMS.

There are already some tools that make this workflow easier, including the Extractor plugin to the ZipCollect feature in nbgrader ([https://nbgrader.readthedocs.io/en/stable/plugins/zipcollect-plugin.html](https://nbgrader.readthedocs.io/en/stable/plugins/zipcollect-plugin.html)).  

	


# Assessing student learning with Jupyter Notebooks

Many educators develop course-assessment activities as Jupyter Notebooks. This includes exams, in-class activities, homework assignments, and projects. 

One simple way to handle the assessment of a notebook-based submission is to have students either print them out, email them, submit them as a standard electronic document (say into a Course Management System), or drop them into a shared folder. At that point, the instructor can mark and grade them in a traditional manner, for example by simply writing comments on a printout or adding annotations to a PDF.


    **_Pro Tip: Printing out a notebook can sometimes result in wasted space on pages, especially for notebooks with many images or figures. Converting to PDF requires large/complex LaTeX installations. Exporting to HTML and then printing often gives a better result._**

nbgrader allows code cells in a notebook to be marked to be auto-graded or manually graded. An instructor can then create an assignment that can be completely auo-graded, requiring little work after the notebook has been created. This makes grading much easier and scales well with large class sizes. However, creating such an auto-graded notebook in nbgrader can be quite time-consuming. In addition, pedagogically a completely auto-graded notebook may have serious downsides. For example, studies suggest that  students learn better when they can actively connect a topic to their own interests [CITATION NEEDED]. One method of encouraging this is to have a "reflection" question on each submission. Such a reflection question can encourage students to comment on the material in a personal way, but it cannot be auto-graded. Another downside is that simply autograding code with unit tests is unlikely to assess many of the learning objectives you might have for an assignment, e.g., ability to use specific software-design patterns. To address this, you can create manually graded cells for a portion of an assignment and provide written feedback to the student.

_GOTCHA: At the time of this writing, nbgrader has some limitations that require careful use. For example, using it in a multi-class setting (say, on JupyterHub) requires that instructors coordinate the naming of assignments so that they do not collide._

nbgrader is a sophisticated tool that can be set up to allow multiple graders, teaching assistants, and more. For more information on using nbgrader, see [https://github.com/jupyter/nbgrader](https://github.com/jupyter/nbgrader).

There are some third-party notebook-based assessment solutions.  For example CoCalc ([www.cocalc.com](www.cocalc.com)) and Vocareum ([www.vocareum.com](www.vocareum.com)) provide a cloud notebook platform that can also perform assessment similar to nbgrader.

_For example, cocalc.com offers…  [are there other third-party course management notebook-oriented solutions?] and Berkeley uses DataHub for their large Data8 course.  Vocareum (https://www.vocareum.com)_


## 


# How do you create Jupyter Notebooks for reuse and sharing? 

As you create notebooks for your lectures, computational essays, or homework assignments, you may wish to think about how to make it possible that they can be reused by yourself and others.

First, you may want to make the materials openly accessible and findable via the internet. This suggests avoiding keeping the notebooks behind a "walled garden," such as a Course Management System. That is, users may have access to some material, but be prevented from seeing other materials. You will have to decide whether you want others to have full access. For example, many teachers do not want students to be able to see notebooks that may have solutions, or hints of solutions and therefore limit their access. 

Callout box: To share your notebook with others you can submit it to [https://www.engage-csedu.org/](https://www.engage-csedu.org/) This curated collection of open educational computing resources is maintained by the National Center for Women in Information Technology (NCWIT). 

If you decide to make your notebooks reusable by others, make it clear under which license the materials can be used. For example, you can include a Creative Commons attribution and share-alike statement at the bottom of your notebook. Adding a license allows people to reuse your materials without asking for permission explicitly. [https://creativecommons.org/licenses/by-sa/3.0/us/](https://creativecommons.org/licenses/by-sa/3.0/us/) 

GitHub may be the most common service to host and share notebooks, where they can be viewed (including rendering), downloaded, or forked by others. (Private repositories can also be used to limit visibility to colleagues, students, or other organizations.). Make sure to be aware of some of the pitfalls of keeping notebooks version controlled however (see Notebooks Under Version Control for details).

Another potential issue with sharing deals with external files that you may want to include in your notebook.  This is in contrast with content (say a plot) that can be directly created by the notebook's code.  Possible content includes data, images and videos using code and embedding tags in markdown or HTML.  The implication is that if you share your notebook you must include the external files along with the notebook.  This can be done a number of ways including using a version control repository, a zip-file, or a file sharing service.  Another external dependency issue with sharing notebooks involves software libraries.  In this case you share a configuration file that a user can use to setup the same environment.  Examples of these files include a conda env.yml, a pip requirements.txt, or dockerfile.

Because Jupyter notebooks embed the output of cells into the ipynb file itself (e.g., images, videos, etc.), the files can grow large. To make it possible to display the cell output via the renderers on Github, Gitlab, or nbviewer, save the notebook after it is executed and then upload to those services. If instead you want to reduce file size and provide the notebooks to someone with the code cell output cleared, choose this option in the notebook's dropdown interface. Then the user will need to execute the notebook themselves to see the output.



**Jupyter: a 21st Century Genre of Open Educational Resources and Practices**

Educators create teaching and learning materials. With the appearance of the internet, a community of educators began producing open access traditional teaching materials. In parallel, a community of software developers began creating open source software. Each community developed their own development patterns. In particular open source software communities gravitated to the bazaar style[^1] of distributed and collaborative work. Jupyter notebooks may be the first time that these communities are merging. Jupyter notebook authors are applying the content creation patterns they use to the creation of open educational resources that teach computation or teach through computation.

Open Education encompasses a large community, with its own conferences and journals, with leaders and advocated practices. The most visible efforts are related to Open Educational Resources (OER): the creation and adoption of openly licensed learning materials. In 1994, Wayne Hodgins coined the term "learning object" and the idea spread that digital materials could be designed and made to be _reused_. This was followed by efforts to develop metadata standards, content exchanges, and so on (addressing the concern of how to find the objects to reuse them). In 1998, David Wiley coined the term "open content" and spread the idea that principles of Free and Open Source Software (FOSS) could be applied to content on the World Wide Web. The Creative Commons non-profit organization was founded in 2001 to provide ready-made license agreements for sharing content and served a vital infrastructure role on the spread of OER. The Creative Commons licenses are now the most widely used licensing framework for open education. The year 2001 also saw the launch of MIT OpenCourseWare (OCW). MIT promised free public access for non-commercial uses of their course materials. It was a unique commitment at an institutional level, strengthened by the MIT brand. Other universities joined the OCW movement: Rice with the OpenStax project (now formerly Connexion), CMU with the Open Learning Initiative (OLI), Utah State University with the Center for Open and Sustainable Learning, and so on. Today, the Open Education Consortium has hundreds of members from around the world. The recurrent topics in OER are: reducing costs for students buying textbooks, increasing access, and dealing with copyright and licenses.

In the last few years, educators using Jupyter have been creating and sharing all kinds of educational materials in the form of notebooks, typically under a Creative Commons Attribution license (CC-BY). In fact, Jupyter is _a new genre of OER_. But in addition to creating open content, educators using Jupyter often take active part in the Jupyter community and adopt the _culture_ of open-source software. This is a culture with strong ethical commitments, related to freedom of access, transparency, and governance (Coleman, 2012). The content they create has the value of giving access (the very definition of OER), under an open model. But open-source culture also promotes a culture of collaboration. In this regard, engaging in teaching with Jupyter opens new possibilities for educators to engage in _open development_ and collaborate with others in producing lessons, tutorials, courses, and even books.

REF—Coleman, E.G., 2012. Coding freedom: The ethics and aesthetics of hacking. Princeton University Press.

NOTE from Carol: Installation on a student computer or web-based access. Installation on computer lab computers or web-based access. Web-based access requires additional decisions and system administration resources.


<!-- Footnotes themselves at the bottom. -->
## Notes

[^1]:
     The bazaar style is a method of collectively creating software that isn't top down directed like a traditional company hierarchy.


