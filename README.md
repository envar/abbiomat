# Biomaterials Society Alberta Student Chapter

## Accounts
Some accounts require a credit card to set up. However, usually they are free if usage is under a certain limit.
- Heroku - web hosting
- Amazon S3 - file hosting
- Mandrill - send transactional emails
- Gmail - recaptcha
- Namecheap - domain registrar
- Cloudflare - CDN and DNS provider

## Source Code
All source code was written by me, Michal Nicpon. The project has revision control using Git. Changes are pushed up to Heroku using the Heroku toolbelt/Git. I have provided a zip file of the project in its entirety. Changes to the site will be done through me until such time as someone else is willing to take ownership. The website was written using Ruby on Rails and the database is PostgreSQL.

## Static Pages
Static pages already exist for the about and resources pages. Do not add or delete static pages, only edit them as required. Links to these static pages are hardcoded in the navigation bar. Pages can be edited by clicking on the pencil icon at the bottom of the page. [Markdown](http://daringfireball.net/projects/markdown/syntax) is supported as well as embedded html. Images can be included by uploading them to Amazon S3, making the image public, and including the image link in the page.

If a place to show team members is still required, contact me and we can consider added to either the front page or to the about page. This will require more work to make it look good.

## News
The News page is only accessible to members which have been approved. Posts can be created, editing, and destroyed by clicking on the appropriate buttons which will appear if you are an admin. The body text can be formatted using Markdown or directly using html. Images can be added individually and will apper at the bottom in a thumbnail gallery on the individual post page. I left a field for author so that admins can post content for other people and give credit.

## Jobs
The Jobs page is only accessible to approved members. This page functions similarily to the News page with the exception that an image gallery is absent. If images need to be added, I can add this feature. Otherwise, images can be added as outlined in Static Pages. I have chosen not add a "Apply Now" where users can upload their resumes/cover letter in the interest of time. Instead, I would suggest including an email in the body to which users can respond. If you want to be fancy to can do something like \[bioasc@ualberta.ca\]\(mailto:bioasc@ualberta.ca?Subject=Job%20Application\) which will render to [bioasc@ualberta.ca](mailto:bioasc@ualberta.ca?Subject=Job%20Application).

## Contact
A page with a contact form is included which will send an email to bioasc@ualberta.ca. Users must verify they are not a bot to prevent spam.

## Sign In/Sign up
New users must provide their email and name to sign up. Additionally they can add a photo once the account is approved in the edit profile page. Note that the profile image is not used anywhere at the moment. In the future a page could be added with all the current members. An email is sent to bioasc@ualberta.ca indicating that a new user has signed up. An admin can then go to the manage users page by clicking on dropdown menu from their email address in the top right to approve them and or give them admin status.

