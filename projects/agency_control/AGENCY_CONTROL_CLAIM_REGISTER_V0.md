# AGENCY_CONTROL_CLAIM_REGISTER_V0

## Statut

Registre de claims pour l’audit agency/control.

Ce document ne valide pas encore tout. Il prépare l’audit limité.

---

# 1. Claims agency/control

| ID | Claim | Source principale | Statut initial | Question d’audit |
|---|---|---|---|---|
| AC01 | Le projet est encore en phase de conception/consolidation avant prototypage. | README | strong acquisition | Toute action proposée respecte-t-elle cette phase ? |
| AC02 | Un contrôle n’est pas un paramètre technique mais un accès performatif organisé à une fonction musicale. | docs/42 | strong acquisition | Les futurs contrôles préservent-ils la fonction musicale plutôt que d’exposer trop de paramètres ? |
| AC03 | Le contrôle doit inclure sélection, organisation, amplitude, contexte, risque, sortie et override. | README, docs/42, docs/44 | strong acquisition | Chaque contrôle important garde-t-il ces dimensions ? |
| AC04 | Le système ne doit pas faire la musique à la place de Yohan. | docs/42 + correction utilisateur | strong acquisition | Le système assiste-t-il sans composer ou décider à sa place ? |
| AC05 | Les limites sont des zones de bord jouables, pas seulement des interdits. | docs/42, docs/44 | provisional acquisition | Les limites sont-elles rendues visibles et jouables sans devenir dangereuses ? |
| AC06 | Certaines limites doivent rester strictes quand elles protègent la méthode ou le live. | docs/44 | provisional acquisition | Quelles limites sont jouables et lesquelles doivent rester bloquantes ? |
| AC07 | L’override humain est une décision musicale assumée, pas une erreur. | docs/42 | strong acquisition | L’override reste-t-il accessible et compréhensible en situation live ? |
| AC08 | Le Router doit rendre jouables les bons contrôles au bon moment, et masquer ce qui surcharge. | docs/modules/05 | provisional acquisition | Le Router réduit-il la charge cognitive sans cacher les sorties nécessaires ? |
| AC09 | Les contrôles d’urgence doivent toujours rester accessibles. | docs/modules/05 | strong acquisition | Existe-t-il un risque que l’urgence soit enfouie par le contexte ? |
| AC10 | Le Conflict / Protection Manager doit protéger sans figer. | docs/modules/07 | strong acquisition | La protection préserve-t-elle l’intensité et le risque fertile ? |
| AC11 | Le système doit distinguer conflit dangereux et tension féconde. | docs/modules/07 | strong acquisition | La tension musicale est-elle protégée contre une neutralisation excessive ? |
| AC12 | Le système peut réduire l’agency s’il masque le live, impose un rôle, ou rend l’autonomie trop forte. | docs/modules/07 + agency map | risk to monitor | Où le système risque-t-il de prendre la main sans le dire ? |
| AC13 | La surcharge d’interface est un conflit musical, pas seulement UX. | docs/modules/07 + scenarios | provisional acquisition | Trop de contrôles visibles peut-il casser la performance ? |
| AC14 | Les amplitudes de contrôle doivent être musicales : sûres, expressives, de bord, dangereuses, override. | docs/42, docs/44 | strong acquisition | Les amplitudes indiquent-elles ce qui est gagné et ce qui est menacé ? |
| AC15 | Un micro-test ne peut être autorisé que s’il répond à une seule question d’agency/control. | MICRO_TEST_CRITERIA_V0 | provisional acquisition | Quels claims sont assez précis pour devenir un micro-test plus tard ? |

---

# 2. Claims à auditer en premier

Batch 01 doit auditer seulement :

```text
AC01 à AC08
```

Raison : ce premier lot couvre la phase du projet, la définition du contrôle, les limites, l’override et le Router.

Ne pas auditer encore :

```text
AC09 à AC15
```

Ils seront traités dans un batch ultérieur si nécessaire.

---

# 3. Prochaine action

Créer :

```text
projects/agency_control/AGENCY_CONTROL_AUDIT_BATCH_01.md
```
