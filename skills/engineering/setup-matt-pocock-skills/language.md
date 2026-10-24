# Language

How to render the English template headings the engineering skills emit, when an artifact is written in a language other than English. Which artifact uses which language is in the `### Language` table of `CLAUDE.md` / `AGENTS.md`.

## Heading translations

Use these exact terms. Don't translate a heading some other way, even where it would read more naturally in context: the point is that every issue uses the same words.

The seed below is Japanese. For another language, replace the right-hand column.

| English | Translation |
| --- | --- |
| Problem Statement | 課題 |
| Solution | 解決策 |
| User Stories | ユーザーストーリー |
| Implementation Decisions | 実装上の決定 |
| Testing Decisions | テスト方針 |
| Out of Scope / Out of scope | 対象外 |
| Further Notes | 補足 |
| Parent | 親Issue |
| What to build | 作るもの |
| Acceptance criteria | 受け入れ基準 |
| Blocked by | 依存先 |
| Status | ステータス |
| Agent Brief | エージェント向け概要 |
| Category | 種別 |
| Summary | 概要 |
| Current behavior | 現在の挙動 |
| Desired behavior | 期待する挙動 |
| Key interfaces | 主要なインターフェース |

## Never translate

- Label and status values (`needs-triage`, `ready-for-agent`, and the rest): skills match them as exact strings.
- Code identifiers, file paths, and commands.
- Domain terms defined in `docs/GLOSSARY.md`: use the glossary's form.
