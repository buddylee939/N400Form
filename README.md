# Planning our application

## Questions
1. What am I building? I am building a site where people who need to fill out an N400 form and submit it for approval
2. Who are we building it for? We are building it as a demo site to show Blue Waters Immigration of what is possible
3. What features do we want to have?
	-	N400 form
		- CRUD
		- form wizard to split up the form
		- jquery to make checkboxes like radio buttons
		- will have pending/apprvoed/unapproved status
		- user.id
		- can't be edited by other users, from mack app
		- validations
	- User(devise) using STI roles
		- signs up
		- after sign up route to their dashboard
		- finds form
		- fills out form
		- submits form
		- waits for approval
		- email once approved/unapproved until it is pending
	- Admin(devise) using STI roles
		- created by rails console
		- logs in goes to a dashboard
		- can see all the users created
		- can see all the pending forms
		- can approve or un-approve forms
		- can create managers/admins		
	- Manager(devise) using STI roles
		- created by admin
		- logs in has dashboard/ like admin but limited		
		- can see users created
		- can see pending forms
		- cannot approve/unaprove
	- Contact 
		- Contact form
		- sendgrid

## Modeling our data

- n400 form, migrations to add new steps
- User/admin/manager - STI or petergate

## Pages

1. User section
	x Welcome landing page
	x About
	x Contact
	x Login routes to user dashboard
	x Edit profile
	x user dashboard
	- N400 form CRUD

2. Admin section
	- log in, edit profile
	- Dashboard can see users
	- can see forms
	- can approve/unapprove forms
	- can search username from form
	- can create managers

3. Manager secion
	- can see forms
	- cannot approve/unapprove forms
	- can search username from form
	- can't create themselves, only admin can create	


## Todos

X how to add dynamic form elements based on when the user clicks something or not
X add 'active' class to bootstrap nav, jordan shows how
X how to make a checkbox act like a radio button group with jquery, [click here](https://www.codexworld.com/how-to/allow-only-one-checkbox-to-be-checked-jquery/)

X in the user dashboard, show the status of the form, pending/checked/approved/rejected
X create the manager/admin roles with sti or petergate
X created site admin and site manager user in seeds
X field offices controller, only access by admin and managers
- style admin dashboard with another layout
- kaminari/will paginate to manager/admin dashboards
- simple search like in admin blog site
- field offices CRUD only admin/manager authentication
- growl notifications




