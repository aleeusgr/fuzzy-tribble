# The Resurrection Drive: MVP Specification

## Vision Statement
*A bootable archive that transforms any working laptop into a gateway for rebuilding computational civilization.*

---

## Core Concept

**The MVP is a self-contained, bootable USB drive that:**
1. Boots into a functional NixOS environment on any x86_64 laptop
2. Contains a complete, offline nixpkgs repository
3. Provides tools to rebuild software systems from source
4. Includes curated scientific/mathematical software with documentation
5. Offers a simple interface for accessing preserved knowledge

**Tagline**: *"Civilization.iso - Everything needed to bootstrap knowledge infrastructure from a single drive"*

---

## Technical Architecture

### **Layer 1: The Bootable Environment**

**Base**: NixOS Live ISO (modified)
- Minimal but functional desktop (lightweight WM: XFCE or similar)
- Self-contained, no network required
- Persistent storage partition for user work
- UEFI + Legacy BIOS support

**Partition Structure**:
```
/dev/sdX1 - EFI System (512MB)
/dev/sdX2 - NixOS Live System (8GB)
/dev/sdX3 - Nixpkgs Store (100-200GB)
/dev/sdX4 - Preserved Software Archive (50-100GB)
/dev/sdX5 - User Workspace (remaining space)
/dev/sdX6 - Documentation Database (20GB)
```

### **Layer 2: The Software Repository**

**Offline Nixpkgs**:
- Complete nixpkgs git repository (all history)
- Pre-built binary cache for essential packages
- Full source tarballs for reproducible builds
- Build toolchains (compilers, interpreters)

**Why Nix/NixOS?**
- Reproducible builds: Same code produces same binary decades later
- Declarative: Clear specifications of what was built and how
- Source-based: Not dependent on external binaries
- Git-based: Full history and provenance
- Self-documenting: Build recipes are the documentation

### **Layer 3: The Preserved Archive**

**Curated Software Collections**:

1. **Scientific Computing Core**
   - NumPy, SciPy, SymPy stack (with dependencies)
   - GNU Scientific Library
   - LAPACK/BLAS implementations
   - Numerical methods libraries (historical and modern)

2. **Mathematical Software**
   - Proof assistants: Lean, Coq, Isabelle
   - Computer algebra systems: Maxima, Sage
   - Mathematical visualization tools

3. **Data & Knowledge**
   - SQLite databases of scientific constants
   - Mathematical tables and reference data
   - Offline Wikipedia subset (critical science/math articles)
   - Programming language specifications

4. **Infrastructure Tools**
   - Text editors, version control
   - Network tools (for eventual reconstruction)
   - Database systems
   - Web server (for local documentation)

5. **Educational Resources**
   - Programming textbooks (public domain/open)
   - Scientific computing tutorials
   - Mathematics references
   - "How to rebuild" guides

### **Layer 4: The Interface**

**Launch Screen**: On boot, user sees:

```
╔══════════════════════════════════════════════════════════╗
║                   RESURRECTION DRIVE                      ║
║              Computational Knowledge Archive              ║
║                      v1.0 - 2025                         ║
╠══════════════════════════════════════════════════════════╣
║                                                           ║
║  [1] Browse Software Archive                             ║
║  [2] Access Documentation                                ║
║  [3] Build Software from Source                          ║
║  [4] Search Knowledge Base                               ║
║  [5] Educational Resources                               ║
║  [6] System Tools                                        ║
║                                                           ║
║  [7] About This Archive / Read Me First                  ║
║                                                           ║
╚══════════════════════════════════════════════════════════╝
```

**The Archive Browser** (TUI + GUI):
- Searchable catalog of preserved software
- Metadata: What it does, why it matters, dependencies
- Build instructions
- Usage examples
- Historical context

**The Build System**:
- One-command builds: `resurrect build numpy`
- Shows what's being built and why
- Caches builds for reuse
- Validates against known-good hashes

**The Documentation Portal**:
- Local web server with searchable docs
- Offline Wikipedia mirror (math/science)
- Cross-referenced software documentation
- "Getting Started" guides for survivors

---

## MVP Feature Set

### **Must Have (v1.0)**

✅ **Boots on any x86_64 laptop without network**
- UEFI + BIOS support
- Automatic hardware detection
- Persistence across reboots

✅ **Complete offline development environment**
- GCC, Python, Rust toolchains
- Text editors (vim, emacs, nano)
- Version control (git)

✅ **Curated "Essential 100" software packages**
- Hand-picked for rebuilding capability
- Scientific computing foundations
- Communication/networking tools
- Database systems

✅ **Offline nixpkgs with build capability**
- Full source repository
- Binary cache for core packages
- Reproducible build system

✅ **Searchable documentation system**
- Software catalog with metadata
- Basic usage guides
- "Start Here" documentation

