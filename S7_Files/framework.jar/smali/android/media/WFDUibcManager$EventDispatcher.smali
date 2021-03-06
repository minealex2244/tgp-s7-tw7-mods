.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# static fields
.field private static final synthetic -android-media-WFDUibcManager$UIBC_ModeSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$media$WFDUibcManager$UIBC_Mode:[I

.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private Me_X:F

.field private Me_Y:F

.field private Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

.field private aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private activityManager:Landroid/app/ActivityManager;

.field private bCap:Z

.field private bNum:Z

.field private bScroll:Z

.field private bSim:Z

.field private configuration:Landroid/content/res/Configuration;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private ev:Landroid/view/InputEvent;

.field private foregroundCamera:Z

.field private kH:F

.field private kW:F

.field private kX:F

.field private kY:F

.field private ke:Landroid/view/KeyEvent;

.field private last_Ke:Landroid/view/KeyEvent;

.field private mBroadTime:J

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyEvnt_Arr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/WFDUibcManager$Keyevnt_arrC;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyUpTime:J

.field private mMetaFlag:I

.field private mRepeatCnt:I

.field private mTouchDownTime:J

.field private me:Landroid/view/MotionEvent;

.field private rEv:Ljava/lang/Integer;

.field public volatile running:Z

.field private screenRatio:F

.field final synthetic this$0:Landroid/media/WFDUibcManager;

.field private wfdRatio:F

.field private wm:Landroid/view/WindowManager;


# direct methods
.method private static synthetic -getandroid-media-WFDUibcManager$UIBC_ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/media/WFDUibcManager$EventDispatcher;->-android-media-WFDUibcManager$UIBC_ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/WFDUibcManager$EventDispatcher;->-android-media-WFDUibcManager$UIBC_ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/media/WFDUibcManager$UIBC_Mode;->values()[Landroid/media/WFDUibcManager$UIBC_Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->FULL_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->PORTRAIT_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Landroid/media/WFDUibcManager$EventDispatcher;->-android-media-WFDUibcManager$UIBC_ModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 7
    .param p1, "this$0"    # Landroid/media/WFDUibcManager;

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 276
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0, p1, v2}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$EventQueue;)V

    .line 277
    iput-boolean v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 279
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 280
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    .line 290
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 291
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 293
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    .line 294
    sget-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 295
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    .line 296
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 297
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 298
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 299
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    .line 300
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 302
    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_0:I

    .line 303
    iput v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_90:I

    .line 304
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_180:I

    .line 305
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_270:I

    .line 308
    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 309
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    .line 310
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bSim:Z

    .line 311
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bNum:Z

    .line 312
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bScroll:Z

    .line 313
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    .line 314
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 315
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 316
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyUpTime:J

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 318
    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 319
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    .line 276
    return-void
.end method

.method private getMetaFlag(IZ)V
    .locals 6
    .param p1, "keycode"    # I
    .param p2, "isDown"    # Z

    .prologue
    const/16 v5, 0x71

    const/16 v4, 0x3c

    const/16 v3, 0x3b

    const/16 v2, 0x3a

    const/16 v1, 0x39

    .line 778
    if-eqz p2, :cond_a

    .line 779
    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_2

    .line 780
    :cond_0
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 781
    if-ne p1, v3, :cond_1

    .line 782
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 783
    :cond_1
    if-ne p1, v4, :cond_2

    .line 784
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 786
    :cond_2
    if-eq p1, v1, :cond_3

    if-ne p1, v2, :cond_5

    .line 787
    :cond_3
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 788
    if-ne p1, v1, :cond_4

    .line 789
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 790
    :cond_4
    if-ne p1, v2, :cond_5

    .line 791
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 793
    :cond_5
    if-eq p1, v5, :cond_6

    const/16 v0, 0x72

    if-ne p1, v0, :cond_8

    .line 794
    :cond_6
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 795
    if-ne p1, v5, :cond_7

    .line 796
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 797
    :cond_7
    const/16 v0, 0x72

    if-ne p1, v0, :cond_8

    .line 798
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 800
    :cond_8
    const/16 v0, 0x77

    if-ne p1, v0, :cond_9

    .line 801
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 777
    :cond_9
    :goto_0
    return-void

    .line 804
    :cond_a
    if-eq p1, v3, :cond_b

    if-ne p1, v4, :cond_d

    .line 805
    :cond_b
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 806
    if-ne p1, v3, :cond_c

    .line 807
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 808
    :cond_c
    if-ne p1, v4, :cond_d

    .line 809
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 811
    :cond_d
    if-eq p1, v1, :cond_e

    if-ne p1, v2, :cond_10

    .line 812
    :cond_e
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 813
    if-ne p1, v1, :cond_f

    .line 814
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 815
    :cond_f
    if-ne p1, v2, :cond_10

    .line 816
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 818
    :cond_10
    if-eq p1, v5, :cond_11

    const/16 v0, 0x72

    if-ne p1, v0, :cond_13

    .line 819
    :cond_11
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 820
    if-ne p1, v5, :cond_12

    .line 821
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 822
    :cond_12
    const/16 v0, 0x72

    if-ne p1, v0, :cond_13

    .line 823
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 825
    :cond_13
    const/16 v0, 0x77

    if-ne p1, v0, :cond_14

    .line 826
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 828
    :cond_14
    const/16 v0, 0x73

    if-ne p1, v0, :cond_9

    .line 829
    iget-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    if-nez v0, :cond_15

    .line 831
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto :goto_0

    .line 834
    :cond_15
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto :goto_0
.end method

