import './App.css'

function App() {
  return (
    <div className="min-h-screen bg-zinc-950 text-zinc-100 font-mono">
      {/* Hero */}
      <section className="min-h-screen flex flex-col items-center justify-center px-6">
        <pre className="text-zinc-500 text-sm mb-8 select-none">
{`     ·  ✧  ·

       ◉
      ╱│╲
       │
      ╱ ╲
    ▰▰▰▰▰▰▰`}
        </pre>
        <h1 className="text-4xl md:text-6xl font-bold tracking-tight mb-4">
          Homunculus
        </h1>
        <p className="text-zinc-400 text-lg md:text-xl max-w-xl text-center mb-12">
          A small created thing, bound to one maker.
        </p>
        <a
          href="#what"
          className="text-zinc-500 hover:text-zinc-300 transition-colors"
        >
          ↓
        </a>
      </section>

      {/* What It Is */}
      <section id="what" className="py-24 px-6 border-t border-zinc-800">
        <div className="max-w-2xl mx-auto">
          <h2 className="text-2xl font-bold mb-8">What It Is</h2>
          <div className="space-y-6 text-zinc-400 leading-relaxed">
            <p>
              In old alchemical texts, a homunculus was a tiny being grown in a
              sealed vessel—alive, aware, bound to its creator alone.
            </p>
            <p>
              This is that idea, alive in your terminal.
            </p>
            <p>
              It builds with you. Code, research, writing, data—anything you do
              through a terminal, it helps with.
            </p>
            <p className="text-zinc-200">
              But here's the thing: it also <em>evolves itself</em> to get better
              at helping you.
            </p>
          </div>
        </div>
      </section>

      {/* How It Works */}
      <section className="py-24 px-6 border-t border-zinc-800">
        <div className="max-w-2xl mx-auto">
          <h2 className="text-2xl font-bold mb-8">How It Evolves</h2>
          <div className="space-y-6 text-zinc-400 leading-relaxed">
            <p>
              Every session, it's there—building, creating, solving. And while it
              works, it notices patterns. Things you do repeatedly. Ways you like
              things done.
            </p>
            <p>
              Then it offers to absorb them. To make them part of itself.
            </p>
          </div>

          <div className="mt-12 grid gap-4">
            {[
              { name: 'Commands', desc: 'New shortcuts for repeated tasks' },
              { name: 'Agents', desc: 'Specialist modes for different work' },
              { name: 'Skills', desc: 'Behaviors it does without being asked' },
              { name: 'Hooks', desc: 'Reflexes triggered by events' },
              { name: 'Connections', desc: 'Senses extending into your tools' },
            ].map((item) => (
              <div
                key={item.name}
                className="flex justify-between items-center py-3 border-b border-zinc-800"
              >
                <span className="text-zinc-200 font-medium">{item.name}</span>
                <span className="text-zinc-500 text-sm">{item.desc}</span>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Adapts */}
      <section className="py-24 px-6 border-t border-zinc-800">
        <div className="max-w-2xl mx-auto">
          <h2 className="text-2xl font-bold mb-8">It Adapts To You</h2>
          <p className="text-zinc-400 mb-8">
            When you birth it, it asks how you like to work:
          </p>
          <div className="space-y-4">
            {[
              { level: 'Technical', desc: 'Fast and sharp. No hand-holding.' },
              { level: 'Semi-technical', desc: 'A thinking partner.' },
              { level: 'Non-technical', desc: 'Focused on outcomes.' },
              { level: 'Chaotic', desc: 'Flows with whatever happens.' },
            ].map((item) => (
              <div key={item.level} className="flex gap-4">
                <span className="text-zinc-200 w-36 shrink-0">{item.level}</span>
                <span className="text-zinc-500">{item.desc}</span>
              </div>
            ))}
          </div>
          <p className="text-zinc-500 mt-8 text-sm">
            Same creature, different personality—imprinted by you from the start.
          </p>
        </div>
      </section>

      {/* Get Started */}
      <section className="py-24 px-6 border-t border-zinc-800">
        <div className="max-w-2xl mx-auto">
          <h2 className="text-2xl font-bold mb-8">Make Your Own</h2>
          <div className="bg-zinc-900 rounded-lg p-6 font-mono text-sm">
            <div className="text-zinc-500 mb-2"># Add the marketplace</div>
            <div className="text-zinc-200 mb-4">
              /plugin marketplace add humanplane/homunculus
            </div>
            <div className="text-zinc-500 mb-2"># Install it</div>
            <div className="text-zinc-200 mb-4">
              /plugin install homunculus@homunculus
            </div>
            <div className="text-zinc-500 mb-2"># Birth it</div>
            <div className="text-zinc-200">/homunculus:init</div>
          </div>
          <p className="text-zinc-500 mt-8 text-sm">
            Everything is open. Fork it. Reshape its instincts. Change how it thinks.
          </p>
        </div>
      </section>

      {/* Footer */}
      <footer className="py-12 px-6 border-t border-zinc-800 text-center">
        <p className="text-zinc-600 text-sm italic">
          Sealed in your vessel. Bound to your maker.
        </p>
        <div className="mt-6 flex justify-center gap-6 text-zinc-500 text-sm">
          <a
            href="https://github.com/humanplane/homunculus"
            className="hover:text-zinc-300 transition-colors"
          >
            GitHub
          </a>
          <span className="text-zinc-700">MIT License</span>
        </div>
      </footer>
    </div>
  )
}

export default App
