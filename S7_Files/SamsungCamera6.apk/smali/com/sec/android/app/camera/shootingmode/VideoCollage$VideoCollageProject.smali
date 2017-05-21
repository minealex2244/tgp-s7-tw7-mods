.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
.super Ljava/lang/Object;
.source "VideoCollage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoCollageProject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    }
.end annotation


# static fields
.field public static final COLLAGE_TYPE_1_BY_1_01:I = 0x1

.field public static final COLLAGE_TYPE_1_BY_1_02:I = 0x2

.field public static final COLLAGE_TYPE_1_BY_1_03:I = 0x3

.field public static final COLLAGE_TYPE_1_BY_1_04:I = 0x7

.field public static final COLLAGE_TYPE_4_BY_3_01:I = 0x4

.field public static final COLLAGE_TYPE_4_BY_3_02:I = 0x5

.field public static final COLLAGE_TYPE_4_BY_3_03:I = 0x6

.field public static final COLLAGE_TYPE_4_BY_3_04:I = 0x8

.field public static final COLLAGE_TYPE_DEFAULT:I = 0x6

.field public static final COLLAGE_TYPE_NONE:I = 0x0

.field public static final MAX_RECORDING_COUNT_1:I = 0x1

.field public static final MAX_RECORDING_COUNT_2:I = 0x2

.field public static final MAX_RECORDING_COUNT_3:I = 0x3

.field public static final MAX_RECORDING_COUNT_4:I = 0x4

.field public static final MAX_RECORDING_COUNT_DEFAULT:I = 0x1

.field public static final ORIENTATION_TYPE_DEFAULT:I = 0x0

.field public static final PROJECT_TYPE_COLLAGE:I = 0x2

.field public static final PROJECT_TYPE_DEFAULT:I = 0x2

.field public static final PROJECT_TYPE_SERIAL:I = 0x1

.field public static final PROJECT_TYPE_SLOW:I = 0x0

.field public static final RATIO_TYPE_1_BY_1:I = 0x0

.field public static final RATIO_TYPE_4_BY_3:I = 0x1

.field public static final RATIO_TYPE_DEFAULT:I = 0x1

.field public static final RECORDING_TIME_15S:I = 0x3a98

.field public static final RECORDING_TIME_3S:I = 0xbb8

.field public static final RECORDING_TIME_6S:I = 0x1770

.field public static final RECORDING_TIME_9S:I = 0x2328

.field public static final RECORDING_TIME_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "VideoCollageProject"


# instance fields
.field private mClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;",
            ">;"
        }
    .end annotation
.end field

.field private mCollageType:I

