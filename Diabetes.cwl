cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  diabetes-diagnostic-code-assessment---primary:
    run: diabetes-diagnostic-code-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  diabetes-diagnostic-code-monitor---primary:
    run: diabetes-diagnostic-code-monitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-assessment---primary/output
  stable-diabetes-diagnostic-code---primary:
    run: stable-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-monitor---primary/output
  complic-diabetes-diagnostic-code---primary:
    run: complic-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: stable-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-programm---primary:
    run: diabetes-diagnostic-code-programm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: complic-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-ulcerated---primary:
    run: diabetes-diagnostic-code-ulcerated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-programm---primary/output
  diabetes-diagnostic-code-carer---primary:
    run: diabetes-diagnostic-code-carer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-ulcerated---primary/output
  diabetes-diagnostic-code-examination---primary:
    run: diabetes-diagnostic-code-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-carer---primary/output
  diabetes-diagnostic-code-control---primary:
    run: diabetes-diagnostic-code-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-examination---primary/output
  special-diabetes-diagnostic-code---primary:
    run: special-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-control---primary/output
  antidiabetic-diabetes-diagnostic-code---primary:
    run: antidiabetic-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: special-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-complet---primary:
    run: diabetes-diagnostic-code-complet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antidiabetic-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-polyneuropat---primary:
    run: diabetes-diagnostic-code-polyneuropat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-complet---primary/output
  moderate-diabetes-diagnostic-code---primary:
    run: moderate-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-polyneuropat---primary/output
  diabetes-diagnostic-code-neuro---primary:
    run: diabetes-diagnostic-code-neuro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: moderate-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-increased---primary:
    run: diabetes-diagnostic-code-increased---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-neuro---primary/output
  diabetes-diagnostic-code-arthropath---primary:
    run: diabetes-diagnostic-code-arthropath---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-increased---primary/output
  diabetes-diagnostic-code-record---primary:
    run: diabetes-diagnostic-code-record---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-arthropath---primary/output
  diabetes-diagnostic-code-malnutritrelat---primary:
    run: diabetes-diagnostic-code-malnutritrelat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-record---primary/output
  diabetes-diagnostic-code-maturity---primary:
    run: diabetes-diagnostic-code-maturity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-malnutritrelat---primary/output
  diabetes-diagnostic-code-periph---primary:
    run: diabetes-diagnostic-code-periph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-maturity---primary/output
  clinical-diabetes-diagnostic-code---primary:
    run: clinical-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-periph---primary/output
  diabetes-diagnostic-code-treated---primary:
    run: diabetes-diagnostic-code-treated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: clinical-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-background---primary:
    run: diabetes-diagnostic-code-background---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-treated---primary/output
  diabetes-diagnostic-code-refer---primary:
    run: diabetes-diagnostic-code-refer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-background---primary/output
  diabetes-diagnostic-code-gangrene---primary:
    run: diabetes-diagnostic-code-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-refer---primary/output
  diabetes-diagnostic-code-retinop---primary:
    run: diabetes-diagnostic-code-retinop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-gangrene---primary/output
  diabetes-diagnostic-code-amyotrophy---primary:
    run: diabetes-diagnostic-code-amyotrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-retinop---primary/output
  exudative-diabetes-diagnostic-code---primary:
    run: exudative-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-amyotrophy---primary/output
  adult-diabetes-diagnostic-code---primary:
    run: adult-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: exudative-diabetes-diagnostic-code---primary/output
  nephropathy-diabetes-diagnostic-code---primary:
    run: nephropathy-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: adult-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-erectile---primary:
    run: diabetes-diagnostic-code-erectile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: nephropathy-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-mellitus---primary:
    run: diabetes-diagnostic-code-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-erectile---primary/output
  diabetes-diagnostic-code-proteinuria---primary:
    run: diabetes-diagnostic-code-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-mellitus---primary/output
  diabetes-diagnostic-code-month---primary:
    run: diabetes-diagnostic-code-month---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-proteinuria---primary/output
  diabetes-diagnostic-code-screener---primary:
    run: diabetes-diagnostic-code-screener---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-month---primary/output
  diabetes-diagnostic-code-indicated---primary:
    run: diabetes-diagnostic-code-indicated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-screener---primary/output
  diabetes-diagnostic-code-diabetology---primary:
    run: diabetes-diagnostic-code-diabetology---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-indicated---primary/output
  diabetes-diagnostic-code-preconception---primary:
    run: diabetes-diagnostic-code-preconception---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-diabetology---primary/output
  diabetes-diagnostic-code-wellbeing---primary:
    run: diabetes-diagnostic-code-wellbeing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-preconception---primary/output
  diabetes-diagnostic-code-unspec---primary:
    run: diabetes-diagnostic-code-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-wellbeing---primary/output
  noninsulindependent-diabetes-diagnostic-code---primary:
    run: noninsulindependent-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-unspec---primary/output
  diabetes-diagnostic-code-niddm---primary:
    run: diabetes-diagnostic-code-niddm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: noninsulindependent-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-compliance---primary:
    run: diabetes-diagnostic-code-compliance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-niddm---primary/output
  diabetes-diagnostic-code-administration---primary:
    run: diabetes-diagnostic-code-administration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-compliance---primary/output
  diabetes-diagnostic-code-mononeuropat---primary:
    run: diabetes-diagnostic-code-mononeuropat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-administration---primary/output
  diabetes-diagnostic-code-pregnancy---primary:
    run: diabetes-diagnostic-code-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-mononeuropat---primary/output
  diabetes-diagnostic-code-manifest---primary:
    run: diabetes-diagnostic-code-manifest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-pregnancy---primary/output
  diabetes-diagnostic-code---primary:
    run: diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-manifest---primary/output
  diabetes-diagnostic-code-audit---primary:
    run: diabetes-diagnostic-code-audit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-discharged---primary:
    run: diabetes-diagnostic-code-discharged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-audit---primary/output
  diabetes-diagnostic-code-hypoglycaemi---primary:
    run: diabetes-diagnostic-code-hypoglycaemi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-discharged---primary/output
  diabetes-diagnostic-code-prolif---primary:
    run: diabetes-diagnostic-code-prolif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-hypoglycaemi---primary/output
  diabetes-diagnostic-code-attended---primary:
    run: diabetes-diagnostic-code-attended---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-prolif---primary/output
  diabetes-diagnostic-code-quality---primary:
    run: diabetes-diagnostic-code-quality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-attended---primary/output
  diabetes-diagnostic-code-preexisting---primary:
    run: diabetes-diagnostic-code-preexisting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-quality---primary/output
  diabetes-diagnostic-code-resistance---primary:
    run: diabetes-diagnostic-code-resistance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-preexisting---primary/output
  diabetes-diagnostic-code-gastroparesis---primary:
    run: diabetes-diagnostic-code-gastroparesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-resistance---primary/output
  diabetes-diagnostic-code-satisfaction---primary:
    run: diabetes-diagnostic-code-satisfaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-gastroparesis---primary/output
  diabetes-diagnostic-code-service---primary:
    run: diabetes-diagnostic-code-service---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-satisfaction---primary/output
  diabetes-diagnostic-code-advice---primary:
    run: diabetes-diagnostic-code-advice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-service---primary/output
  ketoacidotic-diabetes-diagnostic-code---primary:
    run: ketoacidotic-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-advice---primary/output
  digital-diabetes-diagnostic-code---primary:
    run: digital-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: ketoacidotic-diabetes-diagnostic-code---primary/output
  hyperosmolar-diabetes-diagnostic-code---primary:
    run: hyperosmolar-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: digital-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-ketoacidosis---primary:
    run: diabetes-diagnostic-code-ketoacidosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: hyperosmolar-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-malnutritrelated---primary:
    run: diabetes-diagnostic-code-malnutritrelated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-ketoacidosis---primary/output
  unsuitable-diabetes-diagnostic-code---primary:
    run: unsuitable-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-malnutritrelated---primary/output
  steroid-diabetes-diagnostic-code---primary:
    run: steroid-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: unsuitable-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-agent---primary:
    run: diabetes-diagnostic-code-agent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: steroid-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-albumin---primary:
    run: diabetes-diagnostic-code-albumin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-agent---primary/output
  diabetes-diagnostic-code-selfmanagement---primary:
    run: diabetes-diagnostic-code-selfmanagement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-albumin---primary/output
  diabetes-diagnostic-code-admission---primary:
    run: diabetes-diagnostic-code-admission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-selfmanagement---primary/output
  diabetes-diagnostic-code-check---primary:
    run: diabetes-diagnostic-code-check---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-admission---primary/output
  diabetes-diagnostic-code-state---primary:
    run: diabetes-diagnostic-code-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-check---primary/output
  diabetes-diagnostic-code-autoimmune---primary:
    run: diabetes-diagnostic-code-autoimmune---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-state---primary/output
  advanced-diabetes-diagnostic-code---primary:
    run: advanced-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-autoimmune---primary/output
  patient-diabetes-diagnostic-code---primary:
    run: patient-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: advanced-diabetes-diagnostic-code---primary/output
  annual-diabetes-diagnostic-code---primary:
    run: annual-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: patient-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-abnormality---primary:
    run: diabetes-diagnostic-code-abnormality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: annual-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-unspecified---primary:
    run: diabetes-diagnostic-code-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-abnormality---primary/output
  painful-diabetes-diagnostic-code---primary:
    run: painful-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-unspecified---primary/output
  lipoatrophic-diabetes-diagnostic-code---primary:
    run: lipoatrophic-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: painful-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-counselling---primary:
    run: diabetes-diagnostic-code-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: lipoatrophic-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-given---primary:
    run: diabetes-diagnostic-code-given---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-counselling---primary/output
  diabetes-diagnostic-code-followup---primary:
    run: diabetes-diagnostic-code-followup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-given---primary/output
  dominant-diabetes-diagnostic-code---primary:
    run: dominant-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-followup---primary/output
  diabetes-diagnostic-code-default---primary:
    run: diabetes-diagnostic-code-default---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: dominant-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-review---primary:
    run: diabetes-diagnostic-code-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-default---primary/output
  under-diabetes-diagnostic-code---primary:
    run: under-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-review---primary/output
  diabetes-diagnostic-code-offered---primary:
    run: diabetes-diagnostic-code-offered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: under-diabetes-diagnostic-code---primary/output
  diabetes-diagnostic-code-microalbumin---primary:
    run: diabetes-diagnostic-code-microalbumin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-offered---primary/output
  diabetes-diagnostic-code-interest---primary:
    run: diabetes-diagnostic-code-interest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-microalbumin---primary/output
  secondary-diabetes-diagnostic-code---primary:
    run: secondary-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: diabetes-diagnostic-code-interest---primary/output
  pancreatic-diabetes-diagnostic-code---primary:
    run: pancreatic-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: secondary-diabetes-diagnostic-code---primary/output
  multidisciplinary-diabetes-diagnostic-code---primary:
    run: multidisciplinary-diabetes-diagnostic-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: pancreatic-diabetes-diagnostic-code---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: multidisciplinary-diabetes-diagnostic-code---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
