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

#let entry-gap = 0.30em
#let entry-leading = 0.4em

#let section(title) = [
  #v(0.85em, weak: false)
  #text(weight: "bold", size: 11.6pt)[#title]
  #line(length: 100%, stroke: 0.5pt)
  #v(0.28em, weak: false)
]

#let bullets(items) = {
  set par(leading: entry-leading)
  list(
    marker: [•],
    indent: 0.5em,
    body-indent: 0.15em,
    spacing: 0.5em,
    ..items,
  )
}

#let exp(title, company, dates, items) = [
  #grid(
    columns: (1fr, auto),
    gutter: 0.4em,
    [#text(weight: "bold")[#title] - #company],
    [#text(style: "italic", size: 10pt)[#dates]],
  )
  #v(entry-gap, weak: false)
  #bullets(items)
  #v(0.24em, weak: false)
]

#let project(title, tech, description, url: none) = [
  #grid(
    columns: (1fr, auto),
    gutter: 0.3em,
    [#text(weight: "bold")[#title] - #tech],
    [#if url != none {
      text(style: "italic", size: 10pt)[#link(url, "GitHub")]
    }],
  )
  #v(entry-gap, weak: false)
  #set par(leading: entry-leading)
  #description
  #v(0.16em, weak: false)
]

#align(center)[
  #text(size: 18pt, weight: "bold")[Pulkit Garg]
  #v(0.12em)
  pgarg\@uwaterloo.ca  ·  (548) 255-2374  ·  linkedin.com/in/pulkitgarg784  ·  pulkit.dev
]

#section("EDUCATION")

#grid(
  columns: (1fr, auto),
  gutter: 0.4em,
  [
    #text(weight: "bold")[University of Waterloo] - Bachelor of Computer Science \
    Cognitive Science Minor · Fine Arts Specialization · President's Scholarship of Distinction
  ],
   [#text(style: "italic", size: 10pt)[Sep 2022 - Present]],
)

#section("TECHNICAL SKILLS")

*Languages:* C++, C\#, Python, Java, Kotlin, GLSL, HLSL \
*Graphics & Systems:* Vulkan, OpenGL, GPU/Compute Programming, Multithreading, Performance Optimization, Real-Time Rendering \
*Tools & Frameworks:* Git, CMake, Android SDK, Unity, Unreal Engine, React Native, Firebase

#section("EXPERIENCE")

#exp(
  "Graphics Programming Intern", "SideFX", "Jan 2026 - Present",
  (
    [Developed performance-critical, cross-platform Vulkan viewport systems for Houdini, creating reusable rendering libraries and custom GLSL shader infrastructure used by professional VFX artists.],
    [Optimized instanced-scene rendering, achieving more than 20x polygon reduction across instances and significantly reducing draw calls.],
    [Built a GPU-based Vulkan text-rendering pipeline from scratch using bitmap fonts and texture atlases; implemented skyline bin-packing and extended the pipeline for TrueType font rasterization.]
  )
)

#exp(
  "3D Software Development R&D Intern", "SideFX", "May 2025 - Sep 2025",
  (
    [Enhanced data-import systems with high-precision numerical parsing and processing for scientific and simulation workflows.],
    [Reworked mesh-decimation algorithms to achieve more than 10x polygon reduction while preserving topology and UV/texture maps.],
    [Designed and implemented a real-time Push-Pull geometry-editing tool with custom spatial acceleration structures, reducing interaction complexity by up to 12x and increasing modeling throughput by 30%.]
  )
)

#exp(
  "Virtual Reality Developer", "Liftwerx", "Sep 2024 - Dec 2024",
  (
    [Developed VR training modules for wind-turbine technicians using Unity, Unreal Engine, and Blender.],
    [Owned scripting, debugging, and deployment to Meta Quest headsets through a custom Android launcher and AWS S3 distribution pipeline.],
    [Created a custom Android plugin for centralized data synchronization and real-time technician-performance reporting.]
  )
)

#exp(
  "Software Developer Intern - OS & Graphics", "Ford Motor Company of Canada", "Jan 2024 - Apr 2024",
  (
    [Integrated lighting and climate vehicle systems into Android Automotive OS using C++ and Kotlin.],
    [Reduced service load times by up to 70% by implementing multithreaded services; reduced memory usage and addressed memory leaks.]
  )
)

#exp(
  "Software Developer Intern - 3D Visualization", "Ford Motor Company of Canada", "May 2023 - Sep 2023",
  (
    [Built real-time 3D visualization tools for next-generation Ford vehicles with Google Filament; implemented asynchronous asset loading to improve load time, graphical fidelity, and user experience.],
  )
)

#section("PROJECTS")

#project(
  "FluidSim", "C++, Vulkan, GLSL",
  [Built a Vulkan application that simulates water with smoothed particle hydrodynamics (SPH); fluid dynamics, neighbor search, and whitewater in GPU compute shaders. Implemented a spatial hash grid for neighbor queries and screen-space surface reconstruction with reflection, refraction, depth absorption, and shadows.],
  url: "https://github.com/pulkitgarg784/FluidSim"
)

#project(
  "Voksel", "C#, HLSL",
  [Built a cross-platform, open-source 3D modeling tool for rapidly creating low-poly game and level-design assets. Implemented import/save, FBX/OBJ export, configurable color palettes, and Unity/Blender control presets.],
  url: "https://github.com/pulkitgarg784/Voksel"
)

#project(
  "SpaceLine", "Unity, SteamVR",
  [Built a physics-based space sandbox with real-time gravity and climate simulation; added a SteamVR mode for immersive exploration. Won NASA Space Apps India and was selected as a global finalist.],
  url: "https://github.com/pulkitgarg784/SpaceLine_NasaSpaceapps"
)

#project(
  "Prepto", "React Native, Firebase",
  [Built a cross-platform app for real-time competitive test preparation with Firebase authentication and matchmaking. Synced users, questions, games, and time-stamped responses in Firebase to support real-time game state.],
  url: "https://github.com/prepto/app"
)