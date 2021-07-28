# README

## How to use

copy Dockerfile in each project you want to develop with docker.

ideally place docker-compose.yml one layer above projects so the folder structure looks like:

- project 1
  - app
  - Dockerfile
  - ...
- project 2
  - app
  - Dockerfile
  - ...
- docker-compose.yml

edit docker-compose.yml build sections for apps so they point to the correct folder. 
change image name of project services in docker-compose.yml so they are unique

change configuration of project so services point to the correct names. the services get a hostname of the name of their service.
the mysql service is called mysql so other services can find it by the name of mysql see database.yml of example

run `docker-compose up --build rails_app_1 <name of service>` to start rails server

### Note
the --build flag is only needed on first run and when you change your gemfile or package.json

## Setup for debugging

Add the following to your gemfiles:

```
group :development do
  # docker debugging
  gem 'ruby-debug-ide'
  gem 'debase', '0.2.5.beta2 '
end
```

configure a remote debugger run configuration in rubymine according to the attached screenshot.
make sure the local root actually points to the root of the project and not some subfolder

run `docker-compose up rails_app_1_debug <or other sevice names>` run debugger in rubymine

have fun debugging. :)

## Running ruby commands

you can get a shell inside the docker container using `docker-compose run rails_app_1 sh` you can use all the generators you want and they will sync outside the container.

just not that new files may or may not be owned by root instead of your user...


# Notes
there are probably kinks in there but the basic setup would work like this. just enable all the extra services you would need in the docker-compose file
