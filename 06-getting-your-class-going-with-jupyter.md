# Getting your class going with Jupyter {#getting-going}

You have several options on how to get Jupyter notebooks to your
students. You can ask students to install Jupyter on their own
computers, install Jupyter on lab computers for students to use, or
run Jupyter on a remote server that your students access on the
internet.


## Local installation on students' or lab computers

"Local installation" means that each computer is running the software
that includes the Jupyter Notebook. Typically, this requires
installing a distribution that includes Jupyter, Python, and possibly
other language kernels.

A popular software distribution that includes Jupyter is Anaconda, which is
easy to install on Windows, Mac, and Linux. Because it can install everything
with user level permissions, it does not require the user to have administrator
(or root) access to the computer. Anaconda includes over 1500 software packages
providing most, if not all, needed software for learners. Jupyter notebooks can
be opened by launching Jupyter or by opening them through the Spyder IDE. These
attributes make it attractive for both personal use and for installation on
institution controlled computers.

```{block2, type='rmdnote'}
<strong>What is Anaconda?</strong>

You will see the Anaconda distribution
recommended by many educators and course authors. Anaconda is a
package manager, an environment manager, a Python distribution, a
collection of <a href="https://docs.anaconda.com/anaconda/packages/pkg-docs/">over 1,500+ open source
packages</a>,
including Jupyter. It is free to download, open source, and easy to
install, on any computer system (Windows, Mac OS X or Linux). It
also includes the conda packaging utility to update and install
new packages of the Python and R ecosystems, and to manage
computational environments. According to the company's webpage,
Anaconda has more than 6 million
users; see: <a href="https://www.anaconda.com/what-is-anaconda/">What is Anaconda?</a>.
The Software Carpentry project provides <a href="https://swcarpentry.github.io/python-novice-gapminder/setup/">installation
instructions for Anaconda</a>, with videos.
```

