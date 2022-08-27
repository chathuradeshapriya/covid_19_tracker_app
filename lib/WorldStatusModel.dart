class WorldStatusModel {
  WorldStatusModel(
  {

  int? updated,
  int? cases,
  int? todayCases,
  int? deaths,
  int? todayDeaths,
  int? recovered,
  int?  todayRecovered,
  int?  active,
  int? critical,
  int? casesPerOneMillion,
  double? deathsPerOneMillion,
  int? tests,
  double? testsPerOneMillion,
  int? population,
  int? oneCasePerPeople,
  int? oneDeathPerPeople,
  int? oneTestPerPeople,
  activePerOneMillion,
  double? recoveredPerOneMillion,
  double? criticalPerOneMillion,
  int? affectedCountries,}) {
    updated = updated;
    cases = cases;
    todayCases = todayCases;
    deaths = deaths;
    todayDeaths = todayDeaths;
    recovered = recovered;
    todayRecovered = todayRecovered;
    active = active;
    critical = critical;
    casesPerOneMillion = casesPerOneMillion;
    deathsPerOneMillion = deathsPerOneMillion;
    tests = tests;
    testsPerOneMillion = testsPerOneMillion;
    population = population;
    oneCasePerPeople = oneCasePerPeople;
    oneDeathPerPeople = oneDeathPerPeople;
    oneTestPerPeople = oneTestPerPeople;
    activePerOneMillion = activePerOneMillion;
    recoveredPerOneMillion = recoveredPerOneMillion;
    criticalPerOneMillion = criticalPerOneMillion;
    affectedCountries = affectedCountries;
  }


  WorldStatusModel.fromJson(dynamic json) {
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }
  int? updated;
  int? cases;
  int? todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? todayRecovered;
  int? active;
  int? critical;
  int? casesPerOneMillion;
  double? deathsPerOneMillion;
  int? tests;
  double? testsPerOneMillion;
  int? population;
  int? oneCasePerPeople;
  int? oneDeathPerPeople;
  int? oneTestPerPeople;
  double? activePerOneMillion;
  double? recoveredPerOneMillion;
  double? criticalPerOneMillion;
  int? affectedCountries;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['updated'] = updated;
    map['cases'] = cases;
    map['todayCases'] = todayCases;
    map['deaths'] = deaths;
    map['todayDeaths'] = todayDeaths;
    map['recovered'] = recovered;
    map['todayRecovered'] = todayRecovered;
    map['active'] = active;
    map['critical'] = critical;
    map['casesPerOneMillion'] = casesPerOneMillion;
    map['deathsPerOneMillion'] = deathsPerOneMillion;
    map['tests'] = tests;
    map['testsPerOneMillion'] = testsPerOneMillion;
    map['population'] = population;
    map['oneCasePerPeople'] = oneCasePerPeople;
    map['oneDeathPerPeople'] = oneDeathPerPeople;
    map['oneTestPerPeople'] = oneTestPerPeople;
    map['activePerOneMillion'] = activePerOneMillion;
    map['recoveredPerOneMillion'] = recoveredPerOneMillion;
    map['criticalPerOneMillion'] = criticalPerOneMillion;
    map['affectedCountries'] = affectedCountries;
    return map;
  }

}