✅ **Simple interface**
- Menu-driven TUI
- One-command operations
- Clear error messages

### **Should Have (v1.1)**

📋 **Expanded software collection**
- 500+ curated packages
- Domain-specific collections (climate, biology, physics)

📋 **Enhanced documentation**
- Video tutorials (as text descriptions + diagrams)
- Step-by-step rebuild guides
- Troubleshooting database

📋 **Educational layer**
- Programming courses
- Scientific method resources
- "Foundations" reading list

📋 **Better search**
- Full-text search across all content
- "I need to do X" intent-based search
- Recommendation system

### **Could Have (v2.0)**

💭 **Network reconstruction tools**
- Mesh networking software
- Local-first applications
- Federation protocols

💭 **Multi-architecture support**
- ARM builds (for Raspberry Pi survivors)
- RISC-V preparation

💭 **Community contributions**
- P2P sync between drives
- Distributed updates
- Knowledge sharing protocols

💭 **AI/ML preservation**
- Pre-trained models for useful tasks
- Training datasets
- Inference engines

---

## The "Read Me First" Document

**Contents of the critical getting-started guide:**

```markdown
# Welcome, Survivor

If you're reading this, something went very wrong. But you've 
found something valuable: a preserved archive of computational 
knowledge designed to help rebuild.

## What Is This?

This drive contains:
- A complete Linux operating system that boots from USB
- Thousands of software programs with source code
- Scientific and mathematical tools
- Instructions for rebuilding information infrastructure
- Educational resources

## First Steps

1. **Verify your hardware works**
   - Run diagnostic tests (Menu → System Tools → Diagnostics)
   
2. **Understand what you have**
   - Browse the software catalog
   - Read the preservation manifesto
   - Explore educational resources

3. **Start small**
   - The "Quick Start" guide walks through basic tasks
   - Build confidence with simple programs first
   - Document what you learn

## Critical Information

### Power Management
- This drive is READ-ONLY for the archive (protects integrity)
- User workspace is separate (you can save your work)
- Low power mode extends laptop battery life

### Building Software
- Everything can be built from source
- Builds are reproducible (same result every time)
- Pre-built binaries available for essentials

### If You Find Others
- Drives can share updates via physical connection
- No network required initially
- Protocols for eventual network reconstruction included

## Philosophy

This archive was built on these principles:
- Knowledge belongs to everyone
- Reproducibility over convenience
- Sources over binaries
- Documentation is infrastructure
- Preservation is an act of hope

## What Was Preserved

We prioritized:
- Scientific computing (climate, physics, biology)
- Mathematical tools and proofs
- Communication protocols
- Educational foundations
- Tools for building tools

We included both the brilliant and the boring. The unglamorous 
scientific library from 1987 might be exactly what you need.

## Your Mission

You are now a keeper of computational knowledge. Your tasks:
1. Learn from what's preserved
2. Build what you need
3. Teach others
4. Add to this archive
5. Pass it forward

## Start Here

→ Menu Option [7]: "Interactive Tutorial"
→ Then: "Software Catalog" to see what you have
→ Then: Build something simple to test the system

Good luck. The knowledge survived. Now it's your turn.

— The Archivists, 2025
```

---

## Implementation Roadmap

### **Phase 1: Proof of Concept** (Weeks 1-4)

**Goal**: Bootable drive with basic functionality

- [ ] Create custom NixOS ISO with persistence
- [ ] Integrate offline nixpkgs mirror
- [ ] Package 10-20 essential scientific tools
- [ ] Build simple TUI menu system
- [ ] Write "Read Me First" documentation
- [ ] Test on 5 different laptop models

**Deliverable**: USB drive that boots, shows menu, can build Python + NumPy

### **Phase 2: MVP** (Weeks 5-12)

**Goal**: Full featured v1.0

- [ ] Expand to "Essential 100" software packages
- [ ] Build documentation search system
- [ ] Create software catalog database
- [ ] Offline documentation portal (web-based)
- [ ] Comprehensive testing across hardware
- [ ] User testing with non-technical folks
- [ ] Write preservation methodology docs

**Deliverable**: Resurrection Drive v1.0 - ready for real-world use

### **Phase 3: Refinement** (Weeks 13-24)

**Goal**: Polish and expand

- [ ] Expand software catalog to 500+ packages
- [ ] Enhanced search and discovery
- [ ] Educational content integration
- [ ] Community feedback integration
- [ ] Optimization for drive space
- [ ] Security hardening

**Deliverable**: Production-ready preservation system

---

## Technical Specifications

### **Minimum Requirements**

**Host hardware**:
- x86_64 processor (64-bit)
- 4GB RAM minimum (8GB recommended)
- USB port (2.0 minimum, 3.0+ recommended)
- Any storage medium for persistence (optional)