Two other easily installable software packages that can run Jupyter notebooks
are [nteract](https://nteract.io/) and [Hydrogen](https://nteract.io/atom).
nteract is installed by downloading a binary installer from their website and
double-clicking the installation file. nteract's simple user interface make it
an excellent choice for students new to computer programming. Once nteract is
installed, any Jupyter notebook on a student's local system with a graphical interface can be
double-clicked and it will open within nteract. Hydrogen is a [very popular
plugin](https://atom.io/packages/hydrogen) for the open source Atom editor;
it's currently used by over 700,000 people. Hydrogen lets a user edit, display,
and execute a notebook within the Atom editor.

You can ask students to install Jupyter on their own computer or make it
possible for them to use it on lab computers. These can also be combined: give
students the instructions to install it on their own, but also tell them that
it's available in the lab if they can't get it to work on their laptop. This
way you don't need a large enough computer lab for everyone, and don't need to
worry that not everyone can get it to work on their own.

### Jupyter on student-owned computers

The benefits of installation on student-owned computers include:

* Once students have the software on their computers, they always have
    access to it; they can work anywhere, and they can use it for
    internships, jobs, and other non-school activities.

* It is easy for them to install additional packages later.

* Students learn to install and set up Jupyter, and software in
    general, which is a skill they are likely to need.

* The total computing power for the class scales with the number of
    students, as long as each student has enough CPU power and memory
    to support the intended applications.

* You can adopt Jupyter without support or resources from your
    institution.

* Students learn to use Jupyter on their preferred OS, e.g. Linux,
    Mac, or Windows, which means they are already familiar with the
    basic idioms of their OS.

Drawbacks include:

* This approach is only possible if every student owns a computer with
    enough capacity.

* Students with less powerful computers might be at an unfair
    disadvantage.

* Although installation is generally easy, it still takes time.  The
    time you spend at the beginning of a class can be worthwhile for a
    semester-long course that uses Jupyter throughout, but it is a
    barrier to using Jupyter for a single module or one-off assignment
    in a course about something else.

* Also, the amount of time spent debugging esoteric problems scales
    with the number of students: a class of 25 students is bound to
    have a few people with 32-bit processors, incompatible libraries,
    out-of-date operating systems, over-zealous virus checkers, etc.,
    and a class with 100 students will have four times as many. One
    work-around is to have students work in pairs: the probability
    that more than half of the students cannot get it working is
    reduced.

* Discrepancies in installed library versions can cause issues for
    students and may lead to different behaviors when students run
    code.

Although Jupyter is cross-platform and ideally behaves the same on
Windows, Mac, or Linux, and distributions such as Anaconda also behave
very similarly on all platforms, the instructions for installing and
launching it are slightly different on each operating system, so
fine-grained instructions such as "double click here" or "type this
command" need different versions for Linux, Mac, and Windows users,
which can be challenging when the instructor presenting the material
has only one platform at their disposal. It is worth developing
detailed instructions that the students can go through at their own
pace, rather than relying only on a live demo in class that will only
apply to a fraction of the students.


### Jupyter on lab computers

Using lab computers instead of student-owned computers has the
benefits of uniformity and improved equity. Each student will have
exactly the same setup, and the instructions will work the same for
everyone. This reduces the amount of individual tech support required
and guarantees that all students have access to enough computational
power.

However, this deployment has some disadvantages:

* Depending on how much control you have of the computer lab, you
    might need institutional permission and support.

* Students might be limited to working on assignments only when they
    are on campus and when computer labs are open, which might be an
    unfair disadvantage for non-resident students or those with full
    time jobs.

* It might be difficult to install additional packages as the need
    arises, and students might not be allowed to install packages they
    need for projects.

* Even in a computer lab, it can be difficult to maintain consistency
    across machines, and to keep all installations functional.



## Jupyter on remote servers

Even when Jupyter runs locally, it runs as a web application; that is,
it runs in a browser connected to a server.  In a local installation,
the browser and the server run on the same machine.  But it is also
possible to run the server remotely.

In that case, students don't have to install anything; they only have
to run a browser and load a URL.

There are several ways to run Jupyter on a remote server:

1.  You can run Jupyter on a server owned by you or your institution.
1.  You can run Jupyter in a temporary environment running in the cloud.
1.  You can run Jupyter in a persistent environment running in the cloud.

Running Jupyter remotely has many of the advantages of running in a
lab: you can provide a consistent environment and guarantee that all
students have access to sufficient computation resources.  And it
mitigates one of the drawbacks of a lab installation, since students
have access to cloud resources from anywhere, not just on campus.

Working in the cloud also means that students do not have to manage
their own backups of a laptop hard drive. Although a student could
still inadvertently overwrite, delete, or destroy the contents of a
notebook stored in the cloud, they will not lose their entire work if
a laptop is damaged or lost.

For simple, one-off uses of Jupyter (say, for a single assignment or
in-class activity) the cloud option is very attractive as it requires
little in-class time to discuss installation of additional software.


### Running in a temporary environment in the cloud

The easiest option for running Jupyter in the cloud is to use a cloud
service that provides temporary environments.  Some of these services
are free of cost, and you can use them without installing anything.

These environments are well-suited for short examples in classes that
do not use Jupyter extensively.  Students can open a notebook and
start running with the push of a button.

However, there are some limitations to these services:

* If your notebooks depend on particular packages, or particular
    versions of packages, it can be difficult to satisfy these
    requirements.

* These services run notebooks in a temporary environment that
    disappears if it is left idle.  So they might not be suitable for
    managing student work.

* Some of these services do not guarantee a level of service and may
    not be as reliable as you need for a class or workshop.

```{block2, type='rmdnote'}
<strong>Binder</strong> <a href="https://mybinder.org">mybinder.org</a>

Binder is an
open-source service provided by Project Jupyter. It allows the
owner of a set of notebooks residing in a public repository to
pre-build an image in the Binder service, and get a shareable
link that any visitor can use to obtain a working instance of
JupyterHub, pre-loaded with the notebooks in the repository. The session is
temporary (any changes the user makes will be deleted when
closing the tab or window), but it's fully interactive. Binder
is currently one of the favorite services for running one-off
workshops or tutorials.
```

### Running on servers you control

If you have access to a server or cluster with enough computing power
to support your class—including CPU and especially memory—you can
provide a Jupyter as a service using JupyterHub.

JupyterHub is open-source software that provides a cloud-based Jupyter
application for each user in a group. Each user has their own account
and home directory on the server. The Hub, JupyterHub's central
system, allows authenticating users and starting individual Jupyter
notebook servers. Programs that start notebook servers can use a
variety of technical solutions. For more details, see
<https://github.com/jupyterhub/jupyterhub/wiki/Spawners>

Once the Hub starts a user's notebook server, the Jupyter Notebook
running in the cloud behaves just like Jupyter does when installed on
an individual's computer, but JupyterHub will be running notebooks and
storing files on a remote cloud computer. Students can download
notebooks stored in the cloud to their local computer if they wish to
work with a local installation as well. Additionally, students can
upload notebooks (and other files) from their local computer to the
cloud.

While anyone can run a JupyterHub server on their own Linux or Mac
computer, installing and configuring JupyterHub requires sophisticated
knowledge spanning the Linux/Unix operating system, system
administration, and networking. For more information, see:

* <https://github.com/jupyterhub/jupyterhub> (the basic JupyterHub
    project, which can be installed on a bare-metal server, a virtual
    private server (VPS), or a commercial cloud cluster)

* <https://github.com/jupyterhub/the-littlest-jupyterhub> (a
    simplified installation of JupyterHub on a remote server or VPS)

