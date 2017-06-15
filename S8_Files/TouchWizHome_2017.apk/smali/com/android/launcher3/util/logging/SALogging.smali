.class public final Lcom/android/launcher3/util/logging/SALogging;
.super Lcom/android/launcher3/util/logging/Logging;
.source "SALogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/logging/SALogging$QOAction;,
        Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;
    }
.end annotation


# static fields
.field private static final EASY_MODE_ID:C = '5'

.field static final EMPTY_DETAIL:Ljava/lang/String; = "Empty"

.field private static final HOME_APPS_MODE_ID:C = '0'

.field private static final HOME_ONLY_MODE_ID:C = '3'

.field private static final MODE_INDEX:I = 0x1

.field private static final MULTI_SELECT_CANCEL_DELAY:I = 0x3e8

.field public static final QUICKOPTION_ADD_APPS:I = 0xe

.field public static final QUICKOPTION_ADD_TO_SECURE_FOLDER:I = 0x7

.field public static final QUICKOPTION_APPINFO:I = 0xb

.field public static final QUICKOPTION_CLEAR_BADGE_APP:I = 0x5

.field public static final QUICKOPTION_CLEAR_BADGE_FOLDER:I = 0x6

.field public static final QUICKOPTION_ClOSE:I = 0xf

.field public static final QUICKOPTION_DISABLE:I = 0xa

.field public static final QUICKOPTION_PUT_TO_SLEEP:I = 0x8

.field public static final QUICKOPTION_REMOVE_FOLDER:I = 0x4

.field public static final QUICKOPTION_REMOVE_SHORTCUT:I = 0x2

.field public static final QUICKOPTION_REMOVE_WIDGET:I = 0x3

.field public static final QUICKOPTION_RESIZE:I = 0xd

.field public static final QUICKOPTION_SELECT_APP:I = 0x1

.field public static final QUICKOPTION_SELECT_FOLDER:I = 0x10

.field public static final QUICKOPTION_SELECT_WIDGET:I = 0x11

.field public static final QUICKOPTION_UNINSTALL:I = 0x9

.field public static final QUICKOPTION_WIDGETINFO:I = 0xc

.field private static final STATUS_APPS:Ljava/lang/String; = "status_apps"

.field private static final STATUS_HOME:Ljava/lang/String; = "status_home"

.field private static final TAG:Ljava/lang/String; = "Launcher.SALogging"

.field private static final TRACKING_ID:Ljava/lang/String; = "401-399-1029810"

.field private static final VERSION:Ljava/lang/String; = "8.12"

.field private static mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private static sIsFinishAppBinding:Z

.field private static sIsFinishHomeBinding:Z


