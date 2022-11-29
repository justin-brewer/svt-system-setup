# ---------------------------------------
# build and run project
git clone git@github.com:SVT-Robotics/svt-workflow-engine.git

cd svt-workflow-engine/
docker-compose up -d

cd src/SVT.Workflow.Engine/frontend/
yarn

cd ..
dotnet run
# ---------------------------------------