* <https://github.com/jupyterhub/zero-to-jupyterhub-k8s> (a
    step-by-step guide to install JupyterHub on a Kubernetes cloud
    system)

Providing a JupyterHub service offers several benefits. First,
students get up and running immediately—they spend no time installing
software. They navigate to a web URL, log in to JupyterHub, and begin
using Jupyter. This ability to quickly log in and begin computing is a
powerful way to get students to engage with the lesson, builds
confidence, and avoids the sometimes-stressful experience of
installing software on the student's computer.

However, running JupyterHub on your own server has drawbacks:

* Getting started is not easy; most instructors would require (or at
    least benefit from) institutional support that may not be
    available.

* It can be difficult to scale: if the number of students increases,
    you might need more computing power.  And the load students
    generate can be uneven; for example, if everyone runs a
    computationally-intensive example at the same time, your server
    might not be able to handle it.

* This option can be expensive, unless you already have servers with
    sufficient power.


### Running Jupyter in the cloud

If you or your institution don't own computing hardware with the power
to support your class, you can run JupyterHub on virtual servers
provided by cloud services like AWS and Microsoft Azure.  In those
environment, you can install JupyterHub as described in the previous
section

Commercial offerings also exist to use Jupyter in the cloud, some of
which provide free trials or a "freemium" pricing model. They include:

