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

.field private static final TAG:Ljava/lang/String; = "Launcher.SALogging"

.field private static final TRACKING_ID:Ljava/lang/String; = "401-399-1029810"

.field private static final VERSION:Ljava/lang/String; = "8.11"

.field private static mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private static sIsFinishAppBinding:Z

.field private static sIsFinishHomeBinding:Z


# instance fields
.field mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

.field private mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

.field private mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 68
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/Logging;-><init>()V

    .line 1167
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$23;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$23;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    .line 1188
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$24;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$24;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    .line 1372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/util/logging/SALogging;->getEventIDForMutliSelect(ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getHotSeatAppStatusID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/util/logging/SALogging;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->isBixbyRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private analysePackagesOfDragObject(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/StringBuilder;)I
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "packageNameBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 677
    const/4 v3, 0x0

    .line 678
    .local v3, "packagesCount":I
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 679
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 680
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-direct {p0, v2}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    add-int/lit8 v3, v3, 0x1

    .line 682
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 683
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

    .line 684
    .local v0, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 685
    .local v1, "extraItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-direct {p0, v1}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    add-int/lit8 v3, v3, 0x1

    .line 688
    goto :goto_0

    .line 691
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

    .line 693
    :cond_1
    return v3
.end method

.method private changeIdByMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "originID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 129
    .local v0, "changeID":[C
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 130
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x35

    .line 131
    :goto_0
    aput-char v1, v0, v2

    .line 134
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 131
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

.method private getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 8
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    const v7, 0x7f08012e

    const v6, 0x7f08012d

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 758
    const/4 v0, 0x0

    .line 759
    .local v0, "eventID":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 760
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    .line 761
    .local v2, "stageMode":I
    packed-switch p1, :pswitch_data_0

    .line 856
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 763
    :pswitch_1
    if-ne v2, v4, :cond_1

    .line 764
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 765
    :cond_1
    if-ne v2, v5, :cond_0

    .line 766
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 770
    :pswitch_2
    if-ne v2, v4, :cond_2

    .line 771
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 772
    :cond_2
    if-ne v2, v5, :cond_0

    .line 773
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 777
    :pswitch_3
    if-ne v2, v4, :cond_0

    .line 778
    const v3, 0x7f08012f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 782
    :pswitch_4
    if-ne v2, v4, :cond_0

    .line 783
    const v3, 0x7f08012a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 787
    :pswitch_5
    if-ne v2, v4, :cond_0

    .line 788
    const v3, 0x7f08012c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 792
    :pswitch_6
    if-ne v2, v4, :cond_3

    .line 793
    const v3, 0x7f08012b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 794
    :cond_3
    if-ne v2, v5, :cond_0

    .line 795
    const v3, 0x7f080135

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 799
    :pswitch_7
    if-ne v2, v4, :cond_4

    .line 800
    const v3, 0x7f080126

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 801
    :cond_4
    if-ne v2, v5, :cond_0

    .line 802
    const v3, 0x7f0800d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 806
    :pswitch_8
    if-ne v2, v4, :cond_5

    .line 807
    const v3, 0x7f080127

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_5
    if-ne v2, v5, :cond_0

    .line 809
    const v3, 0x7f0800d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 813
    :pswitch_9
    if-ne v2, v4, :cond_6

    .line 814
    const v3, 0x7f080124

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_6
    if-ne v2, v5, :cond_0

    .line 816
    const v3, 0x7f0800d4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 820
    :pswitch_a
    if-ne v2, v4, :cond_7

    .line 821
    const v3, 0x7f080129

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 822
    :cond_7
    if-ne v2, v5, :cond_0

    .line 823
    const v3, 0x7f0800d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 827
    :pswitch_b
    if-ne v2, v4, :cond_8

    .line 828
    const v3, 0x7f080130

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 829
    :cond_8
    if-ne v2, v5, :cond_0

    .line 830
    const v3, 0x7f0800da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 834
    :pswitch_c
    if-ne v2, v4, :cond_9

    .line 835
    const v3, 0x7f080128

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 836
    :cond_9
    if-ne v2, v5, :cond_0

    .line 837
    const v3, 0x7f0800d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 841
    :pswitch_d
    if-ne v2, v4, :cond_a

    .line 842
    const v3, 0x7f080125

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 843
    :cond_a
    if-ne v2, v5, :cond_0

    .line 844
    const v3, 0x7f0800d5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 848
    :pswitch_e
    if-ne v2, v4, :cond_0

    .line 849
    const v3, 0x7f080131

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 853
    :pswitch_f
    const v3, 0x7f080133

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 761
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

    .line 901
    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 902
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    .line 903
    .local v3, "stageMode":I
    const/4 v1, 0x0

    .line 904
    .local v1, "screenID":Ljava/lang/String;
    if-ne v3, v5, :cond_1

    .line 905
    const v4, 0x7f08018d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 916
    :cond_0
    :goto_0
    return-object v1

    .line 906
    :cond_1
    if-ne v3, v6, :cond_2

    .line 907
    const v4, 0x7f08017f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 908
    :cond_2
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 909
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v2

    .line 910
    .local v2, "secondTopStage":I
    if-ne v2, v5, :cond_3

    .line 911
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080185

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 912
    :cond_3
    if-ne v2, v6, :cond_0

    .line 913
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

    .line 1048
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    .line 1049
    .local v3, "stage":I
    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1050
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 1051
    .local v0, "eventID":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1092
    :cond_0
    :goto_0
    return-object v0

    .line 1053
    :pswitch_0
    if-eqz p3, :cond_1

    const v4, 0x7f080056

    .line 1054
    invoke-virtual {p2, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1055
    .local v1, "isDisable":Z
    :goto_1
    if-ne v3, v5, :cond_3

    .line 1056
    if-eqz v1, :cond_2

    const v4, 0x7f080157

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1057
    :goto_2
    goto :goto_0

    .line 1054
    .end local v1    # "isDisable":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1056
    .restart local v1    # "isDisable":Z
    :cond_2
    const v4, 0x7f08015c

    .line 1057
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1058
    :cond_3
    if-ne v3, v7, :cond_5

    .line 1059
    if-eqz v1, :cond_4

    const v4, 0x7f080157

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1060
    :goto_3
    goto :goto_0

    .line 1059
    :cond_4
    const v4, 0x7f08015c

    .line 1060
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1061
    :cond_5
    if-ne v3, v6, :cond_0

    .line 1062
    if-eqz v1, :cond_6

    const v4, 0x7f08010f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1063
    :goto_4
    goto :goto_0

    .line 1062
    :cond_6
    const v4, 0x7f080112

    .line 1063
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1067
    .end local v1    # "isDisable":Z
    :pswitch_1
    if-ne v3, v5, :cond_7

    .line 1068
    const v4, 0x7f08015b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1069
    :cond_7
    if-ne v3, v6, :cond_0

    .line 1070
    const v4, 0x7f080111

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1074
    :pswitch_2
    if-ne v3, v5, :cond_8

    .line 1075
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1076
    :cond_8
    if-ne v3, v7, :cond_9

    .line 1077
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1078
    :cond_9
    if-ne v3, v6, :cond_0

    .line 1079
    const v4, 0x7f08010b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1083
    :pswitch_3
    if-ne v3, v5, :cond_a

    .line 1084
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1085
    :cond_a
    if-ne v3, v7, :cond_b

    .line 1086
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1087
    :cond_b
    if-ne v3, v6, :cond_0

    .line 1088
    const v4, 0x7f08010e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1051
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

    .line 717
    const/4 v3, 0x0

    .line 718
    .local v3, "detail":Ljava/lang/String;
    sget-object v6, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderItems(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v2

    .line 719
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 720
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 721
    const-string v6, "_id"

    .line 722
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 721
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 723
    .local v4, "folder_id":I
    sget-object v6, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/launcher3/util/logging/SALogUtils;->getAppsCountInFolder(Landroid/content/Context;I)I

    move-result v0

    .line 724
    .local v0, "appsCount":I
    const-string v6, "color"

    .line 725
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 724
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 726
    .local v1, "color":I
    if-gez v1, :cond_0

    move v1, v5

    .line 727
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

    .line 728
    goto :goto_0

    .line 726
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 727
    :cond_1
    const-string v6, ""

    goto :goto_2

    .line 729
    .end local v0    # "appsCount":I
    .end local v1    # "color":I
    .end local v4    # "folder_id":I
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_3
    if-nez v3, :cond_4

    const-string v3, " "

    .end local v3    # "detail":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private getHotSeatAppStatusID(I)Ljava/lang/String;
    .locals 4
    .param p1, "i"    # I

    .prologue
    const v3, 0x7f0801a2

    .line 735
    sget-object v2, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 736
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "statusID":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 754
    :goto_0
    return-object v1

    .line 739
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 740
    goto :goto_0

    .line 742
    :pswitch_1
    const v2, 0x7f0801b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 743
    goto :goto_0

    .line 745
    :pswitch_2
    const v2, 0x7f0801b6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 746
    goto :goto_0

    .line 748
    :pswitch_3
    const v2, 0x7f0801a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 749
    goto :goto_0

    .line 751
    :pswitch_4
    const v2, 0x7f0801a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 737
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
    .line 98
    # getter for: Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;->sSALoggingInstance:Lcom/android/launcher3/util/logging/SALogging;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;->access$000()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    return-object v0
.end method

.method private getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 698
    if-eqz p1, :cond_3

    .line 699
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "result":Ljava/lang/String;
    :goto_0
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    :cond_0
    :goto_1
    return-object v0

    .line 701
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 702
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 704
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 711
    .end local v0    # "result":Ljava/lang/String;
    :cond_3
    const-string v0, "APP"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method private getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 4
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 860
    const/4 v0, 0x0

    .line 862
    .local v0, "eventID":Ljava/lang/String;
    if-nez p2, :cond_0

    move-object v1, v0

    .line 872
    .end local v0    # "eventID":Ljava/lang/String;
    .local v1, "eventID":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 865
    .end local v1    # "eventID":Ljava/lang/String;
    .restart local v0    # "eventID":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 867
    .local v2, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 872
    .end local v0    # "eventID":Ljava/lang/String;
    .restart local v1    # "eventID":Ljava/lang/String;
    goto :goto_0

    .line 869
    .end local v1    # "eventID":Ljava/lang/String;
    .restart local v0    # "eventID":Ljava/lang/String;
    :pswitch_0
    const v3, 0x7f080133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 867
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

    .line 876
    const/4 v1, 0x0

    .line 878
    .local v1, "screenID":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 897
    .end local v1    # "screenID":Ljava/lang/String;
    .local v2, "screenID":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 882
    .end local v2    # "screenID":Ljava/lang/String;
    .restart local v1    # "screenID":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 883
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v4

    .line 884
    .local v4, "stageMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v3

    .line 886
    .local v3, "secondTopStageMode":I
    if-ne v4, v6, :cond_2

    .line 887
    const v5, 0x7f08018e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    .line 897
    .end local v1    # "screenID":Ljava/lang/String;
    .restart local v2    # "screenID":Ljava/lang/String;
    goto :goto_0

    .line 888
    .end local v2    # "screenID":Ljava/lang/String;
    .restart local v1    # "screenID":Ljava/lang/String;
    :cond_2
    if-ne v4, v7, :cond_3

    .line 889
    const v5, 0x7f080181

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 890
    :cond_3
    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 891
    if-ne v3, v6, :cond_4

    .line 892
    const v5, 0x7f080186

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 893
    :cond_4
    if-ne v3, v7, :cond_1

    .line 894
    const v5, 0x7f08017a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private isBixbyRunning()Z
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getStateManager()Lcom/android/launcher3/executor/StateManager;

    move-result-object v0

    .line 121
    .local v0, "stateManager":Lcom/android/launcher3/executor/StateManager;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateManager;->isRuleRunning()Z

    move-result v1

    .line 124
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-object p1, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    .line 103
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 104
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    .line 105
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$1;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/app/Application;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 116
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 117
    return-void
.end method

.method public insertAddToFolderLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 358
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$9;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public insertAddToLockedFolderLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 385
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$10;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method public insertAddWidgetItemLog(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 183
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$3;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public insertCancelAddWidgetLog(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "cp"    # Landroid/content/ComponentName;

    .prologue
    .line 1435
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$32;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$32;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1444
    return-void
.end method

.method public insertChangeGridLog(IIZZ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "statusLogOnly"    # Z
    .param p4, "isHomeGrid"    # Z

    .prologue
    .line 1109
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$21;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$21;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1128
    return-void
.end method

.method public insertClickGridButtonLog(IIZ)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isHomeGrid"    # Z

    .prologue
    .line 1131
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$22;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$22;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1146
    return-void
.end method

.method public insertCloseWidgetFolderLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$5;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public insertCloseWidgetLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$4;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public insertEnterResizeWidgetLog(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1447
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$33;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$33;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1457
    return-void
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;

    .prologue
    .line 1286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1287
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
    .line 1304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1305
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
    .locals 7
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "detail"    # Ljava/lang/String;

    .prologue
    .line 1344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$30;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/util/logging/SALogging$30;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    .line 1324
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$29;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/launcher3/util/logging/SALogging$29;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertFolderMoveAppLogs(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 647
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$15;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 674
    return-void
.end method

.method public insertGesturePointOnTrayChange(ILandroid/graphics/Point;II)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "from"    # Landroid/graphics/Point;
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .prologue
    .line 1461
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$34;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$34;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/graphics/Point;III)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1476
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
    .line 1096
    .local p1, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v0, ""

    .line 1097
    .local v0, "appNames":Ljava/lang/String;
    const-string v2, ""

    .line 1098
    .local v2, "packageName":Ljava/lang/String;
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

    .line 1099
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1100
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1104
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method public insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 138
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$2;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 233
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$6;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method public insertMoveFromFolderLog(JZILcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 9
    .param p1, "container"    # J
    .param p3, "isMultiSelect"    # Z
    .param p4, "direction"    # I
    .param p5, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 610
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .local v8, "packageNameBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p5, v8}, Lcom/android/launcher3/util/logging/SALogging;->analysePackagesOfDragObject(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/StringBuilder;)I

    move-result v6

    .line 612
    .local v6, "numberOfPackages":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 613
    .local v7, "namesOfPackages":Ljava/lang/String;
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$14;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/util/logging/SALogging$14;-><init>(Lcom/android/launcher3/util/logging/SALogging;JZIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 644
    return-void
.end method

.method public insertMoveToAppLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 331
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$8;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public insertMoveToPageLog(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "itemInfo"    # Ljava/lang/Object;
    .param p2, "isHome"    # Z

    .prologue
    .line 414
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$11;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method

.method public insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 4
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "backPressed"    # Z
    .param p3, "homePressed"    # Z

    .prologue
    .line 987
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 990
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v0, :cond_1

    .line 991
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 993
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
    .line 1022
    .local p2, "mCheckedAppsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$20;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$20;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1045
    return-void
.end method

.method public insertQOEventLog(ILcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 1376
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$31;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$31;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1432
    return-void
.end method

.method public insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    .line 921
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$16;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/launcher3/util/logging/SALogging$16;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 959
    return-void
.end method

.method public insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 272
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$7;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public insertStatusLog(Ljava/lang/String;I)V
    .locals 1
    .param p1, "statusID"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1252
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
    .line 1268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1269
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
    .line 443
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    .line 444
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$12;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method

.method public setDefaultValueForHomeStatusLog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 493
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$13;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 606
    return-void
.end method

.method public updateDefaultPageLog()V
    .locals 1

    .prologue
    .line 962
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$17;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$17;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 969
    return-void
.end method

.method public updateLogValuesForHomeItems()V
    .locals 2

    .prologue
    .line 1160
    sget-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    if-nez v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->removeCallBacks(Ljava/lang/Runnable;)V

    .line 1164
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThreadDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public updatePageLogs()V
    .locals 1

    .prologue
    .line 972
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$18;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$18;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 983
    return-void
.end method

.method public updateStatusLogValuesForAppsItem()V
    .locals 2

    .prologue
    .line 1149
    sget-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    if-nez v0, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->removeCallBacks(Ljava/lang/Runnable;)V

    .line 1153
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThreadDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
