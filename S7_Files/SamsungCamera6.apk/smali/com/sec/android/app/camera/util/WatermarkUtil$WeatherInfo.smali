.class public Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;
.super Ljava/lang/Object;
.source "WatermarkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/WatermarkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WeatherInfo"
.end annotation


# static fields
.field private static final WEATHER_INFO_TRUSTED:I = 0xc8


# instance fields
.field private mCurrentCityId:Ljava/lang/String;

.field private mCurrentTemperature:F

.field private mHighTemperature:F

.field private mIconNumber:I

.field private mLowTemperature:F

.field private mTempScale:I

.field private mTrusted:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mIconNumber:I

    .line 1035
    iput v1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentTemperature:F

    .line 1036
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTempScale:I

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    .line 1038
    iput v1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mHighTemperature:F

    .line 1039
    iput v1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mLowTemperature:F

    .line 1040
    iput-boolean v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    .line 1041
    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;
    .param p1, "x1"    # I

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->getWeatherString(I)I

    move-result v0

    return v0
.end method

.method private getWeatherString(I)I
    .locals 3
    .param p1, "iconNum"    # I

    .prologue
    .line 1118
    const-string v0, "WatermarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    packed-switch p1, :pswitch_data_0

    .line 1203
    :pswitch_0
    const v0, 0x7f0a02a7

    :goto_0
    return v0

    .line 1121
    :pswitch_1
    const v0, 0x7f0a027e

    goto :goto_0

    .line 1123
    :pswitch_2
    const v0, 0x7f0a027f

    goto :goto_0

    .line 1125
    :pswitch_3
    const v0, 0x7f0a0280

    goto :goto_0

    .line 1127
    :pswitch_4
    const v0, 0x7f0a0281

    goto :goto_0

    .line 1129
    :pswitch_5
    const v0, 0x7f0a0282

    goto :goto_0

    .line 1131
    :pswitch_6
    const v0, 0x7f0a0283

    goto :goto_0

    .line 1133
    :pswitch_7
    const v0, 0x7f0a0284

    goto :goto_0

    .line 1135
    :pswitch_8
    const v0, 0x7f0a0285

    goto :goto_0

    .line 1137
    :pswitch_9
    const v0, 0x7f0a0286

    goto :goto_0

    .line 1139
    :pswitch_a
    const v0, 0x7f0a0287

    goto :goto_0

    .line 1141
    :pswitch_b
    const v0, 0x7f0a0288

    goto :goto_0

    .line 1143
    :pswitch_c
    const v0, 0x7f0a0289

    goto :goto_0

    .line 1145
    :pswitch_d
    const v0, 0x7f0a028a

    goto :goto_0

    .line 1147
    :pswitch_e
    const v0, 0x7f0a028b

    goto :goto_0

    .line 1149
    :pswitch_f
    const v0, 0x7f0a028c

    goto :goto_0

    .line 1151
    :pswitch_10
    const v0, 0x7f0a028d

    goto :goto_0

    .line 1153
    :pswitch_11
    const v0, 0x7f0a028e

    goto :goto_0

    .line 1155
    :pswitch_12
    const v0, 0x7f0a028f

    goto :goto_0

    .line 1157
    :pswitch_13
    const v0, 0x7f0a0290

    goto :goto_0

    .line 1159
    :pswitch_14
    const v0, 0x7f0a0291

    goto :goto_0

    .line 1161
    :pswitch_15
    const v0, 0x7f0a0292

    goto :goto_0

    .line 1163
    :pswitch_16
    const v0, 0x7f0a0293

    goto :goto_0

    .line 1165
    :pswitch_17
    const v0, 0x7f0a0294

    goto :goto_0

    .line 1167
    :pswitch_18
    const v0, 0x7f0a0295

    goto :goto_0

    .line 1169
    :pswitch_19
    const v0, 0x7f0a0296

    goto :goto_0

    .line 1171
    :pswitch_1a
    const v0, 0x7f0a0297

    goto :goto_0

    .line 1173
    :pswitch_1b
    const v0, 0x7f0a0298

    goto :goto_0

    .line 1175
    :pswitch_1c
    const v0, 0x7f0a0299

    goto :goto_0

    .line 1177
    :pswitch_1d
    const v0, 0x7f0a029a

    goto :goto_0

    .line 1179
    :pswitch_1e
    const v0, 0x7f0a029b

    goto :goto_0

    .line 1181
    :pswitch_1f
    const v0, 0x7f0a029c

    goto :goto_0

    .line 1183
    :pswitch_20
    const v0, 0x7f0a029d

    goto :goto_0

    .line 1185
    :pswitch_21
    const v0, 0x7f0a029e

    goto/16 :goto_0

    .line 1187
    :pswitch_22
    const v0, 0x7f0a029f

    goto/16 :goto_0

    .line 1189
    :pswitch_23
    const v0, 0x7f0a02a0

    goto/16 :goto_0

    .line 1191
    :pswitch_24
    const v0, 0x7f0a02a1

    goto/16 :goto_0

    .line 1193
    :pswitch_25
    const v0, 0x7f0a02a2

    goto/16 :goto_0

    .line 1195
    :pswitch_26
    const v0, 0x7f0a02a3

    goto/16 :goto_0

    .line 1197
    :pswitch_27
    const v0, 0x7f0a02a4

    goto/16 :goto_0

    .line 1199
    :pswitch_28
    const v0, 0x7f0a02a5

    goto/16 :goto_0

    .line 1201
    :pswitch_29
    const v0, 0x7f0a02a6

    goto/16 :goto_0

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method protected dump()V
    .locals 3

    .prologue
    .line 1044
    const-string v0, "WatermarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherInfo [icon, temp, scale] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mIconNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTempScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[cityId, highTemp, lowTemp] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mHighTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mLowTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trusted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return-void
