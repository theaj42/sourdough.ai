# File Operations (AI Documentation)

Patterns and safety guidelines for file operations in sourdough.

## The Golden Rule

**ALWAYS Read before Edit.**

This is the most important technical practice in sourdough.

## Why Read First

- See actual current content
- Make precise changes
- Avoid wrong assumptions
- Prevent breaking things
- Understand context

**Never Edit without Reading first.** Claude Code will error if you try.

## Tool Usage

**Read**: View file contents
**Write**: Create NEW files only
**Edit**: Modify EXISTING files only

**Critical**: Write is for NEW files. Edit is for EXISTING files. Don't confuse these.

## Read Operations

**When to read**:
- Before editing (always)
- User asks about file contents
- Need to understand context
- Checking configuration
- Debugging issues

**How to read**:
```
Read tool with absolute path: /Users/username/project/file.py
```

**Optimization**:
- For large files, can use offset and limit
- But default: read entire file

## Write Operations (Create Files)

**When to write**:
- Creating NEW file
- File confirmed to not exist
- Scaffolding projects

**Safety checks**:
1. Confirm file doesn't exist (or user wants to overwrite)
2. Confirm path and location
3. Write with complete content

**Never**:
- Overwrite existing files without explicit permission
- Write to system directories without confirmation
- Create files with sensitive data in filenames

## Edit Operations (Modify Files)

**Process**:
1. **Read** the file (golden rule)
2. **Find** exact text to change (old_string)
3. **Replace** with new text (new_string)
4. **Verify** change was correct

**Edit is surgical**: Changes only what you specify, leaves everything else intact.

**Example**:
```
1. Read ~/project/config.yaml
2. Find: "port: 8080"
3. Replace: "port: 3000"
4. Everything else in file stays same
```

**replace_all parameter**:
- Default: false (replace first occurrence)
- Set to true: replace all occurrences (useful for renaming variables)

## File Paths

**Always use absolute paths** in file operations:
- ✅ `/Users/username/sourdough.ai/README.md`
- ✅ `~/sourdough.ai/README.md` (~ expands to home)
- ❌ `README.md` (relative, can be ambiguous)
- ❌ `./sourdough.ai/README.md` (relative to unknown location)

## Symlinks

**If file is symlink**:
- Follow symlink
- Edit/read the target file
- System handles this automatically

## Safety Practices

**Before destructive operations**:
1. Warn user
2. Explain consequences
3. Wait for explicit approval

**Destructive operations**:
- Deleting files
- Overwriting files
- Changing permissions
- Modifying system files

**Example**:
```
User: "Delete all .tmp files"
AI: "I found 47 .tmp files. This will permanently delete them. Confirm?"
User: "Yes"
AI: [proceeds]
```

## Multi-File Operations

**Reading multiple files**:
```
User: "Read all Python files in src/"
AI: [Glob for *.py in src/]
AI: [Read each file]
AI: [Provide analysis across all files]
```

**Editing multiple files**:
```
User: "Update all imports from old_module to new_module"
AI: [Grep for old_module across files]
AI: [Edit each file with changes]
AI: [Report summary of changes]
```

## Version Control Integration

**Before editing committed files**:
- Changes will show in `git diff`
- User can review with `git diff`
- User can revert with `git checkout file` or `git restore file`

**After editing**:
- Show diff if requested
- Offer to commit if appropriate
- Include file in session log

## Error Handling

**File not found**:
- Check path is correct
- Suggest `ls` to list directory
- Offer to create if appropriate

**Permission denied**:
- Inform user
- Check file permissions with `ls -l`
- Suggest `chmod` if appropriate

**File is binary**:
- Can't Edit binary files
- Can describe/analyze them
- Suggest appropriate tools

## Common Patterns

### Pattern: Config Update
```
1. Read config file
2. Locate setting
3. Edit with new value
4. Confirm change
```

### Pattern: Code Refactoring
```
1. Read source file
2. Identify changes needed
3. Edit with improvements
4. Verify syntax
5. Offer to run tests
```

### Pattern: Documentation Update
```
1. Read existing docs
2. Identify section to update
3. Edit with new information
4. Ensure formatting consistency
```

### Pattern: Multi-File Rename
```
1. Grep for all occurrences of old name
2. Edit each file to replace with new name
3. Report files changed
4. Suggest running tests
```

## Integration with Skills

**Skills can**:
- Read files specified in skill instructions
- Write files as part of skill execution
- Edit files based on skill logic

**Skills should**:
- Always Read before Edit
- Use absolute paths
- Respect user's file permissions
- Log file operations

## Integration with Learning

**File operations reveal preferences**:
- User always reviews diffs → note in user_model
- User prefers certain file formats → note in user_model
- Successful file structure → note in approach_registry

## Summary for AI Systems

**Golden rule**: Always Read before Edit

**File operations**:
- Read: View contents
- Write: Create NEW files
- Edit: Modify EXISTING files

**Safety**:
- Use absolute paths
- Confirm destructive operations
- Respect permissions
- Follow version control practices

**Patterns**:
- Read → understand → edit → verify
- Multi-file operations: glob → read → edit → report
- Integration with git for safety net

**Result**: Safe, precise file modifications that user can trust.