.method private handleCameraTouch(I)V
    .locals 10
    .param p1, "i"    # I

    .prologue
    .line 335
    const/4 v0, -0x1

    .line 336
    .local v0, "mCameraOrientation":I
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 337
    .local v6, "rotation":I
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rotation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mOrientation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v9}, Landroid/media/WFDUibcManager;->-get7(Landroid/media/WFDUibcManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get7(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get7(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x2d

    if-ge v7, v8, :cond_6

    .line 341
    :cond_1
    const/4 v0, 0x0

    .line 355
    :goto_0
    add-int/2addr v0, v6

    .line 356
    rem-int/lit8 v0, v0, 0x4

    .line 357
    if-eqz v0, :cond_2

    const/4 v7, 0x2

    if-ne v0, v7, :cond_c

    .line 359
    :cond_2
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    .line 360
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v8}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    .line 361
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "screenRatio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " wfdRatio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_3
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 365
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v8}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v2, v7, v8

    .line 366
    .local v2, "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 367
    .local v5, "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v7

    const v8, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 368
    .local v3, "normX":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 369
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 382
    .end local v2    # "newWidth":F
    .end local v3    # "normX":F
    .end local v5    # "pad":F
    :goto_1
    if-nez v0, :cond_b

    .line 383
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 384
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 385
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Orientation is 0~45 or more than 315, X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_4
    :goto_2
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Executing Camera App mode is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_5
    return-void

    .line 339
    :cond_6
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get7(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x13b

    if-gt v7, v8, :cond_1

    .line 343
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get7(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x2d

    if-lt v7, v8, :cond_7

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get7(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-ge v7, v8, :cond_7

    .line 345
    const/4 v0, 0x1

    .line 344
    goto/16 :goto_0

    .line 347
    :cond_7
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get7(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-lt v7, v8, :cond_8

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get7(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0xe1

    if-ge v7, v8, :cond_8

    .line 349
    const/4 v0, 0x2

    .line 348
    goto/16 :goto_0

    .line 353
    :cond_8
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 371
    :cond_9
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 372
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v8}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v1, v7, v8

    .line 373
    .local v1, "newHeight":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 374
    .restart local v5    # "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v7

    const v8, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v7, v8

    .line 375
    .local v4, "normY":F
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 376
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v4, v5

    div-float/2addr v8, v1

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    .line 379
    .end local v1    # "newHeight":F
    .end local v4    # "normY":F
    .end local v5    # "pad":F
    :cond_a
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 380
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    .line 388
    :cond_b
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 389
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 390
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 391
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 392
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Orientation is 225 ~ 315, X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 395
    :cond_c
    const/4 v7, 0x1

    if-eq v0, v7, :cond_d

    const/4 v7, 0x3

    if-ne v0, v7, :cond_4

    .line 398
    :cond_d
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v8}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v2, v7, v8

    .line 399
    .restart local v2    # "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 400
    .restart local v5    # "pad":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v7}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v7

    const v8, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 401
    .restart local v3    # "normX":F
    const/4 v7, 0x1

    if-ne v0, v7, :cond_f

    .line 402
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    sub-float v9, v3, v5

    div-float/2addr v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 403
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 404
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Orientation is 45 ~ 114, X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_e
    :goto_3
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 412
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_2

    .line 407
    :cond_f
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 408
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, p1

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 409
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Orientation is 115 ~ 224, X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleKeyEvent()V
    .locals 23

    .prologue
    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .line 860
    .local v16, "NewKE":Landroid/view/KeyEvent;
    const/16 v19, -0x1

    .local v19, "fndKyIndex":I
    const/16 v18, -0x1

    .line 861
    .local v18, "empKyIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 862
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 863
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 865
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key Device id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->semGetDisplayId()I

    move-result v13

    .line 868
    .local v13, "displayId":I
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Before Key display id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_1
    if-gez v13, :cond_2

    .line 871
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v17

    .line 872
    .local v17, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget v20, v3, v2

    .line 873
    .local v20, "id":I
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 874
    move/from16 v13, v20

    .line 879
    .end local v17    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v20    # "id":I
    :cond_2
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "After Key Display id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v2}, Landroid/media/WFDUibcManager;->-get2(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 885
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Ignore Back key event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_4
    return-void

    .line 872
    .restart local v17    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v20    # "id":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 889
    .end local v17    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v20    # "id":I
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_15

    .line 891
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "KeyEvent ACTION_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_8

    .line 897
    new-instance v21, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$Keyevnt_arrC;)V

    .line 898
    .local v21, "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, v21

    iput-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    .line 899
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    .line 900
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    .end local v21    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 904
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 905
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 921
    :cond_9
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    .line 942
    :cond_a
    :goto_2
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KeyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " DownTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    const-string/jumbo v4, " Flag: "

    .line 942
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 942
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    const-string/jumbo v4, " RepeatCnt: "

    .line 942
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 942
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    const-string/jumbo v4, "mMetaFlag: "

    .line 942
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 943
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 942
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    .line 946
    .local v9, "metakey":I
    if-nez v9, :cond_c

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 947
    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 948
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 949
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    .line 950
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 951
    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 953
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    .line 954
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    .line 955
    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 957
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    .line 958
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v15

    .line 947
    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_d

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    .line 962
    :cond_d
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 964
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InjectKeyEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 969
    :cond_f
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "send broadcast : Terminate External Display"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_10
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .local v22, "mintent":Landroid/content/Intent;
    const-string/jumbo v2, "app_name"

    const-string/jumbo v3, "finish"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_18

    .line 973
    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 981
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v2}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 984
    .end local v22    # "mintent":Landroid/content/Intent;
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 857
    return-void

    .line 908
    .end local v9    # "metakey":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 909
    .restart local v21    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    .line 910
    move-object/from16 v0, v21

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    .line 911
    move-object/from16 v0, v21

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    .line 913
    move-object/from16 v0, v21

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, v21

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    .line 915
    :cond_14
    move-object/from16 v0, v21

    iget-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 916
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 917
    move-object/from16 v0, v21

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 918
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Long press detected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 924
    .end local v21    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 925
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "KeyEvent ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 929
    .restart local v21    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    move-object/from16 v0, v21

    iget-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 930
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 931
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    .end local v21    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    goto/16 :goto_2

    .line 935
    :cond_17
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 936
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 937
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto :goto_4

    .line 975
    .restart local v9    # "metakey":I
    .restart local v22    # "mintent":Landroid/content/Intent;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_19

    .line 976
    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 979
    :cond_19
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "putExtra : no parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private handleMotionEvent()V
    .locals 44

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v34, v0

    check-cast v34, Landroid/view/MotionEvent;

    .line 440
    .local v34, "newEv":Landroid/view/MotionEvent;
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 444
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "displayMetrics widthPixels: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 445
    const-string/jumbo v6, " heightPixels: "

    .line 444
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 445
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 444
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mNegRs_X: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v6}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mNegRs_Y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v6}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_1
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v14

    .line 450
    .local v14, "displayId":I
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "before motion displayId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_2
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v24

    .line 453
    .local v24, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-gez v14, :cond_3

    .line 454
    invoke-virtual/range {v24 .. v24}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget v28, v5, v4

    .line 455
    .local v28, "id":I
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v7

    iget v7, v7, Landroid/view/DisplayInfo;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 456
    move/from16 v14, v28

    .line 461
    .end local v28    # "id":I
    :cond_3
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "after motion displayId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_4
    if-gez v14, :cond_6

    .line 463
    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "displayId not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void

    .line 454
    .restart local v28    # "id":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 469
    .end local v28    # "id":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v29

    .line 471
    .local v29, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 472
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 473
    .local v42, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v42

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.app.camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    .line 474
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Is camera running: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    if-eqz v4, :cond_8

    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 479
    .end local v42    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/hardware/display/DisplayManager;

    .line 480
    .local v30, "mDm":Landroid/hardware/display/DisplayManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 481
    const-string/jumbo v5, "sidesync_source_connect"

    const/4 v6, 0x0

    const/4 v7, -0x2

    .line 480
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_9

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get2(Landroid/media/WFDUibcManager;)Z

    move-result v4

    .line 480
    if-eqz v4, :cond_d

    .line 483
    :cond_9
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 484
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "FORCE_VALUE will be set!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_a
    :goto_1
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 520
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION SCROLL TIME : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/16 v6, 0x9

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/16 v6, 0xa

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 536
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    .line 537
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v8, 0xa

    sub-long/2addr v6, v8

    .line 540
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 541
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 538
    const/16 v8, 0x8

    .line 539
    const/4 v9, 0x1

    .line 542
    const/4 v12, 0x0

    .line 543
    const/4 v13, 0x0

    .line 545
    const/high16 v15, 0x3f800000    # 1.0f

    .line 546
    const/high16 v16, 0x3f800000    # 1.0f

    .line 547
    const/16 v17, 0xa

    .line 548
    const/16 v18, 0x0

    .line 549
    const/16 v19, 0x2002

    .line 550
    const/16 v20, 0x0

    .line 536
    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setSource(I)V

    .line 552
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Scroll Inject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_c
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 554
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 555
    return-void

    .line 485
    :cond_d
    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 486
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->FULL_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 487
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "AuSLService Running setting FULL_SCREEN Mode!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 488
    :cond_e
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_10

    .line 489
    :cond_f
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->PORTRAIT_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 490
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "PORTRAIT_SCREEN Mode for portrait sink!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 488
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get3(Landroid/media/WFDUibcManager;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 494
    const-string/jumbo v4, "android.hardware.display.category.PRESENTATION"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v40

    .line 495
    .local v40, "presentationDisplays":[Landroid/view/Display;
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received presentationDisplays amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_11
    invoke-virtual/range {v30 .. v30}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v21

    .line 497
    .local v21, "allDisplays":[Landroid/view/Display;
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received alldisplays amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_12
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_2
    move-object/from16 v0, v40

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_a

    .line 500
    aget-object v23, v40, v27

    .line 501
    .local v23, "display":Landroid/view/Display;
    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v14, v4, :cond_16

    .line 502
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation display ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get8(Landroid/media/WFDUibcManager;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get8(Landroid/media/WFDUibcManager;)I

    move-result v4

    if-ne v14, v4, :cond_15

    .line 505
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v6}, Landroid/media/WFDUibcManager;->-get8(Landroid/media/WFDUibcManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) has content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 507
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_1

    .line 510
    :cond_15
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v6}, Landroid/media/WFDUibcManager;->-get8(Landroid/media/WFDUibcManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) doesn\'t have content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 499
    :cond_16
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 558
    .end local v21    # "allDisplays":[Landroid/view/Display;
    .end local v23    # "display":Landroid/view/Display;
    .end local v27    # "i":I
    .end local v40    # "presentationDisplays":[Landroid/view/Display;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    .line 562
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 563
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 565
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    .line 567
    .local v22, "count":I
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIBC mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_18
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_2f

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v27

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v27

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 573
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aPtrCoords["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "].x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v27

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    const-string/jumbo v6, " aPtrCoords["

    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    const-string/jumbo v6, "].y: "

    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 574
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v27

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 573
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_19
    invoke-static {}, Landroid/media/WFDUibcManager$EventDispatcher;->-getandroid-media-WFDUibcManager$UIBC_ModeSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v5}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    .line 654
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIBC Mode is default configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_1a
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " wfdRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2c

    .line 657
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2a

    .line 659
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v5}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v36, v4, v5

    .line 660
    .local v36, "newWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v36

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    .line 661
    .local v39, "pad":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v37, v4, v5

    .line 662
    .local v37, "normX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v37, v39

    div-float v5, v5, v36

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 663
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 705
    .end local v36    # "newWidth":F
    .end local v37    # "normX":F
    .end local v39    # "pad":F
    :cond_1c
    :goto_4
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Value Me_X="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Me_Y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_1d
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 578
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/media/WFDUibcManager$EventDispatcher;->handleCameraTouch(I)V

    goto :goto_4

    .line 583
    :pswitch_1
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "UIBC Mode is PRESENTATION"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 585
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 587
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 591
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v41

    .line 592
    .local v41, "rotation":I
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIBC Mode is Full Screen: rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_1f
    if-nez v41, :cond_20

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v27

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 595
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 608
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 596
    :cond_20
    const/4 v4, 0x3

    move/from16 v0, v41

    if-ne v0, v4, :cond_21

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v27

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v27

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto :goto_5

    .line 600
    :cond_21
    const/4 v4, 0x2

    move/from16 v0, v41

    if-ne v0, v4, :cond_22

    .line 601
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v27

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_5

    .line 604
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 605
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_5

    .line 613
    .end local v41    # "rotation":I
    :pswitch_3
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "UIBC Mode is foreceValue"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 615
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 621
    :pswitch_4
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "UIBC Mode is PORTRAIT_SCREEN"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v5}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    .line 626
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UIBC Mode is default configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_25
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " wfdRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    .line 630
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_27

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Source device is ORIENTATION_LANDSCAPE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v5}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v35, v4, v5

    .line 633
    .local v35, "newHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v35

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    .line 634
    .restart local v39    # "pad":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v38, v4, v5

    .line 635
    .local v38, "normY":F
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v5, v38, v39

    div-float v5, v5, v35

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 639
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newWidth= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pad= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " normY= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 642
    .end local v35    # "newHeight":F
    .end local v38    # "normY":F
    .end local v39    # "pad":F
    :cond_28
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_29

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Source device is ORIENTATION_PORTRAIT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 644
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 667
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2b

    .line 669
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v5}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v35, v4, v5

    .line 670
    .restart local v35    # "newHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v35

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    .line 671
    .restart local v39    # "pad":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v38, v4, v5

    .line 672
    .restart local v38    # "normY":F
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v5, v38, v39

    div-float v5, v5, v35

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 678
    .end local v35    # "newHeight":F
    .end local v38    # "normY":F
    .end local v39    # "pad":F
    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 679
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 685
    :cond_2c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2d

    .line 687
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v5}, Landroid/media/WFDUibcManager;->-get6(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v36, v4, v5

    .line 688
    .restart local v36    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v36

    const/high16 v5, 0x40000000    # 2.0f

    div-float v39, v4, v5

    .line 689
    .restart local v39    # "pad":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get5(Landroid/media/WFDUibcManager;)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v37, v4, v5

    .line 690
    .restart local v37    # "normX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v37, v39

    mul-float/2addr v4, v5

    div-float v4, v4, v36

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 691
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 694
    .end local v36    # "newWidth":F
    .end local v37    # "normX":F
    .end local v39    # "pad":F
    :cond_2d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2e

    .line 695
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 696
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v27

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_4

    .line 700
    :cond_2e
    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Skip event, ratio wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 708
    :cond_2f
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Device id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_30
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_31

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 715
    :cond_31
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v22, -0x1

    shl-int/lit8 v5, v5, 0x8

    or-int v31, v4, v5

    .line 716
    .local v31, "motionAction":I
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    .line 717
    .local v26, "hex":Ljava/lang/String;
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_32

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "motionAction id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_32
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    if-ne v4, v5, :cond_37

    .line 720
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 721
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 722
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 723
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 724
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 725
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 731
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    .line 733
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    .line 726
    const/4 v12, 0x0

    .line 727
    const/4 v13, 0x0

    .line 729
    const/high16 v15, 0x3f800000    # 1.0f

    .line 730
    const/high16 v16, 0x3f800000    # 1.0f

    .line 732
    const/16 v18, 0x0

    .line 734
    const/16 v20, 0x0

    .line 720
    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 751
    :goto_6
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_33

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "InjectTouchEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_33
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 755
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    sget-object v5, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    if-eq v4, v5, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get4(Landroid/media/WFDUibcManager;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 758
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 759
    .local v32, "mlTempTime":J
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_34

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TimeGap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    sub-long v6, v32, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_34
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    sub-long v4, v32, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_36

    .line 761
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_35

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Send intent (com.samsung.intent.action.SEC_UIBC_GET_FOCUS)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_35
    :try_start_0
    new-instance v43, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.SEC_UIBC_GET_FOCUS"

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v43, "virtualKey_Intent":Landroid/content/Intent;
    const-string/jumbo v4, "UIBC_X"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    float-to-int v5, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    const-string/jumbo v4, "UIBC_Y"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    float-to-int v5, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 766
    const-string/jumbo v4, "DISPLAY_ID"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .end local v43    # "virtualKey_Intent":Landroid/content/Intent;
    :goto_7
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    .line 436
    .end local v32    # "mlTempTime":J
    :cond_36
    return-void

    .line 736
    :cond_37
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 737
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 738
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v22, -0x1

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    .line 739
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 740
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 741
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 747
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    .line 749
    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    .line 742
    const/4 v12, 0x0

    .line 743
    const/4 v13, 0x0

    .line 745
    const/high16 v15, 0x3f800000    # 1.0f

    .line 746
    const/high16 v16, 0x3f800000    # 1.0f

    .line 748
    const/16 v18, 0x0

    .line 750
    const/16 v20, 0x0

    .line 736
    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_6

    .line 768
    .restart local v32    # "mlTempTime":J
    :catch_0
    move-exception v25

    .line 769
    .local v25, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Exception sendBroadcast(com.samsung.intent.action.SEC_UIBC_GET_FOCUS): "

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x87

    const/16 v8, 0x2d

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 998
    new-array v4, v6, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 999
    new-array v4, v6, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1001
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 1002
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v4, v1

    .line 1003
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v4, v1

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    :cond_0
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 1006
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    .line 1008
    :cond_1
    :goto_1
    iget-boolean v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v4, :cond_11

    .line 1009
    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventQueue;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    .line 1010
    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventQueue;->getRotateEvent()Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 1011
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 1016
    :cond_2
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Recvd Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_3
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Recvd Event(Rotate): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_4
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v4, v4, Landroid/view/MotionEvent;

    if-eqz v4, :cond_e

    .line 1020
    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleMotionEvent()V

    .line 1025
    :cond_5
    :goto_2
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 1026
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accelerometer_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1027
    .local v0, "accel":I
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accelerometer_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1028
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1029
    .local v3, "rotation":I
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current rotation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_6
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 1031
    .local v2, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1032
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "WFDUibcManager"

    const-string/jumbo v5, "Setting SPECIAL rotation!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_7
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 1037
    :goto_3
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 1038
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_8

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 1040
    :cond_8
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13b

    if-le v4, v5, :cond_10

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x168

    if-gt v4, v5, :cond_10

    :goto_4
    const/4 v3, 0x0

    .line 1041
    :cond_9
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v8, :cond_a

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v9, :cond_a

    const/4 v3, 0x1

    .line 1042
    :cond_a
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v9, :cond_b

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xe1

    if-gt v4, v5, :cond_b

    const/4 v3, 0x2

    .line 1043
    :cond_b
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xe1

    if-le v4, v5, :cond_c

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13b

    if-gt v4, v5, :cond_c

    const/4 v3, 0x3

    .line 1044
    :cond_c
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Rotation set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_d
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1046
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v4}, Landroid/media/WFDUibcManager;->-get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accelerometer_rotation"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1022
    .end local v0    # "accel":I
    .end local v2    # "mDm":Landroid/hardware/display/DisplayManager;
    .end local v3    # "rotation":I
    :cond_e
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v4, v4, Landroid/view/KeyEvent;

    if-eqz v4, :cond_5

    .line 1023
    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    goto/16 :goto_2

    .line 1035
    .restart local v0    # "accel":I
    .restart local v2    # "mDm":Landroid/hardware/display/DisplayManager;
    .restart local v3    # "rotation":I
    :cond_f
    mul-int/lit8 v4, v3, 0x5a

    iget-object v5, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 1040
    :cond_10
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_9

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v8, :cond_9

    goto/16 :goto_4

    .line 997
    .end local v0    # "accel":I
    .end local v2    # "mDm":Landroid/hardware/display/DisplayManager;
    .end local v3    # "rotation":I
    :cond_11
    return-void
.end method
