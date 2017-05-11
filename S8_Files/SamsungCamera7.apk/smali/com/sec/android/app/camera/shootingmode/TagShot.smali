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
.field private static final ACCU_FORECAST_URL:Ljava/lang/String; = "http://api.accuweather.com/localweather/v1/%s.json?apikey=0460650BB2524F84BAECAA9381D79EFC%s&details=true"

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
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    .line 138
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    .line 139
    const v0, 0x7f0a021d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    .line 140
    const v0, 0x7f0a021a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    .line 141
    const v0, 0x7f0a021b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    .line 142
    const v0, 0x7f0a0219

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    .line 143
    const v0, 0x7f0a0215

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_ICON_WIDTH:F

    .line 144
    const v0, 0x7f0a0217

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    .line 145
    const v0, 0x7f0a0216

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    .line 146
    const v0, 0x7f0a0218

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_SIDE_MARGIN:F

    .line 147
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_ICON_WIDTH:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    .line 148
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    .line 149
    const v0, 0x7f0a021c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    .line 151
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 152
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 153
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 154
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 155
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 156
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    .line 157
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 158
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    .line 159
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    .line 160
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    .line 161
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    .line 162
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    .line 163
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    .line 164
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLatitude:Ljava/lang/Double;

    .line 165
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLongitude:Ljava/lang/Double;

    .line 168
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    .line 190
    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    .line 191
    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    .line 196
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    .line 197
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    .line 198
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    .line 199
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 200
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    .line 201
    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCPName:Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$2;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 224
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    return p1
.end method

