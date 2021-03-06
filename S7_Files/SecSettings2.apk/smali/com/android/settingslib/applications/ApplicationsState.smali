.class public Lcom/android/settingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/ApplicationsState$10;,
        Lcom/android/settingslib/applications/ApplicationsState$11;,
        Lcom/android/settingslib/applications/ApplicationsState$12;,
        Lcom/android/settingslib/applications/ApplicationsState$13;,
        Lcom/android/settingslib/applications/ApplicationsState$1;,
        Lcom/android/settingslib/applications/ApplicationsState$2;,
        Lcom/android/settingslib/applications/ApplicationsState$3;,
        Lcom/android/settingslib/applications/ApplicationsState$4;,
        Lcom/android/settingslib/applications/ApplicationsState$5;,
        Lcom/android/settingslib/applications/ApplicationsState$6;,
        Lcom/android/settingslib/applications/ApplicationsState$7;,
        Lcom/android/settingslib/applications/ApplicationsState$8;,
        Lcom/android/settingslib/applications/ApplicationsState$9;,
        Lcom/android/settingslib/applications/ApplicationsState$AppEntry;,
        Lcom/android/settingslib/applications/ApplicationsState$AppFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$Callbacks;,
        Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$MainHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settingslib/applications/ApplicationsState$Session;,
        Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field static mPm:Landroid/content/pm/PackageManager;

.field static mUsbManager:Landroid/hardware/usb/IUsbManager;

.field static sInstance:Lcom/android/settingslib/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminRetrieveFlags:I

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurId:J

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

.field private mOwnerPkgRemovedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settingslib/applications/ApplicationsState;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mOwnerPkgRemovedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 82
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 1283
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1303
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>()V

    .line 1302
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1313
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$3;-><init>()V

    .line 1312
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1323
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$4;-><init>()V

    .line 1322
    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1337
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1350
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1362
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1378
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1395
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1410
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1420
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1430
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1440
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 8
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    const-wide/16 v6, 0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 114
    new-instance v4, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 117
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 116
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 120
    iput-wide v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 130
    new-instance v4, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mOwnerPkgRemovedList:Ljava/util/ArrayList;

    .line 134
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 135
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sput-object v4, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 136
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 137
    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 138
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    sput-object v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 139
    const-string/jumbo v4, "usb"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 140
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    sput-object v4, Lcom/android/settingslib/applications/ApplicationsState;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 141
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 142
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_0
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "ApplicationsState.Loader"

    .line 145
    const/16 v6, 0xa

    .line 144
    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 146
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v4, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 150
    const v4, 0xa200

    iput v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 153
    const v4, 0x8200

    iput v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 170
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 172
    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v5

    .line 133
    return-void

    .line 170
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 173
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private addUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 473
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 464
    :cond_2
    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearEntries()V
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 276
    return-void
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 333
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 335
    return-object v1

    .line 331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 499
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 500
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 502
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 504
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v2, p1, v4, v5}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 505
    .restart local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    :goto_0
    return-object v0

    .line 507
    :cond_1
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v2, p1, :cond_0

    .line 508
    iput-object p1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 89
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    .line 93
    :cond_0
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 534
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 537
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 523
    if-eqz p1, :cond_0

    .line 526
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    .line 527
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 526
    add-long/2addr v0, v2

    .line 528
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 526
    add-long/2addr v0, v2

    .line 528
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 526
    add-long/2addr v0, v2

    return-wide v0

    .line 530
    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .param p1, "ps"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 516
    if-eqz p1, :cond_0

    .line 517
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0

    .line 519
    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 556
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "tmp":Ljava/lang/String;
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 558
    const-string/jumbo v2, ""

    .line 557
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 483
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 484
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 485
    .local v2, "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v2, :cond_1

    .line 486
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 487
    .local v0, "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 483
    .end local v0    # "appEntry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v1    # "appEntry$iterator":Ljava/util/Iterator;
    .end local v2    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 490
    .restart local v1    # "appEntry$iterator":Ljava/util/Iterator;
    .restart local v2    # "userMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 491
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "appEntry$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 482
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 387
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :try_start_1
    iget-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 395
    return-void

    .line 397
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-ltz v2, :cond_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 400
    return-void

    .line 402
    :cond_1
    :try_start_5
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 403
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 402
    :goto_0
    invoke-interface {v4, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 405
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_3

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 406
    return-void

    .line 403
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_7
    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    .line 408
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_5

    .line 409
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 410
    const/4 v4, 0x3

    .line 409
    if-eq v2, v4, :cond_4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 411
    return-void

    .line 413
    :cond_4
    const/4 v2, 0x1

    :try_start_9
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 415
    :cond_5
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 417
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 419
    :cond_6
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 420
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :try_start_a
    monitor-exit v3

    .line 385
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 387
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 424
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .prologue
    .line 288
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    .line 293
    return-void

    .line 291
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 287
    return-void
.end method

.method doPauseLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 301
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 303
    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 299
    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 14

    .prologue
    .line 191
    iget-boolean v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v11, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 195
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v11, :cond_1

    .line 196
    new-instance v11, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;)V

    iput-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 197
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v11}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 199
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 200
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 203
    .local v8, "user":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v11

    if-gez v11, :cond_2

    .line 204
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    :cond_2
    iget-object v12, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 209
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v11

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 210
    :goto_1
    iget v13, v8, Landroid/content/pm/UserInfo;->id:I

    .line 208
    invoke-interface {v12, v11, v13}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 211
    .local v6, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 212
    .end local v6    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 209
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v12, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 219
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    .line 226
    :cond_5
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 227
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_a

    .line 228
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 231
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v11, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v11, :cond_9

    .line 232
    iget v11, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    .line 233
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 234
    add-int/lit8 v2, v2, -0x1

    .line 227
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 221
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_5

    .line 222
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 237
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 239
    :cond_9
    iget v11, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 240
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 241
    .local v1, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_6

    .line 242
    iput-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_3

    .line 246
    .end local v1    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "userId":I
    :cond_a
    const-string/jumbo v7, ""

    .line 247
    .local v7, "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 248
    .local v4, "isExisting":Z
    const/4 v2, 0x0

    :goto_5
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mOwnerPkgRemovedList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_e

    .line 249
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mOwnerPkgRemovedList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "pkgName":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 250
    .restart local v7    # "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 251
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_b

    .line 252
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 253
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 254
    const/4 v4, 0x1

    .line 258
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_b
    if-nez v4, :cond_c

    .line 259
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mOwnerPkgRemovedList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v2, v2, -0x1

    .line 248
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 251
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 265
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "j":I
    :cond_e
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    iget-object v13, p0, Lcom/android/settingslib/applications/ApplicationsState;->mOwnerPkgRemovedList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_f

    .line 267
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    .line 268
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mOwnerPkgRemovedList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 270
    :cond_f
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 271
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_10

    .line 272
    iget-object v11, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 190
    :cond_10
    return-void