.field private mCollagetTypeIconArray:[I

.field private mCollagetTypeIconLineArray:[I

.field private mCurrentRecordedTimeInMs:I

.field private mCurrentRecordingCount:I

.field private mFirstCameraIdTaken:I

.field private mFirstFlip:I

.field private mMaxRecordingCount:I

.field private mOrientation:I

.field private mProjectType:I

.field private mRatio:I

.field private mRecordingTime:I

.field private mViewOrientation:I


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3511
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mProjectType:I

    .line 3512
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollageType:I

    .line 3513
    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRecordingTime:I

    .line 3514
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRatio:I

    .line 3515
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mOrientation:I

    .line 3516
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mViewOrientation:I

    .line 3517
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mMaxRecordingCount:I

    .line 3518
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    .line 3519
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    .line 3520
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstCameraIdTaken:I

    .line 3521
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstFlip:I

    .line 3523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    .line 3524
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconArray:[I

    .line 3525
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconLineArray:[I

    .line 3528
    const/16 v2, 0x1770

    const/4 v3, 0x6

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->create(IIIIII)V

    .line 3529
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getProjectType()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordingCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setFirstFlip(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setFirstCameraIdTaken(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->clear()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getMaxRecordingCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getFirstCameraIdTaken()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setViewOrientation(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getFirstFlip()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRatio()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsStringArray()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsRotationInfo()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->updateResourceIcon(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->updateResourceIconLine(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 3468
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->addClip(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getResourceIcon(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .param p1, "x1"    # I

    .prologue
    .line 3468
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getResourceIconLine(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getClipListAsDurationInMs()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->removeLastClip()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCurrentRecordedTimeInMs()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getRecordingTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCollageType()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getViewOrientation()I

    move-result v0

    return v0
.end method

.method private addClip(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "rotate"    # Z

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    .line 3536
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    .line 3538
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mProjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3539
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    .line 3544
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;-><init>(Ljava/lang/String;IZLcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3545
    return-void

    .line 3541
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    goto :goto_0
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3548
    const-string v0, "VideoCollageProject"

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3551
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    .line 3553
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    .line 3554
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    .line 3556
    :cond_0
    return-void
.end method

.method private create(IIIIII)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "duration"    # I
    .param p3, "collageType"    # I
    .param p4, "ratio"    # I
    .param p5, "orientation"    # I
    .param p6, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 3559
    const-string v0, "VideoCollageProject"

    const-string v1, "create()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setProjectType(I)V

    .line 3562
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRecordingTime(I)V

    .line 3563
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setCollageType(I)V

    .line 3564
    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setRatio(I)V

    .line 3565
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setOrientation(I)V

    .line 3566
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->setMaxRecordingCount(I)V

    .line 3568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    .line 3569
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    .line 3570
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    .line 3571
    return-void
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 3574
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mProjectType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mProjectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mCurrentRecordedTimeInMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mRecordingTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRecordingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mCollageType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mCurrentRecordingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mMaxRecordingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mMaxRecordingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    const-string v0, "VideoCollageProject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump() - mClipList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->getCLipListAsStringArray()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    return-void
.end method

.method private getCLipListAsRotationInfo()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3588
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 3589
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    .line 3590
    .local v0, "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getRotation()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->access$4400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3593
    .end local v0    # "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    :cond_0
    const/4 v1, 0x0

    .line 3595
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1
    return-object v1
.end method

.method private getCLipListAsStringArray()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3601
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 3602
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    .line 3603
    .local v0, "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getPath()Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->access$4500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3606
    .end local v0    # "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    :cond_0
    const/4 v1, 0x0

    .line 3608
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-object v1
.end method

.method private getClipListAsDurationInMs()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3614
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 3615
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    .line 3616
    .local v0, "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getDurationInMs()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->access$4600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3619
    .end local v0    # "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    :cond_0
    const/4 v1, 0x0

    .line 3621
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-object v1
.end method

.method private getCollageType()I
    .locals 1

    .prologue
    .line 3625
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollageType:I

    return v0
.end method

.method private getCurrentRecordedTimeInMs()I
    .locals 1

    .prologue
    .line 3633
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    return v0
.end method

.method private getCurrentRecordingCount()I
    .locals 1

    .prologue
    .line 3637
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    return v0
.end method

.method private getFirstCameraIdTaken()I
    .locals 1

    .prologue
    .line 3641
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstCameraIdTaken:I

    return v0
.end method

.method private getFirstFlip()I
    .locals 1

    .prologue
    .line 3649
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstFlip:I

    return v0
.end method

.method private getMaxRecordingCount()I
    .locals 1

    .prologue
    .line 3657
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mMaxRecordingCount:I

    return v0
.end method

.method private getOrientation()I
    .locals 1

    .prologue
    .line 3665
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mOrientation:I

    return v0
.end method

.method private getProjectType()I
    .locals 1

    .prologue
    .line 3673
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mProjectType:I

    return v0
.end method

.method private getRatio()I
    .locals 1

    .prologue
    .line 3681
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRatio:I

    return v0
.end method

.method private getRecordingTime()I
    .locals 1

    .prologue
    .line 3690
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRecordingTime:I

    return v0
.end method

.method private getResourceIcon(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconArray:[I

    aget v0, v0, p1

    return v0
.end method

.method private getResourceIconLine(I)I
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconLineArray:[I

    aget v0, v0, p1

    return v0
.end method

.method private getViewOrientation()I
    .locals 1

    .prologue
    .line 3708
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mViewOrientation:I

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 3720
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mProjectType:I

    .line 3721
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRecordingTime:I

    .line 3722
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollageType:I

    .line 3723
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRatio:I

    .line 3724
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mOrientation:I

    .line 3725
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mViewOrientation:I

    .line 3726
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mMaxRecordingCount:I

    .line 3728
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    .line 3730
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    .line 3731
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    .line 3733
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconArray:[I

    .line 3734
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconLineArray:[I

    .line 3736
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstFlip:I

    .line 3737
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstCameraIdTaken:I

    .line 3738
    return-void
.end method

.method private removeLastClip()V
    .locals 4

    .prologue
    .line 3741
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3742
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;

    .line 3744
    .local v0, "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->getDurationInMs()I
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->access$4600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)I

    move-result v1

    .line 3746
    .local v1, "duration":I
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mProjectType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    if-le v2, v1, :cond_2

    .line 3747
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    .line 3752
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    if-lez v2, :cond_0

    .line 3753
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    .line 3757
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3760
    # invokes: Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->delete()Z
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;->access$4700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;)Z

    .line 3762
    .end local v0    # "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    .end local v1    # "duration":I
    :cond_1
    return-void

    .line 3749
    .restart local v0    # "c":Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject$Clip;
    .restart local v1    # "duration":I
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    goto :goto_0
.end method

.method private setCollageType(I)V
    .locals 0
    .param p1, "collageType"    # I

    .prologue
    .line 3629
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollageType:I

    .line 3630
    return-void
.end method

.method private setFirstCameraIdTaken(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 3645
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstCameraIdTaken:I

    .line 3646
    return-void
.end method

.method private setFirstFlip(I)V
    .locals 0
    .param p1, "flip"    # I

    .prologue
    .line 3653
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstFlip:I

    .line 3654
    return-void
.end method

.method private setMaxRecordingCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 3661
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mMaxRecordingCount:I

    .line 3662
    return-void
.end method

.method private setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 3669
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mOrientation:I

    .line 3670
    return-void
.end method

.method private setProjectType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 3677
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mProjectType:I

    .line 3678
    return-void
.end method

.method private setRatio(I)V
    .locals 0
    .param p1, "ratio"    # I

    .prologue
    .line 3685
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRatio:I

    .line 3686
    return-void
.end method

.method private setRecordingTime(I)V
    .locals 0
    .param p1, "recordingTime"    # I

    .prologue
    .line 3695
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRecordingTime:I

    .line 3696
    return-void
.end method

.method private setViewOrientation(I)V
    .locals 1
    .param p1, "viewOrientation"    # I

    .prologue
    .line 3713
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    if-nez v0, :cond_0

    .line 3714
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mViewOrientation:I

    .line 3716
    :cond_0
    return-void
.end method

.method private updateResourceIcon(II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "resourceId"    # I

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconArray:[I

    aput p2, v0, p1

    .line 3766
    return-void
.end method

.method private updateResourceIconLine(II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "resourceId"    # I

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconLineArray:[I

    aput p2, v0, p1

    .line 3770
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3773
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mProjectType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3774
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRecordingTime:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3775
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollageType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3776
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mRatio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3777
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3778
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mViewOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3779
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mMaxRecordingCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3781
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mClipList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3783
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordedTimeInMs:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3784
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCurrentRecordingCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3786
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconArray:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3787
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mCollagetTypeIconLineArray:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3789
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstFlip:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3790
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->mFirstCameraIdTaken:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3791
    return-void
.end method
