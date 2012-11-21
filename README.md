# Salinger

## Why?

Writing it was a good Ruby exercise. 

I also couldn't get Jekyll to do exactly what I wanted it to do on my site without a lot of schleps, and I felt like I'd rather just write a tailored solution myself.

## How does it work?

Put posts in the /public/posts/ dir, in Markdown format.

Run the generate script. This looks at all the Markdown files in public/posts and generates a YAML file of their attributes. 

The helpers 'content' and 'posts' then parse the YAML and create Post objects based on these, with attributes such as @post.title, @post.date etc.

