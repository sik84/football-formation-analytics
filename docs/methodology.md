The project uses a relational database model because the research question requires different types of connected information. Teams, matches, tactical formations and match statistics are represented as separate entities linked through defined relationships. This structure reduces redundancy, improves data consistency and enables efficient SQL analysis across multiple related tables. It also provides a scalable foundation that can easily be extended with additional match data in future versions of the project.

The selected KPIs were chosen because they address the business question directly.
The goals represent the final outcome of the offense. The shots and the shots on target provide additional insight into how the goals are scored. The combination of all these metrics allow a more comprehensive evaluation than goals alone.

### SQL Analysis Strategy

SQL was chosen because the project is based on a relational database model and the research question requires data from multiple related tables to be combined and analyzed. SQL provides an efficient way to join tables, aggregate key performance indicators and compare tactical formations using reproducible queries.

Functions such as `JOIN`, `AVG()`, `COUNT()`, `GROUP BY` and `ORDER BY` were used to calculate and compare offensive KPIs across different formations. This approach enables a transparent and repeatable analysis that can easily be extended as additional match data becomes available.

### Interpretation Strategy

The results of this project are interpreted as data-driven indications rather than definitive conclusions. Offensive performance is evaluated by considering multiple key performance indicators together, including goals, shots and shots on target, instead of relying on a single metric.

Furthermore, the findings are interpreted in the context of the available data. Factors such as sample size, player quality, opponent strength and additional performance indicators are not fully represented in the current dataset. Therefore, the analysis identifies potential relationships between tactical formations and offensive performance but does not claim causal effects or universally valid tactical recommendations.