.end method

.method public ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 342
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    monitor-enter p1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 341
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 309
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 310
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 311
    .local v1, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-nez v1, :cond_1

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 313
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_0

    .line 315
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 321
    :cond_0
    if-eqz v2, :cond_1

    .line 322
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    monitor-exit v4

    .line 326
    return-object v1

    .line 316
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "ApplicationsState"

    const-string/jumbo v5, "getEntry couldn\'t reach PackageManager"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 318
    return-object v6

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public haveDisabledApps()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 375
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 377
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 379
    return v1

    .line 375
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 382
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 459
    return-void
.end method

.method public newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 3
    .param p1, "callbacks"    # Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    .prologue
    .line 183
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$Session;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)V

    .line 184
    .local v0, "s":Lcom/android/settingslib/applications/ApplicationsState$Session;
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 187
    return-object v0

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    .prologue
    .line 541
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 542
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    .line 543
    return-void

    .line 545
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 547
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 548
    .local v1, "s":Lcom/android/settingslib/applications/ApplicationsState$Session;
    iget-boolean v2, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    .line 549
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "s":Lcom/android/settingslib/applications/ApplicationsState$Session;
    :cond_2
    monitor-exit v3

    .line 540
    return-void

    .line 541
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 429
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    .line 431
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v2

    .line 433
    .local v2, "idx":I
    if-ltz v2, :cond_2

    .line 434
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 436
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 437
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 441
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 443
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 445
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    .line 446
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 451
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 452
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    monitor-exit v5

    .line 428
    return-void

    .line 444
    .restart local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .restart local v1    # "i":I
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v1    # "i":I
    .end local v2    # "idx":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public requestSize(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 354
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 355
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 350
    return-void

    .line 352
    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
