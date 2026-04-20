"use client";
import React, { useState, useEffect } from "react";

export default function Portfolio() {
  const [dark, setDark] = useState(false);
  const [typedText, setTypedText] = useState("");

  const fullText = "Data Analyst & Python Developer";

  useEffect(() => {
    let i = 0;
    const interval = setInterval(() => {
      setTypedText(fullText.slice(0, i));
      i++;
      if (i > fullText.length) clearInterval(interval);
    }, 80);
    return () => clearInterval(interval);
  }, []);

  const skills = [
    { name: "HTML", icon: "🌐" },
    { name: "CSS", icon: "🎨" },
    { name: "JavaScript", icon: "⚡" },
    { name: "GitHub", icon: "🐙" },
    { name: "Python", icon: "🐍" },
    { name: "Python Scripting", icon: "💻" },
    { name: "Automation", icon: "⚙️" },
    { name: "Booting", icon: "🖥️" },
    { name: "Data Analysis", icon: "📊" },
    { name: "Pandas", icon: "🐼" },
    { name: "NumPy", icon: "🔢" },
    { name: "Matplotlib", icon: "📉" },
    { name: "Machine Learning", icon: "🤖" },
    { name: "SQL", icon: "🗄️" },
    { name: "Excel", icon: "📗" },
    { name: "Power BI", icon: "📊" },
    { name: "Tableau", icon: "📈" },
    { name: "Business Intelligence", icon: "📊" }
  ];

  const projects = [
    {
      title: "Sales data analysis Dashboard",
      desc: " dashboard for business insights",
      github: "https://lnkd.in/dPRYWahg",
      live: "https://lnkd.in/dhhCxSSs"
    },
    {
      title: "CGPA CALCULATOR",
      desc: "Calculate GPA and CGPA on the basis of marks ",
      github: "https://lnkd.in/dnJhBTsD",
      live: "https://cgpa-calculatorapp-for-pakistani-and-indian-student.streamlit.app/"
    },
    {
      title: "HILL CIPHER ENCRYPTION AND DECRYPTION",
      desc: "encrypt and decrypt the text",
      github: "https://lnkd.in/dHY2CMnR",
      live: "[https://lnkd.in/dbkeZkD4]"
    }
  ];

  return (
    <div className={dark ? "dark" : ""}>
      <div className="min-h-screen text-gray-800 dark:text-white scroll-smooth transition-all duration-500">

        {/* NAVBAR */}
        <nav className="fixed top-0 w-full z-50 bg-white/80 dark:bg-gray-900/80 backdrop-blur border-b border-gray-200 dark:border-gray-800">
          <div className="max-w-6xl mx-auto flex justify-between items-center px-6 py-4">
            <h1 className="text-xl font-bold">Zabih Ullah</h1>
            <div className="flex gap-5 items-center">
              {['about','skills','projects','contact'].map((item)=> (
                <a key={item} href={`#${item}`} className="text-sm hover:text-blue-500 capitalize transition">
                  {item}
                </a>
              ))}

              <button
                onClick={()=>setDark(!dark)}
                className="px-3 py-1 bg-gray-200 dark:bg-gray-800 rounded-full"
              >
                {dark ? "☀️" : "🌙"}
              </button>
            </div>
          </div>
        </nav>

        {/* HERO */}
        <section className="pt-32 pb-24 text-center px-6 bg-gradient-to-r from-gray-900 via-gray-800 to-black text-white transition-all duration-700">
          <h2 className="text-4xl md:text-6xl font-extrabold">
            {typedText}<span className="animate-pulse">|</span>
          </h2>

          <p className="mt-6 text-gray-300 max-w-2xl mx-auto">
            I transform raw data into meaningful insights using Python, Machine Learning, and Business Intelligence tools.
          </p>

          <div className="mt-8 flex justify-center gap-4 flex-wrap">
            <a href="#projects" className="px-6 py-3 bg-white text-black rounded-xl hover:scale-105 transition">
              View Projects
            </a>
            <a href="#contact" className="px-6 py-3 border border-white text-white rounded-xl hover:scale-105 transition">
              Contact Me
            </a>
          </div>
        </section>

        {/* ABOUT */}
        <section id="about" className="py-24 bg-gray-100 dark:bg-gray-900">
          <div className="max-w-6xl mx-auto grid md:grid-cols-2 gap-12 px-6 items-center">

            <img
              src="https://images.unsplash.com/photo-1522075469751-3a6694fb2f61"
              className="rounded-3xl shadow-xl"
              alt="profile"
            />

            <div>
              <h3 className="text-3xl font-bold mb-4">About Me</h3>

              <p className="text-gray-600 dark:text-gray-300 mb-4 leading-relaxed">
                I am Zabih Ullah, a passionate Data Analyst and Python Developer focused on turning raw data into meaningful insights and real-world solutions.
              </p>

              <p className="text-gray-600 dark:text-gray-300 mb-6 leading-relaxed">
                Skilled in Data Science, Automation, Machine Learning, and Business Intelligence using modern tools like Python, Pandas, NumPy, Power BI, and Tableau.
              </p>

              <div className="grid grid-cols-2 gap-4">
                <div className="p-4 bg-white dark:bg-gray-800 rounded-xl border">
                  <p className="font-bold">15+ Projects</p>
                  <p className="text-sm text-gray-500">Completed Work</p>
                </div>
                <div className="p-4 bg-white dark:bg-gray-800 rounded-xl border">
                  <p className="font-bold">Data Focus</p>
                  <p className="text-sm text-gray-500">Analytics & BI</p>
                </div>
              </div>
            </div>

          </div>
        </section>

        {/* SKILLS */}
        <section id="skills" className="py-24 bg-white dark:bg-gray-950">
          <h3 className="text-center text-3xl font-bold mb-12">Skills</h3>

          <div className="max-w-6xl mx-auto grid grid-cols-2 md:grid-cols-4 gap-6 px-6">
            {skills.map((skill)=> (
              <div
                key={skill.name}
                className="bg-gray-50 dark:bg-gray-900 border rounded-2xl p-5 text-center hover:-translate-y-1 hover:shadow-md transition"
              >
                <div className="text-2xl">{skill.icon}</div>
                <div className="text-sm font-medium mt-2">{skill.name}</div>
              </div>
            ))}
          </div>
        </section>

        {/* PROJECTS */}
        <section id="projects" className="py-24 bg-gray-100 dark:bg-gray-900">
          <h3 className="text-center text-3xl font-bold mb-12">Projects</h3>

          <div className="max-w-6xl mx-auto grid md:grid-cols-3 gap-8 px-6">
            {projects.map((p)=> (
              <div
                key={p.title}
                className="bg-white dark:bg-gray-800 rounded-3xl shadow-xl p-5 hover:-translate-y-2 transition"
              >
                <h4 className="font-bold text-lg">{p.title}</h4>
                <p className="text-sm text-gray-500 mt-2">{p.desc}</p>

                <div className="flex gap-3 mt-4">
                  <a className="flex-1 text-center py-2 bg-black text-white rounded-xl" href={p.github} target="_blank">GitHub</a>
                  <a className="flex-1 text-center py-2 border rounded-xl" href={p.live} target="_blank">Live</a>
                </div>
              </div>
            ))}
          </div>
        </section>

        {/* CONTACT */}
        <section id="contact" className="py-24 text-center bg-black text-white">
          <h3 className="text-3xl font-bold mb-3">Contact Me</h3>
          <p className="text-gray-400 mb-10">Let’s connect for opportunities, collaborations, or freelance work</p>

          <div className="max-w-4xl mx-auto grid md:grid-cols-3 gap-6 px-6">
            {/* Email */}
            <div className="bg-gray-900 border border-gray-800 rounded-2xl p-6 hover:-translate-y-1 transition">
              <div className="text-2xl mb-2">📧</div>
              <p className="font-semibold">Email</p>
              <a href="mailto:zabih@example.com" className="text-gray-300 text-sm hover:text-white transition">
                zabih5211@gmail.com
              </a>
            </div>

            {/* LinkedIn */}
            <div className="bg-gray-900 border border-gray-800 rounded-2xl p-6 hover:-translate-y-1 transition">
              <div className="text-2xl mb-2">🔗</div>
              <p className="font-semibold">LinkedIn</p>
              <a href="https://www.linkedin.com/in/zabih-ullah-61744a29b/" target="_blank" className="text-gray-300 text-sm hover:text-white transition">
                View Profile
              </a>
            </div>

            {/* WhatsApp */}
            <div className="bg-gray-900 border border-gray-800 rounded-2xl p-6 hover:-translate-y-1 transition">
              <div className="text-2xl mb-2">💬</div>
              <p className="font-semibold">WhatsApp</p>
              <a href="https://wa.me/923085119240" target="_blank" className="text-green-400 text-sm hover:text-green-300 transition">
                Chat Now
              </a>
            </div>
          </div>

          <div className="mt-10">
            <a
              href="https://wa.me/923085119240"
              className="inline-block bg-green-500 px-8 py-3 rounded-xl font-medium hover:scale-105 transition"
            >
              Hire Me on WhatsApp
            </a>
          </div>
        </section>

        <footer className="py-6 text-center text-sm border-t">
          © 2026 Zabih Ullah
        </footer>

      </div>
    </div>
  );
}
