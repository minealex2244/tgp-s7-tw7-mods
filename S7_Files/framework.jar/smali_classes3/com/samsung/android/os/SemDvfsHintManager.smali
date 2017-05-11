.class Lcom/samsung/android/os/SemDvfsHintManager;
.super Lcom/samsung/android/os/SemDvfsManager;
.source "SemDvfsHintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/os/SemDvfsHintManager$1;
    }
.end annotation


# instance fields
.field private ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

.field final APP_LAUNCH_BOOSTING_TIMEOUT_L:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_M:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_S:I

.field mAppLaunchBoostTime:I

.field private final mAppLaunchPackages:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHint:Ljava/lang/String;

.field private mHintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/os/SemDvfsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mHintTimeout:I

.field private mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mTagName:Ljava/lang/String;

.field mType:I

.field private volatile sCfmsService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/16 v5, 0x1c

    const/4 v2, 0x0

    const/16 v4, 0x13

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 21
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    .line 23
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mTagName:Ljava/lang/String;

    .line 25
    const/16 v1, 0xfa0

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    .line 27
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 29
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

    .line 31
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 33
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 35
    iput v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mType:I

    .line 37
    iput v6, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    .line 39
    iput v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 41
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    .line 43
    iput-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 45
    const-string/jumbo v1, "com.samsung.ssrm.RESOLUTION_CHANGED"

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    .line 68
    new-instance v1, Lcom/samsung/android/os/SemDvfsHintManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/os/SemDvfsHintManager$1;-><init>(Lcom/samsung/android/os/SemDvfsHintManager;)V

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    .line 409
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 412
    const/16 v2, 0x1e

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 415
    new-array v2, v4, [I

    fill-array-data v2, :array_2

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 417
    const/16 v2, 0x15

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 420
    new-array v2, v5, [I

    fill-array-data v2, :array_4

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 423
    new-array v2, v4, [I

    fill-array-data v2, :array_5

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 425
    new-array v2, v4, [I

    fill-array-data v2, :array_6

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 427
    new-array v2, v5, [I

    fill-array-data v2, :array_7

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 430
    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 433
    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 436
    const/16 v2, 0x17

    new-array v2, v2, [I

    fill-array-data v2, :array_a

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 439
    new-array v2, v4, [I

    fill-array-data v2, :array_b

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 441
    const/16 v2, 0xe

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 443
    const/16 v2, 0x12

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 445
    new-array v2, v4, [I

    fill-array-data v2, :array_e

    invoke-direct {p0, v2}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 408
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    .line 60
    const-class v1, Lcom/samsung/android/os/SemDvfsHintManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsHintManager;->createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void

    .line 409
    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    .line 412
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    .line 415
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    .line 417
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    .line 420
    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    .line 423
    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    .line 425
    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    .line 427
    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    .line 430
    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    .line 433
    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    .line 436
    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    .line 439
    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    .line 441
    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    .line 443
    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    .line 445
    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "isIntent"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/16 v4, 0x1c

    const/4 v1, 0x0

    const/16 v3, 0x13

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/os/SemDvfsManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 21
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    .line 23
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mTagName:Ljava/lang/String;

    .line 25
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LL:I

    .line 27
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 29
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_LM:I

    .line 31
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 33
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 35
    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mType:I

    .line 37
    iput v5, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    .line 39
    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 41
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 45
    const-string/jumbo v0, "com.samsung.ssrm.RESOLUTION_CHANGED"

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->ACTION_RESOLUTION_CHANGED:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/samsung/android/os/SemDvfsHintManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/os/SemDvfsHintManager$1;-><init>(Lcom/samsung/android/os/SemDvfsHintManager;)V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mPolicyUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 409
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 412
    const/16 v1, 0x1e

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 415
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 417
    const/16 v1, 0x15

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 420
    new-array v1, v4, [I

    fill-array-data v1, :array_4

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 423
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 425
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 427
    new-array v1, v4, [I

    fill-array-data v1, :array_7

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 430
    const/16 v1, 0x19

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 433
    const/16 v1, 0x19

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 436
    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 439
    new-array v1, v3, [I

    fill-array-data v1, :array_b

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 441
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 443
    const/16 v1, 0x12

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 445
    new-array v1, v3, [I

    fill-array-data v1, :array_e

    invoke-direct {p0, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->x([I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 408
    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mContext:Landroid/content/Context;

    .line 52
    const-class v0, Lcom/samsung/android/os/SemDvfsHintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/os/SemDvfsHintManager;->createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void

    .line 409
    nop

    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    .line 412
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    .line 415
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    .line 417
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    .line 420
    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    .line 423
    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    .line 425
    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    .line 427
    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    .line 430
    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    .line 433
    :array_9
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    .line 436
    :array_a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    .line 439
    :array_b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    .line 441
    :array_c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    .line 443
    :array_d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    .line 445
    :array_e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data
.end method

.method private createHintNotifier(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hint"    # Ljava/lang/String;

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v12, :cond_2

    .line 286
    :try_start_0
    const-string/jumbo v12, "CustomFrequencyManagerService"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 287
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v12, :cond_2

    .line 294
    return-void

    .line 288
    .end local v2    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v4

    .line 289
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "createHintNotifier:: failed to get cfms service."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v12, :cond_2

    .line 294
    return-void

    .line 292
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v13, :cond_1

    .line 294
    return-void

    .line 292
    :cond_1
    throw v12

    .line 298
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/os/SemDvfsHintManager;->mHint:Ljava/lang/String;

    .line 299
    const/4 v10, 0x0

    .line 301
    .local v10, "policyIntent":Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 306
    .end local v10    # "policyIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v10, :cond_11

    .line 307
    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 308
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "key$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 309
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, "value":Ljava/lang/String;
    const/4 v9, 0x0

    .line 312
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    const-string/jumbo v8, ""

    .line 313
    .local v8, "moduleName":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v5, v12, [I

    .line 314
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v5, v13

    .line 317
    .local v5, "freqTable":[I
    const-string/jumbo v12, "CPU_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 318
    new-instance v9, Lcom/samsung/android/os/SemDvfsCpuManager;

    .end local v9    # "newManager":Lcom/samsung/android/os/SemDvfsManager;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@CPU_MIN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 319
    const/16 v13, 0xc

    .line 318
    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsCpuManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 320
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    const-string/jumbo v8, "CPU"

    .line 321
    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v5

    .line 345
    .end local v9    # "newManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_4
    :goto_2
    if-eqz v9, :cond_3

    .line 346
    const-string/jumbo v12, "max"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "0"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 347
    :cond_5
    if-eqz v5, :cond_6

    .line 348
    const/4 v12, 0x0

    aget v12, v5, v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 350
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    if-eqz v5, :cond_7

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Max_hint : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 352
    const-string/jumbo v14, ", freq = "

    .line 351
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 352
    const/4 v14, 0x0

    aget v14, v5, v14

    .line 351
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 352
    const-string/jumbo v14, ", timeOut = "

    .line 351
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 352
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 351
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 302
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "freqTable":[I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "key$iterator":Ljava/util/Iterator;
    .end local v8    # "moduleName":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v10    # "policyIntent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 303
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v10    # "policyIntent":Landroid/content/Intent;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "freqTable":[I
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "key$iterator":Ljava/util/Iterator;
    .restart local v8    # "moduleName":Ljava/lang/String;
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v12, "GPU_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 323
    new-instance v9, Lcom/samsung/android/os/SemDvfsGpuManager;

    .end local v9    # "newManager":Lcom/samsung/android/os/SemDvfsManager;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@GPU_MIN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 324
    const/16 v13, 0x10

    .line 323
    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsGpuManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 325
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    const-string/jumbo v8, "GPU"

    .line 326
    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v5

    goto/16 :goto_2

    .line 327
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_9
    const-string/jumbo v12, "BUS_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 328
    const-string/jumbo v8, "BUS"

    .line 329
    new-instance v9, Lcom/samsung/android/os/SemDvfsBusManager;

    .end local v9    # "newManager":Lcom/samsung/android/os/SemDvfsManager;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@BUS_MIN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 330
    const/16 v13, 0x13

    .line 329
    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsBusManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 331
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v5

    goto/16 :goto_2

    .line 332
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_a
    const-string/jumbo v12, "CORE_NUM_MIN"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 333
    new-instance v9, Lcom/samsung/android/os/SemDvfsCpuCoreManager;

    .end local v9    # "newManager":Lcom/samsung/android/os/SemDvfsManager;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@CORE_NUM_MIN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 334
    const/16 v13, 0xe

    .line 333
    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsCpuCoreManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 335
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    const-string/jumbo v8, "CORE_NUM"

    .line 336
    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v5

    goto/16 :goto_2

    .line 337
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_b
    const-string/jumbo v12, "POWER_COLLAPSE"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 338
    new-instance v9, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;

    .end local v9    # "newManager":Lcom/samsung/android/os/SemDvfsManager;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "@POWER_COLLAPSE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 339
    const/16 v13, 0x17

    .line 338
    move-object/from16 v0, p1

    invoke-direct {v9, v0, v12, v13}, Lcom/samsung/android/os/SemDvfsPowerCollapseManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 340
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    const-string/jumbo v8, "POWER_COLLAPSE"

    goto/16 :goto_2

    .line 341
    .local v9, "newManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_c
    const-string/jumbo v12, "timeout"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 342
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    goto/16 :goto_2

    .line 354
    .end local v9    # "newManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_d
    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 355
    const-string/jumbo v12, "CPU"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 357
    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 358
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 357
    div-double/2addr v12, v14

    .line 356
    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 359
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    .line 360
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hint(%) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 361
    const-string/jumbo v14, ", freq = "

    .line 360
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 363
    const-string/jumbo v14, "%"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 362
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 364
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 362
    div-double v14, v14, v16

    invoke-virtual {v9, v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v14

    .line 360
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 365
    const-string/jumbo v14, ", timeOut = "

    .line 360
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 365
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 360
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 367
    :cond_e
    const-string/jumbo v12, "GPU"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 369
    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 370
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 369
    div-double/2addr v12, v14

    .line 368
    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hint(%) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 373
    const-string/jumbo v14, ", freq = "

    .line 372
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 375
    const-string/jumbo v14, "%"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 374
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 376
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 374
    div-double v14, v14, v16

    invoke-virtual {v9, v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v14

    .line 372
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 377
    const-string/jumbo v14, ", timeOut = "

    .line 372
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 377
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 372
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 379
    :cond_f
    const-string/jumbo v12, "BUS"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 381
    const-string/jumbo v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 382
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 381
    div-double/2addr v12, v14

    .line 380
    invoke-virtual {v9, v12, v13}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 383
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hint(%) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 385
    const-string/jumbo v14, ", freq = "

    .line 384
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 387
    const-string/jumbo v14, "%"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 386
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 388
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 386
    div-double v14, v14, v16

    invoke-virtual {v9, v14, v15}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v14

    .line 384
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 389
    const-string/jumbo v14, ", timeOut = "

    .line 384
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 389
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 384
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 394
    :cond_10
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v12

    .line 393
    invoke-virtual {v9, v12}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 395
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v12, :cond_7

    .line 396
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 397
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "hint(Normal) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", moduleName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 398
    const-string/jumbo v14, ", freq = "

    .line 397
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 398
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 397
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 398
    const-string/jumbo v14, ", timeOut = "

    .line 397
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 399
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 397
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 396
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 283
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "freqTable":[I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "key$iterator":Ljava/util/Iterator;
    .end local v8    # "moduleName":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method private isPackageExistInAppLaunch(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchPackages:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 453
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 454
    const/4 v0, 0x1

    .line 458
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return v0

    .line 452
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private x([I)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # [I

    .prologue
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 464
    aget v2, p1, v0

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemDvfsHintManager;->acquire(I)V

    .line 216
    return-void
.end method

.method public acquire(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 222
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mgr$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    .line 224
    .local v0, "mgr":Lcom/samsung/android/os/SemDvfsManager;
    const-string/jumbo v2, "CPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "CPU_CORE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    const-string/jumbo v2, "GPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 224
    if-nez v2, :cond_1

    .line 225
    const-string/jumbo v2, "BUS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 224
    if-nez v2, :cond_1

    .line 226
    const-string/jumbo v2, "POWER_COLLAPSE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 224
    if-eqz v2, :cond_0

    .line 227
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 228
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto :goto_0

    .line 221
    .end local v0    # "mgr":Lcom/samsung/android/os/SemDvfsManager;
    .end local v1    # "mgr$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    .line 254
    const-string/jumbo v2, "com.sec.android.app.camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    .line 259
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 260
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mgr$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    .line 261
    .local v0, "mgr":Lcom/samsung/android/os/SemDvfsManager;
    const-string/jumbo v2, "CPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "CPU_CORE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 262
    const-string/jumbo v2, "GPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 261
    if-nez v2, :cond_2

    .line 262
    const-string/jumbo v2, "BUS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 261
    if-nez v2, :cond_2

    .line 263
    const-string/jumbo v2, "POWER_COLLAPSE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 261
    if-eqz v2, :cond_1

    .line 264
    :cond_2
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    iget v3, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto :goto_1

    .line 256
    .end local v0    # "mgr":Lcom/samsung/android/os/SemDvfsManager;
    .end local v1    # "mgr$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/os/SemDvfsHintManager;->isPackageExistInAppLaunch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    const/16 v2, 0xbb8

    iput v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mAppLaunchBoostTime:I

    goto :goto_0

    .line 251
    :cond_4
    return-void
.end method

.method public clearDvfsValue()V
    .locals 1

    .prologue
    .line 212
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    .line 211
    return-void
.end method

.method public getApproximateFrequencyByPercentForSSRM(D)I
    .locals 1
    .param p1, "percent"    # D

    .prologue
    .line 274
    const/4 v0, -0x1

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 239
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mgr$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    .line 241
    .local v0, "mgr":Lcom/samsung/android/os/SemDvfsManager;
    const-string/jumbo v2, "CPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "CPU_CORE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    const-string/jumbo v2, "GPU"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 241
    if-nez v2, :cond_1

    .line 242
    const-string/jumbo v2, "BUS"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 241
    if-nez v2, :cond_1

    .line 243
    const-string/jumbo v2, "POWER_COLLAPSE"

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 241
    if-eqz v2, :cond_0

    .line 244
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    goto :goto_0

    .line 238
    .end local v0    # "mgr":Lcom/samsung/android/os/SemDvfsManager;
    .end local v1    # "mgr$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public setDvfsValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/samsung/android/os/SemDvfsManager;->mDvfsValue:I

    .line 202
    return-void
.end method

.method public setDvfsValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 207
    return-void
.end method

.method public setValueAtUpdate(Lcom/samsung/android/os/SemDvfsManager;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "mgr"    # Lcom/samsung/android/os/SemDvfsManager;
    .param p2, "freqTable"    # [I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "hint"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v3, 0x0

    .line 134
    if-eqz p1, :cond_4

    .line 135
    const-string/jumbo v0, "CPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CPU_CORE"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, "GPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 135
    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, "BUS"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 135
    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "POWER_COLLAPSE"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 135
    if-eqz v0, :cond_4

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object p2

    .line 143
    :cond_1
    const-string/jumbo v0, "max"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "0"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    :cond_2
    if-eqz p2, :cond_3

    .line 145
    aget v0, p2, v3

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 147
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 148
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint Max_hint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mgr.getName() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string/jumbo v2, ", freq = "

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    aget v2, p2, v3

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, ", timeOut = "

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_4
    :goto_0
    return-void

    .line 153
    :cond_5
    const-string/jumbo v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 154
    const-string/jumbo v0, "CPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    const-string/jumbo v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v4

    .line 155
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(%) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string/jumbo v2, ", mgr.getName() = "

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string/jumbo v2, ", freq = "

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string/jumbo v2, "%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string/jumbo v2, ", timeOut = "

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    :cond_6
    const-string/jumbo v0, "GPU"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    const-string/jumbo v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v4

    .line 166
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 169
    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(%) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string/jumbo v2, ", mgr.getName() = "

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string/jumbo v2, ", freq = "

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    const-string/jumbo v2, "%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v2

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string/jumbo v2, ", timeOut = "

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    :cond_7
    const-string/jumbo v0, "BUS"

    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    const-string/jumbo v0, "%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v4

    .line 177
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 180
    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(%) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, ", mgr.getName() = "

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, ", freq = "

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    const-string/jumbo v2, "%"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    const-string/jumbo v2, ", timeOut = "

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    :cond_8
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyForSsrm(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValueAtUpdateHint(Normal) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mgr.getName() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string/jumbo v2, ", freq = "

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string/jumbo v2, ", timeOut = "

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    iget v2, p0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintTimeout:I

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hint"    # Ljava/lang/String;

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v14, :cond_2

    .line 82
    :try_start_0
    const-string/jumbo v14, "CustomFrequencyManagerService"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 83
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v14, :cond_2

    .line 90
    return-void

    .line 84
    .end local v2    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v14, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v15, "createHintNotifier:: failed to get cfms service."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v14, :cond_2

    .line 90
    return-void

    .line 88
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v15, :cond_1

    .line 90
    return-void

    .line 88
    :cond_1
    throw v14

    .line 95
    :cond_2
    const/4 v12, 0x0

    .line 97
    .local v12, "policyIntent":Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    .line 102
    .end local v12    # "policyIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v12, :cond_7

    .line 103
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 104
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "key$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 105
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "value":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 107
    .local v11, "moduleName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v14, :cond_4

    .line 108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Check Updatehint update Key : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", value : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    if-eqz v14, :cond_3

    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsHintManager;->mHintList:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "mgr$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/os/SemDvfsManager;

    .line 112
    .local v9, "mgr":Lcom/samsung/android/os/SemDvfsManager;
    const/4 v14, 0x1

    new-array v5, v14, [I

    .line 113
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v14, v5, v15

    .line 115
    .local v5, "freqTable":[I
    const-string/jumbo v8, ""

    .line 116
    .local v8, "key_Name":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 117
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 119
    :cond_6
    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v9, v5, v13, v1}, Lcom/samsung/android/os/SemDvfsHintManager;->setValueAtUpdate(Lcom/samsung/android/os/SemDvfsManager;[ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/os/SemDvfsManager;->sIsDebugLevelHigh:Z

    if-eqz v14, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Updatehint update Key : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 123
    const-string/jumbo v16, ", mgr.getName() : "

    .line 122
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 123
    invoke-virtual {v9}, Lcom/samsung/android/os/SemDvfsManager;->getName()Ljava/lang/String;

    move-result-object v16

    .line 122
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 98
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "freqTable":[I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "key$iterator":Ljava/util/Iterator;
    .end local v8    # "key_Name":Ljava/lang/String;
    .end local v9    # "mgr":Lcom/samsung/android/os/SemDvfsManager;
    .end local v10    # "mgr$iterator":Ljava/util/Iterator;
    .end local v11    # "moduleName":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    .restart local v12    # "policyIntent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 99
    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/os/SemDvfsManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v15, "createHintNotifier:: failed to call getDvfsPolicyByHint."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 79
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v12    # "policyIntent":Landroid/content/Intent;
    :cond_7
    return-void
.end method