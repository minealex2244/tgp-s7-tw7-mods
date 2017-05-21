.class public Lcom/sec/android/app/camera/util/WatermarkUtil;
.super Ljava/lang/Object;
.source "WatermarkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;,
        Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;
    }
.end annotation


# static fields
.field private static final ACCU_LOCATION_KEY_URL:Ljava/lang/String; = "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=zh"

.field private static final ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

.field private static final ACTION_SEC_AUTO_REFRESH:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

.field private static final ACTION_SEC_CHANGE_SETTING:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

.field private static final ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

.field private static final ACTION_WEATHER_DATE_SYNC:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

.field private static final CENTURY_ARRAY:[[D

.field private static final CHINESE_MONTH_NUMBER:[Ljava/lang/String;

.field private static final CHINESE_NUMBER:[Ljava/lang/String;

.field private static final CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field private static final DECREASE_OFFSETMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INCREASE_OFFSETMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CURRENT_CITY:Ljava/lang/String; = "aw_daemon_service_key_loc_code"

.field private static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field private static final KEY_ERROR_BUNDLE:Ljava/lang/String; = "Error_Code"

.field private static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field private static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_weather_icon_num"

.field private static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"

.field private static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field private static final LUNAR_INFO:[J

.field private static final MY_WEATHER_INFO_URI:Landroid/net/Uri;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.accuweather.provider"

.field private static final TAG:Ljava/lang/String; = "WatermarkUtil"

.field private static final TERMS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static mAltitude:Ljava/lang/String;

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mCity:Ljava/lang/String;

.field private static mCountry:Ljava/lang/String;

.field private static mCurrentDate:Ljava/lang/String;

.field private static mCurrentTime:Ljava/lang/String;

.field private static mCurrentYear:I

.field private static mDateAndTime:Ljava/lang/String;

.field private static mDay:I

.field private static mDist:Ljava/lang/String;

.field private static mHoliday:Ljava/lang/String;

.field private static mIsLunarFestival:Z

.field private static mKaitiTypeface:Landroid/graphics/Typeface;

.field private static mLatitude:Ljava/lang/String;

.field private static mLeap:Z

.field private static mLongitude:Ljava/lang/String;

.field private static mLunarDate:Ljava/lang/String;

.field private static mLunarYear:Ljava/lang/String;

.field private static mMiaoTypeface:Landroid/graphics/Typeface;

.field private static mMonth:I

.field private static mPM25:Ljava/lang/String;

.field private static mProvince:Ljava/lang/String;

.field private static mQueue:Lcom/android/volley/RequestQueue;

.field private static mShaonvTypeface:Landroid/graphics/Typeface;

.field private static mSolarTerm:Ljava/lang/String;

.field private static mTemperature:Ljava/lang/String;

.field private static mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

.field private static mWeatherInitialized:Ljava/lang/Boolean;

.field private static mWeatherString:Ljava/lang/String;

.field private static mWeekday:Ljava/lang/String;

.field private static mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 67
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e00"

    aput-object v1, v0, v5

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v6

    const-string v1, "\u56db"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    .line 69
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6b63"

    aput-object v1, v0, v5

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v6

    const-string v1, "\u56db"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    .line 71
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->LUNAR_INFO:[J

    .line 96
    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    .line 108
    const-string v0, "COL_WEATHER_KEY=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "cityId:current"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    .line 109
    new-array v0, v6, [[D

    const/16 v1, 0x18

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    const/16 v1, 0x18

    new-array v1, v1, [D

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->CENTURY_ARRAY:[[D

    .line 119
    sput-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    .line 120
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInitialized:Ljava/lang/Boolean;

    .line 121
    const-string v0, "16"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mTemperature:Ljava/lang/String;

    .line 122
    const-string v0, "\u6674"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    .line 123
    const-string v0, "\u5317\u4eac"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCity:Ljava/lang/String;

    .line 124
    const-string v0, "\u4e2d\u56fd"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCountry:Ljava/lang/String;

    .line 125
    const-string v0, "\u671d\u9633\u533a"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDist:Ljava/lang/String;

    .line 126
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mProvince:Ljava/lang/String;

    .line 127
    const-string v0, "230"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mPM25:Ljava/lang/String;

    .line 128
    const-string v0, "31"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mAltitude:Ljava/lang/String;

    .line 129
    const-string v0, "45"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLatitude:Ljava/lang/String;

    .line 130
    const-string v0, "180"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLongitude:Ljava/lang/String;

    .line 131
    const/16 v0, 0x7e1

    sput v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentYear:I

    .line 132
    const-string v0, "18:00"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentTime:Ljava/lang/String;

    .line 133
    const-string v0, "4 - 20"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentDate:Ljava/lang/String;

    .line 134
    const-string v0, "\u661f\u671f\u4e00"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeekday:Ljava/lang/String;

    .line 135
    sput-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLunarDate:Ljava/lang/String;

    .line 136
    const-string v0, "\u5e73\u65e5"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mSolarTerm:Ljava/lang/String;

    .line 137
    const-string v0, "unknown"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mHoliday:Ljava/lang/String;

    .line 138
    const-string v0, "2016.4.20 23:20"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDateAndTime:Ljava/lang/String;

    .line 139
    const-string v0, "\u4e19\u7533"

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLunarYear:Ljava/lang/String;

    .line 140
    const/16 v0, 0x7e0

    sput v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mYear:I

    .line 141
    sput v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mMonth:I

    .line 142
    sput v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDay:I

    .line 145
    sput-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->mQueue:Lcom/android/volley/RequestQueue;

    .line 146
    new-instance v0, Lcom/sec/android/app/camera/util/WatermarkUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->YUSHUI:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->CHUNFEN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x824

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOMAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->MANGZHONG:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x76e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAZHI:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x788

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOSHU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    const/16 v3, 0x785

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x7e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DASHU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x782

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->LIQIU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->BAILU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x787

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->QIUFEN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x796

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->SHUANGJIANG:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x829

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->LIDONG:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x829

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOXUE:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7ba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DAXUE:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DONGZHI:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    const/16 v3, 0x77e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x7e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DAHAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x822

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void

    .line 71
    nop

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    .line 109
    :array_1
    .array-data 8
        0x4012849ba5e353f8L    # 4.6295
        0x403375bc01a36e2fL    # 19.4599
        0x401987c84b5dcc64L    # 6.3826
        0x40356a5e353f7ceeL    # 21.4155
        0x40165c28f5c28f5cL    # 5.59
        0x4034e353f7ced917L    # 20.888
        0x401945a1cac08312L    # 6.318
        0x4035dc28f5c28f5cL    # 21.86
        0x401a000000000000L    # 6.5
        0x4036333333333333L    # 22.2
        0x401fb645a1cac083L    # 7.928
        0x4037a66666666666L    # 23.65
        0x4020b33333333333L    # 8.35
        0x4037f33333333333L    # 23.95
        0x4020e147ae147ae1L    # 8.44
        0x4037d26e978d4fdfL    # 23.822
        0x4022322d0e560419L    # 9.098
        0x403837ced916872bL    # 24.218
        0x40206f9db22d0e56L    # 8.218
        0x4037147ae147ae14L    # 23.08
        0x401f99999999999aL    # 7.9
        0x403699999999999aL    # 22.6
        0x401870a3d70a3d71L    # 6.11
        0x4034d70a3d70a3d7L    # 20.84
    .end array-data

    :array_2
    .array-data 8
        0x400ef5c28f5c28f6L    # 3.87
        0x4032bae147ae147bL    # 18.73
        0x4016851eb851eb85L    # 5.63
        0x4034a5604189374cL    # 20.646
        0x40133d70a3d70a3dL    # 4.81
        0x403419999999999aL    # 20.1
        0x4016147ae147ae14L    # 5.52
        0x40350a3d70a3d70aL    # 21.04
        0x4016b645a1cac083L    # 5.678
        0x40355eb851eb851fL    # 21.37
        0x401c6e978d4fdf3bL    # 7.108
        0x4036d47ae147ae14L    # 22.83
        0x401e000000000000L    # 7.5
        0x40372147ae147ae1L    # 23.13
        0x401e95810624dd2fL    # 7.646
        0x40370ac083126e98L    # 23.042
        0x4020a2d0e5604189L    # 8.318
        0x40377020c49ba5e3L    # 23.438
        0x401dc083126e978dL    # 7.438
        0x40365c28f5c28f5cL    # 22.36
        0x401cb851eb851eb8L    # 7.18
        0x4035f0a3d70a3d71L    # 21.94
        0x40159f3b645a1cacL    # 5.4055
        0x40341eb851eb851fL    # 20.12
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/WatermarkUtil;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    sput-object p0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    sput-object p0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    sput-object p0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCountry:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    sput-object p0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mProvince:Ljava/lang/String;

    return-object p0
.end method

.method private static convertLunar(Ljava/util/Calendar;)V
    .locals 14
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 599
    new-instance v0, Ljava/util/Date;

    const-wide v8, -0x201bca5b800L

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 600
    .local v0, "baseDate":Ljava/util/Date;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 601
    .local v6, "offset":I
    const/4 v2, 0x0

    .line 602
    .local v2, "daysOfYear":I
    const/16 v4, 0x76c

    .local v4, "iYear":I
    :goto_0
    const/16 v7, 0x802

    if-ge v4, v7, :cond_0

    if-lez v6, :cond_0

    .line 603
    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->yearDays(I)I

    move-result v2

    .line 604
    sub-int/2addr v6, v2

    .line 602
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 606
    :cond_0
    if-gez v6, :cond_1

    .line 607
    add-int/2addr v6, v2

    .line 608
    add-int/lit8 v4, v4, -0x1

    .line 611
    :cond_1
    sput v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mYear:I

    .line 612
    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->leapMonth(I)I

    move-result v5

    .line 613
    .local v5, "leapMonth":I
    sput-boolean v12, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    .line 614
    const/4 v1, 0x0

    .line 615
    .local v1, "daysOfMonth":I
    const/4 v3, 0x1

    .local v3, "iMonth":I
    :goto_1
    const/16 v7, 0xd

    if-ge v3, v7, :cond_4

    if-lez v6, :cond_4

    .line 616
    if-lez v5, :cond_3

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_3

    sget-boolean v7, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    if-nez v7, :cond_3

    .line 617
    add-int/lit8 v3, v3, -0x1

    .line 618
    sput-boolean v13, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    .line 619
    sget v7, Lcom/sec/android/app/camera/util/WatermarkUtil;->mYear:I

    invoke-static {v7}, Lcom/sec/android/app/camera/util/WatermarkUtil;->leapDays(I)I

    move-result v1

    .line 622
    :goto_2
    sub-int/2addr v6, v1

    .line 623
    sget-boolean v7, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    if-eqz v7, :cond_2

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_2

    .line 624
    sput-boolean v12, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    .line 615
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 621
    :cond_3
    sget v7, Lcom/sec/android/app/camera/util/WatermarkUtil;->mYear:I

    invoke-static {v7, v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->monthDays(II)I

    move-result v1

    goto :goto_2

    .line 626
    :cond_4
    if-nez v6, :cond_5

    if-lez v5, :cond_5

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_5

    .line 627
    sget-boolean v7, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    if-eqz v7, :cond_7

    .line 628
    sput-boolean v12, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    .line 635
    :cond_5
    :goto_3
    if-gez v6, :cond_6

    .line 636
    add-int/2addr v6, v1

    .line 637
    add-int/lit8 v3, v3, -0x1

    .line 639
    :cond_6
    sput v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->mMonth:I

    .line 640
    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDay:I

    .line 641
    return-void

    .line 630
    :cond_7
    sput-boolean v13, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    .line 631
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method private static final cyclical()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    sget v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mYear:I

    add-int/lit16 v1, v1, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 645
    .local v0, "num":I
    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final cyclicalm(I)Ljava/lang/String;
    .locals 9
    .param p0, "num"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 649
    const/16 v2, 0xa

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "\u7532"

    aput-object v2, v0, v4

    const-string v2, "\u4e59"

    aput-object v2, v0, v5

    const-string v2, "\u4e19"

    aput-object v2, v0, v6

    const-string v2, "\u4e01"

    aput-object v2, v0, v7

    const-string v2, "\u620a"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "\u5df1"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u5e9a"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u8f9b"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u58ec"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u7678"

    aput-object v3, v0, v2

    .line 651
    .local v0, "Gan":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u5b50"

    aput-object v2, v1, v4

    const-string v2, "\u4e11"

    aput-object v2, v1, v5

    const-string v2, "\u5bc5"

    aput-object v2, v1, v6

    const-string v2, "\u536f"

    aput-object v2, v1, v7

    const-string v2, "\u8fb0"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u5df3"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u5348"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u672a"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u7533"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u9149"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u620c"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u4ea5"

    aput-object v3, v1, v2

    .line 653
    .local v1, "Zhi":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p0, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getChinaDayString(I)Ljava/lang/String;
    .locals 4
    .param p0, "day"    # I

    .prologue
    .line 657
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u521d"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u5341"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u5eff"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u5345"

    aput-object v3, v0, v2

    .line 658
    .local v0, "chineseTen":[Ljava/lang/String;
    rem-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 659
    .local v1, "n":I
    :goto_0
    const/16 v2, 0x1e

    if-le p0, v2, :cond_1

    .line 660
    const-string v2, ""

    .line 664
    :goto_1
    return-object v2

    .line 658
    .end local v1    # "n":I
    :cond_0
    rem-int/lit8 v2, p0, 0xa

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 661
    .restart local v1    # "n":I
    :cond_1
    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    .line 662
    const-string v2, "\u521d\u5341"

    goto :goto_1

    .line 664
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getChinaNumString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 668
    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v6

    const-string v4, "\u4e00"

    aput-object v4, v1, v7

    const-string v4, "\u4e8c"

    aput-object v4, v1, v8

    const-string v4, "\u4e09"

    aput-object v4, v1, v9

    const-string v4, "\u56db"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string v5, "\u4e94"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "\u516d"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "\u4e03"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "\u516b"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "\u4e5d"

    aput-object v5, v1, v4

    .line 669
    .local v1, "nums":[Ljava/lang/String;
    const/16 v4, 0xa

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v6

    const-string v4, "\u5341"

    aput-object v4, v3, v7

    const-string v4, "\u5eff"

    aput-object v4, v3, v8

    const-string v4, "\u4e09\u5341"

    aput-object v4, v3, v9

    const-string v4, "\u56db\u5341"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "\u4e94\u5341"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "\u516d\u5341"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "\u4e03\u5341"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "\u516b\u5341"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "\u4e5d\u5341"

    aput-object v5, v3, v4

    .line 670
    .local v3, "tens":[Ljava/lang/String;
    const-string v2, ""

    .line 671
    .local v2, "res":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v0, v4

    .line 672
    .local v0, "num":I
    if-gez v0, :cond_0

    .line 673
    const-string v2, "\u8d1f"

    .line 674
    neg-int v0, v0

    .line 676
    :cond_0
    const/16 v4, 0x14

    if-ne v0, v4, :cond_1

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    :cond_1
    const/16 v4, 0x63

    if-le v0, v4, :cond_2

    .line 680
    const-string v4, "\u5341\u516d"

    .line 683
    :goto_0
    return-object v4

    .line 682
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v5, v0, 0xa

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-int/lit8 v5, v0, 0xa

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 683
    goto :goto_0
.end method

.method private static getChineseEveDate(I)Ljava/lang/String;
    .locals 4
    .param p0, "year"    # I

    .prologue
    .line 687
    add-int/lit8 v2, p0, -0x1

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->monthDays(II)I

    move-result v0

    .line 688
    .local v0, "days":I
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    const-string v1, "\u5341\u4e8c\u6708\u4e09\u5341"

    .line 689
    .local v1, "eve":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 688
    .end local v1    # "eve":Ljava/lang/String;
    :cond_0
    const-string v1, "\u5341\u4e8c\u6708\u5eff\u4e5d"

    goto :goto_0
.end method

.method public static getChnDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 190
    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChnTemperature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mTemperature:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getChnTemperatureFormat2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v1, ""

    .line 199
    .local v1, "res":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInitialized:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    const-string p0, "-3"

    .line 202
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    .line 203
    .local v0, "num":I
    if-gez v0, :cond_1

    .line 204
    const-string v1, "\u96f6\u4e0b"

    .line 205
    neg-int v0, v0

    .line 207
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    return-object v1
.end method

.method public static getChnWeather()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Sunny"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    const-string v0, "\u6674"

    .line 503
    :goto_0
    return-object v0

    .line 421
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Cloudy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 422
    const-string v0, "\u591a\u4e91"

    goto :goto_0

    .line 423
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Overcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 424
    const-string v0, "\u9634"

    goto :goto_0

    .line 425
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Shower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 426
    const-string v0, "\u9635\u96e8"

    goto :goto_0

    .line 427
    :cond_3
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Thundershower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 428
    const-string v0, "\u96f7\u9635\u96e8"

    goto :goto_0

    .line 429
    :cond_4
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Thundershower with hail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 430
    const-string v0, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    goto :goto_0

    .line 431
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Sleet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 432
    const-string v0, "\u96e8\u5939\u96ea"

    goto :goto_0

    .line 433
    :cond_6
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Light rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 434
    const-string v0, "\u5c0f\u96e8"

    goto :goto_0

    .line 435
    :cond_7
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 436
    const-string v0, "\u4e2d\u96e8"

    goto :goto_0

    .line 437
    :cond_8
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 438
    const-string v0, "\u5927\u96e8"

    goto :goto_0

    .line 439
    :cond_9
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 440
    const-string v0, "\u66b4\u96e8"

    goto/16 :goto_0

    .line 441
    :cond_a
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 442
    const-string v0, "\u5927\u66b4\u96e8"

    goto/16 :goto_0

    .line 443
    :cond_b
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Severe storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 444
    const-string v0, "\u7279\u5927\u66b4\u96e8"

    goto/16 :goto_0

    .line 445
    :cond_c
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Snow flurry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 446
    const-string v0, "\u9635\u96ea"

    goto/16 :goto_0

    .line 447
    :cond_d
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Light snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 448
    const-string v0, "\u5c0f\u96ea"

    goto/16 :goto_0

    .line 449
    :cond_e
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 450
    const-string v0, "\u4e2d\u96ea"

    goto/16 :goto_0

    .line 451
    :cond_f
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 452
    const-string v0, "\u5927\u96ea"

    goto/16 :goto_0

    .line 453
    :cond_10
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Snowstorm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 454
    const-string v0, "\u66b4\u96ea"

    goto/16 :goto_0

    .line 455
    :cond_11
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 456
    const-string v0, "\u96fe"

    goto/16 :goto_0

    .line 457
    :cond_12
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Ice rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 458
    const-string v0, "\u51bb\u96e8"

    goto/16 :goto_0

    .line 459
    :cond_13
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Duststorm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 460
    const-string v0, "\u6c99\u5c18\u66b4"

    goto/16 :goto_0

    .line 461
    :cond_14
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Light to moderate rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 462
    const-string v0, "\u5c0f\u5230\u4e2d\u96e8"

    goto/16 :goto_0

    .line 463
    :cond_15
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate to heavy rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 464
    const-string v0, "\u4e2d\u5230\u5927\u96e8"

    goto/16 :goto_0

    .line 465
    :cond_16
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy rain to storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 466
    const-string v0, "\u5927\u5230\u66b4\u96e8"

    goto/16 :goto_0

    .line 467
    :cond_17
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Storm to heavy storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    .line 468
    const-string v0, "\u66b4\u96e8\u5230\u5927\u66b4\u96e8"

    goto/16 :goto_0

    .line 469
    :cond_18
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy to severe storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 470
    const-string v0, "\u5927\u66b4\u96e8\u5230\u7279\u5927\u66b4\u96e8"

    goto/16 :goto_0

    .line 471
    :cond_19
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Light to moderate snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 472
    const-string v0, "\u5c0f\u5230\u4e2d\u96ea"

    goto/16 :goto_0

    .line 473
    :cond_1a
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate to heavy snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 474
    const-string v0, "\u4e2d\u5230\u5927\u96ea"

    goto/16 :goto_0

    .line 475
    :cond_1b
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy snow to snowstorm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 476
    const-string v0, "\u5927\u5230\u66b4\u96ea"

    goto/16 :goto_0

    .line 477
    :cond_1c
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Dust"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 478
    const-string v0, "\u6d6e\u6c89"

    goto/16 :goto_0

    .line 479
    :cond_1d
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Sand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 480
    const-string v0, "\u626c\u6c99"

    goto/16 :goto_0

    .line 481
    :cond_1e
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Sandstorm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 482
    const-string v0, "\u5f3a\u6c99\u5c18\u66b4"

    goto/16 :goto_0

    .line 483
    :cond_1f
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Dense Foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 484
    const-string v0, "\u6d53\u96fe"

    goto/16 :goto_0

    .line 485
    :cond_20
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 486
    const-string v0, "\u96ea"

    goto/16 :goto_0

    .line 487
    :cond_21
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Strong dense foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    .line 488
    const-string v0, "\u5f3a\u6d53\u96fe"

    goto/16 :goto_0

    .line 489
    :cond_22
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Haze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    .line 490
    const-string v0, "\u973e"

    goto/16 :goto_0

    .line 491
    :cond_23
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Moderate haze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_24

    .line 492
    const-string v0, "\u4e2d\u5ea6\u973e"

    goto/16 :goto_0

    .line 493
    :cond_24
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy haze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    .line 494
    const-string v0, "\u91cd\u5ea6\u973e"

    goto/16 :goto_0

    .line 495
    :cond_25
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Severe haze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    .line 496
    const-string v0, "\u4e25\u91cd\u973e"

    goto/16 :goto_0

    .line 497
    :cond_26
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Heavy foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 498
    const-string v0, "\u5927\u96fe"

    goto/16 :goto_0

    .line 499
    :cond_27
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "Extra-strong dense foggy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    .line 500
    const-string v0, "\u7279\u5f3a\u6d53\u96fe"

    goto/16 :goto_0

    .line 503
    :cond_28
    const-string v0, "\u5c0f\u96ea"

    goto/16 :goto_0
.end method

.method public static getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentDate:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentDate:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentDayOfWeek()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 223
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "dayList":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat01()Ljava/lang/String;
    .locals 5

    .prologue
    .line 238
    const-string v0, "%s  \u661f \u671f %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeekday:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeekday:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDateAndTime:Ljava/lang/String;

    .line 239
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateFormat02()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    const-string v0, "%s - %s ,  %s\u2103"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->mTemperature:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDateAndTime:Ljava/lang/String;

    .line 245
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateFormat03()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getTemperature()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDateAndTime:Ljava/lang/String;

    .line 251
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 255
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 256
    .local v1, "now":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDateforFestival()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    sget-boolean v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mIsLunarFestival:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFestival(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 693
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 719
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mSolarTerm:Ljava/lang/String;

    const-string v1, "\u6e05\u660e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    const-string v0, "\u6e05\u660e\u8282"

    .line 721
    :goto_1
    return-object v0

    .line 693
    :sswitch_0
    const-string v1, "01.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "02.14"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "03.08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "03.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "05.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "05.04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "06.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "07.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "08.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "09.10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "10.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "12.25"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    .line 695
    :pswitch_0
    const-string v0, "\u5143\u65e6"

    goto :goto_1

    .line 697
    :pswitch_1
    const-string v0, "\u60c5\u4eba\u8282"

    goto/16 :goto_1

    .line 699
    :pswitch_2
    const-string v0, "\u5987\u5973\u8282"

    goto/16 :goto_1

    .line 701
    :pswitch_3
    const-string v0, "\u690d\u6811\u8282"

    goto/16 :goto_1

    .line 703
    :pswitch_4
    const-string v0, "\u52b3\u52a8\u8282"

    goto/16 :goto_1

    .line 705
    :pswitch_5
    const-string v0, "\u9752\u5e74\u8282"

    goto/16 :goto_1

    .line 707
    :pswitch_6
    const-string v0, "\u513f\u7ae5\u8282"

    goto/16 :goto_1

    .line 709
    :pswitch_7
    const-string v0, "\u5efa\u515a\u8282"

    goto/16 :goto_1

    .line 711
    :pswitch_8
    const-string v0, "\u5efa\u519b\u8282"

    goto/16 :goto_1

    .line 713
    :pswitch_9
    const-string v0, "\u6559\u5e08\u8282"

    goto/16 :goto_1

    .line 715
    :pswitch_a
    const-string v0, "\u56fd\u5e86\u8282"

    goto/16 :goto_1

    .line 717
    :pswitch_b
    const-string v0, "\u5723\u8bde\u8282"

    goto/16 :goto_1

    .line 721
    :cond_1
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 693
    :sswitch_data_0
    .sparse-switch
        0x2bb610e -> :sswitch_0
        0x2bbd58f -> :sswitch_1
        0x2bc49d3 -> :sswitch_2
        0x2bc49ec -> :sswitch_3
        0x2bd328a -> :sswitch_4
        0x2bd328d -> :sswitch_5
        0x2bda6e9 -> :sswitch_6
        0x2be1b48 -> :sswitch_7
        0x2be8fa7 -> :sswitch_8
        0x2bf0424 -> :sswitch_9
        0x2c90430 -> :sswitch_a
        0x2c9ed30 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getGpsInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    const-string v0, "%s  %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLongitude()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLatitude()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHoliday()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLunarFestival(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mHoliday:Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mHoliday:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "MM.dd"

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getFestival(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mHoliday:Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mHoliday:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5e73\u5e38\u65e5"

    :goto_0
    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mHoliday:Ljava/lang/String;

    .line 278
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mHoliday:Ljava/lang/String;

    return-object v0

    .line 276
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mHoliday:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getKaitiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mKaitiTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.kaiti"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 285
    .local v0, "am":Landroid/content/res/AssetManager;
    const-string v2, "fonts/Kaiti.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mKaitiTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mKaitiTypeface:Landroid/graphics/Typeface;

    return-object v2

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mKaitiTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getLatitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 294
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    .line 295
    .local v0, "lat":I
    if-lez v0, :cond_0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1c\u7ecf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    :goto_0
    return-object v1

    .line 297
    :cond_0
    if-gez v0, :cond_1

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u897f\u7ecf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 299
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ecf\u5ea6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getLocationInfo(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 726
    const-string v1, "WatermarkUtil"

    const-string v2, "getLocationInfo"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/camera/util/WatermarkUtil$2;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$2;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/util/WatermarkUtil$3;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil$3;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 803
    .local v0, "jsonObjectRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 804
    return-void
.end method

.method public static getLocationString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 303
    const-string v1, "%s,  %s,  %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCountry:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCity:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDist:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "mLoc":Ljava/lang/String;
    return-object v0
.end method

.method public static getLocationString01()Ljava/lang/String;
    .locals 5

    .prologue
    .line 309
    const-string v1, "%s\u5e02,  %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCity:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDist:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "mLoc":Ljava/lang/String;
    return-object v0
.end method

.method public static getLocationString02()Ljava/lang/String;
    .locals 5

    .prologue
    .line 315
    const-string v1, "%s  /  %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCountry:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCity:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "mLoc":Ljava/lang/String;
    return-object v0
.end method

.method public static getLongitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLongitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    .line 321
    .local v0, "mLong":I
    if-lez v0, :cond_0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5317\u7eac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    .line 323
    :cond_0
    if-gez v0, :cond_1

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5357\u7eac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 325
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7eac\u5ea6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLunarDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    sget v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708\u00b7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDay:I

    invoke-static {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLunarFestival(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "lunarDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    sput-boolean v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mIsLunarFestival:Z

    .line 334
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 354
    sget v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentYear:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChineseEveDate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "\u9664\u5915"

    .line 358
    :goto_1
    return-object v0

    .line 334
    :sswitch_0
    const-string v2, "\u6b63\u6708\u00b7\u521d\u4e00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "\u6b63\u6708\u00b7\u521d\u4e8c"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v2, "\u6b63\u6708\u00b7\u521d\u4e09"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "\u6b63\u6708\u00b7\u5341\u4e94"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "\u4e94\u6708\u00b7\u521d\u4e94"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "\u516b\u6708\u00b7\u5341\u4e94"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "\u4e5d\u6708\u00b7\u521d\u4e5d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "\u4e03\u6708\u00b7\u521d\u4e03"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "\u4e03\u6708\u00b7\u5341\u56db"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "\u5341\u4e8c\u6708\u00b7\u521d\u516b"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    .line 338
    :pswitch_0
    const-string v0, "\u6625\u8282"

    goto :goto_1

    .line 340
    :pswitch_1
    const-string v0, "\u5143\u5bb5\u8282"

    goto :goto_1

    .line 342
    :pswitch_2
    const-string v0, "\u7aef\u5348\u8282"

    goto :goto_1

    .line 344
    :pswitch_3
    const-string v0, "\u4e2d\u79cb\u8282"

    goto :goto_1

    .line 346
    :pswitch_4
    const-string v0, "\u91cd\u9633\u8282"

    goto :goto_1

    .line 348
    :pswitch_5
    const-string v0, "\u4e03\u5915\u8282"

    goto :goto_1

    .line 350
    :pswitch_6
    const-string v0, "\u4e2d\u5143\u8282"

    goto :goto_1

    .line 352
    :pswitch_7
    const-string v0, "\u814a\u516b\u8282"

    goto :goto_1

    .line 357
    :cond_1
    sput-boolean v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mIsLunarFestival:Z

    .line 358
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 334
    :sswitch_data_0
    .sparse-switch
        -0x7dce5066 -> :sswitch_4
        -0x6d187c38 -> :sswitch_9
        -0x55c96db3 -> :sswitch_5
        0x1828cc55 -> :sswitch_0
        0x1828cc5e -> :sswitch_2
        0x1828cce1 -> :sswitch_1
        0x1828f045 -> :sswitch_3
        0x7a365ef8 -> :sswitch_7
        0x7a368b2c -> :sswitch_8
        0x7f2aa2ac -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getLunarYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLunarYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiaoTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mMiaoTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 369
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.miao"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 370
    .local v0, "am":Landroid/content/res/AssetManager;
    const-string v2, "fonts/Miao.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mMiaoTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mMiaoTypeface:Landroid/graphics/Typeface;

    return-object v2

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mMiaoTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getOffset(Ljava/util/Map;ILjava/lang/String;I)I
    .locals 6
    .param p1, "year"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 380
    .local v1, "off":I
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    .line 381
    .local v2, "years":[Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 382
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 383
    .local v0, "i":I
    if-ne v0, p1, :cond_1

    .line 384
    move v1, p3

    .line 389
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 382
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getPM25()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PM2.5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mPM25:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShaonvTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mShaonvTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.shaonv"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 401
    .local v0, "am":Landroid/content/res/AssetManager;
    const-string v2, "fonts/Shaonv.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mShaonvTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0    # "am":Landroid/content/res/AssetManager;
    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mShaonvTypeface:Landroid/graphics/Typeface;

    return-object v2

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mShaonvTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getSolarTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mSolarTerm:Ljava/lang/String;

    return-object v0
.end method

.method private static getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "year"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 807
    const-wide/16 v2, 0x0

    .line 808
    .local v2, "centuryValue":D
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 809
    invoke-static {p1}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->ordinal()I

    move-result v5

    .line 811
    .local v5, "ordinal":I
    const/4 v0, -0x1

    .line 812
    .local v0, "centuryIndex":I
    const/16 v7, 0x76d

    if-lt p0, v7, :cond_4

    const/16 v7, 0x7d0

    if-gt p0, v7, :cond_4

    .line 813
    const/4 v0, 0x0

    .line 819
    :goto_0
    sget-object v7, Lcom/sec/android/app/camera/util/WatermarkUtil;->CENTURY_ARRAY:[[D

    aget-object v7, v7, v0

    aget-wide v2, v7, v5

    .line 820
    const/4 v1, 0x0

    .line 821
    .local v1, "dateNum":I
    rem-int/lit8 v6, p0, 0x64

    .line 822
    .local v6, "y":I
    rem-int/lit8 v7, p0, 0x4

    if-nez v7, :cond_0

    rem-int/lit8 v7, p0, 0x64

    if-nez v7, :cond_1

    :cond_0
    rem-int/lit16 v7, p0, 0x190

    if-nez v7, :cond_3

    .line 823
    :cond_1
    sget-object v7, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DAHAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->LICHUN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    .line 824
    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->YUSHUI:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 825
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 828
    :cond_3
    int-to-double v8, v6

    const-wide v10, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    double-to-int v7, v8

    div-int/lit8 v8, v6, 0x4

    sub-int v1, v7, v8

    .line 829
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSpecialYearOffset(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    .line 831
    const/16 v7, 0xa

    if-ge v1, v7, :cond_6

    .line 832
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 836
    .local v4, "mDay":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 814
    .end local v1    # "dateNum":I
    .end local v4    # "mDay":Ljava/lang/String;
    .end local v6    # "y":I
    :cond_4
    const/16 v7, 0x7d1

    if-lt p0, v7, :cond_5

    const/16 v7, 0x834

    if-gt p0, v7, :cond_5

    .line 815
    const/4 v0, 0x1

    goto :goto_0

    .line 817
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not support this year \uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0conly range from 1901 ~ 2100"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 834
    .restart local v1    # "dateNum":I
    .restart local v6    # "y":I
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mDay":Ljava/lang/String;
    goto :goto_1
.end method

.method private static getSpecialYearOffset(ILjava/lang/String;)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, "offset":I
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    const/4 v2, -0x1

    invoke-static {v1, p0, p1, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getOffset(Ljava/util/Map;ILjava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 842
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v1, p0, p1, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getOffset(Ljava/util/Map;ILjava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 843
    return v0
.end method

.method private static getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->cyclical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLeap:Z

    if-eqz v0, :cond_0

    const-string v0, "\u95f0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    sget v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mDay:I

    invoke-static {v1}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getTemperature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mTemperature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTerms(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 855
    const-string v1, "WatermarkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 857
    .local v0, "currentTerm":Ljava/lang/String;
    const-string v1, "WatermarkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentTerm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-string v1, "WatermarkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TERMS_MAP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    if-nez v0, :cond_0

    .line 860
    const-string v0, "\u5e73\u65e5"

    .line 862
    .end local v0    # "currentTerm":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getTermsMap(I)V
    .locals 3
    .param p0, "year"    # I

    .prologue
    .line 867
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "01-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u5bd2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "01-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DAHAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u5bd2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "02-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->LICHUN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u6625"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "02-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->YUSHUI:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u96e8\u6c34"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "03-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->JINGZHE:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u60ca\u86f0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "03-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->CHUNFEN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6625\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->QINGMING:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6e05\u660e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->GUYU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8c37\u96e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "05-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->LIXIA:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u590f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "05-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOMAN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u6ee1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "06-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->MANGZHONG:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8292\u79cd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "06-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAZHI:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u590f\u81f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "07-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOSHU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "07-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DASHU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "08-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->LIQIU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u79cb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "08-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->CHUSHU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5904\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "09-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->BAILU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u767d\u9732"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "09-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->QIUFEN:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u79cb\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->HANLU:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5bd2\u9732"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->SHUANGJIANG:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u971c\u964d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->LIDONG:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u51ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->XIAOXUE:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u96ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "12-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DAXUE:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u96ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "12-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->DONGZHI:Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u51ac\u81f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    return-void
.end method

.method public static getWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    return-object v0
.end method

.method public static getWeatherAndTemperature()Ljava/lang/String;
    .locals 5

    .prologue
    .line 507
    const-string v1, "%s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChnWeather()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mTemperature:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getChnTemperatureFormat2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public static getWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sdate"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    .line 512
    invoke-static {p0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->strToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 513
    .local v1, "date":Ljava/util/Date;
    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\u661f\u671f\u65e5"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\u661f\u671f\u4e00"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "\u661f\u671f\u4e8c"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "\u661f\u671f\u4e09"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "\u661f\u671f\u56db"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "\u661f\u671f\u4e94"

    aput-object v5, v3, v4

    const-string v4, "\u661f\u671f\u516d"

    aput-object v4, v3, v6

    .line 514
    .local v3, "weeks":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 515
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 516
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 517
    .local v2, "week_index":I
    if-ltz v2, :cond_0

    if-le v2, v6, :cond_1

    .line 518
    :cond_0
    const/4 v2, 0x0

    .line 520
    :cond_1
    aget-object v4, v3, v2

    return-object v4
.end method

.method public static getWeekday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeekday:Ljava/lang/String;

    return-object v0
.end method

.method private static handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 894
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->setIconNumber(I)V

    .line 895
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->setCurrentTemperature(F)V

    .line 896
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->setTempScale(I)V

    .line 897
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    .line 898
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->setHighTemperature(F)V

    .line 899
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->setLowTemperature(F)V

    .line 900
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->setTrusted(I)V

    .line 901
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->dump()V

    .line 902
    return-void
.end method

.method public static initLocation(Landroid/location/Location;)V
    .locals 5
    .param p0, "loc"    # Landroid/location/Location;

    .prologue
    .line 528
    const-string v1, "WatermarkUtil"

    const-string v2, "initLocation "

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-eqz p0, :cond_0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLatitude:Ljava/lang/String;

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLongitude:Ljava/lang/String;

    .line 532
    const-string v1, "WatermarkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLatitude "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLatitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLongitude "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLongitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v1, "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=zh"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLatitude:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLongitude:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getLocationInfo(Ljava/lang/String;)V

    .line 536
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static initTime()V
    .locals 5

    .prologue
    .line 539
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "chineseDateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "HH:mm"

    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentTime:Ljava/lang/String;

    .line 541
    const-string v4, "yyyy-MM-dd"

    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentDate:Ljava/lang/String;

    .line 542
    const-string v4, "yyyy"

    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentYear:I

    .line 543
    const-string v4, "MM-dd"

    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "mCurrentDay":Ljava/lang/String;
    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentDate:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeekday:Ljava/lang/String;

    .line 545
    sget v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentYear:I

    invoke-static {v4}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getTermsMap(I)V

    .line 546
    invoke-static {v2}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getTerms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mSolarTerm:Ljava/lang/String;

    .line 547
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 549
    .local v3, "today":Ljava/util/Calendar;
    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mCurrentDate:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    invoke-static {v3}, Lcom/sec/android/app/camera/util/WatermarkUtil;->convertLunar(Ljava/util/Calendar;)V

    .line 554
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->getString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLunarDate:Ljava/lang/String;

    .line 555
    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->cyclical()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/camera/util/WatermarkUtil;->mLunarYear:Ljava/lang/String;

    .line 556
    return-void

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static initWeather(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 559
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    .line 562
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->registerWeatherInfoReceiver(Landroid/content/Context;)V

    .line 563
    invoke-static {p0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->updateWeatherInfo(Landroid/content/Context;)V

    .line 564
    return-void
.end method

.method private static final leapDays(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 905
    invoke-static {p0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 907
    const/16 v0, 0x1e

    .line 911
    :goto_0
    return v0

    .line 909
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 911
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final leapMonth(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 915
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static final monthDays(II)I
    .locals 4
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 919
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 920
    const/16 v0, 0x1d

    .line 922
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static registerWeatherInfoReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 926
    const-string v1, "WatermarkUtil"

    const-string v2, "registerWeatherInfoReceiver"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 928
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 930
    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 932
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 933
    invoke-static {p0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->requestWeatherDataSync(Landroid/content/Context;)V

    .line 934
    return-void
.end method

.method private static requestWeatherDataSync(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 937
    const-string v1, "WatermarkUtil"

    const-string v2, "requestWeatherDataSync"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, "weatherTrigger":Landroid/content/Intent;
    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 940
    const-string v1, "PACKAGE"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    const-string v1, "CP"

    const-string v2, "Accuweather"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 943
    return-void
.end method

.method public static saveBitmapFile(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 10
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 567
    const/4 v4, 0x0

    .line 569
    .local v4, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, "cameraDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 571
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 572
    const-string v7, "WatermarkUtil"

    const-string v8, "make directory is failed"

    invoke-static {v7, v8}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    if-eqz v4, :cond_0

    .line 585
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    .end local v0    # "cameraDir":Ljava/io/File;
    :cond_0
    :goto_0
    return v6

    .line 586
    .restart local v0    # "cameraDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "WatermarkUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_3
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 584
    if-eqz v5, :cond_2

    .line 585
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 590
    :cond_2
    :goto_1
    const/4 v6, 0x1

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 586
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 587
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "WatermarkUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 579
    .end local v0    # "cameraDir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 580
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v7, "WatermarkUtil"

    invoke-static {v7, v2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 584
    if-eqz v4, :cond_0

    .line 585
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 586
    :catch_3
    move-exception v1

    .line 587
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "WatermarkUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    .line 584
    :goto_3
    if-eqz v4, :cond_3

    .line 585
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 588
    :cond_3
    :goto_4
    throw v6

    .line 586
    :catch_4
    move-exception v1

    .line 587
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "WatermarkUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 583
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "cameraDir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 579
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private static strToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "strDate"    # Ljava/lang/String;

    .prologue
    .line 946
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 947
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 948
    .local v1, "pos":Ljava/text/ParsePosition;
    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static unregisterWeatherInfoReceiver(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 594
    sget-object v0, Lcom/sec/android/app/camera/util/WatermarkUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 595
    return-void
.end method

.method private static updateWeatherInfo(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 952
    const-string v1, "WatermarkUtil"

    const-string v2, "updateWeatherInfo"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/16 v8, 0x63

    .line 955
    .local v8, "weatherIconNum":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 957
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 958
    const/4 v6, 0x0

    .line 960
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/camera/util/WatermarkUtil;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 961
    if-eqz v6, :cond_0

    .line 962
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 963
    const-string v1, "COL_WEATHER_CONVERTED_ICON_NUM"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 964
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInfo:Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;

    # invokes: Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->getWeatherString(I)I
    invoke-static {v2, v8}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->access$500(Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherString:Ljava/lang/String;

    .line 965
    const-string v1, "COL_WEATHER_AQI_INDEX"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mPM25:Ljava/lang/String;

    .line 966
    const-string v1, "COL_WEATHER_CURRENT_TEMP"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mTemperature:Ljava/lang/String;

    .line 967
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mWeatherInitialized:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    :cond_0
    if-eqz v6, :cond_1

    .line 978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 982
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mQueue:Lcom/android/volley/RequestQueue;

    if-nez v1, :cond_2

    .line 983
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/util/WatermarkUtil;->mQueue:Lcom/android/volley/RequestQueue;

    .line 985
    :cond_2
    return-void

    .line 970
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 971
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "WatermarkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 977
    if-eqz v6, :cond_1

    .line 978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 973
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 974
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "WatermarkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 977
    if-eqz v6, :cond_1

    .line 978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 977
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 978
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static final yearDays(I)I
    .locals 6
    .param p0, "y"    # I

    .prologue
    .line 988
    const/16 v1, 0x15c

    .line 989
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 990
    sget-object v2, Lcom/sec/android/app/camera/util/WatermarkUtil;->LUNAR_INFO:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 991
    add-int/lit8 v1, v1, 0x1

    .line 989
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method
