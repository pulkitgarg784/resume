#set page(
  paper: "us-letter",
  margin: (top: 0.38in, bottom: 0.38in, left: 0.52in, right: 0.52in),
)

#set text(
  font: "New Computer Modern",
  size: 10.8pt,
)

#set par(
  justify: false,
  leading: 0.65em,
  spacing: 0.15em,
)

#let section(title) = [
  #v(0.85em, weak: false)
  #text(weight: "bold", size: 11.6pt)[#title]
  #line(length: 100%, stroke: 0.5pt)
  #v(0.28em, weak: false)
]

#let bullets(items) = {
  list(
    marker: [•],
    indent: 0.5em,
    body-indent: 0.15em,
    spacing: 0.18em,
    ..items,
  )
}

#let exp(title, company, dates, items) = [
  #grid(
    columns: (1fr, auto),
    gutter: 0.4em,
    [#text(weight: "bold")[#title] — #company],
    [#dates],
  )
  #bullets(items)
  #v(0.24em, weak: false)
]

#let project(title, tech, description, url: none) = [
  #grid(
    columns: (1fr, auto),
    gutter: 0.3em,
    [#text(weight: "bold")[#title] #text(style: "italic")[#tech]],
    [#if url != none { link(url, "GitHub") }],
  )
  #description \
  #v(0.16em, weak: false)
]

#align(center)[
  #text(size: 18pt, weight: "bold")[Pulkit Garg]
  #v(0.12em)
  pgarg\@uwaterloo.ca  ·  +1 (548) 255-2374  ·  linkedin.com/in/pulkitgarg784  ·  pulkit.dev
]

#section("EDUCATION")

#grid(
  columns: (1fr, auto),
  gutter: 0.4em,
  [
    #text(weight: "bold")[University of Waterloo] — Bachelor of Computer Science \
    Minor in Cognitive Science · Fine Arts Specialization · President's Scholarship of Distinction
  ],
  [Sep 2022 – Present],
)

#section("TECHNICAL SKILLS")

*Languages:* C++, C\#, Python, Java, Kotlin, GLSL, HLSL \
*Graphics & Systems:* Vulkan, OpenGL, GPU Programming, Compute Shaders, Multithreading, Real-Time Rendering \
*Tools & Frameworks:* Git, CI/CD, Unit & Integration Testing, Unity, Unreal Engine, React Native, Firebase

#section("EXPERIENCE")

#exp(
  "Graphics Programming Intern", "SideFX", "Jan 2026 – Present",
  (
    [Implemented core 3D viewport functionality in Vulkan and built multiple Vulkan libraries with custom GLSL shaders, achieving >20× polygon reduction across instances and significant draw-call reduction.],
    [Designed and built a GPU-based Vulkan text-rendering pipeline from scratch using bitmap fonts and texture atlases; implemented skyline bin-packing and extended the system to support TrueType font rasterization.],
    [Worked directly on performance-critical, cross-platform rendering code used by professional VFX artists in Houdini.]
  )
)

#exp(
  "3D Software Development R&D Intern", "SideFX", "May 2025 – Sep 2025",
  (
    [Improved data import systems by enabling high-precision numerical parsing and processing for scientific and simulation workflows.],
    [Reworked mesh decimation algorithms to achieve >10× polygon reduction while preserving topological detail and UV/texture maps.],
    [Designed and implemented a real-time geometry editing tool based on the Push-Pull algorithm, using custom spatial acceleration structures to reduce user interaction complexity by up to 12× and increase modeling throughput by ~30%.]
  )
)

#exp(
  "Virtual Reality Developer", "Liftwerx", "Sep 2024 – Dec 2024",
  (
    [Developed VR training modules for wind turbine technicians using Unity, Unreal Engine, and Blender.],
    [Led end-to-end development including scripting, debugging, and deployment on AWS S3 and Meta Quest headsets using a custom Android launcher.],
    [Created a custom Android plugin enabling centralized data synchronization and real-time reporting on technician performance.]
  )
)

#exp(
  "Software Developer Intern — OS & Graphics", "Ford Motor Company of Canada", "Jan 2024 – Apr 2024",
  (
    [Contributed to Android Automotive OS by integrating critical vehicle systems including lighting and climate using C++ and Kotlin.],
    [Reduced memory leaks by refactoring static companion objects, improving OS stability.],
    [Reduced service load times by up to 70% by implementing multithreaded services.]
  )
)

#grid(
  columns: (1fr, auto),
  gutter: 0.4em,
  [#text(weight: "bold")[Software Developer Intern — 3D Visualization] — Ford Motor Company of Canada],
  [May 2023 – Sep 2023],
)
#bullets((
  [Built real-time 3D visualization tools for next-generation Ford vehicles using Google Filament; implemented asynchronous asset loading to improve load times, graphical fidelity, and user experience.],
))

#section("PROJECTS")

#project(
  "FluidSim", "— C++, Vulkan, GLSL",
  [Highly optimized real-time GPU particle-based fluid simulation with photorealistic rendering, running on a custom-built Vulkan graphics engine.],
  url: "https://github.com/pulkitgarg784/FluidSim"
)

#project(
  "Voksel", "— C#, Unity, HLSL",
  [Cross-platform open-source 3D modeling tool for voxel-based game asset creation.],
  url: "https://github.com/pulkitgarg784"
)

#project(
  "Pashu", "— Unity, C#",
  [Real-time strategy game about running an animal shelter, featuring animal AI, resource management, and a time-of-day system; featured in the GitHub Education program portfolio.],
)

#project(
  "SpaceLine", "— Unity, SteamVR",
  [Physics-based space sandbox with real-time gravity and climate simulation, plus a VR mode built with SteamVR; won NASA Space Apps India and was selected as a global finalist.],
)

#section("AWARDS")

Hawk Hacks 2023 — Laurier University · Hack Western 2022 — Best Gaming Hack \
NASA SpaceApps 2019 — National Winner & Global Finalist among 30,000 participants · AngelHack 2019 — AWS Award