.method static synthetic access$010(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
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
    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->updateCurrentPressure(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->convertMetersToFeet(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->getWeatherIconImage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagInfo()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/TagShot;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->fetchForecastInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->updateTagInfo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/TagShot;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->setWeatherInfo(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;
    .param p1, "x1"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    return v0
.end method

.method private addSEFInfo(Ljava/io/File;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 476
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 478
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "LocalizedName"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    const-string v5, "Altitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string v5, "Temperature"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v5, "Unit"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v5, "RelativeHumidity"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string v5, "WeatherIcon"

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
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

    .line 490
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 493
    .local v3, "sef_byte":[B
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 494
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 496
    :try_start_1
    const-string v5, "Tag_Shot_Info"

    const/16 v6, 0x990

    const/4 v7, 0x1

    invoke-static {p1, v5, v3, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
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

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    .line 504
    return-void

    .line 484
    .end local v3    # "sef_byte":[B
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 485
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

    .line 497
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "sef_byte":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 498
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "TagShot"

    const-string v6, "error while addSEFData in TagShot"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->access$700(Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;)V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    .line 510
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->unregisterSensorManager()V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 512
    return-void
.end method

.method private convertMetersToFeet(I)I
    .locals 2
    .param p1, "meters"    # I

    .prologue
    .line 521
    const/16 v0, 0x32

    .line 522
    .local v0, "result":I
    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v0, v1

    .line 523
    return v0
.end method

.method private fetchForecastInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationKey"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v5, "TagShot"

    const-string v6, "fetchForecastInfo"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->getLocaleCode()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "localeCode":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "http://api.accuweather.com/localweather/v1/%s.json?apikey=0460650BB2524F84BAECAA9381D79EFC%s&details=true"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$3;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    .line 539
    .local v0, "errorListener":Lcom/android/volley/Response$ErrorListener;
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/TagShot$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$4;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    .line 581
    .local v3, "successListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;>;"
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;

    const-class v5, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;

    invoke-direct {v2, v4, v5, v3, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 582
    .local v2, "request":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;>;"
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 583
    return-void
.end method

.method private fetchLocationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latitude"    # Ljava/lang/String;
    .param p3, "longitude"    # Ljava/lang/String;
    .param p4, "locationInfoListener"    # Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;

    .prologue
    .line 594
    const-string v4, "TagShot"

    const-string v5, "fetchLocationInfo"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=ko"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lcom/sec/android/app/camera/shootingmode/TagShot$5;

    invoke-direct {v2, p0, p4, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot$5;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;Landroid/content/Context;)V

    .line 605
    .local v2, "successlistener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;>;"
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$6;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    .line 612
    .local v0, "errorListener":Lcom/android/volley/Response$ErrorListener;
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;

    const-class v4, Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 613
    .local v1, "request":Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;, "Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest<Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;>;"
    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 614
    return-void
.end method

.method private getLocaleCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 625
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

    .line 626
    :cond_0
    const-string v0, "&language=ko"

    .line 721
    :goto_0
    return-object v0

    .line 627
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 628
    const-string v0, "&language=ru"

    goto :goto_0

    .line 629
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

    .line 630
    :cond_3
    const-string v0, "&language=es"

    goto :goto_0

    .line 631
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

    .line 632
    :cond_5
    const-string v0, "&language=de"

    goto :goto_0

    .line 633
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

    .line 634
    :cond_7
    const-string v0, "&language=fr"

    goto :goto_0

    .line 635
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

    .line 636
    :cond_9
    const-string v0, "&language=it"

    goto/16 :goto_0

    .line 637
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

    .line 638
    :cond_b
    const-string v0, "&language=ja"

    goto/16 :goto_0

    .line 639
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

    .line 640
    :cond_d
    const-string v0, "&language=zh"

    goto/16 :goto_0

    .line 641
    :cond_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ar"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 642
    const-string v0, "&language=ar"

    goto/16 :goto_0

    .line 643
    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bn"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 644
    const-string v0, "&language=bn"

    goto/16 :goto_0

    .line 645
    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bs"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 646
    const-string v0, "&language=bs"

    goto/16 :goto_0

    .line 647
    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bg"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 648
    const-string v0, "&language=bg"

    goto/16 :goto_0

    .line 649
    :cond_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ca"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 650
    const-string v0, "&language=ca"

    goto/16 :goto_0

    .line 651
    :cond_13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 652
    const-string v0, "&language=hr"

    goto/16 :goto_0

    .line 653
    :cond_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "cs"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 654
    const-string v0, "&language=cs"

    goto/16 :goto_0

    .line 655
    :cond_15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "da"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 656
    const-string v0, "&language=da"

    goto/16 :goto_0

    .line 657
    :cond_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "nl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 658
    const-string v0, "&language=nl"

    goto/16 :goto_0

    .line 659
    :cond_17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "et"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 660
    const-string v0, "&language=et"

    goto/16 :goto_0

    .line 661
    :cond_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 662
    const-string v0, "&language=fa"

    goto/16 :goto_0

    .line 663
    :cond_19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ph"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 664
    const-string v0, "&language=ph"

    goto/16 :goto_0

    .line 665
    :cond_1a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 666
    const-string v0, "&language=fi"

    goto/16 :goto_0

    .line 667
    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "el"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 668
    const-string v0, "&language=el"

    goto/16 :goto_0

    .line 669
    :cond_1c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "he"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 670
    const-string v0, "&language=he"

    goto/16 :goto_0

    .line 671
    :cond_1d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 672
    const-string v0, "&language=hi"

    goto/16 :goto_0

    .line 673
    :cond_1e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hu"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 674
    const-string v0, "&language=hu"

    goto/16 :goto_0

    .line 675
    :cond_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "is"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 676
    const-string v0, "&language=is"

    goto/16 :goto_0

    .line 677
    :cond_20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "id"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 678
    const-string v0, "&language=id"

    goto/16 :goto_0

    .line 679
    :cond_21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "kk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 680
    const-string v0, "&language=kk"

    goto/16 :goto_0

    .line 681
    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 682
    const-string v0, "&language=lv"

    goto/16 :goto_0

    .line 683
    :cond_23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 684
    const-string v0, "&language=lt"

    goto/16 :goto_0

    .line 685
    :cond_24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "mk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 686
    const-string v0, "&language=mk"

    goto/16 :goto_0

    .line 687
    :cond_25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ms"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 688
    const-string v0, "&language=ms"

    goto/16 :goto_0

    .line 689
    :cond_26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sr-me"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 690
    const-string v0, "&language=sr-me"

    goto/16 :goto_0

    .line 691
    :cond_27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "no"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 692
    const-string v0, "&language=no"

    goto/16 :goto_0

    .line 693
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

    .line 694
    :cond_29
    const-string v0, "&language=pl"

    goto/16 :goto_0

    .line 695
    :cond_2a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 696
    const-string v0, "&language=pt"

    goto/16 :goto_0

    .line 697
    :cond_2b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ro"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 698
    const-string v0, "&language=ro"

    goto/16 :goto_0

    .line 699
    :cond_2c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 700
    const-string v0, "&language=sk"

    goto/16 :goto_0

    .line 701
    :cond_2d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 702
    const-string v0, "&language=sl"

    goto/16 :goto_0

    .line 703
    :cond_2e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sw"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 704
    const-string v0, "&language=sw"

    goto/16 :goto_0

    .line 705
    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 706
    const-string v0, "&language=sv"

    goto/16 :goto_0

    .line 707
    :cond_30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "th"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 708
    const-string v0, "&language=th"

    goto/16 :goto_0

    .line 709
    :cond_31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "tr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 710
    const-string v0, "&language=tr"

    goto/16 :goto_0

    .line 711
    :cond_32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "uk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 712
    const-string v0, "&language=uk"

    goto/16 :goto_0

    .line 713
    :cond_33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ur"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 714
    const-string v0, "&language=ur"

    goto/16 :goto_0

    .line 715
    :cond_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "vi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 716
    const-string v0, "&language=vi"

    goto/16 :goto_0

    .line 718
    :cond_35
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getWeatherIconImage(I)I
    .locals 8
    .param p1, "iconNum"    # I

    .prologue
    const v0, 0x7f02029c

    const v2, 0x7f02029a

    const v3, 0x7f02028f

    const v1, 0x7f02028d

    const v4, 0x7f02029b

    .line 726
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

    .line 727
    packed-switch p1, :pswitch_data_0

    .line 794
    :goto_0
    :pswitch_0
    return v0

    .line 734
    :pswitch_1
    const v0, 0x7f020294

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 738
    goto :goto_0

    .line 740
    :pswitch_3
    const v0, 0x7f020290

    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 742
    goto :goto_0

    .line 745
    :pswitch_5
    const v0, 0x7f020296

    goto :goto_0

    .line 747
    :pswitch_6
    const v0, 0x7f02029d

    goto :goto_0

    .line 750
    :pswitch_7
    const v0, 0x7f020297

    goto :goto_0

    .line 752
    :pswitch_8
    const v0, 0x7f020298

    goto :goto_0

    :pswitch_9
    move v0, v3

    .line 754
    goto :goto_0

    .line 757
    :pswitch_a
    const v0, 0x7f020295

    goto :goto_0

    :pswitch_b
    move v0, v4

    .line 760
    goto :goto_0

    .line 762
    :pswitch_c
    const v0, 0x7f020292

    goto :goto_0

    :pswitch_d
    move v0, v4

    .line 765
    goto :goto_0

    .line 767
    :pswitch_e
    const v0, 0x7f020299

    goto :goto_0

    .line 769
    :pswitch_f
    const v0, 0x7f020291

    goto :goto_0

    .line 771
    :pswitch_10
    const v0, 0x7f02028e

    goto :goto_0

    .line 773
    :pswitch_11
    const v0, 0x7f02029e

    goto :goto_0

    .line 775
    :pswitch_12
    const v0, 0x7f02028c

    goto :goto_0

    .line 777
    :pswitch_13
    const v0, 0x7f020293

    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 782
    goto :goto_0

    :pswitch_15
    move v0, v2

    .line 785
    goto :goto_0

    .line 788
    :pswitch_16
    const v0, 0x7f02029d

    goto :goto_0

    :pswitch_17
    move v0, v3

    .line 790
    goto :goto_0

    :pswitch_18
    move v0, v4

    .line 792
    goto :goto_0

    .line 727
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

    .line 799
    const-string v0, "TagShot"

    const-string v1, "hideTagInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 802
    return-void
.end method

.method private isTagShotGuideDialogEnabled()Z
    .locals 3

    .prologue
    .line 805
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
    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 821
    const-string v0, "TagShot"

    const-string v1, "registerSensorManager - registerListener"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 825
    :cond_0
    return-void
.end method

.method private registerWeatherInfoReceiver()V
    .locals 3

    .prologue
    .line 828
    const-string v1, "TagShot"

    const-string v2, "registerWeatherInfoReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 830
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 836
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->requestWeatherDataSync()V

    .line 837
    return-void
.end method

.method private requestWeatherDataSync()V
    .locals 3

    .prologue
    .line 840
    const-string v1, "TagShot"

    const-string v2, "requestWeatherDataSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v0, "weatherTrigger":Landroid/content/Intent;
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 843
    const-string v1, "PACKAGE"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v1, "CP"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 846
    const-string v1, "TagShot"

    const-string v2, "SendBroadcast() from Camera to Weather Deamon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void
.end method

.method private restoreDefaultShootingMode()V
    .locals 2

    .prologue
    .line 850
    const-string v0, "TagShot"

    const-string v1, "restoreDefaultShootingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultShootingModeByCurrentCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShootingModeChanged(I)V

    .line 852
    return-void
.end method

.method private sendMessageToUpdateTagInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 858
    const-string v0, "TagShot"

    const-string v1, "sendMessageToUpdateTagInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 865
    :cond_1
    return-void
.end method

.method private setTagShotGuideDialogEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_tag_shot_guide_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_tag_shot_guide_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 812
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

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setIconNumber(I)V

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setCurrentTemperature(F)V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setTempScale(I)V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setHighTemperature(F)V

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setLowTemperature(F)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setTrusted(I)V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->dump()V

    .line 876
    return-void
.end method

.method private showTagInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 879
    const-string v0, "TagShot"

    const-string v1, "showTagInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 882
    return-void
.end method

.method private showTagShotGuideDialog()V
    .locals 9

    .prologue
    const v3, 0x7f0901bb

    const v8, 0x7f09019b

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f090240

    invoke-static {v0, v1, v5}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 902
    :goto_0
    return-void

    .line 889
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->isTagShotGuideDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->TAG_SHOT_FIRST_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isGPSProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->TAG_SHOT_ENABLE_LOCATION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 893
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901b9

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 892
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_LAUNCH_CAMERA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->TAG_SHOT_ENABLE_LOCATION:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901b7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto/16 :goto_0
.end method

.method private unregisterSensorManager()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 909
    const-string v0, "TagShot"

    const-string v1, "unregisterSensorManager - unregisterListener"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    .line 913
    :cond_0
    return-void
.end method

.method private updateCurrentPressure(F)V
    .locals 5
    .param p1, "current"    # F

    .prologue
    .line 921
    const/4 v2, 0x0

    .line 922
    .local v2, "medianPressure":F
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 923
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 924
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Float;

    .line 927
    .local v0, "array":[Ljava/lang/Float;
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 929
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 930
    array-length v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 931
    .local v1, "center":I
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 933
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 934
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    .line 936
    :cond_1
    return-void
.end method

.method private updateTagInfo()V
    .locals 4

    .prologue
    .line 939
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 940
    const-string v1, "TagShot"

    const-string v2, "handleMessage - GPS OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :goto_0
    return-void

    .line 944
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLatitude:Ljava/lang/Double;

    .line 948
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLongitude:Ljava/lang/Double;

    .line 950
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$7;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    .line 961
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

    .line 963
    .end local v0    # "locationInfoListener":Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto :goto_0
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    .line 253
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    .line 255
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->registerWeatherInfoReceiver()V

    .line 256
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->registerSensorManager()V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    .line 259
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagShotGuideDialog()V

    .line 260
    return-void

    .line 246
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
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public onCancelDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 3
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 269
    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/TagShot$8;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 280
    return-void

    .line 274
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 284
    return-void
.end method

.method public onCreateDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 288
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
    .line 292
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 293
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 296
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

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 300
    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    const-string v6, "Secho 1-dong / 31ft"

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 301
    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 303
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const v3, 0x7f020210

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationImage:Lcom/samsung/android/glview/GLImage;

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 308
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

    .line 310
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

    .line 311
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

    .line 315
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

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 319
    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    const-string v6, "14\u00b0F / 60%"

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 320
    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 322
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

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    .line 327
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

    .line 329
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

    .line 331
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

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->hideTagInfo()V

    .line 338
    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 343
    const-string v0, "sef_file_type"

    const/16 v1, 0x990

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->addSEFInfo(Ljava/io/File;)V

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public onDismissDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 352
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    .line 368
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->hideTagInfo()V

    .line 369
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->clear()V

    .line 370
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 3
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 389
    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegativeButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/TagShot$8;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 400
    return-void

    .line 394
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 3
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 404
    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositiveButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/TagShot$8;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraContext$DialogID:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    .line 417
    return-void

    .line 407
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->setTagShotGuideDialogEnabled(Z)V

    .line 408
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagShotGuideDialog()V

    goto :goto_0

    .line 411
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 1
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 453
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 457
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

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 464
    :cond_1
    if-nez p1, :cond_2

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 473
    :cond_2
    :goto_0
    return-void

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method
