.class public Lcom/sec/android/app/camera/shootingmode/TagShot;
.super Ljava/lang/Object;
.source "TagShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;,
        Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;,
        Lcom/sec/android/app/camera/shootingmode/TagShot$SCRetryPolicy;,
        Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;,
        Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;
    }
.end annotation


# static fields
.field private static final ACCU_FORECAST_URL:Ljava/lang/String; = "http://api.accuweather.com/localweather/v1/%s.json?apikey=0460650BB2524F84BAECAA9381D79EFC%s&details=true&metric=%s"

.field private static final ACCU_LANGUAGE:Ljava/lang/String; = "&language="

.field private static final ACCU_LOCATION_KEY_URL:Ljava/lang/String; = "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=ko"

.field private static final ALTITUDE_FORMAT:Ljava/lang/String; = "%d"

.field private static final CHANGE_DEFAULT_SHOOTING_MODE_DURATION:I = 0x64

.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field private static final DEFAULT_ALTITUDE:Ljava/lang/String; = "31"

.field private static final KEY_CURRENT_CITY:Ljava/lang/String; = "aw_daemon_service_key_loc_code"

.field private static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field private static final KEY_ERROR_BUNDLE:Ljava/lang/String; = "Error_Code"

.field private static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field private static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_weather_icon_num"

.field private static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"

.field private static final KEY_TAG_SHOT_GUIDE_DIALOG_ENABLED:Ljava/lang/String; = "pref_tag_shot_guide_dialog_enabled"

.field private static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field private static final MAX_SIZE_PRESSURE_LIST:I = 0x2

.field private static final RESTORE_DEFAULT_SHOOTING_MODE_MSG:I = 0x2

.field private static final SYMBOLIZED_DEGREE:C = '\u00b0'

.field private static final TAG:Ljava/lang/String; = "TagShot"

.field private static final TRANSFORMATION_VALUE_INCHHG_TO_HPA:F = 33.86388f

.field private static final UPDATE_TAG_INFO_INTERVAL:I = 0x3e8

.field private static final UPDATE_TAG_INFO_MSG:I = 0x1


# instance fields
.field private ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final TAG_SHOT_INFO_GROUP_HEIGHT:I

.field private final TAG_SHOT_INFO_GROUP_WIDTH:I

.field private final TAG_SHOT_INFO_ICON_WIDTH:F

.field private final TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

.field private final TAG_SHOT_INFO_PORTRAIT_MARGIN:F

.field private final TAG_SHOT_INFO_SIDE_MARGIN:F

.field private final TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

.field private final TAG_SHOT_INFO_TEXT_HEIGHT:F

.field private final TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

.field private final TAG_SHOT_INFO_TEXT_SIZE:F

.field private final TAG_SHOT_INFO_TEXT_WIDTH:F

.field private loc:Landroid/location/Location;

.field private mAltitude:Ljava/lang/String;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentPressure:F

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mHumidity:Ljava/lang/String;

.field private mIsForcastFetched:Z

.field private mIsPressureSensorSupported:Z

.field private mLatitude:Ljava/lang/Double;

.field private mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLocation:Ljava/lang/String;

.field private mLocationImage:Lcom/samsung/android/glview/GLImage;

.field private mLocationText:Lcom/samsung/android/glview/GLText;

.field private mLongitude:Ljava/lang/Double;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mModifiedAltitude:I

.field private mModifiedPressure:F

.field private mPressureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPressureListener:Landroid/hardware/SensorEventListener;

.field private mRefPressure:F

.field private mSenserCounter:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

.field private mTempScale:Ljava/lang/String;

.field private mTemperature:Ljava/lang/String;

.field private mTemperatureText:Lcom/samsung/android/glview/GLText;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mWeatherIcon:I

.field private mWeatherImage:Lcom/samsung/android/glview/GLImage;

.field private mWeatherImageID:I

.field private mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 8
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    .line 137
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    .line 138
    const v0, 0x7f0b0216

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    .line 139
    const v0, 0x7f0b0213

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    .line 140
    const v0, 0x7f0b0214

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    .line 141
    const v0, 0x7f0b0212

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    .line 142
    const v0, 0x7f0b020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_ICON_WIDTH:F

    .line 143
    const v0, 0x7f0b0210

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    .line 144
    const v0, 0x7f0b020f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    .line 145
    const v0, 0x7f0b0211

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_SIDE_MARGIN:F

    .line 146
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_ICON_WIDTH:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    .line 147
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    .line 148
    const v0, 0x7f0b0215

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    .line 150
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 151
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 152
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 153
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 154
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 155
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    .line 156
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 157
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    .line 158
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    .line 159
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    .line 160
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    .line 161
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    .line 162
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    .line 163
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLatitude:Ljava/lang/Double;

    .line 164
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLongitude:Ljava/lang/Double;

    .line 166
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    .line 182
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mIsPressureSensorSupported:Z

    .line 183
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mIsForcastFetched:Z

    .line 189
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    .line 190
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    .line 195
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 196
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 197
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 198
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 199
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 200
    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCPName:Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$2;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 223
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    return p1
.end method

