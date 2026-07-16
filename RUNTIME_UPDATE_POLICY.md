# Runtime Bootstrap and Update Policy

This policy applies to every `wb-xhs-*` Skill in this repository.

## Invocation gate

Before executing a step that uses an external program, package, browser automation tool, image/PDF tool, API client, or local script:

1. Detect whether the required tool is available and record its current version.
2. Resolve the latest stable supported version. Do not use prereleases unless the user explicitly asks for them.
3. If the tool is missing or outdated, install or update it automatically before continuing. Prefer project-local dependencies and the repository's lockfile or package manager.
4. Run a version check or diagnostic after the update. Do not claim the tool is ready until the check passes.
5. Network downloads and system-level installs must use the environment's approval mechanism. Never use `sudo`, overwrite unrelated system tools, or expose credentials.
6. If an update would change platform behavior, permissions, licensing, or publishing behavior, stop and request human review instead of silently changing the workflow.

Text-only tasks do not need an installation. If setup fails, stop before the dependent step and report the exact missing tool, attempted update, and next safe action.

## Boundaries

- "Latest" means the latest stable release compatible with the current task, not an unverified nightly build.
- Updating a local tool does not grant permission to publish content or access private accounts.
- Platform rules and source material must still be verified from current authoritative sources; they are not treated as software packages.
