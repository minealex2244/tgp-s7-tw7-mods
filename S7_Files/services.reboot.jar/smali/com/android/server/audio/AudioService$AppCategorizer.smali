.class public Lcom/android/server/audio/AudioService$AppCategorizer;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppCategorizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AppCategorizer$1;
    }
.end annotation


# static fields
.field static final CATEGORY_TABLE:Ljava/lang/String; = "category_packages"

.field static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field final GOOGLE_PLAY_SITE:Ljava/lang/String;

.field final MSG_CHECK_GOOGLE_SERVER:I

.field final MSG_PACKAGE_ADDED:I

.field final REVIEW_DURATION:I

.field public mCategoryThread:Landroid/os/HandlerThread;

.field final mContext:Landroid/content/Context;

.field mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field mHandler:Landroid/os/Handler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final mPackageManager:Landroid/content/pm/PackageManager;

.field final sAppList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

.field final sNewbiesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 13
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 9696
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sNewbiesList:Ljava/util/ArrayList;

    .line 9681
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    .line 9685
    iput-object v4, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 9686
    iput v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->MSG_PACKAGE_ADDED:I

    .line 9687
    iput v2, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->MSG_CHECK_GOOGLE_SERVER:I

    .line 9688
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->REVIEW_DURATION:I

    .line 9693
    const-string/jumbo v0, "https://play.google.com/store/apps/details?id="

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->GOOGLE_PLAY_SITE:Ljava/lang/String;

    .line 9882
    new-instance v0, Lcom/android/server/audio/AudioService$AppCategorizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AppCategorizer$1;-><init>(Lcom/android/server/audio/AudioService$AppCategorizer;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 9697
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mContext:Landroid/content/Context;

    .line 9698
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get59(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    .line 9699
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 9702
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Category Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mCategoryThread:Landroid/os/HandlerThread;

    .line 9703
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mCategoryThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9704
    new-instance v0, Lcom/android/server/audio/AudioService$AppCategorizer$2;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mCategoryThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$AppCategorizer$2;-><init>(Lcom/android/server/audio/AudioService$AppCategorizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    .line 9728
    const-string/jumbo v12, "SELECT * FROM category_packages"

    .line 9729
    .local v12, "query":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 9731
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    monitor-enter v1

    .line 9732
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 9733
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 9734
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9736
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 9737
    .local v11, "packageName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 9738
    .local v7, "category":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    invoke-virtual {v0, v11, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9739
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9741
    .end local v7    # "category":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 9746
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 9747
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9748
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 9749
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 9752
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v0, :cond_3

    .line 9753
    const-string/jumbo v0, "gamemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 9754
    .local v6, "b":Landroid/os/IBinder;
    if-eqz v6, :cond_3

    .line 9755
    invoke-static {v6}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9696
    .end local v6    # "b":Landroid/os/IBinder;
    :cond_3
    :goto_0
    return-void

    .line 9731
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 9758
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 9759
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addAllAppsIntoNewbies()V
    .locals 6

    .prologue
    .line 9764
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9765
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9766
    iget-object v4, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 9768
    .local v0, "AppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 9769
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9770
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/audio/AudioService$AppCategorizer;->addToJobQueue(Ljava/lang/String;Z)V

    .line 9768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9763
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method addToJobQueue(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "skipCheck"    # Z

    .prologue
    .line 9864
    if-nez p1, :cond_0

    .line 9865
    return-void

    .line 9867
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    monitor-enter v2

    .line 9868
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sNewbiesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9869
    :cond_1
    const-string/jumbo v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is already reviewed or in a queue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 9870
    return-void

    .line 9872
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sNewbiesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 9875
    if-nez p2, :cond_3

    .line 9876
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 9877
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9878
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9863
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    return-void

    .line 9867
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected checkGoogleServer()V
    .locals 24

    .prologue
    .line 9781
    const/4 v14, 0x0

    .line 9782
    .local v14, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 9783
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sNewbiesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_0

    .line 9784
    const-string/jumbo v20, "AudioService"

    const-string/jumbo v22, "checkGoogleServer: work queue is empty."

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v21

    .line 9785
    return-void

    .line 9787
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sNewbiesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "packageName":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v14, "packageName":Ljava/lang/String;
    monitor-exit v21

    .line 9789
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AppCategorizer;->isOnline()Z

    move-result v20

    if-nez v20, :cond_1

    .line 9790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 9791
    .local v13, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x2710

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9792
    const-string/jumbo v20, "AudioService"

    const-string/jumbo v21, "checkGoogleServer: it is offline."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9793
    return-void

    .line 9782
    .end local v13    # "msg":Landroid/os/Message;
    .end local v14    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 9796
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "https://play.google.com/store/apps/details?id="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 9798
    .local v19, "uri":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 9799
    .local v9, "httpclient":Lorg/apache/http/client/HttpClient;
    const/16 v16, 0x0

    .line 9800
    .local v16, "response":Lorg/apache/http/HttpResponse;
    const/16 v17, 0x0

    .line 9801
    .local v17, "responseString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 9802
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 9804
    .local v10, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v20, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 9805
    .local v16, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    .line 9806
    .local v18, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 9807
    .local v10, "is":Ljava/io/InputStream;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 9808
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9810
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_3
    const-string/jumbo v20, "class=\"document-subtitle category\"\\shref=\"/store/apps/category/(\\w+)"

    .line 9809
    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 9812
    .local v15, "pattern":Ljava/util/regex/Pattern;
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 9813
    invoke-virtual {v15, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 9814
    .local v12, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 9815
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result-object v17

    .local v17, "responseString":Ljava/lang/String;
    move-object v4, v5

    .line 9823
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .end local v15    # "pattern":Ljava/util/regex/Pattern;
    .end local v17    # "responseString":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 9825
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 9830
    :cond_4
    :goto_1
    if-eqz v10, :cond_5

    .line 9832
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 9837
    :cond_5
    :goto_2
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 9840
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 9841
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sNewbiesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 9842
    const-string/jumbo v20, "AudioService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "checkGoogleServer: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is checked by "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sNewbiesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    monitor-exit v21

    .line 9846
    move-object/from16 v6, v17

    .line 9848
    .local v6, "category":Ljava/lang/String;
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 9849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 9850
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v21

    .line 9852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v6}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->setCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 9859
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 9860
    .restart local v13    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9780
    return-void

    .line 9826
    .end local v6    # "category":Ljava/lang/String;
    .end local v13    # "msg":Landroid/os/Message;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v7

    .line 9827
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 9833
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 9834
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 9820
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v16    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .local v17, "responseString":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 9821
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v8, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 9823
    if-eqz v4, :cond_7

    .line 9825
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 9830
    :cond_7
    :goto_6
    if-eqz v10, :cond_8

    .line 9832
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 9837
    :cond_8
    :goto_7
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    .line 9826
    :catch_3
    move-exception v7

    .line 9827
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 9833
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 9834
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 9822
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v20

    .line 9823
    :goto_8
    if-eqz v4, :cond_9

    .line 9825
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 9830
    :cond_9
    :goto_9
    if-eqz v10, :cond_a

    .line 9832
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 9837
    :cond_a
    :goto_a
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 9822
    throw v20

    .line 9826
    :catch_5
    move-exception v7

    .line 9827
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 9833
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 9834
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 9840
    .end local v7    # "e":Ljava/io/IOException;
    .end local v17    # "responseString":Ljava/lang/String;
    :catchall_2
    move-exception v20

    monitor-exit v21

    throw v20

    .line 9849
    .restart local v6    # "category":Ljava/lang/String;
    :catchall_3
    move-exception v20

    monitor-exit v21

    throw v20

    .line 9854
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 9855
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    move-object/from16 v20, v0

    const-string/jumbo v22, "NONE"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    monitor-exit v21

    .line 9857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AppCategorizer;->sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-object/from16 v20, v0

    const-string/jumbo v21, "NONE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->setCategory(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 9854
    :catchall_4
    move-exception v20

    monitor-exit v21

    throw v20

    .line 9822
    .end local v6    # "category":Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v16    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "responseString":Ljava/lang/String;
    .restart local v18    # "statusLine":Lorg/apache/http/StatusLine;
    :catchall_5
    move-exception v20

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    goto :goto_8

    .line 9820
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v15    # "pattern":Ljava/util/regex/Pattern;
    :cond_c
    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method

.method public getCategoryForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9901
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    monitor-enter v2

    .line 9902
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "category":Ljava/lang/String;
    monitor-exit v2

    .line 9904
    return-object v0

    .line 9901
    .end local v0    # "category":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isOnline()Z
    .locals 4

    .prologue
    .line 9893
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mContext:Landroid/content/Context;

    .line 9894
    const-string/jumbo v3, "connectivity"

    .line 9893
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 9895
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 9896
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startCheck()V
    .locals 2

    .prologue
    .line 9775
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 9776
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9777
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9774
    return-void
.end method