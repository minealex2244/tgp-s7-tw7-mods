.class public Lcom/sec/android/app/camera/setting/ListSettingFragment;
.super Landroid/app/ListFragment;
.source "ListSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;,
        Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionListItemHolder;,
        Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;
    }
.end annotation


# static fields
.field protected static final CAMCORDER_FRONT_RESOLUTION_LIST:I = 0x4

.field protected static final CAMCORDER_REAR_RESOLUTION_LIST:I = 0x3

.field protected static final CAMERA_FRONT_RESOLUTION_LIST:I = 0x2

.field protected static final CAMERA_REAR_RESOLUTION_LIST:I = 0x1

.field private static final CAMERA_SETTING:Ljava/lang/String; = "setting"

.field private static final LIST_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "ListSettingFragment"


# instance fields
.field private mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

.field private mList:[Ljava/lang/String;

.field private mListType:I

.field private mPictureFormatSwitch:Landroid/widget/Switch;

.field mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

.field private mResolutionIdList:[I

.field public onResolutionListener:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/ListSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/ListSettingFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/setting/ListSettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    return v0
.end method

.method private getIndexFromResolutionIdList(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 134
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 129
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getResolutionLimitingSnapShot()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0a02c7

    const v3, 0x7f0a007c

    const v4, 0x7f0a0267

    .line 144
    const-string v0, ""

    .line 145
    .local v0, "videoResolution":Ljava/lang/String;
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_WIDTH:I

    if-nez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_HEIGHT:I

    if-nez v1, :cond_0

    .line 147
    const v1, 0x7f0a02c9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    if-nez v1, :cond_1

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    if-nez v1, :cond_1

    .line 151
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    :goto_0
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0266

    .line 166
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_3
    return-object v0

    .line 154
    :cond_4
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 161
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getResolutionLimitingVDIS()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0a02ca

    const v5, 0x7f0a02c7

    const v3, 0x7f0a007b

    const v4, 0x7f0a0267

    .line 178
    const-string v0, ""

    .line 179
    .local v0, "videoResolution":Ljava/lang/String;
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v0, "UHD"

    .line 182
    :cond_0
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_REAR_ANTISHAKE_QHD:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_2
    :goto_0
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_3
    :goto_1
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_4
    :goto_2
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0266

    .line 205
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_5
    return-object v0

    .line 186
    :cond_6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :cond_7
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 200
    :cond_8
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private getRestrictedVideoResolution()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0a02c7

    const v3, 0x7f0a007c

    const v4, 0x7f0a0267

    .line 217
    const-string v0, ""

    .line 218
    .local v0, "videoResolution":Ljava/lang/String;
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const v1, 0x7f0a02c9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_1
    :goto_0
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0266

    .line 237
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_3
    return-object v0

    .line 225
    :cond_4
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initializeList()V
    .locals 23

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    if-nez v2, :cond_0

    .line 458
    :goto_0
    return-void

    .line 249
    :cond_0
    const/16 v18, 0x0

    .line 250
    .local v18, "savedPos":I
    const/4 v7, 0x0

    .line 251
    .local v7, "actionBarTitle":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getInstance()Lcom/sec/android/app/camera/util/CameraResolutionListLoader;

    move-result-object v15

    .line 252
    .local v15, "loader":Lcom/sec/android/app/camera/util/CameraResolutionListLoader;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    packed-switch v2, :pswitch_data_0

    .line 450
    :goto_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 451
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 455
    .local v1, "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 457
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v1    # "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    :pswitch_0
    const v2, 0x7f0a00e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualBackVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_dual_resolution_key"

    const-string v4, "1920x1080"

    .line 258
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 257
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    .line 264
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    .line 265
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v13

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    .line 265
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 260
    .end local v13    # "i":I
    :cond_1
    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 262
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 261
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    goto :goto_3

    .line 269
    .restart local v13    # "i":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getRestrictedVideoResolution()Ljava/lang/String;

    move-result-object v22

    .line 270
    .local v22, "videoResolution":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 272
    .local v14, "layout":Landroid/view/View;
    const v2, 0x7f100008

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 273
    .local v8, "description":Landroid/widget/TextView;
    const v2, 0x7f0a0196

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const v2, 0x7f0a0196

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 276
    const-string v21, ""

    .line 277
    .local v21, "unavailableFunctions":Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_3

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 280
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 281
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v2, :cond_4

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 284
    :cond_4
    const v2, 0x7f100009

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 285
    .local v9, "description_array":Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResolutionLimitingSnapShot()Ljava/lang/String;

    move-result-object v16

    .line 287
    .local v16, "resolutionLimitingSnapShot":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_7

    .line 288
    const v2, 0x7f10000a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 289
    .local v10, "description_restrictSnapShot":Landroid/widget/TextView;
    const v2, 0x7f0a01f9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const v2, 0x7f0a01f9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 295
    .end local v10    # "description_restrictSnapShot":Landroid/widget/TextView;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResolutionLimitingVDIS()Ljava/lang/String;

    move-result-object v17

    .line 296
    .local v17, "resolutionLimitingVDIS":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-eqz v2, :cond_5

    .line 297
    const v2, 0x7f10000b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 298
    .local v11, "description_restrictVDIS":Landroid/widget/TextView;
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OIS:Z

    if-eqz v2, :cond_8

    .line 299
    const v2, 0x7f0a01fa

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const v2, 0x7f0a01fa

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 307
    .end local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    :cond_5
    :goto_6
    new-instance v12, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 308
    .local v12, "dummyView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 313
    .end local v8    # "description":Landroid/widget/TextView;
    .end local v9    # "description_array":Landroid/widget/TextView;
    .end local v12    # "dummyView":Landroid/view/View;
    .end local v14    # "layout":Landroid/view/View;
    .end local v16    # "resolutionLimitingSnapShot":Ljava/lang/String;
    .end local v17    # "resolutionLimitingVDIS":Ljava/lang/String;
    .end local v21    # "unavailableFunctions":Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040012

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_1

    .restart local v8    # "description":Landroid/widget/TextView;
    .restart local v9    # "description_array":Landroid/widget/TextView;
    .restart local v14    # "layout":Landroid/view/View;
    .restart local v16    # "resolutionLimitingSnapShot":Ljava/lang/String;
    .restart local v21    # "unavailableFunctions":Ljava/lang/String;
    :cond_7
    move-object v2, v14

    .line 292
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto/16 :goto_5

    .line 302
    .restart local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    .restart local v17    # "resolutionLimitingVDIS":Ljava/lang/String;
    :cond_8
    const v2, 0x7f0a01fb

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    .line 303
    const v2, 0x7f0a01fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 320
    .end local v8    # "description":Landroid/widget/TextView;
    .end local v9    # "description_array":Landroid/widget/TextView;
    .end local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    .end local v13    # "i":I
    .end local v14    # "layout":Landroid/view/View;
    .end local v16    # "resolutionLimitingSnapShot":Ljava/lang/String;
    .end local v17    # "resolutionLimitingVDIS":Ljava/lang/String;
    .end local v21    # "unavailableFunctions":Ljava/lang/String;
    .end local v22    # "videoResolution":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0a00cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 322
    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getDualFrontVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_dual_resolution_key"

    const-string v4, "1920x1080"

    .line 324
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 323
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    .line 330
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    .line 331
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_a

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v13

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getVideoSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    .line 331
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 326
    .end local v13    # "i":I
    :cond_9
    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 328
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 327
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    goto :goto_7

    .line 335
    .restart local v13    # "i":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getRestrictedVideoResolution()Ljava/lang/String;

    move-result-object v22

    .line 336
    .restart local v22    # "videoResolution":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 338
    .restart local v14    # "layout":Landroid/view/View;
    const v2, 0x7f100008

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 339
    .restart local v8    # "description":Landroid/widget/TextView;
    const v2, 0x7f0a0196

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const v2, 0x7f0a0196

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 342
    const-string v21, ""

    .line 343
    .restart local v21    # "unavailableFunctions":Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v2, :cond_b

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 346
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 348
    const v2, 0x7f100009

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 349
    .restart local v9    # "description_array":Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const v2, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_e

    .line 352
    const v2, 0x7f10000a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 353
    .restart local v10    # "description_restrictSnapShot":Landroid/widget/TextView;
    const v2, 0x7f0a01f9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const v2, 0x7f0a01f9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0a007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 359
    .end local v10    # "description_restrictSnapShot":Landroid/widget/TextView;
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResolutionLimitingVDIS()Ljava/lang/String;

    move-result-object v17

    .line 360
    .restart local v17    # "resolutionLimitingVDIS":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-eqz v2, :cond_c

    .line 361
    const v2, 0x7f10000b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 362
    .restart local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OIS:Z

    if-eqz v2, :cond_f

    .line 363
    const v2, 0x7f0a01fa

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    const v2, 0x7f0a01fa

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 371
    .end local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    :cond_c
    :goto_a
    new-instance v12, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 372
    .restart local v12    # "dummyView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 377
    .end local v8    # "description":Landroid/widget/TextView;
    .end local v9    # "description_array":Landroid/widget/TextView;
    .end local v12    # "dummyView":Landroid/view/View;
    .end local v14    # "layout":Landroid/view/View;
    .end local v17    # "resolutionLimitingVDIS":Ljava/lang/String;
    .end local v21    # "unavailableFunctions":Ljava/lang/String;
    :cond_d
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040012

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_1

    .restart local v8    # "description":Landroid/widget/TextView;
    .restart local v9    # "description_array":Landroid/widget/TextView;
    .restart local v14    # "layout":Landroid/view/View;
    .restart local v21    # "unavailableFunctions":Ljava/lang/String;
    :cond_e
    move-object v2, v14

    .line 356
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto/16 :goto_9

    .line 366
    .restart local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    .restart local v17    # "resolutionLimitingVDIS":Ljava/lang/String;
    :cond_f
    const v2, 0x7f0a01fb

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    .line 367
    const v2, 0x7f0a01fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 384
    .end local v8    # "description":Landroid/widget/TextView;
    .end local v9    # "description_array":Landroid/widget/TextView;
    .end local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    .end local v13    # "i":I
    .end local v14    # "layout":Landroid/view/View;
    .end local v17    # "resolutionLimitingVDIS":Ljava/lang/String;
    .end local v21    # "unavailableFunctions":Ljava/lang/String;
    .end local v22    # "videoResolution":Ljava/lang/String;
    :pswitch_2
    const v2, 0x7f0a00e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 385
    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getBackPictureIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    .line 387
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_10

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v13

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    .line 387
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 390
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    .line 392
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 391
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    .line 398
    :goto_c
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v2, :cond_11

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040017

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 400
    .restart local v14    # "layout":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    const v2, 0x7f100041

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 402
    .local v20, "title":Landroid/widget/TextView;
    const v2, 0x7f0a00e1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 403
    const v2, 0x7f100042

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 404
    .local v19, "summary":Landroid/widget/TextView;
    const v2, 0x7f0a01dd

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    const v2, 0x7f100043

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getPictureFormat()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 419
    .end local v14    # "layout":Landroid/view/View;
    .end local v19    # "summary":Landroid/widget/TextView;
    .end local v20    # "title":Landroid/widget/TextView;
    :cond_11
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040012

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_1

    .line 394
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 395
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 394
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    goto/16 :goto_c

    .line 426
    .end local v13    # "i":I
    :pswitch_3
    const v2, 0x7f0a00d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 427
    invoke-virtual {v15}, Lcom/sec/android/app/camera/util/CameraResolutionListLoader;->getFrontPictureSizeIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    .line 429
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_13

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v13

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    .line 429
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 432
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    .line 434
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 433
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    .line 440
    :goto_e
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040012

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_1

    .line 436
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 437
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 436
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v18

    goto :goto_e

    .line 453
    .end local v13    # "i":I
    :cond_15
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v1    # "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    goto/16 :goto_2

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSupportedCamcorderResolution(I)Z
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/sec/android/app/camera/setting/CameraSettingsImpl;I)Lcom/sec/android/app/camera/setting/ListSettingFragment;
    .locals 3
    .param p0, "settings"    # Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    .param p1, "listType"    # I

    .prologue
    .line 69
    new-instance v1, Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;-><init>()V

    .line 70
    .local v1, "fragment":Lcom/sec/android/app/camera/setting/ListSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "setting"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method

.method private setActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 471
    .local v0, "mActionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0d0052

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->initializeList()V

    .line 85
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 90
    check-cast p1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->onResolutionListener:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100040

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    :cond_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "list"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->onResolutionListener:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v2, v2, p3

    iget v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;->onResolutionSelect(II)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_2
    :goto_1
    const v1, 0x7f0a0216

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "ListSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
