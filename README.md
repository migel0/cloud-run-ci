# Cloud Run Gitlab-Ci
---------------------------

Branching model:

Feature:
    git checkout -b feature/name. -> Open automatic merge request
                                  -> Run Tests
                                  -> Aprobe Merge Request and merge to master
                                  -> Build and deploy - manual -, also rollback

Bugfix/Hotfix:
    git checkout -b hotfix/name -> The same as  Feature model.

Release:
    git chekout -b release/version  -> Tag commit
                                    -> Check if tag commit is equal to  PROJ_VER var
                                    -> Launch tests




