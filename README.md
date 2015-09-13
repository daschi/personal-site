# Personal Site Plan

### What am I building?
    - Personal site
    - Blog
    - Share my projects
    - Let others contact me

### Who is the audience?
    - Community
    - Potential employers

### What features do I want?
    - Posts
         - Create / Edit / Destroy
         - Markdown
         - Syntax highlighting
         - Comments (Disqus)

    - Projects
         - Create / Edit / Destroy

    - Contact
         - Contact form
         - Sendgrid

    - User (Devise)

### User Stories
    - As a user, I want to be able to create posts so I can share what I’m learning.

    - As a user, I want to be able to edit & destroy posts so I can manage my blog.

    - As a user, I want to be able to write posts in markdown format so it’s easier to write posts.

    - As a user, I want to be able to highlight the syntax of code blocks I share on my blog.

    - As a user, I want to show the visitors and potential employers examples of my projects.

    - As a user, I want visitors to contact me through a form on my site.

    -  As a user, I want visitors to be a blue to leave comments on my posts.

### Modeling Data

- Post
     title:string
     content:text
- Project
     title:string
     description:text
     link:string
- User

### Page Routing

- Landing page
- Posts#index
     - Posts#show
- Projects#index
     - Projects#show
- Contact

### Wireframe & Userflow

- Home <—> posts#index
- Home <—> posts#show
    - posts#index <—> Posts#show
- Home <—> projects#index
- Home <—> projects#show
    - projects#index <—> projects#show
- Home <—> Contact —> Form Success —> Home

USER ONLY - Visitor would never see this
- Login —> New Post
- Login —> New Project
- New Post —> Edit/Destroy Post
- New Project —> Edit/Destroy Project
