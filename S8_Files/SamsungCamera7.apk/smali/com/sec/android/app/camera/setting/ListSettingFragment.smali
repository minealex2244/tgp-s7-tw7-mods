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

.field private static final DIM_ALPHA_VALUE:F = 0.37f

.field private static final LIST_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "ListSettingFragment"


# instance fields
.field private mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

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

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/ListSettingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/ListSettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setPictureFormat(Z)V

    return-void
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

.method static synthetic access$300(Lcom/sec/android/app/camera/setting/ListSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/setting/ListSettingFragment;)I
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
    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 193
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 188
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getPictureFormat()Z
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->changeIntToBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getResolutionLimitingVDIS()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f09027a

    .line 211
    const-string v2, ""

    .line 213
    .local v2, "videoResolution":Ljava/lang/String;
    iget v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v3, v3, v0

    invoke-static {v6, v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderVDISAvailableFeature(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090279

    .line 240
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    :cond_4
    return-object v2

    .line 225
    :cond_5
    iget v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 228
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderVDISAvailableFeature(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 230
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 232
    :cond_7
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 236
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method private getRestrictedVideoResolution()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0902b1

    const v3, 0x7f09007d

    const v4, 0x7f09027a

    .line 252
    const-string v0, ""

    .line 253
    .local v0, "videoResolution":Ljava/lang/String;
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const v1, 0x7f0902b3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_0
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 258
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

    .line 263
    :cond_1
    :goto_0
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->isSupportedCamcorderResolution(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 265
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

    .line 270
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
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

    const v2, 0x7f090279

    .line 272
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

    .line 274
    :cond_3
    return-object v0

    .line 260
    :cond_4
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 267
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private initializeList()V
    .locals 22

    .prologue
    .line 281
    const/16 v17, 0x0

    .line 282
    .local v17, "savedPos":I
    const/4 v7, 0x0

    .line 283
    .local v7, "actionBarTitle":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getInstance()Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;

    move-result-object v15

    .line 284
    .local v15, "loader":Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    packed-switch v2, :pswitch_data_0

    .line 477
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 478
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a01cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 482
    .local v1, "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 484
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    .line 485
    return-void

    .line 286
    .end local v1    # "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    :pswitch_0
    const-string v2, "603"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 287
    const v2, 0x7f0900e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {v15}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getDualBackVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_dual_resolution_key"

    const-string v4, "1920x1080"

    .line 291
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 290
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v17

    .line 297
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    .line 298
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_1

    .line 299
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

    .line 298
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 293
    .end local v13    # "i":I
    :cond_0
    invoke-virtual {v15}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 295
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 294
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v17

    goto :goto_2

    .line 302
    .restart local v13    # "i":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getRestrictedVideoResolution()Ljava/lang/String;

    move-result-object v21

    .line 303
    .local v21, "videoResolution":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 305
    .local v14, "layout":Landroid/view/View;
    const v2, 0x7f0f0008

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 306
    .local v8, "description":Landroid/widget/TextView;
    const v2, 0x7f09019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v21, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const v2, 0x7f09019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v21, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 309
    const-string v20, ""

    .line 310
    .local v20, "unavailableFunctions":Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v2, :cond_2

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0900d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 313
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0900f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 314
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v2, :cond_3

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0900f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 317
    :cond_3
    const v2, 0x7f0f0009

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 318
    .local v9, "description_array":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const v2, 0x7f09007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_6

    .line 321
    const v2, 0x7f0f000a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 322
    .local v10, "description_restrictSnapShot":Landroid/widget/TextView;
    const v2, 0x7f090206

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f09007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const v2, 0x7f090206

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f09007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 328
    .end local v10    # "description_restrictSnapShot":Landroid/widget/TextView;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResolutionLimitingVDIS()Ljava/lang/String;

    move-result-object v16

    .line 329
    .local v16, "resolutionLimitingVDIS":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-eqz v2, :cond_4

    .line 330
    const v2, 0x7f0f000b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 331
    .local v11, "description_restrictVDIS":Landroid/widget/TextView;
    const v2, 0x7f090207

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v16, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const v2, 0x7f090207

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v16, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 335
    .end local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    :cond_4
    new-instance v12, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 336
    .local v12, "dummyView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 341
    .end local v8    # "description":Landroid/widget/TextView;
    .end local v9    # "description_array":Landroid/widget/TextView;
    .end local v12    # "dummyView":Landroid/view/View;
    .end local v14    # "layout":Landroid/view/View;
    .end local v16    # "resolutionLimitingVDIS":Ljava/lang/String;
    .end local v20    # "unavailableFunctions":Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040017

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_0

    .restart local v8    # "description":Landroid/widget/TextView;
    .restart local v9    # "description_array":Landroid/widget/TextView;
    .restart local v14    # "layout":Landroid/view/View;
    .restart local v20    # "unavailableFunctions":Ljava/lang/String;
    :cond_6
    move-object v2, v14

    .line 325
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto/16 :goto_4

    .line 348
    .end local v8    # "description":Landroid/widget/TextView;
    .end local v9    # "description_array":Landroid/widget/TextView;
    .end local v13    # "i":I
    .end local v14    # "layout":Landroid/view/View;
    .end local v20    # "unavailableFunctions":Ljava/lang/String;
    .end local v21    # "videoResolution":Ljava/lang/String;
    :pswitch_1
    const-string v2, "604"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 349
    const v2, 0x7f0900d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 351
    invoke-virtual {v15}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getDualFrontVideoIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_dual_resolution_key"

    const-string v4, "1920x1080"

    .line 353
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 352
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v17

    .line 359
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    .line 360
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_8

    .line 361
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

    .line 360
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 355
    .end local v13    # "i":I
    :cond_7
    invoke-virtual {v15}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 357
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 356
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v17

    goto :goto_5

    .line 364
    .restart local v13    # "i":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getRestrictedVideoResolution()Ljava/lang/String;

    move-result-object v21

    .line 365
    .restart local v21    # "videoResolution":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 367
    .restart local v14    # "layout":Landroid/view/View;
    const v2, 0x7f0f0008

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 368
    .restart local v8    # "description":Landroid/widget/TextView;
    const v2, 0x7f09019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v21, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const v2, 0x7f09019c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v21, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 371
    const-string v20, ""

    .line 372
    .restart local v20    # "unavailableFunctions":Ljava/lang/String;
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v2, :cond_9

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0900d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 375
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0900f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 377
    const v2, 0x7f0f0009

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 378
    .restart local v9    # "description_array":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const v2, 0x7f09007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_c

    .line 381
    const v2, 0x7f0f000a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 382
    .restart local v10    # "description_restrictSnapShot":Landroid/widget/TextView;
    const v2, 0x7f090206

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f09007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    const v2, 0x7f090206

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f09007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    .end local v10    # "description_restrictSnapShot":Landroid/widget/TextView;
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResolutionLimitingVDIS()Ljava/lang/String;

    move-result-object v16

    .line 389
    .restart local v16    # "resolutionLimitingVDIS":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMCORDER_ANTISHAKE:Z

    if-eqz v2, :cond_a

    .line 390
    const v2, 0x7f0f000b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 391
    .restart local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    const v2, 0x7f090207

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v16, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const v2, 0x7f090207

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v16, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 395
    .end local v11    # "description_restrictVDIS":Landroid/widget/TextView;
    :cond_a
    new-instance v12, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 396
    .restart local v12    # "dummyView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 401
    .end local v8    # "description":Landroid/widget/TextView;
    .end local v9    # "description_array":Landroid/widget/TextView;
    .end local v12    # "dummyView":Landroid/view/View;
    .end local v14    # "layout":Landroid/view/View;
    .end local v16    # "resolutionLimitingVDIS":Ljava/lang/String;
    .end local v20    # "unavailableFunctions":Ljava/lang/String;
    :cond_b
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040017

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_0

    .restart local v8    # "description":Landroid/widget/TextView;
    .restart local v9    # "description_array":Landroid/widget/TextView;
    .restart local v14    # "layout":Landroid/view/View;
    .restart local v20    # "unavailableFunctions":Ljava/lang/String;
    :cond_c
    move-object v2, v14

    .line 385
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto/16 :goto_7

    .line 408
    .end local v8    # "description":Landroid/widget/TextView;
    .end local v9    # "description_array":Landroid/widget/TextView;
    .end local v13    # "i":I
    .end local v14    # "layout":Landroid/view/View;
    .end local v20    # "unavailableFunctions":Ljava/lang/String;
    .end local v21    # "videoResolution":Ljava/lang/String;
    :pswitch_2
    const-string v2, "602"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 409
    const v2, 0x7f0900e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 410
    invoke-virtual {v15}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackPictureIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    .line 412
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_d

    .line 413
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

    .line 412
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 415
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    .line 417
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 416
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v17

    .line 423
    :goto_9
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v2, :cond_e

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 425
    .restart local v14    # "layout":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const v2, 0x7f0f0058

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 427
    .local v19, "title":Landroid/widget/TextView;
    const v2, 0x7f0900e2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 428
    const v2, 0x7f0f0059

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 429
    .local v18, "summary":Landroid/widget/TextView;
    const v2, 0x7f0901e4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 430
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    const v2, 0x7f0f005a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getPictureFormat()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v14, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 445
    .end local v14    # "layout":Landroid/view/View;
    .end local v18    # "summary":Landroid/widget/TextView;
    .end local v19    # "title":Landroid/widget/TextView;
    :cond_e
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040017

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_0

    .line 419
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 420
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 419
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v17

    goto/16 :goto_9

    .line 452
    .end local v13    # "i":I
    :pswitch_3
    const-string v2, "607"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 453
    const v2, 0x7f0900d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-virtual {v15}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontPictureSizeIdList()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    .line 456
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    array-length v2, v2

    if-ge v13, v2, :cond_10

    .line 457
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

    .line 456
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 459
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    .line 461
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 460
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v17

    .line 467
    :goto_b
    new-instance v2, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040017

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;-><init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_0

    .line 463
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 464
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 463
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v17

    goto :goto_b

    .line 480
    .end local v13    # "i":I
    :cond_12
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v1    # "insetDivider":Landroid/graphics/drawable/InsetDrawable;
    goto/16 :goto_1

    .line 284
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
    .line 488
    iget v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 489
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v0

    .line 493
    :goto_0
    return v0

    .line 490
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 491
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v0

    goto :goto_0

    .line 493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/sec/android/app/camera/setting/ListSettingFragment;
    .locals 3
    .param p0, "listType"    # I

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
    const-string v2, "type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method private setActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 503
    .local v0, "mActionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method

.method private setPictureFormat(Z)V
    .locals 2
    .param p1, "pictureFormat"    # Z

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_global_camera_picture_format"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 202
    return-void
.end method


# virtual methods
.method public getListType()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->initializeList()V

    .line 87
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 92
    check-cast p1, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->onResolutionListener:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0057

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 100
    :cond_0
    return-void

    .line 98
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
    .line 104
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->getCount()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isSupportedCameraResolutionForDual(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->onResolutionListener:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    aget v2, v2, p3

    iget v3, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionSelectListener;->onResolutionSelect(II)V

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_3
    :goto_1
    const-string v1, "601"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 127
    const v1, 0x7f090222

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
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

.method public refreshMenu()V
    .locals 5

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "savedPos":I
    invoke-static {}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getInstance()Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;

    move-result-object v0

    .line 134
    .local v0, "loader":Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;
    iget v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mListType:I

    packed-switch v2, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->setSelectedIndex(I)V

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionAdapter:Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment$ResolutionAdapter;->notifyDataSetChanged()V

    .line 181
    return-void

    .line 136
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getDualBackVideoIdList()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_dual_resolution_key"

    const-string v4, "1920x1080"

    .line 139
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 138
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getBackVideoIdList()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 142
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 143
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 142
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v1

    .line 145
    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getDualFrontVideoIdList()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_dual_resolution_key"

    const-string v4, "1920x1080"

    .line 150
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 149
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v1

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraResolutionListLoader;->getFrontVideoSizeIdList()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mResolutionIdList:[I

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camcorder_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 154
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 153
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v1

    .line 156
    goto/16 :goto_0

    .line 158
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualBackCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->DUAL_BACK_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    .line 160
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 159
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v1

    .line 165
    :goto_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mPictureFormatSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getPictureFormat()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_rear_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 163
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 162
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v1

    goto :goto_1

    .line 170
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_dual_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->DUAL_FRONT_CAMERA_DEFAULT_PICTURESIZE:Ljava/lang/String;

    .line 172
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 171
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v1

    goto/16 :goto_0

    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_camera_front_resolution_key"

    sget-object v4, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 175
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    .line 174
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->getIndexFromResolutionIdList(I)I

    move-result v1

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
