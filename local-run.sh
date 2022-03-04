#!/bin/bash

# Remove previous containers
docker rm tech-doc-action --force | true
docker rmi docker.io/maierhofer-consulting/tech-doc-action --force | true

# Exit if a command fails
set -e

# Build Docker Image

docker build -t docker.io/maierhofer-consulting/tech-doc-action .

#Run Docker Image
docker run --name tech-doc-action docker.io/maierhofer-consulting/tech-doc-action:latest \
-v "/var/run/docker.sock":"/var/run/docker.sock" \





# /usr/bin/docker run --name db2d799f7df1b39ef4365a17dcb0892c91d1b_a203a0 --label 7db2d7 
# --workdir /github/workspace --rm 
# -e INPUT_ASCIIDOCTOR_PARAMS -e INPUT_PDF_BUILD -e INPUT_SOURCE_DIR -e INPUT_ADOC_FILE_EXT -e INPUT_EBOOK_MAIN_ADOC_FILE -e INPUT_SLIDES_BUILD -e INPUT_SLIDES_MAIN_ADOC_FILE -e INPUT_SLIDES_SKIP_ASCIIDOCTOR_BUILD -e INPUT_PRE_BUILD 
#-e INPUT_POST_BUILD -e HOME -e GITHUB_JOB -e GITHUB_REF -e GITHUB_SHA -e GITHUB_REPOSITORY -e GITHUB_REPOSITORY_OWNER -e GITHUB_RUN_ID -e GITHUB_RUN_NUMBER -e GITHUB_RETENTION_DAYS -e GITHUB_RUN_ATTEMPT -e GITHUB_ACTOR -e GITHUB_WORKFLOW
# -e GITHUB_HEAD_REF -e GITHUB_BASE_REF -e GITHUB_EVENT_NAME -e GITHUB_SERVER_URL -e GITHUB_API_URL -e GITHUB_GRAPHQL_URL -e GITHUB_REF_NAME -e GITHUB_REF_PROTECTED -e GITHUB_REF_TYPE -e GITHUB_WORKSPACE -e GITHUB_ACTION -e GITHUB_EVENT_PATH #
# -e GITHUB_ACTION_REPOSITORY -e GITHUB_ACTION_REF -e GITHUB_PATH -e GITHUB_ENV -e RUNNER_OS -e RUNNER_ARCH -e RUNNER_NAME -e RUNNER_TOOL_CACHE -e RUNNER_TEMP -e RUNNER_WORKSPACE -e ACTIONS_RUNTIME_URL 
# -e ACTIONS_RUNTIME_TOKEN -e ACTIONS_CACHE_URL -e GITHUB_ACTIONS=true -e CI=true 
# -v "/var/run/docker.sock":"/var/run/docker.sock" -v "/home/runner/work/_temp/_github_home":"/github/home" 
# -v "/home/runner/work/_temp/_github_workflow":"/github/workflow" -v "/home/runner/work/_temp/_runner_file_commands":"/github/file_commands" 
# -v "/home/runner/work/github-action/github-action":"/github/workspace" 7db2d7:99f7df1b39ef4365a17dcb0892c91d1b  
# "./docs" "--attribute=nofooter" ".adoc" "false" "README" "false" "true" "README" "echo \"No pre build command provided.\"" "echo \"No post build command provided.\""



echo "FINISH!"