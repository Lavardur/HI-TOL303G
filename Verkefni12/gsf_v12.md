# Verkefni — Assignment

## Gradiance verkefni — Gradiance assignment

Finnið Gradiance verkefni á venjulegum stað, verkefni vikunnar heita „Verkefni 12“.  
Find the Gradiance assignment in the usual place, the week's assignment is named “Verkefni 12”.

## Gradescope verkefni — Gradescope assignment

### Íslenska

Gerið ráð fyrir þriggja laga upplýsingakerfi þar sem samskiptahraði milli laga er eftirfarandi:

- Biðtími (latency) milli gagnagrunns og vinnslu: 0.5 millisekúnda.
- Bandbreidd (bandwidth) milli gagnagrunns og vinnslu: 20 Gígabæti á sekúndu.
- Biðtími milli vinnslu og viðmóts: 10 millisekúndur.
- Bandbreidd milli vinnslu og viðmóts: 10 Megabæti á sekúndu.

Athugið að við viljum nota venjulegu eðlisfræðilegu merkinguna á Mega og Gíga, þannig að Megabæti er 10^6 bæti og Gígabæti er 10^9 bæti.

Gerið einnig ráð fyrir öðru tveggja laga upplýsingakerfi þar sem samskiptahraði milli laga er eftirfarandi:

- Biðtími milli gagnagrunns og vinnslu: 10 millisekúndur.
- Bandbreidd milli gagnagrunns og vinnslu: 10 Megabæti á sekúndu.
- Biðtími milli vinnslu og viðmóts: 0.
- Bandbreidd milli vinnslu og viðmóts: ∞

Þegar um biðtíma er að ræða skulum við reikna með að ef biðtími milli A og B er t þá tekur það tíma t/2 fyrir skeyti frá A til B að byrja að berast til B eftir að A byrjar að senda það, og sama tíma t/2 fyrir skeyti frá B til A. Biðtíminn hér er því hringrásartími (round-trip delay time). Gerum ráð fyrir eftirfarandi verklagi í einhverjum verkþætti sem unninn er í þriggja laga eða tveggja laga upplýsingakerfi.

1. Viðmótið sendir 1000 bæti til vinnslunnar. Þessi 1000 bæti skilgreina þá vinnslu sem vinna skal.
2. Vinnslan byrjar samstundis (þegar öll 1000 bætin eru komin) að senda runu skipana til gagnagrunnsins. Samtals eru það 1000 skipanir sem hver um sig eru 100 bæti. Gagnagrunnurinn bregst samstundis við hverri skipun (þegar hún er öll komin til gagnagrunnsins) og sendir 10 bæti til baka til vinnslunnar, sem sendir næstu skipun um leið og svar hefur að fullu borist við fyrri skipun.
3. Þegar vinnslan er búin að fá öll 1000 svör frá gagnagrunninum tekur það vinnsluna 100 millisekúndur að reikna niðurstöðu sem er 1000 bæti.
4. Þegar niðurstaðan er tilbúin sendir vinnslan hana til viðmótsins.

### Spurningarnar sem svara skal eru eftirfarandi:

1. Sýnið almenna formúlu fyrir svartímann í þessum kringumstæðum sem fall af breytunum:
    - Biðtími milli gagnagrunns og vinnslu: tg
    - Bandbreidd milli gagnagrunns og vinnslu: bg
    - Biðtími milli vinnslu og viðmóts: tv
    - Bandbreidd milli vinnslu og viðmóts: bv

    Einfaldið formúluna eins og unnt er.

2. Sýnið einnig almenna formúlu fyrir tímann sem líður frá því að viðmótið byrjar að senda upplýsingar þar til vinnslan byrjar að senda upplýsingar til gagnagrunnsins. Einfaldið formúluna eins og unnt er.

3. Sýnið einnig almenna formúlu fyrir tímann sem líður frá því að vinnsla byrjar að senda upplýsingar til gagnagrunnsins þar til vinnslan fær sínar síðustu upplýsingar frá gagnagrunninum. Einfaldið formúluna eins og unnt er.

4. Sýnið eftirfarandi niðurstöður.
    a) Hver er svartíminn í þriggja laga kerfinu fyrir fyrirspurn sem hefur ofangreind skref? Svartíminn er sá tími sem líður frá því að viðmótið byrjar að senda upplýsingar til vinnslunnar þar til allar upplýsingar í svarinu hafa borist til viðmótsins. Sýnið útreikninga og hafið réttar einingar á öllum stærðum, til dæmis s eða ms fyrir tíma, Gbæti/s eða bæti/s fyrir bandbreidd, bæti fyrir gagnamagn, o.s.frv.
    b) Hver er svartíminn í tveggja laga kerfinu fyrir fyrirspurn sem hefur ofangreind skref? Svartíminn er sá tími sem líður frá því að viðmótið byrjar að senda upplýsingar til vinnslunnar þar til allar upplýsingar í svarinu hafa borist til viðmótsins. Sýnið útreikninga og hafið réttar einingar á öllum stærðum, til dæmis s eða ms fyrir tíma, Gbæti/s eða bæti/s fyrir bandbreidd, o.s.frv.
