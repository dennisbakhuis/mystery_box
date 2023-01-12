# Mystery box - a data scientists approach
This is the repos with the files I used to solve the mystery_box
puzzle I got for my birthday.

## Story
For my birthday I got a mysterious box from a friend. It was a gray
3d-printed box with a large pad-lock on it. In the middle of the
box was a small lcd screen and next to it a red button. All is
powered by a 9v battery which outside of the box, in case it would
take longer to solve the puzzle than the battery lasted. Pressing
the button turned on the unit and greeted me with "happy birthday"
on the screen, followed by the compact instruction, and finally
the message that it searches for the GPS satelites. The puzzle is
to move to a specific

## Create environment
I manage my Python versions using (Mini)Conda and my packages using
Poetry. Conda is not required and you can skip it, if you manage
your Python versions differently. Also Poetry is optional and you
can use the requirements.txt file provided.

### Install Miniconda (Optional)
If you do not yet have Miniconda, here is a helper to install it.
```bash
make install-miniconda
```

### Install Poetry (Optional)
If you do not yet have poetry installed, you can install it using:
```bash
make install-poetry
```

### Create environment using Poetry
Now create a new Conda env for Python 3.10 and use Poetry to
install the required packages.
```bash
make init
```

### Creating environment without Makefile
If you do not want to use Poetry, we can do the default pip way:
```bash
conda env create -f environment.yml
conda activate mystery_box
poetry install
```

