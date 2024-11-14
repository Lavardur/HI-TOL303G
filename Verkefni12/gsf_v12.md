# Verkefni — Assignment

## Gradescope verkefni — Gradescope assignment

### Spurningarnar sem svara skal eru eftirfarandi:

1. Sýnið almenna formúlu fyrir svartímann í þessum kringumstæðum sem fall af breytunum:
    - Biðtími milli gagnagrunns og vinnslu: \( t_g \)
    - Bandbreidd milli gagnagrunns og vinnslu: \( b_g \)
    - Biðtími milli vinnslu og viðmóts: \( t_v \)
    - Bandbreidd milli vinnslu og viðmóts: \( b_v \)

    Einfaldið formúluna eins og unnt er.

   \[
   r = 2 \times \left( t_v + \frac{1000}{b_v} \right) + 1000 \times \left( t_g + \frac{110}{b_g} \right) + 100
   \]

2. Sýnið einnig almenna formúlu fyrir tímann sem líður frá því að viðmótið byrjar að senda upplýsingar þar til vinnslan byrjar að senda upplýsingar til gagnagrunnsins. Einfaldið formúluna eins og unnt er.

   \[
   T_{\text{vv}} = t_v + \frac{1000}{b_v}
   \]

3. Sýnið einnig almenna formúlu fyrir tímann sem líður frá því að vinnsla byrjar að senda upplýsingar til gagnagrunnsins þar til vinnslan fær sínar síðustu upplýsingar frá gagnagrunninum. Einfaldið formúluna eins og unnt er.

   \[
   T_{\text{vg}} = 1000 \times \left( t_g + \frac{110}{b_g} \right)
   \]

4. Sýnið eftirfarandi niðurstöður.

    a) Hver er svartíminn í þriggja laga kerfinu fyrir fyrirspurn sem hefur ofangreind skref? Svartíminn er sá tími sem líður frá því að viðmótið byrjar að senda upplýsingar til vinnslunnar þar til allar upplýsingar í svarinu hafa borist til viðmótsins. Sýnið útreikninga og hafið réttar einingar á öllum stærðum, til dæmis s eða ms fyrir tíma, Gbæti/s eða bæti/s fyrir bandbreidd, bæti fyrir gagnamagn, o.s.frv.

    \[
    r_{\text{3}} = 2 \times (10 + \frac{1000}{10 \times 10^6}) + 1000 \times (0.5 + \frac{110}{20 \times 10^9}) + 100
    \]

    sem er kringum 620 ms

    b) Hver er svartíminn í tveggja laga kerfinu fyrir fyrirspurn sem hefur ofangreind skref? Svartíminn er sá tími sem líður frá því að viðmótið byrjar að senda upplýsingar til vinnslunnar þar til allar upplýsingar í svarinu hafa borist til viðmótsins. Sýnið útreikninga og hafið réttar einingar á öllum stærðum, til dæmis s eða ms fyrir tíma, Gbæti/s eða bæti/s fyrir bandbreidd, o.s.frv.

    \[
    r_{\text{2}} = 2 \times (0 + \frac{1000}{\infty}) + 1000 \times (10 + \frac{110}{10 \times 10^6}) + 100
    \]

    sem er kringum 10.111 ms
