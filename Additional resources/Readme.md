# Tutorials

| Outil | Ressource|
|:---:|:-----------------|
|Markdown| This is the very first thing you should look into. It's extensively used in various tools including Github, the note-taking tool Obsidian, and so on. A must. The [basics](https://www.markdownguide.org/cheat-sheet) to lear Markdown syntax and tricks|
|GitHub|- Tutorial developed by Béatrice [here](https://osf.io/xjwrv/) <br> - Others?  
|Virtual Studio Code| - Tutorial video for beginners [here](https://code.visualstudio.com/docs/introvideos/basics) <br> - [Download page](https://code.visualstudio.com/download)|
|Latex| A very nice, open-source typesetting system to format your official documents in a professional manner. I personnally use it for my paper reading notes, official letters, responses to reviewers, class notes, etc.etc.etc. A plug-in is available in Virtual Studio Code, *Latex workshop*, that enables live preview of your document while writing it. More information [here](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop). A good Alternative if you don't want to adopt Virtual Studio Code is the [online platform Overleaf](https://www.overleaf.com/).|

<br>
<br>
<br>

# Reproducibility in science: some examples

* Béatrice's recently accepted paper in *Plant and Soil* has its (1) data files, (2) R codes and (3) metadata (Readme) submitted on the Dataverse platform [here](https://doi.org/10.5683/SP3/QKNQ08). 

* Others to highlight?

<br>
<br>
<br>

# Github from the beginning

1. **Installing Git**: Before thinking about starting up with Git, you need to have it installed on you computer (it is not, by default). You can follow basic instructions [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). <br> You can also check whether it is installed using the command ``git -v`` in Windows command line, or ``git --version`` in Linux. <br>

2. **Cloning your first project**: Github is pretty similar to other cloud-based storage/organization system in that a repository (drive, if you want) is associated with a URL. Cloning step by step is shown [here](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository). You may want to clarify in your mind the concept of authentification through personal token using [this link](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens) first. This is how you will confirm your identity to your command line when you will want to clone the repository! Unless it's a public repository (as opposed to private): it all depends on what the creator of the repository has decided. <br>

3. **Pulling**: Before making changes to a repository, you want to make sure you're up to date (i.e., you have the latest version of it). This is where you want to (1) move into that directory you created in your local computer during the cloning process, and pulling (``git pull`` in the command line). <br>

4. **Pushing**: Once you've made your modifications, you want to (1) commit them (``git commit -a``) and (2) push them (``git push``). If you added new files in the repository (regardless where in the folder herarchy of the repository), you'll need to first ``git add .`` them, more details [here](https://github.com/git-guides/git-add).

<br>

And that's pretty much it for the basics! When working in simple (typically the case) projects, don't worry too much about forking and experimental/developmental branches and stuff like that... we're not developing twitter...