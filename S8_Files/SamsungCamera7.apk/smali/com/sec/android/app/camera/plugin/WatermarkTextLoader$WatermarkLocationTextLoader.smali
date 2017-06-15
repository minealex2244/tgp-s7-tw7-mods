.class Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;
.super Ljava/lang/Object;
.source "WatermarkTextLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatermarkLocationTextLoader"
.end annotation


# static fields
.field private static final ACCU_LOCATION_KEY_URL:Ljava/lang/String; = "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=zh"

.field private static final LOCATION_JSON_REQ_TAG:Ljava/lang/String; = "location_json_request"


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mDist:Ljava/lang/String;

.field private mIsWatermarkTextLoaded:Z

.field private mLatitude:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mProvince:Ljava/lang/String;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mIsWatermarkTextLoaded:Z

    .line 1172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 1173
    const-string v0, "\u5317\u4eac"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    .line 1174
    const-string v0, "\u4e2d\u56fd"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    .line 1175
    const-string v0, "\u671d\u9633\u533a"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    .line 1176
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mProvince:Ljava/lang/String;

    .line 1177
    const-string v0, "45"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    .line 1178
    const-string v0, "180"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mProvince:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    return-object p1
.end method

.method private getLatitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1258
    .local v0, "lat":I
    if-lez v0, :cond_0

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1c\u7ecf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1262
    :goto_0
    return-object v1

    .line 1260
    :cond_0
    if-gez v0, :cond_1

    .line 1261
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

    .line 1262
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

.method private getLocationInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1272
    const-string v1, "WatermarkTextLoader"

    const-string v2, "getLocationInfo"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)V

    new-instance v3, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$2;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1349
    .local v0, "jsonObjectRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    const-string v1, "location_json_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 1350
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1351
    return-void
.end method

.method private getLongitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1360
    .local v0, "mLong":I
    if-lez v0, :cond_0

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5317\u7eac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1364
    :goto_0
    return-object v1

    .line 1362
    :cond_0
    if-gez v0, :cond_1

    .line 1363
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

    .line 1364
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


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v1, "location_json_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 1184
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mIsWatermarkTextLoaded:Z

    .line 1185
    return-void
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1202
    const-string v0, "%s  %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLongitude()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLatitude()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1211
    const-string v0, "%s,  %s,  %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationString01()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1220
    const-string v0, "%s\u5e02,  %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationString02()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1229
    const-string v0, "%s , %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadWatermarkLocationText(Landroid/content/Context;Landroid/location/Location;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x1

    .line 1239
    iget-boolean v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mIsWatermarkTextLoaded:Z

    if-nez v1, :cond_0

    .line 1240
    iput-boolean v5, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mIsWatermarkTextLoaded:Z

    .line 1242
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    .line 1245
    const-string v1, "WatermarkTextLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLatitude "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLongitude "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v1, "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=zh"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1247
    .local v0, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLocationInfo(Ljava/lang/String;)V

    .line 1249
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
