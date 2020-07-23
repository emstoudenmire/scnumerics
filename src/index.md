# SC Numerics

In the spring of 2020, a few of us got together to assess the state-of-the-art in the field of numerical approaches 
of strongly correlated systems. We quickly realized that even though there are many good texts out there, 
they all speak different languages. This applied to our interactions as well, we as computational physicists 
wanted to understand each other better but realized we were not aware of progresses in each other's respective fields.
In addition, we wanted our students to have a broader understanding of this area of physics.

This motivated us to put together a book about numerical methods for strongly correlated electron systems. It is targeted 
at a young graduate student entering this field. It can not be emphasized enough, but we say very passionately from our experience: 
Computational physics is not only about making code go faster - it really demands new physical insights that will help 
solve computers solve some of the most outstanding set of problems of our generation involving strongly correlated systems. 
These systems are at the heart of high Tc superconductivity, magnetism and quantum Hall physics. We wish to expose 
the young student to what the frontiers of this field are, and where they can make an impact. We are hopeful that 
our enthusiasm and passion for the subject will simulate breakthroughs in this field.

And finally, even if computational physics is not your primary area of interest, we hope you can still get the basic ideas 
that are involved in each method. In short, we hope you can enjoy it as much as we did while putting it together. 
Since this book remains very much under development, your feedback will be greatly valued. 
(Drop an email to hitesh.changlani at gmail.com)

With best wishes, 

Hitesh Changlani, James LeBlanc, Hao Shi, Miles Stoudenmire, Norman Tubman

- Configuration Interaction, also known as exact diagonalization - full and selected (CI)
  - basic idea of solving Schrodinger equation in a discrete basis
  - power method, and its modifications - what is the basic mathematical/physical principle 
  - care with signs, fermions, bosons, spins and second quantization
  - container - how are the wavefunctions stored in practice
  - other useful practical concepts - hashing/Lin tables 
  - correlation functions 
  - state of the art, and what is the next frontier

- [[Matrix Product States and DMRG|mps_dmrg]]

  - For low dimensional systems that the DMRG method has made major inroads. The key ideas are embedded in important modifications of real space renormalization. 
  - main idea of renormalization and White's insight
  - the modern formulation in terms of matrix product states
  - container - how are the wavefunctions stored in practice
  - correlation functions 
  - connections to entanglement 
  - state of the art and what is the next frontier (excited states, finite temperature ?)
  
- Quantum Monte Carlo (QMC)
  - what can one do when the wavefunction can not be stored, main idea of stochastic solutions and quantum-classical mappings
  - sign problem
  - container - how are the wavefunctions stored in practice - walkers and determinants
  - correlation functions 
  - state of the art and what is the next frontier (excited states, finite temperature ?)
  

- Dynamical Mean Field Theory (DMFT)
  - mean field theory and insights from an Ising model
  - basic principle, self consistency
  - container - how are the Green's functions stored
  - practical tips
  - state of the art and what is the next frontier