* CoCalc (previously SageMathCloud)
    ([https://cocalc.com](https://cocalc.com)) is an online [open
    source](https://github.com/sagemathinc/) computing environment with [first
    class support for Jupyter
    notebooks](https://cocalc.com/doc/jupyter-notebook.html) supported by
    SageMath, Inc. It is one of the few services that allows multiple users to
    edit a Jupyter notebook simultaneously. It also allows the notebook user to
    cycle through the revision history of a notebook and provides a number of
    popular kernels by default. The service includes the ability to share files
    with project collaborators. It is free to use and greater computational
    resources can be obtained by paying the monthly, yearly, or course based
    subscription fees. Instructors can pay for resources for an entire class or
    ask students to pay and subscribe for a semester. Instructors can make use
    of the [course management system](https://tutorial.cocalc.com/) for
    assignment distribution, collection, grading, and more. The free version
    limits access to the internet to prevent abuse, effectively blocking use of
    standard package managers. While an instructor could work around this limitation
    by uploading files to the service or requesting the company to install
    software, this is likely onerous for many users. Paid versions lift this
    limitation and allow use of [standard package managers (e.g. pip, conda, R,
    Julia,
    etc)](https://github.com/sagemathinc/cocalc/wiki/How-to-Install-Python-Packages-into-CoCalc).
* Gryd ([https://gryd.us](https://gryd.us)) is another subscription
    service with a free tier. It includes course-management features,
    like a way to create a course, invite students, and deploy
    auto-graded assignments.

* HubHero ([https://hubhero.net](https://hubhero.net)) provides professionally
  configured JupyterHub servers for teachers. For courses of up to about 30
  students they offer [the community install](https://hubhero.net/community/) which
  gets you your own JupyterHub on your own hardware or a cloud provider of your
  choice. For larger courses or fully managed deployments
  [hosted solutions](https://hubhero.net/hosted/) are available as well. Hub
  Hero is owned by [Tim Head](https://github.com/betatim/) a project lead for
  https://mybinder.org and contributor to JupyterHub.

* IllumiDesk ([https://illumidesk.com](https://illumidesk.com)) offers both an
  [open-source distribution](https://github.com/IllumiDesk/illumidesk) and hosted
  environemnt based on JupyterHub, nbgrader, LTI 1.1/1.3, and docker containers.
  IllumiDesk support R, Julia, and Python3 kernels, auto-grading, shared grader
  notebooks (which allows multiple graders to grade the same assignments) among
  other features.

* Kaggle Kernels ([https://kaggle.com/kernels](https://kaggle.com/kernels)) are 
  free hosted Python and R notebooks with access to substantial computational 
  resources (quad-core, 16GB RAM, GPU, Internet connected, up to 6h runtime per 
  session). All notebooks have also seamless access to datasets hosted on 
  [Kaggle Datasets](https://www.kaggle.com/datasets). Instructors can use one of
  the thousands of datasets available on 
  [Kaggle Datasets](https://www.kaggle.com/datasets) (perfect for implementing 
  the [The world is your dataset](#the-world-is-your-dataset) pedagogical 
  pattern) or upload their own data (up to 10GB per dataset). Kaggle 
  can also help implementing the [There can be only one](#there-can-be-only-one) 
  pattern with 
  [In-class competitions](https://www.kaggle.com/about/inclass/overview)
  a feature that allows instructors to easily set up competitions with automatic 
  leaderboards. All of the work students do on Kaggle is saved and available
  to them beyond the duration of the course/workshop. Additional software
  dependencies can be installed within notebooks via `!pip` or included in the
  common environment by sending a Pull Request to 
  [Kaggle Dockerfile](https://github.com/Kaggle/docker-python).

* codio
    ([https://codio.com/features/ide](https://codio.com/features/ide))

* Microsoft Azure notebooks
    ([https://notebooks.azure.com/](https://notebooks.azure.com/) )

* Amazon Sagemaker
    ([https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-prepare.html](https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-prepare.html))

* Gradient by Paperspace
    ([https://www.paperspace.com/gradient](https://www.paperspace.com/gradient))

* Google Colaboratory
    ([https://colab.research.google.com/](https://colab.research.google.com/)
    )

The biggest advantage of these services is that they require no
installation and minimal setup by instructors, and some of them
provide features that integrate with learning management systems.
However, instructors generally have to create student accounts and set
up student environments.

These services are highly scalable; that is, they can handle large
numbers of students and uneven loads.  However, they are not
infallible; they might require some tending to make sure students have
access to enough resources.

The biggest drawback of these services is that they can be expensive.
Some charge on a per-student basis, with limits on computation and
memory use.  Some charge on the basis of actual use, which can be
unpredictable (and might require instructors to enforce limits on
student activities).

Other drawbacks include:

* It may be difficult or impossible to install packages you need, or
    particular versions of packages.

* Some of these services impose limits on what students can do; for
    example, they might have limited ability to access external
    services.

* Many of these services are relatively new, and they sometimes expose
    instructors and students to rough edges.

* Students generally lose access to their accounts when the class ends
    (or a limited time after).

* There may be privacy concerns with sharing student information on
    commercial servers.  Some institutions have agreements with one or
    more of these providers that address privacy.


## Distribution and collection of materials

You may want to distribute course materials to and collect them from
students. A variety of options are available.  Some important things
to consider:

* Do you want to share your notebooks publicly, or do they require
    privacy?

* Can the notebooks that the students create or edit be public? Or do
    they require privacy?

* How do you plan to assess collected notebooks?

* Do you need integration with your LMS?

* Do you need integration with a file-sharing system?

* Do you want to distribute with the cell output showing?

* Do students need software that is not easily available on their own
    (or laboratory) computers?

Jupyter notebooks are plain text computer files, so you can distribute
them to students and collect them using any system that handles text
files, including GitHub, Google Drive, and (as a last resort) email attachment.


### Learning management systems

Many instructors use a Learning Management System (LMS) to communicate
with students. These tools offer private file sharing and assignments
that connect to the students' institutional computing accounts and
they can be used to distribute and collect notebooks as text
files. However, most LMS tools are not yet notebook-aware, so they
don't render notebooks or make it easy for instructors to comment on
or grade them.

Some tools and workflows are being actively developed to connect the
Jupyter ecosystem to the LMS ecosystem using the [Learning Tools
Interoperability
(LTI)](https://open.edx.org/learning-tools-interoperability)
standard. By the time you read this, you might find that the options
have improved.


### Web hosting

Notebooks can be publicly hosted on any website, so students can
download the files by clicking on a link. Most web-hosting software is
not notebook-aware, but you can use `nbviewer` to share public notebooks, rendered as a static web page.

```{block2, type='rmdnote'}
<strong>nbviewer</strong> <a href="https://nbviewer.jupyter.org/">nbviewer.jupyter.org</a>

nbviewer is a web service provided by Project Jupyter. You can enter the URL of any publicly hosted notebook, and get a web page with the content of the notebook fully rendered. Some browser extensions and add-ons let you open a notebook in nbviewer with a button click. See: <a href="https://jiffyclub.github.io/open-in-nbviewer/">Open in nbviewer</a>.
```

### GitHub

One of the popular tools for distributing and collecting
notebooks is GitHub, a hosting and collaboration platform for software. GitHub is based on git, a _version-control system_.  Files under version
control are often hosted on services like GitHub, GitLab, or
Bitbucket, all of which are notebook-aware. For example,
when you view a notebook on GitHub, you see a rendered notebook that
includes formatted text, typeset mathematics, code highlighting, and
the output of the code, including figures.

GitHub Pages (and other similar services) can also be used to host rendered
notebooks, and continuous integration services can build the web pages
from the notebooks and then display the content. See: <a href="https://github.com/choldgraf/jupyter-book">Jupyter Book</a> and use of
[`doctr`](https://drdoctr.github.io/doctr) to do this.

Educators at academic institutions can use GitHub Classroom, which
allows instructors to set up assignments for a class.  Students click
on a link for an assignment and a copy of the assignment repository is
created and initialized with the assignment content, which can be a
notebook.  Each student's repository can be made private, with access
only granted for the student and instructor.  This can be an efficient
way to distribute assignments to a large class.

A drawback of git is that it is hard to use.  It might be worth
spending time in your class to teach git, if it is valuable for
students to learn about version control.  But if this is not one of
the learning goals for your class, you can minimize the students'
exposure to git using graphical interfaces like GitHub Desktop and git
for Windows.

The default git tools for comparing files and merging changes do not
work well with Jupyter notebooks.  However, some specialized
tools can help with these tasks (see Notebooks Under Version Control).


### JupyterHub

If your students are using JupyterHub, you can place notebooks and any
related files directly into the students' directories manually or via
a script.  If `nbgrader` is available on your JupyterHub instance you
can use it to collect and distribute notebooks (whether or not you
choose to use `nbgrader`'s assessment features).  This allows you to
develop the notebooks and incrementally make them visible to the
students for them to "fetch". They can then edit the notebooks or
create new ones in the directory created in their storage space, and
then publish their notebooks back to you for downloading, viewing, or
assessing with the `nbgrader` tools (see the next section for details on
this tool).

```{block2, type='rmdnote'}
<strong>nbgrader</strong>

nbgrader is a tool for creating, handling,
and automatically grading assignments based on Jupyter
notebooks. It works as a Jupyter extension that the course
creator installs on their computer. nbgrader is a flexible
project in the Jupyter ecosystem that allows the distribution
and collection of materials. As its name implies, it also can
grade assignments; it can be used in a distributed manner where
each student is running Jupyter on their own computers, or in a
centralized manner, for example, if the students each have an
account on a JupyterHub installation. (More details in the
Assessment section.) <https://nbgrader.readthedocs.io>
```

### Using an LMS and `nbgrader` together:

Integration of `nbgrader` with learning management systems is still
primitive, but the following is a strategy that works with current
tools.

1.  The instructor creates an assignment notebook using `nbgrader`, then
distributes the assignment to students via an LMS.

2.  Students complete the assignment and upload the solution to the
LMS.

3.  The instructor downloads the completed assignments as a zip file and
extracts the students' solutions in a Jupyter environment.

4.  Instructors and graders use `nbgrader` to grade the assignment and
save the grades to a CSV file.

5.  The CSV file is then uploaded to the LMS.

Some tools that make this workflow easier include
the Extractor plugin to the [ZipCollect](https://nbgrader.readthedocs.io/en/stable/plugins/zipcollect-plugin.html) feature in `nbgrader`.


## Assessing student learning with Jupyter notebooks

Many educators develop course-assessment activities as Jupyter
notebooks. This includes exams, in-class activities, homework
assignments, and projects.

Simple ways to handle the assessment of a notebook-based submission: have students either print them out, email them, submit them as
a standard electronic document (say, into the LMS),
or drop them into a shared folder. At that point, the instructor can
mark and grade them in a traditional manner, for example by
writing comments on a printout or adding annotations to a PDF.

```{block2, type='rmdnote'}
<strong>Pro Tip</strong>

Printing out a notebook can sometimes result in wasted space on pages,
especially for notebooks with many images or figures. Converting to
PDF requires large/complex LaTeX installations. Exporting to HTML and
then printing often gives a better result.
```

`nbgrader` allows code cells in a notebook to be marked to be
auto-graded or manually graded. An instructor can then create an
assignment that can be completely auto-graded, requiring little work
after the notebook has been created. This makes grading much easier
and scales well with large class sizes. However, creating such an
auto-graded notebook in `nbgrader` can be quite time-consuming. In
addition, pedagogically a completely auto-graded notebook may have
serious downsides. For example, studies suggest that students learn
better when they can actively connect a topic to their own interests
[CITATION NEEDED]. One method of encouraging this is to have a
"reflection" question on each submission. Such a reflection question
can encourage students to comment on the material in a personal way,
but it cannot be auto-graded. Another downside is that simply
autograding code with unit tests is unlikely to assess many of the
learning objectives you might have for an assignment, e.g., ability to
use specific software-design patterns. To address this, you can create
manually graded cells for a portion of an assignment and provide
written feedback to the student.

```{block2, type='rmdnote'}
<strong>Caution</strong>

At the time of this writing, nbgrader has some limitations
that require careful use. For example, using it in a multi-class
setting (say, on JupyterHub) requires that instructors coordinate the
naming of assignments so that they do not collide.
```

`nbgrader` is a sophisticated tool that can be set up to allow multiple
graders, teaching assistants, and more. For more information on using
`nbgrader`, see <https://github.com/jupyter/nbgrader>.

Some third-party notebook-based assessment solutions do exist.  For
example [CoCalc](www.cocalc.com), [Vocareum](www.vocareum.com), and [Gryd](https://gryd.us)
provide a cloud notebook platform that can also grade assessments
similar to or using nbgrader.

[TODO] _For example, cocalc.com offers…  [are there other third-party course
management notebook-oriented solutions?] and Berkeley uses DataHub for
their large Data8 course.  Vocareum (https://www.vocareum.com) TODO


## How do you create Jupyter notebooks for reuse and sharing?

As you create notebooks for your lectures, computational essays, or
homework assignments, you may wish to think about how to make it
possible that they can be reused by yourself and others.

First, you may want to make the materials openly accessible and
findable via the internet. This suggests avoiding keeping the
notebooks behind a "walled garden," such as a Course Management
System. That is, users may have access to some material, but be
prevented from seeing other materials. You will have to decide whether
you want others to have full access. For example, many teachers do not
want students to be able to see notebooks that may have solutions, or
hints of solutions and therefore limit their access.

>To share your notebook with others you can submit it to
><https://www.engage-csedu.org/>. This curated collection of open educational
>computing resources is maintained by the
>[National Center for Women in Information Technology (NCWIT)](https://www.ncwit.org/).

If you decide to make your notebooks reusable by others, make it clear
under which license the materials can be used. For example, you can include a
[Creative Commons attribution and share-alike](https://creativecommons.org/licenses/by-sa/3.0/us/)
statement at the bottom of your notebook. Adding a license allows people to reuse
your materials without asking for permission explicitly.

GitHub may be the most common service to host and share notebooks,
where they can be viewed (including rendering), downloaded, or forked
by others. (Private repositories can also be used to limit visibility
to colleagues, students, or other organizations.). Make sure to be
aware of some of the pitfalls of keeping notebooks version controlled
however (see Notebooks Under Version Control for details).

Another potential issue with sharing deals with external files that
you may want to include in your notebook.  This is in contrast with
content (say a plot) that can be directly created by the notebook's
code.  Possible content includes data, images and videos using code
and embedding tags in markdown or HTML.  The implication is that if
you share your notebook you must include the external files along with
the notebook.  This can be done a number of ways including using a
version control repository, a zip-file, or a file sharing service.
Another external dependency issue with sharing notebooks involves
software libraries.  In this case you share a configuration file that
a user can use to setup the same environment.  Examples of these files
include a conda `env.yml`, a pip `requirements.txt`, or `dockerfile`.

Because Jupyter notebooks embed the output of cells into the ipynb
file itself (e.g., images, videos, etc.), the files can grow large. To
make it possible to display the cell output via the renderers on
Github, Gitlab, or nbviewer, save the notebook after it is executed
and then upload to those services. If instead you want to reduce file
size and provide the notebooks to someone with the code cell output
cleared, choose this option in the notebook's dropdown interface. Then
the user will need to execute the notebook themselves to see the
output.



## Jupyter: a 21st Century genre of Open Educational Resources and practices

Educators create teaching and learning materials. With the appearance
of the internet, a community of educators began producing open access
traditional teaching materials. In parallel, a community of software
developers began creating open source software. Each community
developed their own development patterns. In particular open source
software communities gravitated to the bazaar style[^1] of distributed
and collaborative work. Jupyter notebooks may be the first time that
these communities are merging. Jupyter notebook authors are applying
the content creation patterns they use to the creation of open
educational resources that teach computation or teach through
computation.

Open Education encompasses a large community, with its own conferences
and journals, with leaders and advocated practices. The most visible
efforts are related to Open Educational Resources (OER): the creation
and adoption of openly licensed learning materials. In 1994, Wayne
Hodgins coined the term "learning object" and the idea spread that
digital materials could be designed and made to be _reused_. This was
followed by efforts to develop metadata standards, content exchanges,
and so on (addressing the concern of how to find the objects to reuse
them). In 1998, David Wiley coined the term "open content" and spread
the idea that principles of Free and Open Source Software (FOSS) could
be applied to content on the World Wide Web [@OC1998]. The Creative Commons
non-profit organization was founded in 2001 to provide ready-made
license agreements for sharing content and served a vital
infrastructure role on the spread of OER. The Creative Commons
licenses are now the most widely used licensing framework for open
education. The year 2001 also saw the launch of MIT OpenCourseWare
(OCW). MIT promised free public access for non-commercial uses of
their course materials. It was a unique commitment at an institutional
level, strengthened by the MIT brand. Other universities joined the
OCW movement: Rice with the OpenStax project (now formerly Connexion),
CMU with the Open Learning Initiative (OLI), Utah State University
with the Center for Open and Sustainable Learning, and so on. Today,
the Open Education Consortium has hundreds of members from around the
world. The recurrent topics in OER are: reducing costs for students
buying textbooks, increasing access, and dealing with copyright and
licenses.

In the last few years, educators using Jupyter have been creating and
sharing all kinds of educational materials in the form of notebooks,
typically under a Creative Commons Attribution license (CC-BY). In
fact, Jupyter is _a new genre of OER_. But in addition to creating
open content, educators using Jupyter often take active part in the
Jupyter community and adopt the _culture_ of open-source
software. This is a culture with strong ethical commitments, related
to freedom of access, transparency, and governance [@coleman2012coding].
The content they create has the value of giving access (the
very definition of OER), under an open model. But open-source culture
also promotes a culture of collaboration. In this regard, engaging in
teaching with Jupyter opens new possibilities for educators to engage
in _open development_ and collaborate with others in producing
lessons, tutorials, courses, and even books.

```{block2, type='rmdnote'}
<strong>Pro Tip</strong>

A way to share educational notebooks, gain feedback on them and receive
credit for your work is to publish with the
[Journal of Open Source Education](http://jose.theoj.org). This is a
peer-reviewed journal aimed at educators developing OERs that use code to
teach. In addition to receiving a publication advertising your work, the
peer-review process will result in higher quality software, code, and
educational material. 
```


[^1]: The bazaar style is a method of collectively creating software
     that isn't top down directed like a traditional company
     hierarchy.
