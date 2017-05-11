.class public Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeFeatureProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "SMFeatureProvider"


# instance fields
.field private mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mCurrentShootingModeId:I

.field private mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mShootingModeFeatureList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    .line 33
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 34
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    return-void
.end method

.method private clearInactiveShootingModeFeature()V
    .locals 5

    .prologue
    .line 191
    const-string v3, "SMFeatureProvider"

    const-string v4, "clearInactiveShootingModeFeature"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 193
    .local v2, "shootingModeFeatureListclone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;>;"
    const/4 v1, 0x0

    .line 194
    .local v1, "key":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 195
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    .line 197
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eq v3, v4, :cond_0

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_1
    return-void
.end method

.method private loadShootingModeFeature(I)V
    .locals 4
    .param p1, "shootingModeId"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    packed-switch p1, :pswitch_data_0

    .line 310
    :pswitch_0
    const-string v1, "SMFeatureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong shooting mode id, Failed! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 212
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/AnimatedGifFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/AnimatedGifFeature;-><init>()V

    .line 313
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    goto :goto_0

    .line 215
    :pswitch_2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/AntiFogFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/AntiFogFeature;-><init>()V

    .line 216
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 218
    :pswitch_3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/AquaFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/AquaFeature;-><init>()V

    .line 219
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 221
    :pswitch_4
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/AutoFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/AutoFeature;-><init>()V

    .line 222
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 224
    :pswitch_5
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/BeautyFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/BeautyFeature;-><init>()V

    .line 225
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 227
    :pswitch_6
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/BurstPanoramaFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/BurstPanoramaFeature;-><init>()V

    .line 228
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 230
    :pswitch_7
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/ContinuousFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/ContinuousFeature;-><init>()V

    .line 231
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 233
    :pswitch_8
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/ContinuousLiteFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/ContinuousLiteFeature;-><init>()V

    .line 234
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 236
    :pswitch_9
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/DualFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/DualFeature;-><init>()V

    .line 237
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 239
    :pswitch_a
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/TagShotFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/TagShotFeature;-><init>()V

    .line 240
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 242
    :pswitch_b
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/FastMotionFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/FastMotionFeature;-><init>()V

    .line 243
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 245
    :pswitch_c
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/FoodFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/FoodFeature;-><init>()V

    .line 246
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 248
    :pswitch_d
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/HyperMotionFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/HyperMotionFeature;-><init>()V

    .line 249
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 251
    :pswitch_e
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/MotionPanoramaFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/MotionPanoramaFeature;-><init>()V

    .line 252
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 254
    :pswitch_f
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/NightFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/NightFeature;-><init>()V

    .line 255
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 257
    :pswitch_10
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/NightSceneFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/NightSceneFeature;-><init>()V

    .line 258
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 260
    :pswitch_11
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/ProFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/ProFeature;-><init>()V

    .line 261
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 263
    :pswitch_12
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/ProLiteFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/ProLiteFeature;-><init>()V

    .line 264
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 266
    :pswitch_13
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/RearSelfieFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/RearSelfieFeature;-><init>()V

    .line 267
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 269
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 270
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;-><init>(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;)V

    .line 271
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto :goto_1

    .line 273
    :pswitch_15
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/RichToneFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/RichToneFeature;-><init>()V

    .line 274
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 276
    :pswitch_16
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/SelectiveFocusFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/SelectiveFocusFeature;-><init>()V

    .line 277
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 279
    :pswitch_17
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/SelfieFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/SelfieFeature;-><init>()V

    .line 280
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 282
    :pswitch_18
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/ShotAndMoreFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/ShotAndMoreFeature;-><init>()V

    .line 283
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 285
    :pswitch_19
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature;-><init>()V

    .line 286
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 288
    :pswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/SoundAndShotFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/SoundAndShotFeature;-><init>()V

    .line 289
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 291
    :pswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/SportsFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/SportsFeature;-><init>()V

    .line 292
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 294
    :pswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/VideoCollageFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/VideoCollageFeature;-><init>()V

    .line 295
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 297
    :pswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/VirtualShotFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/VirtualShotFeature;-><init>()V

    .line 298
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 300
    :pswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/WideSelfieFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/WideSelfieFeature;-><init>()V

    .line 301
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 303
    :pswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/MotionWideSelfieFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/MotionWideSelfieFeature;-><init>()V

    .line 304
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 306
    :pswitch_20
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/WideSelfieLiteFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/WideSelfieLiteFeature;-><init>()V

    .line 307
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    goto/16 :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
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
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_1b
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_18
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_13
        :pswitch_0
        :pswitch_1
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_19
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_12
        :pswitch_0
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public getFixedBackCameraResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedBackCameraResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedFrontCameraResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedFrontCameraResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isContinuousAFSupported()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isContinuousAFSupported()Z

    move-result v0

    return v0
.end method

.method public isDivideAFAESupported()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v0

    return v0
.end method

.method public isEffectSupported()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    return v0
.end method

.method public isExternalMemorySupported()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isExternalMemorySupported()Z

    move-result v0

    return v0
.end method

.method public isFaceDetectionSupported()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFaceDetectionSupported()Z

    move-result v0

    return v0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFloatingCameraButtonSupported()Z

    move-result v0

    return v0
.end method

.method public isGestureControlSupported()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isGestureControlSupported()Z

    move-result v0

    return v0
.end method

.method public isHandlingAudioFocus()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHandlingAudioFocus()Z

    move-result v0

    return v0
.end method

.method public isLowLightDetectionSupported()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported()Z

    move-result v0

    return v0
.end method

.method public isMultiInstanceCameraSupported()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMultiInstanceCameraSupported()Z

    move-result v0

    return v0
.end method

.method public isNeedToLockAEAWB()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isNeedToLockAEAWB()Z

    move-result v0

    return v0
.end method

.method public isNeedToLockAWB()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isNeedToLockAWB()Z

    move-result v0

    return v0
.end method

.method public isObjectTrackingSupported()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isObjectTrackingSupported()Z

    move-result v0

    return v0
.end method

.method public isOneHandZoomSupported()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isOneHandZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isSeamlessZoomSupported()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSeamlessZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isSuperResolutionZoomSupported()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSuperResolutionZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isTouchAESupported()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v0

    return v0
.end method

.method public isTouchAFSupported()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAFSupported()Z

    move-result v0

    return v0
.end method

.method public isTouchEVSupported()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchEVSupported()Z

    move-result v0

    return v0
.end method

.method public isUsingCamcorderPreviewOnly()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingCamcorderPreviewOnly()Z

    move-result v0

    return v0
.end method

.method public isUsingThumbnailPictureCallback()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isUsingThumbnailPictureCallback()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    .line 165
    return-void
.end method

.method public setShootingMode(I)V
    .locals 4
    .param p1, "shootingModeId"    # I

    .prologue
    .line 169
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    if-eq v1, p1, :cond_0

    .line 170
    const-string v1, "SMFeatureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 172
    .local v0, "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->loadShootingModeFeature(I)V

    .line 186
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    .line 188
    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :cond_0
    return-void

    .line 176
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mPreviousShootingModeFeatureForRecording:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 180
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 181
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;

    .end local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/feature/RecordingFeature;-><init>(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;)V

    .line 184
    .restart local v0    # "newShootingModeFeature":Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    :cond_3
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    goto :goto_0
.end method
