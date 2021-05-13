function dcst 
    docker-compose stop
end

function dcu
    docker-compose up -d
end

function dcb
   docker-compose exec "$1" bash
end

function ys
    yarn start
end

function yd
    yarn dev
end

function yb
    yarn build
end

function gs
    git status
end

function gp
    git push
end

function gaa
    git add .
end

function glg
    git log --graph --oneline --decorate --all
end

function gc 
    git commit -m "$argv"
end

function gch 
    git checkout $argv
end