# instance fields
.field private final mModeList:[C

.field mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

.field private mStatusIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

.field private mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 79
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/Logging;-><init>()V

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    .line 1232
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$23;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$23;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    .line 1253
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$24;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$24;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    .line 1433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    return-void

    .line 69
    nop

    :array_0
    .array-data 2
        0x30s
        0x33s
        0x35s
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->registerStatusPref()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/util/logging/SALogging;->getEventIDForMutliSelect(ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->changeEmptyDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/logging/SALogging;)[C
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/util/logging/SALogging;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getHotSeatAppStatusID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/util/logging/SALogging;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->isBixbyRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private analysePackagesOfDragObject(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/StringBuilder;)I
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "packageNameBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 761
    const/4 v3, 0x0

    .line 762
    .local v3, "packagesCount":I
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 763
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 764
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-direct {p0, v2}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    add-int/lit8 v3, v3, 0x1

    .line 766
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 767
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 768
    .local v0, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 769
    .local v1, "extraItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-direct {p0, v1}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    add-int/lit8 v3, v3, 0x1

    .line 772
    goto :goto_0

    .line 775
    .end local v0    # "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v1    # "extraItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    const-string v4, "Launcher.SALogging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analysePackagesOfDragObject : invalid parameter - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_1
    return v3
.end method

.method private changeEmptyDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    const-string p1, "Empty"

    .line 219
    :cond_1
    return-object p1
.end method

.method private changeIdByMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "originID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 207
    .local v0, "changeID":[C
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 208
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x35

    .line 209
    :goto_0
    aput-char v1, v0, v2

    .line 212
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 209
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x33

    goto :goto_0

    :cond_2
    aget-char v1, v0, v2

    goto :goto_0
.end method

.method private changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p1, "originID"    # Ljava/lang/String;
    .param p2, "mode"    # C

    .prologue
    const/4 v2, 0x1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 199
    .local v0, "changeID":[C
    array-length v1, v0

    if-ge v2, v1, :cond_0

    const/16 v1, 0x30

    if-eq p2, v1, :cond_0

    .line 200
    aput-char p2, v0, v2

    .line 202
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 8
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    const v7, 0x7f08012e

    const v6, 0x7f08012d

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, "eventID":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 840
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    .line 841
    .local v2, "stageMode":I
    packed-switch p1, :pswitch_data_0

    .line 936
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 843
    :pswitch_1
    if-ne v2, v4, :cond_1

    .line 844
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 845
    :cond_1
    if-ne v2, v5, :cond_0

    .line 846
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 850
    :pswitch_2
    if-ne v2, v4, :cond_2

    .line 851
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 852
    :cond_2
    if-ne v2, v5, :cond_0

    .line 853
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 857
    :pswitch_3
    if-ne v2, v4, :cond_0

    .line 858
    const v3, 0x7f08012f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 862
    :pswitch_4
    if-ne v2, v4, :cond_0

    .line 863
    const v3, 0x7f08012a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 867
    :pswitch_5
    if-ne v2, v4, :cond_0

    .line 868
    const v3, 0x7f08012c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 872
    :pswitch_6
    if-ne v2, v4, :cond_3

    .line 873
    const v3, 0x7f08012b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 874
    :cond_3
    if-ne v2, v5, :cond_0

    .line 875
    const v3, 0x7f080135

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 879
    :pswitch_7
    if-ne v2, v4, :cond_4

    .line 880
    const v3, 0x7f080126

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 881
    :cond_4
    if-ne v2, v5, :cond_0

    .line 882
    const v3, 0x7f0800d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 886
    :pswitch_8
    if-ne v2, v4, :cond_5

    .line 887
    const v3, 0x7f080127

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 888
    :cond_5
    if-ne v2, v5, :cond_0

    .line 889
    const v3, 0x7f0800d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 893
    :pswitch_9
    if-ne v2, v4, :cond_6

    .line 894
    const v3, 0x7f080124

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 895
    :cond_6
    if-ne v2, v5, :cond_0

    .line 896
    const v3, 0x7f0800d4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 900
    :pswitch_a
    if-ne v2, v4, :cond_7

    .line 901
    const v3, 0x7f080129

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 902
    :cond_7
    if-ne v2, v5, :cond_0

    .line 903
    const v3, 0x7f0800d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 907
    :pswitch_b
    if-ne v2, v4, :cond_8

    .line 908
    const v3, 0x7f080130

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 909
    :cond_8
    if-ne v2, v5, :cond_0

    .line 910
    const v3, 0x7f0800da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 914
    :pswitch_c
    if-ne v2, v4, :cond_9

    .line 915
    const v3, 0x7f080128

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 916
    :cond_9
    if-ne v2, v5, :cond_0

    .line 917
    const v3, 0x7f0800d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 921
    :pswitch_d
    if-ne v2, v4, :cond_a

    .line 922
    const v3, 0x7f080125

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 923
    :cond_a
    if-ne v2, v5, :cond_0

    .line 924
    const v3, 0x7f0800d5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 928
    :pswitch_e
    if-ne v2, v4, :cond_0

    .line 929
    const v3, 0x7f080131

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 933
    :pswitch_f
    const v3, 0x7f080133

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 841
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
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
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 7
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 981
    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 982
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    .line 983
    .local v3, "stageMode":I
    const/4 v1, 0x0

    .line 984
    .local v1, "screenID":Ljava/lang/String;
    if-ne v3, v5, :cond_1

    .line 985
    const v4, 0x7f08018d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 996
    :cond_0
    :goto_0
    return-object v1

    .line 986
    :cond_1
    if-ne v3, v6, :cond_2

    .line 987
    const v4, 0x7f08017f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 988
    :cond_2
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 989
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v2

    .line 990
    .local v2, "secondTopStage":I
    if-ne v2, v5, :cond_3

    .line 991
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080185

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 992
    :cond_3
    if-ne v2, v6, :cond_0

    .line 993
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080179

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getEventIDForMutliSelect(ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p3, "btnText"    # Ljava/lang/String;

    .prologue
    const v9, 0x7f080156

    const v8, 0x7f080153

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 1112
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    .line 1113
    .local v3, "stage":I
    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1114
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 1115
    .local v0, "eventID":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1156
    :cond_0
    :goto_0
    return-object v0

    .line 1117
    :pswitch_0
    if-eqz p3, :cond_1

    const v4, 0x7f080056

    .line 1118
    invoke-virtual {p2, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1119
    .local v1, "isDisable":Z
    :goto_1
    if-ne v3, v5, :cond_3

    .line 1120
    if-eqz v1, :cond_2

    const v4, 0x7f080157

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1121
    :goto_2
    goto :goto_0

    .line 1118
    .end local v1    # "isDisable":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1120
    .restart local v1    # "isDisable":Z
    :cond_2
    const v4, 0x7f08015c

    .line 1121
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1122
    :cond_3
    if-ne v3, v7, :cond_5

    .line 1123
    if-eqz v1, :cond_4

    const v4, 0x7f080157

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1124
    :goto_3
    goto :goto_0

    .line 1123
    :cond_4
    const v4, 0x7f08015c

    .line 1124
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1125
    :cond_5
    if-ne v3, v6, :cond_0

    .line 1126
    if-eqz v1, :cond_6

    const v4, 0x7f08010f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1127
    :goto_4
    goto :goto_0

    .line 1126
    :cond_6
    const v4, 0x7f080112

    .line 1127
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1131
    .end local v1    # "isDisable":Z
    :pswitch_1
    if-ne v3, v5, :cond_7

    .line 1132
    const v4, 0x7f08015b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1133
    :cond_7
    if-ne v3, v6, :cond_0

    .line 1134
    const v4, 0x7f080111

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1138
    :pswitch_2
    if-ne v3, v5, :cond_8

    .line 1139
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1140
    :cond_8
    if-ne v3, v7, :cond_9

    .line 1141
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1142
    :cond_9
    if-ne v3, v6, :cond_0

    .line 1143
    const v4, 0x7f08010b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1147
    :pswitch_3
    if-ne v3, v5, :cond_a

    .line 1148
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1149
    :cond_a
    if-ne v3, v7, :cond_b

    .line 1150
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1151
    :cond_b
    if-ne v3, v6, :cond_0

    .line 1152
    const v4, 0x7f08010e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    .locals 11
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x1

    .line 797
    const/4 v3, 0x0

    .line 798
    .local v3, "detail":Ljava/lang/String;
    sget-object v6, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderItems(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v2

    .line 799
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 800
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 801
    const-string v6, "_id"

    .line 802
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 801
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 803
    .local v4, "folder_id":I
    sget-object v6, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/launcher3/util/logging/SALogUtils;->getAppsCountInFolder(Landroid/content/Context;I)I

    move-result v0

    .line 804
    .local v0, "appsCount":I
    const-string v6, "color"

    .line 805
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 804
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 806
    .local v1, "color":I
    if-gez v1, :cond_0

    move v1, v5

    .line 807
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "a%dc%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 808
    goto :goto_0

    .line 806
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 807
    :cond_1
    const-string v6, ""

    goto :goto_2

    .line 809
    .end local v0    # "appsCount":I
    .end local v1    # "color":I
    .end local v4    # "folder_id":I
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 811
    :cond_3
    if-nez v3, :cond_4

    const-string v3, "Empty"

    .end local v3    # "detail":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private getHotSeatAppStatusID(I)Ljava/lang/String;
    .locals 4
    .param p1, "i"    # I

    .prologue
    const v3, 0x7f0801a2

    .line 815
    sget-object v2, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 816
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "statusID":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 834
    :goto_0
    return-object v1

    .line 819
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    goto :goto_0

    .line 822
    :pswitch_1
    const v2, 0x7f0801b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 823
    goto :goto_0

    .line 825
    :pswitch_2
    const v2, 0x7f0801b6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 826
    goto :goto_0

    .line 828
    :pswitch_3
    const v2, 0x7f0801a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 829
    goto :goto_0

    .line 831
    :pswitch_4
    const v2, 0x7f0801a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/launcher3/util/logging/SALogging;
    .locals 1

    .prologue
    .line 109
    # getter for: Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;->sSALoggingInstance:Lcom/android/launcher3/util/logging/SALogging;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;->access$000()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    return-object v0
.end method

.method private getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 782
    if-eqz p1, :cond_2

    .line 783
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 785
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 786
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 788
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, "unknown"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 791
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, "APP"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 4
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 940
    const/4 v0, 0x0

    .line 942
    .local v0, "eventID":Ljava/lang/String;
    if-nez p2, :cond_0

    move-object v1, v0

    .line 952
    .end local v0    # "eventID":Ljava/lang/String;
    .local v1, "eventID":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 945
    .end local v1    # "eventID":Ljava/lang/String;
    .restart local v0    # "eventID":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 947
    .local v2, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 952
    .end local v0    # "eventID":Ljava/lang/String;
    .restart local v1    # "eventID":Ljava/lang/String;
    goto :goto_0

    .line 949
    .end local v1    # "eventID":Ljava/lang/String;
    .restart local v0    # "eventID":Ljava/lang/String;
    :pswitch_0
    const v3, 0x7f080133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 947
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method private getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 8
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 956
    const/4 v1, 0x0

    .line 958
    .local v1, "screenID":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 977
    .end local v1    # "screenID":Ljava/lang/String;
    .local v2, "screenID":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 962
    .end local v2    # "screenID":Ljava/lang/String;
    .restart local v1    # "screenID":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 963
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v4

    .line 964
    .local v4, "stageMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v3

    .line 966
    .local v3, "secondTopStageMode":I
    if-ne v4, v6, :cond_2

    .line 967
    const v5, 0x7f08018e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    .line 977
    .end local v1    # "screenID":Ljava/lang/String;
    .restart local v2    # "screenID":Ljava/lang/String;
    goto :goto_0

    .line 968
    .end local v2    # "screenID":Ljava/lang/String;
    .restart local v1    # "screenID":Ljava/lang/String;
    :cond_2
    if-ne v4, v7, :cond_3

    .line 969
    const v5, 0x7f080181

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 970
    :cond_3
    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 971
    if-ne v3, v6, :cond_4

    .line 972
    const v5, 0x7f080186

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 973
    :cond_4
    if-ne v3, v7, :cond_1

    .line 974
    const v5, 0x7f08017a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private isBixbyRunning()Z
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getStateManager()Lcom/android/launcher3/executor/StateManager;

    move-result-object v0

    .line 191
    .local v0, "stateManager":Lcom/android/launcher3/executor/StateManager;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateManager;->isRuleRunning()Z

    move-result v1

    .line 194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerStatusPref()V
    .locals 9

    .prologue
    .line 140
    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v1, "keySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    .line 143
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801ab

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801b4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801b6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801b1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f08019f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f08019e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801ad

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801b0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801ac

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f080198

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f08019a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f080195

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f080199

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801aa

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f080197

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f08019d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801b5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801b3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801b2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f08019c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801b7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801af

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801ae

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f08019b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f080196

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0801a5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    array-length v7, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    aget-char v2, v6, v4

    .line 181
    .local v2, "mode":C
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "mode":C
    :cond_1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v4

    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-direct {v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;-><init>()V

    const-string v6, "SASettingPref"

    .line 185
    invoke-virtual {v5, v6, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKeys(Ljava/lang/String;Ljava/util/Set;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    move-result-object v5

    .line 186
    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 184
    invoke-virtual {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->registerSettingPref(Ljava/util/Map;)V

    .line 187
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 113
    sput-object p1, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$1;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/app/Application;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 130
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 131
    return-void
.end method

.method public insertAddToFolderLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 446
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$9;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public insertAddToLockedFolderLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 473
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$10;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 499
    return-void
.end method

.method public insertAddWidgetItemLog(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 269
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$3;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public insertCancelAddWidgetLog(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "cp"    # Landroid/content/ComponentName;

    .prologue
    .line 1496
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$32;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$32;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1508
    return-void
.end method

.method public insertChangeGridLog(IIZZ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "statusLogOnly"    # Z
    .param p4, "isHomeGrid"    # Z

    .prologue
    .line 1174
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$21;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$21;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1193
    return-void
.end method

.method public insertClickGridButtonLog(IIZ)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isHomeGrid"    # Z

    .prologue
    .line 1196
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$22;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$22;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1211
    return-void
.end method

.method public insertCloseWidgetFolderLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$5;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public insertCloseWidgetLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$4;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public insertEnterResizeWidgetLog(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1511
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$33;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$33;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1524
    return-void
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;

    .prologue
    .line 1345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$27;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$27;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 1363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$28;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$28;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "detail"    # Ljava/lang/String;

    .prologue
    .line 1404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_1

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    new-instance v1, Lcom/android/launcher3/util/logging/SALogging$30;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/util/logging/SALogging$30;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    .line 1383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$29;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/launcher3/util/logging/SALogging$29;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertFolderMoveAppLogs(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 731
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$15;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 758
    return-void
.end method

.method public insertGesturePointOnTrayChange(ILandroid/graphics/Point;II)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "from"    # Landroid/graphics/Point;
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .prologue
    .line 1528
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$34;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$34;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/graphics/Point;III)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1543
    return-void
.end method

.method public insertGoogleSearchLaunchCount()V
    .locals 1

    .prologue
    .line 1546
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$35;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$35;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1552
    return-void
.end method

.method public insertHideAppsLog(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1160
    .local p1, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v0, ""

    .line 1162
    .local v0, "appNames":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1163
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1164
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1165
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1168
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1170
    return-void
.end method

.method public insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 223
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$2;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 318
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$6;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public insertMoveFromFolderLog(JZILcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 9
    .param p1, "container"    # J
    .param p3, "isMultiSelect"    # Z
    .param p4, "direction"    # I
    .param p5, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 694
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v8, "packageNameBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p5, v8}, Lcom/android/launcher3/util/logging/SALogging;->analysePackagesOfDragObject(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/StringBuilder;)I

    move-result v6

    .line 696
    .local v6, "numberOfPackages":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 697
    .local v7, "namesOfPackages":Ljava/lang/String;
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$14;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/logging/SALogging$14;-><init>(Lcom/android/launcher3/util/logging/SALogging;JZIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 728
    return-void
.end method

.method public insertMoveToAppLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 419
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$8;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method public insertMoveToPageLog(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "itemInfo"    # Ljava/lang/Object;
    .param p2, "isHome"    # Z

    .prologue
    .line 502
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$11;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 4
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "backPressed"    # Z
    .param p3, "homePressed"    # Z

    .prologue
    .line 1051
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1054
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v0, :cond_1

    .line 1055
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1057
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/util/logging/SALogging$19;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertMultiSelectLog(ILjava/util/ArrayList;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p3, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p4, "btnText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1086
    .local p2, "mCheckedAppsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$20;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$20;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1109
    return-void
.end method

.method public insertQOEventLog(ILcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 1437
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$31;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$31;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1493
    return-void
.end method

.method public insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    .line 1001
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$16;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/launcher3/util/logging/SALogging$16;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1023
    return-void
.end method

.method public insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 357
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$7;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 416
    return-void
.end method

.method public insertStatusLog(Ljava/lang/String;I)V
    .locals 1
    .param p1, "statusID"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1317
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$25;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusID"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 1330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$26;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setDefaultValueForAppStatusLog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 531
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    .line 532
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$12;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 582
    return-void
.end method

.method public setDefaultValueForHomeStatusLog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 587
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 588
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$13;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method public startLoader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 135
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    .line 136
    return-void
.end method

.method public updateDefaultPageLog()V
    .locals 1

    .prologue
    .line 1026
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$17;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$17;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1033
    return-void
.end method

.method public updateLogValuesForHomeItems()V
    .locals 2

    .prologue
    .line 1225
    sget-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    if-nez v0, :cond_0

    .line 1230
    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->removeCallBacks(Ljava/lang/Runnable;)V

    .line 1229
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThreadDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public updatePageLogs()V
    .locals 1

    .prologue
    .line 1036
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$18;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$18;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1047
    return-void
.end method

.method public updateStatusLogValuesForAppsItem()V
    .locals 2

    .prologue
    .line 1214
    sget-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    if-nez v0, :cond_0

    .line 1219
    :goto_0
    return-void

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->removeCallBacks(Ljava/lang/Runnable;)V

    .line 1218
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThreadDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
