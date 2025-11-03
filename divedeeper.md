# Project Continuation Prompt: The Resurrection Drive / Archive Codex

## Context
You are helping develop an organization and preservation project that pivoted from a Unitarian Universalist Association of Technologists to a mission-driven code preservation initiative.

## Project Overview

### Name & Mission
**The Viridian Collective** 
- **Vision**: Safeguarding humanity's computational knowledge for perpetuity
- **Mission**: Preserve science, mathematics, and systematic thought captured in computer code
- **Inspiration**: Foundation series + Anna's Archive approach
- **Format**: GitHub organization focused on curation and preservation

### Core Principles (UU-derived)
- Universal Access: Knowledge encoded in code belongs to humanity
- Worth and Dignity: Every contribution to computational understanding matters
- Justice and Equity: Preservation cannot favor the powerful over the essential
- Interdependence: Today's obscure library is tomorrow's critical dependency
- Free and Responsible Search: Transparency in what we preserve and why

### What We Preserve
- Scientific computing libraries and simulations
- Mathematical proofs and verification systems
- Educational code and pedagogical implementations
- Research software facing institutional abandonment
- Tools documenting humanity's systematic reasoning
- "Dark matter" of computation: unsexy but critical infrastructure

### Differentiators
- Curatorial, not just mirroring
- Prioritize intellectual significance over popularity
- Maintain context and understanding of why code matters
- Long-term format sustainability mindset

## Developer Relations Strategy (Iterating)

### Platform Strategy
1. **X/Twitter** (Primary): 2-3 posts/day - rescue stories, hot takes, real-time preservation
2. **LinkedIn** (Secondary): 2-3 posts/week - institutional credibility, thought leadership
3. **Substack** (Weekly newsletter): Deep dives, investigative pieces, community building
4. **Forums** (Strategic): HN, Reddit, specialized communities - reputation building

### Content Pillars
- Rescue Stories (40%): "We saved this before it disappeared"
- The Crisis (25%): Data on code decay, investigative journalism
- Community Spotlights (20%): Maintainer interviews, contributor highlights
- Educational Content (10%): Preservation methodology, tutorials
- Movement Building (5%): Calls to action, milestones

### Voice & Tone
- Urgent without alarmist
- "Internet Archive energy" + "hacker ethos" + "digital librarian punk"
- Attack systems, not people
- Technical but accessible

## The MVP: Resurrection Drive (ITERATING SPECIFICATION)

### Core Concept
A bootable USB drive (256-512GB) containing:
1. **NixOS Live Environment** - boots on any x86_64 laptop, no OS needed
2. **Offline nixpkgs Repository** - complete source code + build system
3. **Curated Software Archive** - "Essential 10" → 500+ scientific/mathematical packages
4. **Documentation Database** - offline Wikipedia, Anna's Archive, guides, educational resources
5. **Simple Interface** - TUI/GUI menu for browsing, building, learning

### User Scenario
"I'm a global collapse survivor with a working laptop but dead OS. I boot from this drive and can access databases, rebuild software, and reconstruct information networks."

### Technical Architecture
- **Layer 1**: Bootable NixOS with persistence
- **Layer 2**: Offline nixpkgs (Curated preserved software collection)
- **Layer 3**: User interface (menu system, catalog browser, documentation portal)

### Why NixOS?
- ???
- Declarative and self-documenting
- Source-based (not dependent on binaries)
- Git-based with full provenance

### Implementation Phases
1. **Proof of Concept** (Weeks 1-4): Bootable drive + 10-20 packages
2. **MVP v1.0** (Weeks 5-12): Essential 100 packages + documentation
3. **Refinement** (Weeks 13-24): 500+ packages + community features

### Key Features
- ✅ Boots without network on any modern laptop
- ✅ (Complete) development environment (GCC, Python, Rust, etc.)
- ✅ Build software from source with one command
- ✅ Searchable catalog with "why this matters" metadata
- ✅ "Read Me First" survivor guide
- ✅ Educational resources for rebuilding

## Current Status
We have completed:
1. ✅ Vision and mission framework
2. ✅ Developer relations strategy (full social media plan)
3. ✅ MVP specification (The Resurrection Drive)

## What's Next (Areas to Continue Work)

### Immediate Priorities
1. **Refine MVP scope** - finalize "Essential 100" software list
2. **Technical implementation** - NixOS configuration, build scripts, partition layout
3. **Catalog database design** - schema for software metadata, search indexing
4. **Community building tactics** - launch strategy, early contributor recruitment
5. **Documentation structure** - "Read Me First" guide, technical docs, preservation methodology

### Open Questions
- GitHub org structure (repositories for different components?)
- Governance model (who decides what gets preserved?)
- Funding/sustainability approach
- Relationship to existing preservation projects (Software Heritage, Internet Archive)

### Possible Next Work Sessions
1. Design the software catalog database and search system
2. Create NixOS configuration for bootable drive
3. Write the "Read Me First" survivor guide
4. Draft launch announcement for social media
5. Build "Essential 100" curation criteria and initial list
6. Design GitHub organization structure
7. Create contributor guidelines and preservation methodology docs
8. Plan community launch campaign (first 90 days)

## Key Documents Created
- Vision statement and mission
- Developer relations strategy (platform-specific tactics)
- MVP technical specification (Resurrection Drive)
- Content calendar framework
- Voice and messaging guidelines
- Implementation roadmap

## Tone and Philosophy
The project balances:
- **Urgency** (code is disappearing) with **optimism** (we can save it)
- **Technical rigor** (reproducible, verified) with **accessibility** (anyone can use)
- **Preservation** (what exists) with **activation** (making it usable)
- **Individual action** (grassroots) with **institutional change** (systemic solutions)

This is both a practical tool (bootable archive) AND a movement (changing how we think about code preservation).

---

**To continue work**: Pick up from any of the "What's Next" items above, or iterate on the MVP, DevRel strategy, or vision/mission based on new insights or feedback.
