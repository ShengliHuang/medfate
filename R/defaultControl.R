defaultControl<-function() {
  return(list(
    #For all
    verbose = TRUE,
    # swb
    transpirationMode = "Simple",
    fracTotalTreeResistance = 0.625,
    averageFracRhizosphereResistance = 0.05
#     #For water balance
#     embolism = FALSE,
    #For forest dynamics
#     freqZopt = 20,
#     sap2tree=TRUE,
#     mergeCohorts=TRUE,
#     removeDeadCohorts=TRUE,
#     initRadius = 5000,
#     setDefaults = TRUE,
#     diamClasses = c(0,0.5,0.75,1.0,1.5,2.0,3.0,4.0,5.0,7.5,10.0, seq(15,200, by=5)),
#     heightClasses = c(0,25,50,75,100,125,150,175, 200,seq(250,6000, by=50)),    
    #For fire
#     sparkLambda = 0, #Average number of sparks/day (0 means no fires)
#     dailySparkingTime = 960.0, #in minutes (960 min = 60 min/h * 16h)
#     sparkingProbabilityVector = NULL, #Relative values for unequal ignition probability
#     brigadeDensity =  0.001, #in number of fire brigades/square km2
#     brigadeDispatchTime = 1.0, #in minutes
#     brigadeFireArrivalTime = 50.0, #in minutes
#     extinctionCapacity = 5000, #in kW/(m*min)
#     fireBrandTimeStep = 1/60, #in minutes
#     numBrandsPerBurningTime = 1, # dimensionless
    #For fire behaviour
   # liveFMCmode = "swb",
   # useModelForLive = FALSE
    # initialMoisture = c(35,35,35,35,35),
    # surfaceToVolumeRatios = c(5600,358,98,6200,8000), #dimensionless
    # heatContent = c(18622, 18622, 18622, 19500, 20000), #kJ/kg
    # deadFuelMoistureExtinction = 30 #Percent
    
    #For dispersal
    # maxDispersal = 500,
    #For management
    # managementUnits = NULL,
    # managementPlan = NULL
))
}