.method static synthetic access$010(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/TagShot;F)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # F

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->updateCurrentPressure(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->convertMetersToFeet(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->getWeatherIconImage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/shootingmode/TagShot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mIsForcastFetched:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagInfo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/shootingmode/TagShot;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->fetchForecastInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->updateTagInfo()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/TagShot;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->setWeatherInfo(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/TagShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mIsPressureSensorSupported:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    return p1
.end method

.method private addSEFInfo(Ljava/io/File;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 464
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 466
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "LocalizedName"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    iget-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mIsPressureSensorSupported:Z

    if-eqz v5, :cond_0

    .line 468
    const-string v5, "Altitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    :cond_0
    const-string v5, "Temperature"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v5, "Unit"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v5, "RelativeHumidity"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string v5, "WeatherIcon"

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 482
    .local v3, "sef_byte":[B
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 483
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 485
    :try_start_1
    const-string v5, "Tag_Shot_Info"

    const/16 v6, 0x990

    const/4 v7, 0x1

    invoke-static {p1, v5, v3, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 489
    :goto_1
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEF_DATA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    .line 493
    return-void

    .line 473
    .end local v3    # "sef_byte":[B
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 474
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONObject data writing error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "sef_byte":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "TagShot"

    const-string v6, "error while addSEFData in TagShot"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->access$700(Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;)V

    .line 497
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    .line 499
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->unregisterSensorManager()V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 501
    return-void
.end method

.method private convertMetersToFeet(I)I
    .locals 2
    .param p1, "meters"    # I

    .prologue
    .line 510
    const/16 v0, 0x32

    .line 511
    .local v0, "result":I
    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v0, v1

    .line 512
    return v0
.end method

.method private fetchForecastInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationKey"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v6, "TagShot"

    const-string v7, "fetchForecastInfo"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->getLocaleCode()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "localeCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isUsaFeature()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "false"

    .line 520
    .local v1, "isCelsius":Ljava/lang/String;
    :goto_0
    const-string v6, "http://api.accuweather.com/localweather/v1/%s.json?apikey=0460650BB2524F84BAECAA9381D79EFC%s&details=true&metric=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, "url":Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$3;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    .line 529
    .local v0, "errorListener":Lcom/android/volley/Response$ErrorListener;
    new-instance v4, Lcom/sec/android/app/camera/shootingmode/TagShot$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$4;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    .line 578
    .local v4, "successListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;>;"
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;

    const-class v6, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;

    invoke-direct {v3, v5, v6, v4, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 579
    .local v3, "request":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;>;"
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 580
    return-void

    .line 519
    .end local v0    # "errorListener":Lcom/android/volley/Response$ErrorListener;
    .end local v1    # "isCelsius":Ljava/lang/String;
    .end local v3    # "request":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;>;"
    .end local v4    # "successListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;>;"
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    const-string v1, "true"

    goto :goto_0
.end method

.method private fetchLocationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # Ljava/lang/String;
    .param p3, "longitude"    # Ljava/lang/String;
    .param p4, "locationInfoListener"    # Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;

    .prologue
    .line 591
    const-string v4, "TagShot"

    const-string v5, "fetchLocationInfo"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v4, "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=ko"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/TagShot$5;

    invoke-direct {v2, p0, p4, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot$5;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;Landroid/content/Context;)V

    .line 602
    .local v2, "successlistener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;>;"
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$6;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    .line 609
    .local v0, "errorListener":Lcom/android/volley/Response$ErrorListener;
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;

    const-class v4, Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 610
    .local v1, "request":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;>;"
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 611
    return-void
.end method

.method private getLocaleCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 622
    .local v0, "localeCode":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    :cond_0
    const-string v0, "&language=ko"

    .line 718
    :goto_0
    return-object v0

    .line 624
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    const-string v0, "&language=ru"

    goto :goto_0

    .line 626
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es_ES"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 627
    :cond_3
    const-string v0, "&language=es"

    goto :goto_0

    .line 628
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 629
    :cond_5
    const-string v0, "&language=de"

    goto :goto_0

    .line 630
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 631
    :cond_7
    const-string v0, "&language=fr"

    goto :goto_0

    .line 632
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 633
    :cond_9
    const-string v0, "&language=it"

    goto/16 :goto_0

    .line 634
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 635
    :cond_b
    const-string v0, "&language=ja"

    goto/16 :goto_0

    .line 636
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 637
    :cond_d
    const-string v0, "&language=zh"

    goto/16 :goto_0

    .line 638
    :cond_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ar"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 639
    const-string v0, "&language=ar"

    goto/16 :goto_0

    .line 640
    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bn"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 641
    const-string v0, "&language=bn"

    goto/16 :goto_0

    .line 642
    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bs"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 643
    const-string v0, "&language=bs"

    goto/16 :goto_0

    .line 644
    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bg"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 645
    const-string v0, "&language=bg"

    goto/16 :goto_0

    .line 646
    :cond_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ca"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 647
    const-string v0, "&language=ca"

    goto/16 :goto_0

    .line 648
    :cond_13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 649
    const-string v0, "&language=hr"

    goto/16 :goto_0

    .line 650
    :cond_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "cs"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 651
    const-string v0, "&language=cs"

    goto/16 :goto_0

    .line 652
    :cond_15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "da"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 653
    const-string v0, "&language=da"

    goto/16 :goto_0

    .line 654
    :cond_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "nl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 655
    const-string v0, "&language=nl"

    goto/16 :goto_0

    .line 656
    :cond_17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "et"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 657
    const-string v0, "&language=et"

    goto/16 :goto_0

    .line 658
    :cond_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 659
    const-string v0, "&language=fa"

    goto/16 :goto_0

    .line 660
    :cond_19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ph"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 661
    const-string v0, "&language=ph"

    goto/16 :goto_0

    .line 662
    :cond_1a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 663
    const-string v0, "&language=fi"

    goto/16 :goto_0

    .line 664
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "el"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 665
    const-string v0, "&language=el"

    goto/16 :goto_0

    .line 666
    :cond_1c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "he"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 667
    const-string v0, "&language=he"

    goto/16 :goto_0

    .line 668
    :cond_1d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 669
    const-string v0, "&language=hi"

    goto/16 :goto_0

    .line 670
    :cond_1e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hu"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 671
    const-string v0, "&language=hu"

    goto/16 :goto_0

    .line 672
    :cond_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "is"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 673
    const-string v0, "&language=is"

    goto/16 :goto_0

    .line 674
    :cond_20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "id"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 675
    const-string v0, "&language=id"

    goto/16 :goto_0

    .line 676
    :cond_21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "kk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 677
    const-string v0, "&language=kk"

    goto/16 :goto_0

    .line 678
    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 679
    const-string v0, "&language=lv"

    goto/16 :goto_0

    .line 680
    :cond_23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 681
    const-string v0, "&language=lt"

    goto/16 :goto_0

    .line 682
    :cond_24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "mk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 683
    const-string v0, "&language=mk"

    goto/16 :goto_0

    .line 684
    :cond_25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ms"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 685
    const-string v0, "&language=ms"

    goto/16 :goto_0

    .line 686
    :cond_26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sr-me"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 687
    const-string v0, "&language=sr-me"

    goto/16 :goto_0

    .line 688
    :cond_27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "no"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 689
    const-string v0, "&language=no"

    goto/16 :goto_0

    .line 690
    :cond_28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pl_PL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 691
    :cond_29
    const-string v0, "&language=pl"

    goto/16 :goto_0

    .line 692
    :cond_2a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 693
    const-string v0, "&language=pt"

    goto/16 :goto_0

    .line 694
    :cond_2b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ro"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 695
    const-string v0, "&language=ro"

    goto/16 :goto_0

    .line 696
    :cond_2c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 697
    const-string v0, "&language=sk"

    goto/16 :goto_0

    .line 698
    :cond_2d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 699
    const-string v0, "&language=sl"

    goto/16 :goto_0

    .line 700
    :cond_2e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sw"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 701
    const-string v0, "&language=sw"

    goto/16 :goto_0

    .line 702
    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 703
    const-string v0, "&language=sv"

    goto/16 :goto_0

    .line 704
    :cond_30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "th"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 705
    const-string v0, "&language=th"

    goto/16 :goto_0

    .line 706
    :cond_31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "tr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 707
    const-string v0, "&language=tr"

    goto/16 :goto_0

    .line 708
    :cond_32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "uk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 709
    const-string v0, "&language=uk"

    goto/16 :goto_0

    .line 710
    :cond_33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ur"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 711
    const-string v0, "&language=ur"

    goto/16 :goto_0

    .line 712
    :cond_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "vi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 713
    const-string v0, "&language=vi"

    goto/16 :goto_0

    .line 715
    :cond_35
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getWeatherIconImage(I)I
    .locals 8
    .param p1, "iconNum"    # I

    .prologue
    const v0, 0x7f0202e4

    const v2, 0x7f0202e2

    const v3, 0x7f0202d7

    const v1, 0x7f0202d5

    const v4, 0x7f0202e3

    .line 723
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWeatherIconImage iconNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    packed-switch p1, :pswitch_data_0

    .line 791
    :goto_0
    :pswitch_0
    return v0

    .line 731
    :pswitch_1
    const v0, 0x7f0202dc

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 735
    goto :goto_0

    .line 737
    :pswitch_3
    const v0, 0x7f0202d8

    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 739
    goto :goto_0

    .line 742
    :pswitch_5
    const v0, 0x7f0202de

    goto :goto_0

    .line 744
    :pswitch_6
    const v0, 0x7f0202e5

    goto :goto_0

    .line 747
    :pswitch_7
    const v0, 0x7f0202df

    goto :goto_0

    .line 749
    :pswitch_8
    const v0, 0x7f0202e0

    goto :goto_0

    :pswitch_9
    move v0, v3

    .line 751
    goto :goto_0

    .line 754
    :pswitch_a
    const v0, 0x7f0202dd

    goto :goto_0

    :pswitch_b
    move v0, v4

    .line 757
    goto :goto_0

    .line 759
    :pswitch_c
    const v0, 0x7f0202da

    goto :goto_0

    :pswitch_d
    move v0, v4

    .line 762
    goto :goto_0

    .line 764
    :pswitch_e
    const v0, 0x7f0202e1

    goto :goto_0

    .line 766
    :pswitch_f
    const v0, 0x7f0202d9

    goto :goto_0

    .line 768
    :pswitch_10
    const v0, 0x7f0202d6

    goto :goto_0

    .line 770
    :pswitch_11
    const v0, 0x7f0202e6

    goto :goto_0

    .line 772
    :pswitch_12
    const v0, 0x7f0202d4

    goto :goto_0

    .line 774
    :pswitch_13
    const v0, 0x7f0202db

    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 779
    goto :goto_0

    :pswitch_15
    move v0, v2

    .line 782
    goto :goto_0

    .line 785
    :pswitch_16
    const v0, 0x7f0202e5

    goto :goto_0

    :pswitch_17
    move v0, v3

    .line 787
    goto :goto_0

    :pswitch_18
    move v0, v4

    .line 789
    goto :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method private hideTagInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 796
    const-string v0, "TagShot"

    const-string v1, "hideTagInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 799
    return-void
.end method

.method private isTagShotGuideDialogEnabled()Z
    .locals 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_tag_shot_guide_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private registerSensorManager()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mIsPressureSensorSupported:Z

    .line 819
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mIsPressureSensorSupported:Z

    if-eqz v0, :cond_2

    .line 820
    const-string v0, "TagShot"

    const-string v1, "registerSensorManager - registerListener"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 828
    :cond_0
    :goto_1
    return-void

    .line 818
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 823
    :cond_2
    const-string v0, "TagShot"

    const-string v1, "sensor type pressure is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    goto :goto_1
.end method

.method private registerWeatherInfoReceiver()V
    .locals 3

    .prologue
    .line 831
    const-string v1, "TagShot"

    const-string v2, "registerWeatherInfoReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 833
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 839
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->requestWeatherDataSync()V

    .line 840
    return-void
.end method

.method private requestWeatherDataSync()V
    .locals 3

    .prologue
    .line 843
    const-string v1, "TagShot"

    const-string v2, "requestWeatherDataSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .local v0, "weatherTrigger":Landroid/content/Intent;
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 846
    const-string v1, "PACKAGE"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    const-string v1, "CP"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 849
    const-string v1, "TagShot"

    const-string v2, "SendBroadcast() from Camera to Weather Deamon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method

.method private restoreDefaultShootingMode()V
    .locals 2

    .prologue
    .line 853
    const-string v0, "TagShot"

    const-string v1, "restoreDefaultShootingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultShootingModeByCurrentCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShootingModeChanged(I)V

    .line 855
    return-void
.end method

.method private sendMessageToUpdateTagInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 861
    const-string v0, "TagShot"

    const-string v1, "sendMessageToUpdateTagInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 868
    :cond_1
    return-void
.end method

.method private setTagShotGuideDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_tag_shot_guide_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_tag_shot_guide_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 809
    :cond_0
    return-void
.end method

.method private setWeatherInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setIconNumber(I)V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setCurrentTemperature(F)V

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setTempScale(I)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setHighTemperature(F)V

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setLowTemperature(F)V

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setTrusted(I)V

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->dump()V

    .line 879
    return-void
.end method

.method private showTagInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    const-string v0, "TagShot"

    const-string v1, "showTagInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 885
    return-void
.end method

.method private showTagShotGuideDialog()V
    .locals 9

    .prologue
    const v8, 0x7f0a017a

    const v2, 0x7f0a00d5

    const/16 v7, 0x1e6

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a0235

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 905
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->isTagShotGuideDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1e5

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isGPSProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 896
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01b9

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 895
    invoke-interface {v0, v7, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x19e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01b7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto/16 :goto_0
.end method

.method private unregisterSensorManager()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 912
    const-string v0, "TagShot"

    const-string v1, "unregisterSensorManager - unregisterListener"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    .line 916
    :cond_0
    return-void
.end method

.method private updateCurrentPressure(F)V
    .locals 5
    .param p1, "current"    # F

    .prologue
    .line 924
    const/4 v2, 0x0

    .line 925
    .local v2, "medianPressure":F
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 926
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 927
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Float;

    .line 930
    .local v0, "array":[Ljava/lang/Float;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 932
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 933
    array-length v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 934
    .local v1, "center":I
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 936
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 937
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    .line 939
    :cond_1
    return-void
.end method

.method private updateTagInfo()V
    .locals 4

    .prologue
    .line 942
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 943
    const-string v1, "TagShot"

    const-string v2, "handleMessage - GPS OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    .line 949
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 950
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLatitude:Ljava/lang/Double;

    .line 951
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLongitude:Ljava/lang/Double;

    .line 953
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$7;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    .line 964
    .local v0, "locationInfoListener":Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLatitude:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLongitude:Ljava/lang/Double;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->fetchLocationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;)V

    goto :goto_0

    .line 966
    .end local v0    # "locationInfoListener":Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto :goto_0
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    .line 252
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->registerWeatherInfoReceiver()V

    .line 255
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->registerSensorManager()V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 258
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagShotGuideDialog()V

    .line 259
    return-void

    .line 245
    :array_0
    .array-data 4
        0x3
        0xc
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public onCancelDialog(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 268
    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sparse-switch p1, :sswitch_data_0

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 279
    return-void

    .line 273
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    goto :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x19e -> :sswitch_0
        0x1e5 -> :sswitch_0
        0x1e6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 283
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 8
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 287
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 288
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 291
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 295
    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    const-string v6, "Secho 1-dong / 31ft"

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 296
    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 298
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const v3, 0x7f0201f6

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationImage:Lcom/samsung/android/glview/GLImage;

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_SIDE_MARGIN:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 310
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float v2, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 314
    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    const-string v6, "14\u00b0F / 60%"

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 315
    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 317
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/TagShot;->getWeatherIconImage(I)I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_SIDE_MARGIN:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->hideTagInfo()V

    .line 333
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mIsForcastFetched:Z

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "sef_file_type"

    const/16 v1, 0x990

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->addSEFInfo(Ljava/io/File;)V

    .line 344
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    .line 361
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->hideTagInfo()V

    .line 362
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->clear()V

    .line 363
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public onNegativeButtonClicked(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 382
    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegativeButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sparse-switch p1, :sswitch_data_0

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 393
    return-void

    .line 387
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    goto :goto_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x19e -> :sswitch_0
        0x1e5 -> :sswitch_0
        0x1e6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPositiveButtonClicked(I)V
    .locals 3
    .param p1, "keyId"    # I

    .prologue
    .line 397
    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositiveButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    packed-switch p1, :pswitch_data_0

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    .line 410
    return-void

    .line 400
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->setTagShotGuideDialogEnabled(Z)V

    .line 401
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagShotGuideDialog()V

    goto :goto_0

    .line 404
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x1e5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 1
    .param p1, "captureMethod"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 436
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 440
    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 447
    :cond_1
    if-nez p1, :cond_2

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 456
    :cond_2
    :goto_0
    return-void

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method
