# Jupyter ecosystem: notebooks


The Jupyter system supports over 100 programming languages (called
"kernels" in the Jupyter ecosystem) including Python, Java, R, Julia,
Matlab, Octave, Scheme, Processing, Scala, and many more.  Out of the
box Jupyter will only run the IPython kernel, but additional kernels
may be installed.  Additional language support continues to be added
by the open source community and
[https://github.com/jupyter/jupyter/wiki/Jupyter-kernels](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels)
is the best source for an up-to-date list. Note that these projects
are developed and maintained by the open source community and exist in
various levels of support. For example, some kernels may be supported
by a vast number of active (and even paid) developers, while others
may be a single person's pet project. When trying out a new kernel, we
suggest exploring a kernel's community of users and documentation to
see if it has an appropriate level of support for your (and your
students') use.

Jupyter's kernel flexibility allows instructors to pick the right
language for a particular context.  For example instructors may use
Python to teach programming, while switching to R to teach statistics,
and then perhaps Scala to teach big data processing. Regardless of the
language chosen, the Jupyter interface remains the same. Thus, some
cognitive load can be lessened when using multiple languages in, or
across courses (e.g., the user interface doesn't change at all between
the student's Digital Humanities and Biology courses). Of course, if
you can remain in one language in a course, that is often easier for
the student.


## Resources for authoring Jupyter notebooks


Before embarking on writing notebooks for your course, we recommend
that you look around on the internet for related courses. There may be
a similar course for which an instructor has already generated
notebooks that you can use or adapt for your course. In many cases,
instructors are very happy to have collaborate on open source
educational resources and have the resources be used by other
instructors. The following sections will be oriented towards Python
simply because it is currently the language with the largest Jupyter
feature support.


### Accessing documentation in the notebook  {#accessing-documentation-in-the-notebook}

One of the best features of quality libraries is their documentation,
which students and other users will likely consult regularly. From a
notebook cell, the TAB key autocompletes (or gives completion tips)
and SHIFT-TAB brings up full documentation. Similarly, using a
question-mark after a method or function will bring up the
documentation after the cell is run, as shown in Figure XX.


![A question mark can be used after a method or function and the cell run in order to bring up the documentation.](images/chapter50.png "getting help")

Using this feature in class during live coding and modification or
while just explaining how code works helps increase student comfort
and enable them to work effectively with libraries.


### Widgets {#widgets}

Widgets provide the opportunity a for learners and instructors to
interact with code outputs, such as charts and tables,
interactively. Widgets are simple and quickly generated "mini"
Graphical User Interfaces (GUI) that give the notebook user access to
slide bars, toggle buttons, and text-boxes. They can be used in
conjunction with code, allowing a change of mindset from programming
as a primary goal to exploring a model or computation as the primary
goal. Alternatively, the code can be hidden and the widgets used to
create a notebook "app" that might connect input parameters with a
simulation and a plot.

Currently only a small subset of kernels have widget
functionality. For example, the reference implementation of widgets
are the Jupyter-Python widgets
([https://ipywidgets.rtfd.io](https://ipywidgets.rtfd.io)). It
includes widget components to generate and display sliders, progress
bars, text boxes, check boxes, toggle buttons, etc. Many popular
visualization tools, such as matplotlib, Plotly, leaflet.js, three.js,
have Jupyter-Python widget implementations. The documentation contains
an up-to-date list of all of the widgets and their
variations. Additionally, the `interact` method wraps allows you to
wrap a function, which might be a simple computation or a complex
simulation that produces a plot, and provides widgets for each of the
inputs to the function. Figure XX shows a simple example of a sinusoid
plot whose frequency is controlled by a slide-bar. Another kernel that
has some widget functionality is C++
(https://github.com/QUantStack/xwidgets).



![Here, a simple slider is used to interactively change the variable k in our function as we plot it.](images/notebook-matplotlib-interact.png "interactive sliders")

In addition to the IPywidgets library, the ipyleaflet library
(https://ipyleaflet.rtfd.io) enables an interactive map to be
displayed in a notebook.

#### Example


```
from ipyleaflet import Map
Map(center=[34.6252978589571, -77.34580993652344], zoom=10)
```


![Interactive map widget with `ipyleafletalt_text`.](images/chapter52.png "interactive map")


For the ambitions reader, there are resources available for you to
write your your own custom widgets. The widget cookie cutter project
([https://ipywidgets.rtfd.io](https://ipywidgets.rtfd.io)) is a good
place to start.




### Magics {#magics}

Magics are meta-commands that only function within Jupyter and allow
a user to access features that are language/kernel specific. For
instance, the IPython kernel provides a number of magics that can be
useful while developing Jupyter notebooks that uses Python as the
primary language. These are
[documented](https://ipython.readthedocs.io/en/stable/interactive/magics.html)
and we will only call out a few of these here. There are many other
magics available for different kernels but the downfall of these are
that they are specific to Jupyter so does not translate to scripts and
in a teaching environment we generally recommend to be sparing in
their use so as to not obfuscate what is happening. Magics always
begin with either a single `%` for single line commands or double `%%`
for applying a command to an entire cell. Many magics can be used with
single or double percents, but some do not.

  * `%run` allows for running external scripts, capturing output and
     displaying it in the notebook, e.g. `%run my_script.py`.

  * It is common to use matplotlib for visualization. In Jupyter, the
     magic `%matplotlib` allows the matplotlibs resulting figures to
     be displayed in the notebook. `%matplotlib inline` and causes
     static images to be embedded in the notebook and `%matplotlib
     notebook` causes interactive images (zooming, panning, etc)
     images to be embedded.

  * `%time` times the execution of the Python expression following the
    command, e.g. `%time sum(range(1000))`.

  * `%timeit` is is similar to `%time` with the difference that it
    runs the expression multiple times and reports the average
    execution time.

  * `%reset` removes all user defined variables along with input and
    output.  Magics often have "flags", following the Unix command
    pattern. For example, `%reset -s` is a soft reset and only removed
    user defined variables. These commands can be useful to help to
    overcome out-of-order execution problems.


A good example of a magic operating on the entire contents of cell is
the `%%HTML` magic that will force the cell to be interpreted as HTML
and render it appropriately. You can also use magics to call other
languages while running the IPython kernel.  For example, you can run
R code from within an IPython notebook by using the `%%R` magic.



### Notebooks Under Version Control {#notebooks-under-version-control}

Keeping notebooks under version control is a great way to not only
keep track of changes to your created content but can also allow for
sharable content. In a course where multiple people are contributing
to the development of notebooks for the course, using version control
in conjunction with a platform like GitHub, allows authorship to be
tracked and provides communication tools for reviewing new
contributions or outlining requested development for a new assignment,
activity, etc.  Another advantage of using version control is that
there are services that will provide rendered views of your notebooks
that are publicly accessible. GitHub for instance will show a rendered
version of the notebook rather than the direct text that a notebook is
comprised of. There are a few pitfalls with this with LaTeX rendering
as platforms do not always render the notebooks the same as they would
appear in an active Jupyter interface.

There are a few caveats to keeping notebooks under version control
that should be kept in mind.  First of all the output will be stored
in the repository, including images, if clear output is not used
before committing changes.  This can make detecting changes difficult
as changes in output will be detected when nothing has actually
changed content wise.  The tracked notebooks also can become large if
output is tracked.  Even with clearing the output reading through
changes can be difficult due to the format of the notebook, Notebooks
are plain-text files and the file format is represented as
[JSON](https://www.json.org/). This can be an issue if you are storing
notebooks in a version control system, like git, and you wish to see
differences between versions. For more information, see:
[https://github.com/jupyter/nbdime](https://github.com/jupyter/nbdime)
and
[https://github.com/mwouts/jupytext](https://github.com/mwouts/jupytext).


### Testing Notebooks {#testing-notebooks}

Before distributing notebooks, and in particular if you are working
with multiple contributors to the course material, testing the
notebooks before they are distributed to students or used in a live
demo can help mitigate unexpected bugs. At a minimum, you can test
that the notebook executes cleanly from top to bottom by restarting
the kernel and running all cells from top to bottom. This can be done
from the menu (Restart + Run all).

Though it requires a bit more setup, tests can be run automatically
using a continuous integration service, such as TravisCI
([https://travis-ci.org](https://travis-ci.org)). This will require
executing the entire notebook via the command line, for example
`jupyter nbconvert --ExecutePreprocessor.enabled=True --to=html
my_notebook.ipynb` will execute the notebook (same as pressing
"Restart + Run All") and then convert it to HTML. These services can
be connected to GitHub so that any time that the notebooks are
changed, the tests are run automatically. Simplifying this process is
an area that is under development in the open source community. The
package
[https://github.com/opengeophysics/testipynb](https://github.com/opengeophysics/testipynb)
provides an easy way to test notebooks.


### Essential Python Libraries  {#essential-python-libraries}

The purpose of this section is to introduce some of the most widely
used packages within the Python ecosystem. Python is not the only
language that can be used in the notebook; over 90 different kernels
enable different programming languages be used. We discuss the use of
other languages in the section: [Using other
languages](#using-other-languages). Python has a large open-source
community which develops and maintains an ecosystem of over 150,000
software packages, making it a common language of choice in many
disciplines.

The core Python library
([https://docs.python.org](https://docs.python.org/3/)) contains data
types such as lists and dictionaries, as well as core functionality
such as arithmetic operators and simple file parsers. Most tasks can
be achieved with core python, however, they are often made easier with
higher-level libraries. These libraries are particularly useful for
scientific computing with Python.

Among the vast number of packages in the Python ecosystem, Numpy,
Scipy, Matplotlib and Pandas are among the most commonly used. Numpy
([http://www.numpy.org/](http://www.numpy.org/)) is a fundamental
library for numerical and scientific computing with Python. It
contains data structures for numerical arrays, tools for linear
algebra, and random number capabilities. Scipy
([https://docs.scipy.org/](https://docs.scipy.org/)) contains a
variety of functionality for common scientific computing tasks, such
as optimization, interpolation, statistics and signal processing. It
also includes fundamental constants from many disciplines such as the
speed of light as well as data structures for sparse
matrices. Matplotlib
([https://matplotlib.org/](https://matplotlib.org/)) is the core
plotting library for python and can be used inline in the notebook
with the `%matplotlib notebook` or `%matplotlib inline` cell
magic. Pandas
([https://pandas.pydata.org/](https://pandas.pydata.org/)) provides
resources for data analysis and more flexible data structures than
core python. A good resource for getting familiar with these libraries
is the Scipy Lecture Notes (https://www.scipy-lectures.org).


### Advanced topic: extensions {#advanced-topic-extensions}

There are many community contributed extensions that add functionality
to Jupyter notebooks.  Extensions vary from displaying an automated
table of contents for a notebook, or prettify code, or hiding/showing
solution cells.  Here is the link for how to install and enable
extensions:
[https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/install.html](https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/install.html)

Here is a list of a collection of extensions that are bundled
together:
[https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/nbextensions.html](https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/nbextensions.html)

Creating custom extensions is a way to extend or customize Jupyter to
add a capability that is not currently available with current
extensions or out of the box. These extensions may be targeted for a
specific kernel.  Here are instructions for how to create and install
custom extensions:
[https://jupyter-notebook.readthedocs.io/en/stable/extending/frontend_extensions.html](https://jupyter-notebook.readthedocs.io/en/stable/extending/frontend_extensions.html)

Figure X shows shows how Google Collaboratory, one of many tools to
interact with Jupyter notebooks, leverages the power of Jupyter
extensions for custom interaction and presentation.


![Google Collaboratory uses Jupyter extensions to customize Jupyter for their users. The run/play icon to the left of the code cell is created using extensions. This is not present in the standard Jupyter software. TensorFlow is a library for creating Machine Learning experiments in Python.](images/chapter53.png "Tensorflow example")


## Tips and tricks


### Reminders

If you are using a single notebook as a standalone exercise in a
traditional class (i.e., this is the only computational component of
your class), then it is helpful to have a few cells at the top of that
notebook that reviews how to navigate through the notebook and how to
insert cells, etc.


### Feedback

How do we get feedback from students in an interactive session to see
if students have completed an exercise?

A low tech solution is to give students sticky notes of different
colors, one meaning "finished" and one meaning "need help", that they
can stick on the back of their computers. The instructor can then
quickly look up to take a survey of the state of the class and decide
how to proceed.

Projecting Slack or a similar chat group on a screen and having
student copy-paste solutions (provided they are short functions) is a
nice way to let everyone in the class see one another's solutions.  A
positive aspect of having multiple student solutions projected is that
it can show the variety of ways to solve a problem. This gives an
opportunity to talk about the readability of solutions and their
efficiency. A downside is that in a large class, the shear volume of
posts can make it overwhelming. Instead polling can be used to
aggregate student answers and provide some form of feedback to the
instructor. Nbgrader or travis-CI can also be options here, requiring
students to submit completed code where it is assessed
automatically. These will however require more setup and can take some
time to complete.


### Explaining each cell

A good rule of thumb is to always include a markdown cell above every code cell.


### Custom Styling

New notebook creators often try to centrally manage the formatting of
headings, equations, and other textual items. For example, rather than
using a standard markdown heading, a creator may over-design the
headings by using HTML styles. This may create two problems:


  1. The rendering of the notebook markdown may change and your
  formatted HTML header may not maintain the same look over time.

  1. Headers created using markdown can be used by notebook tools,
  such as automatically creating a Table of Contents.

Our recommendation is to resist the desire to customize the styling
and simply use the default representations.  If you want to do
customization (for example if you want to color certain cells) you can
use CSS.


### Length of Notebooks

Notebook authors sometimes make the notebooks very long with many
topics and sections. Notebook sections and cells are currently not
easily reused in a copy/paste sense for mixing intra-notebook
content. Until this functionality is available, we recommend that
authors make short, self-contained notebooks around short topics. This
allows other notebooks authors to mix and match notebooks to create
curriculum.




## Gotchas

### Programming Language ≠ Jupyter

Teaching a class entirely with Jupyter can give the sense to students
that this is the way all computational exploration is done. In
particular, students can be confused into thinking that programming
requires the notebook, instead of understanding that a notebook is
just one way to interact with a particular language. This point should
be made clear periodically. A good way to reinforce this is to show
how to take a function that has been developed and debugged in a
notebook and cut-paste it into a script (such as a file ending in .py
for Python) and then import it into the notebook to regain that
functionality. Also, the Integrated Development Environment (IDE),
Spyder, has a plugin
([https://github.com/spyder-ide/spyder-notebook](https://github.com/spyder-ide/spyder-notebook))
that allows notebooks to be displayed alongside Python scripts and a
python terminal which can be useful for showing this dichotomy.


![Jupyter notebook displayed in a window pane inside Spyder.](images/chapter54.png "spyder rendering")


### Restart, restart, restart...

Often, students may need to stop a computation, and this can be
accomplished by pressing the "Interrupt" button in the
toolbar. However, students should also be made aware of how to restart
the kernel in a notebook, and what this means. There are several
instances when students might need to do this. Sometimes students
write code that can go into an infinite loop. The visual cues that
notebooks give in this case are subtle, and students may not realize
this and don't understand why the notebook is non-responsive. In
live-coding situations, it can be useful to demonstrate this to
students and show them how to restart the kernel and carry on.

A second instance of where restarting a kernel might be needed is due
to how the notebook stores the state of the computation. We like to
think that, since the notebook is laid out in a linear fashion, that
the state will always reflect what would happen if the notebook was
run from the start up to that point. However, it is common to work in
a notebook out of order, for instance if students ask a question about
some previous example. If the variable has been changed in subsequent
cells, then its value might not reflect what you expect when you rerun
a cell earlier in the notebook. Restarting the kernel is sometimes the
only solution.


### Notebook hygiene {#notebook-hygiene}

Many gotchas can be mitigated by developing notebooks that will be
robust to incremental and non-linear execution. The main principle is
to minimize side-effects of executing a cell and manifests itself
somewhat differently in different languages; our suggestions here will
be relevant to Python and may need to be adapted for other
languages. Notebooks should generally be able to execute sequentially,
such as via "restart kernel and run all cells". (An exception is when
a notebook is intentionally incomplete for the purpose of live coding
or student exercises, see nbgrader or the exercise estnations for more
elegant ways to handle this.) Variable mutation is the most common way
in which a notebook may malfunction when executing cells in a
non-linear way (e.g., in response to student questions or when
comparing and contrasting different methodologies). Sometimes this
mutation is incidental, through dummy variables that were not meant to
have significance outside the scope of the cell in which they are
used. Their scope can be limited by placing them in a function, even
if that function is only called once. Redefinition of functions can
often be avoided by parameterizing the desired functionality as would
typically be done if designing a library (though this may be a
distracting software design for novice programmers). Function
definitions should have little or no dependency on variables from
their enclosing scope. When modifying cells for demos and formative
assessments during class, it is useful to either copy the cell or
modify/execute such that a conforming implementation remains present
when moving on to other cells where it may be used. Additionally, you
can minimize these issues by grouping code in a single cell that
should always be executed sequentially, because code within a cell
will always be sequential.


