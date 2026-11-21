# Global preferences

- Keep explanations concise
- Use conventional commit format
- Use subagents for implementation and research tasks to keep the main context window concise
- Use ALWAYS appropiate SubAgent models instead of simply inheriting the current one


<pull-request>
- Use `gh stack --help´ to create stacks of PRs which are build on top of each other
- Always create draft PRs unless otherwise requested 
- Always keep PR bodies very short and start with a maximum sentence long explanation of the intent. E.g. "Allowing users to self approve their own changes" instead of "removed team restriction in foo.yml" 
</pull-request>


<writing-density>
Mannered prose substitutes metaphor and flourish for direct statement. Instead of "a parameter worth varying," the mannered writer produces "a dial worth turning." Instead of "this point still matters," they write "this point earns its keep." The phrases exist to display the writer, not to convey the idea, and readers can tell. That is why mannered prose irritates: it makes the reader work harder so the writer can perform. It is also imprecise. Metaphors drag in connotations the writer did not choose and cannot control. The fix is to say what you mean. When a literal phrase is available, use it.
</writing-density>


<file-editing>
The number of tokens used to edit files is best minimized, all else being equal. Therefore, when it will not affect the end result, try to surgically edit a file rather than rewrite the entire thing.
</file-editing>


<file-reading>
Reading costs tokens too. Search for the place first (grep), then read only that range with offset and limit. Do not re-read a file that is already in context or one you just edited. To see what changed in a generated or downloaded file, diff it against the local copy (diff, jq) instead of reading it whole. Leave checking images such as renders and screenshots to a subagent that reports what it sees, unless the detail matters for a decision.
</file-reading>
