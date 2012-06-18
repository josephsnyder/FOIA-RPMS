AMHPREI2 ; IHS/CMI/LAB - ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;
 ;
 NEW AMHX,AMHY,AMHC,AMHD
 F AMHX=1:1 S AMHY=$T(MHPC+AMHX) Q:$P(AMHY,";;",2)=""  D
 .S AMHC=$P(AMHY,";;",2),AMHD=$P(AMHY,";;",3)
 .S AMHDA=$O(^AMHPROB("B",AMHC,0))
 .I 'AMHDA Q
 .I $P(^AMHPROB(AMHDA,0),U,2)=AMHD Q
 .D ^XBFMK
 .S DA=AMHDA,DIE="^AMHPROB(",DR=".02///"_AMHD D ^DIE
 .I $D(Y) W !,"Updating ICD code for ",D," failed die." Q
 .K DIE,DA,DR D ^XBFMK
 .Q
 ;
 Q
MHPC ;
 ;;295.64;;SCHIZOPHRENIA, RESIDUAL TYPE, CHRONIC, W/ACUTE EXACERBATION
 ;;295.65;;SCHIZOPHRENIA, RESIDUAL TYPE, IN REMISSION
 ;;295.71;;SCHIZOAFFECTIVE DISORDER, SUBCHRONIC
 ;;295.72;;SCHIZOAFFECTIVE DISORDER, CHRONIC
 ;;295.73;;SCHIZOAFFECTIVE DISORDER, SUBCHRONIC, W/ACUTE EXACERBATION
 ;;295.74;;SCHIZOAFFECTIVE DISORDER, CHRONIC, W/ACUTE EXACERBATION
 ;;295.75;;SCHIZOAFFECTIVE DISORDER, IN REMISSION
 ;;295.90;;SCHIZOPHRENIA, UNDIFFERENTIATED TYPE, UNSPECIFIED
 ;;295.91;;SCHIZOPHRENIA, UNDIFFERENTIATED TYPE, SUBCHRONIC
 ;;295.92;;SCHIZOPHRENIA, UNDIFFERENTIATED TYPE, CHRONIC
 ;;295.93;;SCHIZOPHRENIA, UNDIFFERENTIATED TYPE, SUBCHRONIC, W/ACUTE EXACERBATION
 ;;295.94;;SCHIZOPHRENIA, UNDIFFERENTIATED TYPE, CHRONIC, W/ACUTE EXACERBATION
 ;;296.00;;BIPOLAR I DISORDER, SINGLE MANIC EPISODE, UNSPECIFIED
 ;;296.01;;BIPOLAR I DISORDER, SINGLE MANIC EPISODE, MILD
 ;;296.02;;BIPOLAR I DISORDER, SINGLE MANIC EPISODE, MODERATE
 ;;296.03;;BIPOLAR I DISORDER, SINGLE MANIC EPISODE, SEVERE, W/O PSYCHOTIC FEATURES
 ;;296.04;;BIPOLAR I DISORDER, SINGLE MANIC EPISODE, SEVERE, W/PSYCHOTIC FEATURES
 ;;296.05;;BIPOLAR I DISORDER, SINGLE MANIC EPISODE, IN PARTIAL REMISSION
 ;;296.06;;BIPOLAR I DISORDER, SINGLE MANIC EPISODE, IN FULL REMISSION
 ;;296.30;;MAJOR DEPRESSIVE DISORDER, RECURRENT, UNSPECIFIED
 ;;296.80;;BIPOLAR DISORDER NOS
 ;;296.90;;MOOD DISORDER NOS
 ;;299.01;;AUTISTIC DISORDER, RESIDUAL
 ;;299.10;;CHILDHOOD DISINTEGRATIVE DISORDER, ACTIVE
 ;;299.11;;CHILDHOOD DISINTEGRATIVE DISORDER, RESIDUAL
 ;;299.81;;PERVASIVE DEVELOPMENT DISORDER NOS, RESIDUAL
 ;;303.01;;ALCOHOL INTOXICATION, CONTINUOUS
 ;;303.02;;ALCOHOL INTOXICATION, EPISODIC
 ;;303.03;;ALCOHOL INTOXICATION, IN REMISSION
 ;;303.91;;ALCOHOL DEPENDENCE, CONTINUOUS
 ;;303.92;;ALCOHOL DEPENDENCE, EPISODIC
 ;;303.93;;ALCOHOL DEPENDENCE, IN REMISSION
 ;;304.01;;OPIOID DEPENDENCE, CONTINUOUS
 ;;304.02;;OPIOID DEPENDENCE, EPISODIC
 ;;304.03;;OPIOID DEPENDENCE, IN REMISSION
 ;;304.11;;SEDATIVE, HYPNOTIC, OR ANXIOLYTIC DEPENDENCE, CONTINUOUS
 ;;304.12;;SEDATIVE, HYPNOTIC, OR ANXIOLYTIC DEPENDENCE, EPISODIC
 ;;304.13;;SEDATIVE, HYPNOTIC, OR ANXIOLYTIC DEPENDENCE, IN REMISSION
 ;;304.21;;COCAINE DEPENDENCE, CONTINUOUS
 ;;304.22;;COCAINE DEPENDENCE, EPISODIC
 ;;304.23;;COCAINE DEPENDENCE, IN REMISSION
 ;;304.31;;CANNABIS DEPENDENCE, CONTINUOUS
 ;;304.32;;CANNABIS DEPENDENCE, EPISODIC
 ;;304.33;;CANNABIS DEPENDENCE, IN REMISSION
 ;;304.41;;AMPHETAMINE DEPENDENCE, CONTINUOUS
 ;;304.42;;AMPHETAMINE DEPENDENCE, EPISODIC
 ;;304.43;;AMPHETAMINE DEPENDENCE, IN REMISSION
 ;;304.51;;HALLUCINOGEN DEPENDENCE, CONTINUOUS
 ;;304.52;;HALLUCINOGEN DEPENDENCE, EPISODIC
 ;;304.53;;HALLUCINOGEN DEPENDENCE, IN REMISSION
 ;;304.61;;INHALANT DEPENDENCE, CONTINUOUS
 ;;304.62;;INHALANT DEPENDENCE, EPISODIC
 ;;304.63;;INHALANT DEPENDENCE, IN REMISSION
 ;;304.80;;POLYSUBSTANCE DEPENDENCE, UNSPECIFIED
 ;;304.81;;POLYSUBSTANCE DEPENDENCE, CONTINUOUS
 ;;304.82;;POLYSUBSTANCE DEPENDENCE, EPISODIC
 ;;304.83;;POLYSUBSTANCE DEPENDENCE, IN REMISSION
 ;;304.91;;OTHER (OR UNKNOWN) SUBSTANCE DEPENDENCE, OR PHENCYCLIDINE, DEPENDENCE, CONT.
 ;;304.92;;OTHER (OR UNKNOWN) SUBSTANCE DEPENDENCE, OR PHENCYCLIDINE, DEPENDENCE, EPISODIC
 ;;304.93;;OTHER (OR UNKNOWN) SUBSTANCE DEPENDENCE, OR PHENCYCLIDINE, DEPENDENCE, IN REM.
 ;;305.01;;ALCOHOL ABUSE, CONTINUOUS
 ;;305.02;;ALCOHOL ABUSE, EPISODIC,
 ;;305.03;;ALCOHOL ABUSE, IN REMISSION
 ;;305.21;;CANNABIS ABUSE, CONTINUOUS
 ;;305.22;;CANNABIS ABUSE, EPISODIC
 ;;305.23;;CANNABIS ABUSE, IN REMISSION
 ;;305.31;;HALLUCINOGEN ABUSE, CONTINUOUS
 ;;305.32;;HALLUCINOGEN ABUSE, EPISODIC
 ;;305.33;;HALLUCINOGEN ABUSE, IN REMISSION
 ;;305.41;;SEDATIVE, HYPNOTIC, OR ANXIOLYTIC ABUSE, CONTINUOUS
 ;;305.42;;SEDATIVE, HYPNOTIC, OR ANXIOLYTIC ABUSE, EPISODIC
 ;;305.43;;SEDATIVE, HYPNOTIC, OR ANXIOLYTIC ABUSE, IN REMISSION
 ;;305.51;;OPIOID ABUSE, CONTINUOUS
 ;;305.52;;OPIOID ABUSE, EPISODIC
 ;;305.53;;OPIOID ABUSE, IN REMISSION
 ;;305.61;;COCAINE ABUSE, CONTINUOUS
 ;;305.62;;COCAINE ABUSE, EPISODIC
 ;;305.63;;COCAINE ABUSE, IN REMISSION
 ;;305.71;;AMPHETAMINE ABUSE, CONTINUOUS
 ;;305.72;;AMPHETAMINE ABUSE, EPISODIC
 ;;305.73;;AMPHETAMINE ABUSE, IN REMISSION
 ;;305.91;;OTHER, MIXED ABUSE, CONTINUOUS
 ;;305.92;;OTHER, MIXED ABUSE, EPISODIC
 ;;305.93;;OTHER, MIXED ABUSE, IN REMISSION
 ;;307.59;;FEEDING DISORDER OF INFANCY OR EARLY CHILDHOOD
 ;;307.89;;PAIN DISORDER ASSOCIATED W/ BOTH PSYCHOLOGICAL AND MEDICAL CONDITION
 ;;307.9;;COMMUNICATION DISORDER NOS
 ;;308.3;;ACUTE STRESS REACTION
 ;;309.81;;POST-TRAUMATIC STRESS DISORDER
 ;;309.9;;ADJUSTMENT DISORDER, UNSPECIFIED
 ;;312.30;;IMPULSE CONTROL DISORDER NOS
 ;;312.82;;CONDUCT DISORDER, ADOLESCENT ONSET TYPE
 ;;312.89;;CONDUCT DISORDER, UNSPECIFIED TYPE
 ;;312.9;;DISRUPTIVE BEHAVIOR DISORDER NOS
 ;;313.9;;DISORDERS OF INFANCY, CHILDHOOD, OR ADOLENCENCE NOS
 ;;314.9;;ATTENTION-DEFICIT/HYPERACTIVITY DISORDER NOS
 ;;315.2;;DISORDERS OF WRITTEN EXPRESSION
 ;;332.1;;NEUROLEPTIC-INDUCED PARKINSONISM
 ;;333.1;;MEDICATION-INDUCED POSTURAL TREMOR
 ;;333.7;;NEUROLEPTIC-INDUCED ACUTE DYSTONIA
 ;;333.82;;NEUROLEPTIC-INDUCED TARDIVE DYSKINESIA
 ;;333.90;;MEDICATION-INDUCED MOVEMENT DISORDER NOS
 ;;333.92;;NEUROLEPTIC MALIGNANT SYNDROME
 ;;333.99;;NEUROLEPTIC-INDUCED ACUTE AKATHISIA
 ;;780.9;;AGE-RELATED COGNITIVE DECLINE
 ;;799.9;;DIAGNOSIS DEFERRED ON AXIS I OR AXIS II
 ;;296.89;;BIPOLAR II DISORDER
 ;;312.81;;CONDUCT DISORDER, CHILDHOOD ONSET TYPE
 ;;347.;;NARCOLEPSY
 ;;309.0;;ADJUSTMENT DISORDER WITH DEPRESSED MOOD
 ;;291.81;;ALCOHOL WITHDRAWAL
 ;;995.50;;CHILD ABUSE (SUSPECTED), UNSPECIFIED.
 ;;995.80;;ADULT MALTREATMENT (SUSPECTED)
 ;;54.1;;DEATH
 ;;54.2;;DYING
 ;;79.1;;INADEQUATE PERSONAL RESOURCES
 ;;79.2;;INADEQUATE ACCESS TO RESOURCES
 ;;8.1;;PATIENT CANCELLED, RESCHEDULED
 ;;8.11;;PATIENT CANCELLED, NOT RESCHEDULED
 ;;8.2;;PROVIDER CANCELLED, RESCHEDULED
 ;;8.21;;PROVIDER CANCELLED, NOT RESCHEDULED
 ;;995.54;;PHYSICAL ABUSE OF CHILD (VICTIM)
 ;;995.53;;SEXUAL ABUSE OF CHILD (VICTIM)
 ;;46.3;;RAPE (ALLEGED/SUSPECTED)
 ;;995.52;;NEGLECT OF CHILD (VICTIM)
 ;;302.85;;GENDER IDENTITY DISORDER OF ADOLESCENT OR ADULT
 ;;50;;TRAUMATIC BEREAVEMENT
 ;;49.9;;EXPLOITATION
 ;;47.1;;CHILD NEGLECT (SUSPECTED), PHYSICAL
 ;;47.2;;CHILD NEGLECT (SUSPECTED), MENTAL
 ;;48.1;;ADULT NEGLECT (SUSPECTED), PHYSICAL
 ;;48.2;;ADULT NEGLECT (SUSPECTED, MENTAL
 ;;49.1;;PARTNER NEGLECT (SUSPECTED), PHYSICAL
 ;;49.2;;PARTNER NEGLECT (SUSPECTED), MENTAL
 ;;312.39;;IMPULSE CONTROL DIS NED
 ;;8.3;;DID NOT WAIT TO BE SEEN
 ;;70;;DAY/NIGHT CARE
 ;;71;;DOMICILIARY CARE
 ;;72;;FOSTER CARE
 ;;73;;HALFWAY HOUSE
 ;;74;;HOSPICE CARE
 ;;75;;NURSING CARE
 ;;76;;RESPITE CARE
 ;;77;;INSTITUTIONAL CARE
 ;;
