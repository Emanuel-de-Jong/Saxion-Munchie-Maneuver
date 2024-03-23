class Background extends GObject {
    public EBackgroundScene CurrentScene;

    public Background() {
        super(0, 0);

        Layer = -100;

        String apiKey = loadStrings(dataPath("WeatherAPI.txt"))[0];

        JSONObject weather = loadJSONObject("https://api.pirateweather.net/forecast/" + apiKey + "/52.219812,6.894257?exclude=minutely,hourly,daily,alerts");
        JSONObject currentWeather = weather.getJSONObject("currently");
        float rain = currentWeather.getFloat("precipIntensity");
        float clouds = currentWeather.getFloat("cloudCover");
        
        EBackgroundScene backgroundScene = EBackgroundScene.SUN;
        if (rain > 0.01) {
            backgroundScene = EBackgroundScene.RAIN;
        } else if (clouds > 0.1) {
            backgroundScene = EBackgroundScene.CLOUDS;
        }

        CurrentScene = backgroundScene;
    }
    
    public void draw() {
        super.draw();

        switch (CurrentScene) {
            case SUN:
                background(200, 204, 75);
                break;
            case CLOUDS:
                background(178, 178, 178);
                break;
            case RAIN:
                background(57, 116, 184);
                break;
        }
    }
}
