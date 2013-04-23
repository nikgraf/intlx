
library duration_converters;

const int DAYS_PER_YEAR = 365;
const int DAYS_PER_MONTH = 30;

int inYears(Duration duration) => duration.inDays ~/ DAYS_PER_YEAR;
int inMonths(Duration duration) => duration.inDays ~/ DAYS_PER_MONTH;
int inWeeks(Duration duration) => duration.inDays ~/ DateTime.DAYS_PER_WEEK;