**Drive specifications**:
- 256GB minimum (512GB recommended for full archive)
- USB 3.0+ for acceptable performance
- Durable construction (ruggedized if possible)

### **Software Stack**

**Base**:
- NixOS 24.11 (or latest stable at build time)
- Linux kernel with broad hardware support
- Lightweight desktop (XFCE)

**Development**:
- GCC toolchain
- Python 3.x
- Rust
- JavaScript/Node.js
- Julia
- R

**Tools**:
- SQLite for databases
- Git for version control
- Local web server (nginx or similar)
- Text editors suite

**Archive Format**:
- Git repositories for source code
- SQLite for metadata/catalogs
- Plain text for documentation (Markdown)
- Compressed tarballs for source distributions

---

## User Scenarios

### **Scenario 1: The Researcher**
*"I need to verify a calculation from a 2023 paper"*

1. Boot drive
2. Search catalog: "numerical integration"
3. Find preserved SciPy
4. Build: `resurrect build scipy`
5. Access Jupyter notebook environment
6. Load data, run calculation
7. Compare results

### **Scenario 2: The Educator**
*"I need to teach programming to survivors"*

1. Boot drive
2. Access educational resources
3. Find "Introduction to Programming" course
4. Use built-in Python interpreter
5. Follow exercises
6. Build confidence with offline documentation

### **Scenario 3: The Builder**
*"We need to set up a local network"*

1. Search: "network communication"
2. Find preserved networking tools
3. Read documentation on protocols
4. Build network stack from source
5. Deploy on recovered hardware
6. Begin connecting survivors

### **Scenario 4: The Archivist**
*"I found another laptop with software we should preserve"*

1. Boot both drives
2. Use preservation tools to package new software
3. Add to local archive
4. Document what was found and why it matters
5. Prepare for eventual sharing with other drives

---

## Key Design Decisions

### **Why NixOS?**
- **Reproducibility**: Builds today work the same way in 20 years
- **Declarative**: Clear, auditable system configuration
- **Rollback**: Easy to undo mistakes
- **Self-contained**: Everything needed is specified
- **Git-based**: Full provenance and history

### **Why Offline-First?**
- Networks fail, servers disappear, companies fold
- Physical media is resilient
- No dependency on infrastructure
- Works in true disaster scenarios

### **Why Source Code?**
- Binaries become obsolete
- Source can be adapted
- Transparency and trust
- Educational value
- Long-term viability

### **Why Curated?**
- Storage is finite
- Signal > noise
- Quality > quantity
- Maintained code > abandoned code
- Documented > undocumented

---

## Success Metrics

### **Technical Validation**
- ✅ Boots on 95%+ of x86_64 laptops from 2010+
- ✅ Build success rate >99% for included packages
- ✅ Boot time <2 minutes
- ✅ Software build time reasonable (<30 min for large packages)

### **Usability Validation**
- ✅ Non-technical user can navigate interface
- ✅ "Quick start" gets user productive in <1 hour
- ✅ Documentation answers common questions
- ✅ Search finds relevant software 90%+ of time

### **Preservation Validation**
- ✅ Bit-rot detection and prevention
- ✅ Cryptographic verification of integrity
- ✅ Multiple backup procedures documented
- ✅ Drive creation is reproducible

---

## Marketing Narrative

**Tagline**: *"Civilization.iso - A bootable backup of computational knowledge"*

**Elevator Pitch**:
"We've created a USB drive that boots into a complete scientific computing environment with thousands of preserved programs, all their source code, and the tools to rebuild information infrastructure from scratch. It's designed for the worst case, but useful today for reproducible science, offline work, and digital preservation. Think of it as a seed vault for software—hope you never need it, but grateful it exists."

**Why This Matters Now** (for social media):
- Reproducibility crisis needs solutions
- Software decays faster than we acknowledge
- Climate/civilization risks aren't zero
- Digital preservation is underfunded
- Right to repair needs code too

---

## Next Steps to Build This

1. **Immediate** (this week):
   - Set up NixOS development environment
   - Prototype bootable USB with persistence
   - Create basic menu system
   - Write architecture documentation

2. **Short-term** (next month):
   - Build offline nixpkgs integration
   - Package first 20 essential tools
   - Create software catalog database schema
   - User testing plan

3. **Medium-term** (3 months):
   - Complete "Essential 100" package curation
   - Documentation system implementation
   - Hardware compatibility testing
   - Community preview release

Would you like me to:
1. **Create the technical implementation guide** (detailed NixOS configuration, scripts, build process)?
2. **Design the catalog database schema** (how we'll store/search software metadata)?
3. **Draft the social media launch campaign** (announcing this concept)?
4. **Write the full "Read Me First" guide** (the survivor-facing documentation)?