.end method

.method protected getCurrentCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    return-object v0
.end method

.method protected getCurrentTemperature()F
    .locals 1

    .prologue
    .line 1057
    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentTemperature:F

    return v0
.end method

.method protected getHighTemperature()F
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mHighTemperature:F

    return v0
.end method

.method protected getIconNumber()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mIconNumber:I

    return v0
.end method

.method protected getLowTemperature()F
    .locals 1

    .prologue
    .line 1081
    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mLowTemperature:F

    return v0
.end method

.method protected getTempScale()I
    .locals 1

    .prologue
    .line 1089
    iget v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTempScale:I

    return v0
.end method

.method protected isTrusted()Z
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    return v0
.end method

.method protected setCurrentCityId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    .line 1054
    return-void
.end method

.method protected setCurrentTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 1061
    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentTemperature:F

    .line 1062
    return-void
.end method

.method protected setHighTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 1069
    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mHighTemperature:F

    .line 1070
    return-void
.end method

.method protected setIconNumber(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 1077
    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mIconNumber:I

    .line 1078
    return-void
.end method

.method protected setLowTemperature(F)V
    .locals 0
    .param p1, "temp"    # F

    .prologue
    .line 1085
    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mLowTemperature:F

    .line 1086
    return-void
.end method

.method protected setTempScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .prologue
    .line 1093
    iput p1, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTempScale:I

    .line 1094
    return-void
.end method

.method protected setTrusted(I)V
    .locals 3
    .param p1, "errCode"    # I

    .prologue
    const/16 v2, 0xc8

    .line 1101
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    .line 1104
    const-string v0, "WatermarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork State is Fine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & currentCityId is not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mTrusted:Z

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/util/WatermarkUtil$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1109
    const-string v0, "WatermarkUtil"

    const-string v1, "currentCityId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_2
    if-eq p1, v2, :cond_0

    .line 1112
    const-string v0, "WatermarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork disabled : Don\'t refresh weath info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
