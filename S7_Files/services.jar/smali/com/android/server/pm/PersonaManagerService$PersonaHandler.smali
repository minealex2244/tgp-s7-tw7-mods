.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/PersonaManagerService$PersonaHandler;I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 5009
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 5010
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5011
    const-string/jumbo v0, "PersonaHandler"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap13(Ljava/lang/String;)I

    .line 5009
    return-void
.end method

.method private filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 8
    .param p1, "containerId"    # I

    .prologue
    const/4 v7, 0x0

    .line 6347
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-get30(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-get28(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 6348
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->parseEnterprisedataXml()V

    .line 6351
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-get28(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 6352
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-get28(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "obj$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 6353
    .local v2, "obj":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .line 6354
    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6355
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 6356
    return-object v2

    .line 6361
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v3    # "obj$iterator":Ljava/util/Iterator;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    const-string/jumbo v5, "PersonaManagerService"

    const-string/jumbo v6, "filterTypeByContainerId mTypeList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6363
    :cond_5
    return-object v7
.end method

.method private parseEnterprisedataXml()V
    .locals 9

    .prologue
    .line 6315
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-get30(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6316
    const/4 v3, 0x0

    .line 6318
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6319
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6321
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6322
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6323
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .end local v3    # "in":Ljava/io/InputStream;
    move-result-object v5

    .line 6324
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6325
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 6326
    .local v1, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 6327
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-set7(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    .line 6328
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-set9(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 6336
    .end local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    if-eqz v3, :cond_0

    .line 6338
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6314
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 6330
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6332
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 6333
    .end local v3    # "in":Ljava/io/InputStream;
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6334
    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6336
    if-eqz v3, :cond_0

    .line 6338
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 6339
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 6335
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v6

    .line 6336
    :goto_3
    if-eqz v3, :cond_2

    .line 6338
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 6335
    :cond_2
    :goto_4
    throw v6

    .line 6339
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 6335
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    goto :goto_3

    .line 6332
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 139
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5016
    const-string/jumbo v4, "PersonaHandler"

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap13(Ljava/lang/String;)I

    .line 5017
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 6293
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    and-int/lit16 v4, v4, 0x1388

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_1

    .line 6295
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    add-int/lit16 v0, v4, -0x1388

    move/from16 v21, v0

    .line 6300
    .local v21, "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->propagateOnSessionExpired(I)V

    .line 6302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v99

    .line 6303
    .local v99, "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v99, :cond_1

    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_1

    .line 6304
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 6305
    .local v41, "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6306
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to session expiry."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;

    .line 6308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    move/from16 v0, v21

    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap40(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 5015
    .end local v21    # "personaId":I
    .end local v41    # "currentUser":Ljava/lang/Integer;
    .end local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_1
    return-void

    .line 5020
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    .line 5021
    .local v53, "event":I
    if-eqz v53, :cond_0

    .line 5022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v98

    .line 5023
    .local v98, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface/range {v98 .. v98}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .local v86, "pInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5024
    .local v85, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v85, :cond_2

    .line 5025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get27(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Long;

    .line 5026
    .local v61, "i":Ljava/lang/Long;
    if-eqz v61, :cond_2

    .line 5027
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap49(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_1

    .line 5036
    .end local v53    # "event":I
    .end local v61    # "i":Ljava/lang/Long;
    .end local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v86    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :pswitch_2
    sget-object v4, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5037
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 5036
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_0

    .line 5038
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_CALL_KNOX_HELP_POPUP called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5040
    .restart local v21    # "personaId":I
    new-instance v69, Landroid/content/Intent;

    invoke-direct/range {v69 .. v69}, Landroid/content/Intent;-><init>()V

    .line 5041
    .local v69, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.sec.knox.containeragent2"

    .line 5042
    const-string/jumbo v8, "com.sec.knox.containeragent2.ui.help.KnoxHelpLauncher"

    .line 5041
    invoke-direct {v4, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5043
    const/high16 v4, 0x10000000

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5045
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5046
    :catch_0
    move-exception v46

    .line 5047
    .local v46, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PersonaHandler > MSG_CALL_KNOX_HELP_POPUP Exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5036
    .end local v21    # "personaId":I
    .end local v46    # "e":Ljava/lang/Exception;
    .end local v69    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 5053
    :pswitch_3
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5055
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap49(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .line 5059
    .end local v21    # "personaId":I
    :pswitch_4
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_STOP_TIMER called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5061
    .restart local v21    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v58, v0

    .line 5062
    .local v58, "force":I
    const/4 v4, 0x1

    move/from16 v0, v58

    if-eq v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap3(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5063
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap39(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5068
    .end local v21    # "personaId":I
    .end local v58    # "force":I
    :pswitch_5
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5069
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5070
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    move/from16 v0, v21

    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap38(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap3(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap24(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5077
    .end local v21    # "personaId":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 5078
    .local v33, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v132

    .line 5079
    .local v132, "type":Z
    const-string/jumbo v4, "flag"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v57

    .line 5080
    .local v57, "flag":I
    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v133

    .line 5081
    .local v133, "uid":I
    const-string/jumbo v4, "pid"

    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v101

    .line 5082
    .local v101, "pid":I
    invoke-static/range {v133 .. v133}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v135

    .line 5083
    .local v135, "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v132

    move/from16 v1, v57

    move/from16 v2, v133

    move/from16 v3, v135

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_0

    .line 5087
    .end local v33    # "b":Landroid/os/Bundle;
    .end local v57    # "flag":I
    .end local v101    # "pid":I
    .end local v132    # "type":Z
    .end local v133    # "uid":I
    .end local v135    # "userId":I
    :pswitch_7
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "MSG_ACTION_SCREEN_OFF called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get27(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 5090
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v8, 0x1

    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->-set5(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 5092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v98

    .line 5093
    .restart local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface/range {v98 .. v98}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5094
    .restart local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v85, :cond_5

    .line 5095
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v85

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v135

    .line 5097
    .restart local v135    # "userId":I
    move-object/from16 v0, v85

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v0, v135

    if-ne v0, v4, :cond_6

    .line 5098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isBootCompleted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v135

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap5(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5100
    new-instance v69, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.knox.kss.screenOff"

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5101
    .restart local v69    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v85

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-nez v4, :cond_7

    .line 5102
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.samsung.knox.kss"

    const-string/jumbo v9, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5107
    :goto_4
    const-string/jumbo v4, "screenOff"

    const/4 v8, 0x1

    move-object/from16 v0, v69

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v8, Landroid/os/UserHandle;

    move-object/from16 v0, v85

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5114
    .end local v69    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v122

    .line 5115
    .local v122, "sessionLength":J
    const-wide/16 v8, 0x0

    cmp-long v4, v122, v8

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap3(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5116
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_9

    .line 5117
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v8, "Screen Off Reason Check, OFF_BECAUSE_OF_PROX_SENSOR!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 5089
    .end local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v86    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v122    # "sessionLength":J
    .end local v135    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 5104
    .restart local v69    # "intent":Landroid/content/Intent;
    .restart local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v86    # "pInfo$iterator":Ljava/util/Iterator;
    .restart local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .restart local v135    # "userId":I
    :cond_7
    :try_start_2
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.samsung.knox.securefolder"

    .line 5105
    const-string/jumbo v9, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardReceiver"

    .line 5104
    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    .line 5110
    .end local v69    # "intent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v8, "Will not send MSG_ACTION_SCREEN_OFF broadcast to KnoxKeyguard"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5119
    .restart local v122    # "sessionLength":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap24(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_3

    .line 5121
    :cond_a
    move-object/from16 v0, v85

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v4, :cond_b

    .line 5122
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_b

    .line 5124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5125
    const-string/jumbo v8, "knox.power_button_instantly_locks"

    move-object/from16 v0, v85

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v10, 0x0

    .line 5123
    invoke-static {v4, v8, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v76

    .line 5126
    .local v76, "lockinstantly":I
    if-lez v76, :cond_5

    .line 5127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap24(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_3

    .line 5128
    .end local v76    # "lockinstantly":I
    :cond_b
    move-object/from16 v0, v85

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v85

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5129
    const-wide/16 v8, 0x0

    cmp-long v4, v122, v8

    if-lez v4, :cond_5

    .line 5130
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 5131
    .restart local v41    # "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v85

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    if-eq v4, v8, :cond_5

    .line 5132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v8, 0x16

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v77

    .line 5133
    .local v77, "message":Landroid/os/Message;
    move-object/from16 v0, v85

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v77

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 5134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v77

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .end local v41    # "currentUser":Ljava/lang/Integer;
    .end local v77    # "message":Landroid/os/Message;
    .end local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v122    # "sessionLength":J
    .end local v135    # "userId":I
    :cond_c
    monitor-exit v5

    goto/16 :goto_0

    .line 5143
    .end local v86    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :pswitch_8
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "MSG_ACTION_SCREEN_ON called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-set5(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 5145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get27(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 5146
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v98

    .line 5147
    .restart local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface/range {v98 .. v98}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5148
    .restart local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v85, :cond_d

    .line 5149
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v85

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v135

    .line 5151
    .restart local v135    # "userId":I
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v135

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5152
    move-object/from16 v0, v85

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v0, v135

    if-ne v0, v4, :cond_f

    .line 5154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v135

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move/from16 v0, v135

    invoke-virtual {v4, v8, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5155
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "when screen on, dismiss keyguard for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v135

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v135

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    .line 5159
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isBootCompleted()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v135

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap5(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5161
    new-instance v69, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.knox.kss.screenOn"

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5162
    .restart local v69    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v85

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-nez v4, :cond_12

    .line 5163
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.samsung.knox.kss"

    const-string/jumbo v9, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5168
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v8, Landroid/os/UserHandle;

    move-object/from16 v0, v85

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5176
    .end local v69    # "intent":Landroid/content/Intent;
    :cond_f
    :goto_8
    move-object/from16 v0, v85

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v21, v0

    .line 5177
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v122

    .line 5178
    .restart local v122    # "sessionLength":J
    move-object/from16 v0, v85

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v8, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v85

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v8, 0x2648

    move/from16 v0, v21

    invoke-static {v4, v0, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap40(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 5182
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isSessionExpired(I)Z

    move-result v4

    if-nez v4, :cond_d

    const-wide/16 v8, 0x0

    cmp-long v4, v122, v8

    if-lez v4, :cond_d

    .line 5183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v82

    .line 5184
    .local v82, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v72

    .line 5185
    .local v72, "lastTime":J
    sub-long v44, v82, v72

    .line 5187
    .local v44, "duration":J
    sub-long v130, v122, v44

    .line 5188
    .local v130, "timeRemaining":J
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "timeRemaining: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v130

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move/from16 v0, v21

    or-int/lit16 v8, v0, 0x1388

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v77

    .line 5191
    .restart local v77    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move/from16 v0, v21

    or-int/lit16 v8, v0, 0x1388

    invoke-virtual {v4, v8}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 5192
    const-wide/16 v8, 0x1

    cmp-long v4, v130, v8

    if-gez v4, :cond_11

    const-wide/16 v130, 0x0

    .line 5193
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v77

    move-wide/from16 v1, v130

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v110

    .local v110, "queuedUp":Z
    goto/16 :goto_6

    .line 5165
    .end local v21    # "personaId":I
    .end local v44    # "duration":J
    .end local v72    # "lastTime":J
    .end local v77    # "message":Landroid/os/Message;
    .end local v82    # "now":J
    .end local v110    # "queuedUp":Z
    .end local v122    # "sessionLength":J
    .end local v130    # "timeRemaining":J
    .restart local v69    # "intent":Landroid/content/Intent;
    :cond_12
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.samsung.knox.securefolder"

    .line 5166
    const-string/jumbo v9, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardReceiver"

    .line 5165
    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_7

    .line 5145
    .end local v69    # "intent":Landroid/content/Intent;
    .end local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v86    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v135    # "userId":I
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 5170
    .restart local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v86    # "pInfo$iterator":Ljava/util/Iterator;
    .restart local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .restart local v135    # "userId":I
    :cond_13
    :try_start_4
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v8, "Will not send MSG_ACTION_SCREEN_ON broadcast to KnoxKeyguard"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->clearAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_8

    .line 5202
    .end local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v86    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v135    # "userId":I
    :pswitch_9
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5203
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .line 5204
    .restart local v41    # "currentUser":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v98

    .line 5205
    .restart local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface/range {v98 .. v98}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v86

    .restart local v86    # "pInfo$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v86 .. v86}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5206
    .restart local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v85, :cond_14

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v85

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    if-ne v4, v5, :cond_14

    .line 5207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap49(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .line 5215
    .end local v41    # "currentUser":Ljava/lang/Integer;
    .end local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v86    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v98    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :pswitch_a
    :try_start_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v136, v0

    .line 5216
    .local v136, "userid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v136

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap25(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 5217
    .end local v136    # "userid":I
    :catch_1
    move-exception v46

    .line 5218
    .restart local v46    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot process DPM state change broadcast :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v46 .. v46}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5223
    .end local v46    # "e":Ljava/lang/Exception;
    :pswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v134, v0

    .line 5224
    .local v134, "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get11(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v60

    .line 5225
    .local v60, "i":I
    :goto_9
    if-lez v60, :cond_15

    .line 5226
    add-int/lit8 v60, v60, -0x1

    .line 5228
    :try_start_6
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, " sending remove persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get11(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    move/from16 v0, v134

    invoke-interface {v4, v0}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    .line 5230
    :catch_2
    move-exception v47

    .line 5233
    .local v47, "e2":Ljava/lang/Exception;
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception Caught:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v47 .. v47}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 5236
    .end local v47    # "e2":Ljava/lang/Exception;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get11(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 5240
    .end local v60    # "i":I
    .end local v134    # "userHandle":I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap12(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 5241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap12(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadKnoxWallpaperSettings(I)V

    .line 5243
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap33(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5247
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap34(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5251
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap35(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5255
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap36(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 5259
    :pswitch_10
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "PMS. MSG_BROADCAST_KNOX_MODE_CHANGE_OBSERVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v134, v0

    .line 5261
    .restart local v134    # "userHandle":I
    new-instance v69, Landroid/content/Intent;

    const-string/jumbo v4, "com.sec.knox.container.INTENT_KNOX_USER_CHANGED"

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5262
    .restart local v69    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v69

    move/from16 v1, v134

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v69

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get10(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v60

    .line 5265
    .restart local v60    # "i":I
    :goto_a
    if-lez v60, :cond_17

    .line 5266
    add-int/lit8 v60, v60, -0x1

    .line 5268
    :try_start_7
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " sending onKnoxModeChange persona event to knox observers during switch #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v60

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get10(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v60

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IKnoxModeChangeObserver;

    move/from16 v0, v134

    invoke-interface {v4, v0}, Landroid/content/pm/IKnoxModeChangeObserver;->onKnoxModeChange(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    .line 5270
    :catch_3
    move-exception v54

    .line 5273
    .local v54, "exK":Ljava/lang/Exception;
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception Caught during onKnoxModeChange:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v54 .. v54}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 5276
    .end local v54    # "exK":Ljava/lang/Exception;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get10(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 5281
    .end local v60    # "i":I
    .end local v69    # "intent":Landroid/content/Intent;
    .end local v134    # "userHandle":I
    :pswitch_11
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "PMS. MSG_PROCESS_FOCUSED_USER_CHANGE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v39, v0

    .line 5283
    .local v39, "currentFocusedUser":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get2(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap11(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/clipboardex/ClipboardExService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap11(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/clipboardex/ClipboardExService;

    move-result-object v4

    const-string/jumbo v5, "SWITCHED"

    move/from16 v0, v39

    invoke-virtual {v4, v0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 5292
    .end local v39    # "currentFocusedUser":I
    :pswitch_12
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "PMS. MSG_BROADCAST_KNOX_MODE_STATE_NOT_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5293
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v134, v0

    .line 5294
    .restart local v134    # "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v134

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap21(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5298
    .end local v134    # "userHandle":I
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-get17(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap45(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5302
    :pswitch_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5303
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v21

    if-ne v4, v0, :cond_0

    .line 5304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap58(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5309
    .end local v21    # "personaId":I
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-set6(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    .line 5311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v96

    .line 5312
    .local v96, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-interface/range {v96 .. v96}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v100

    .local v100, "pi$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_b
    invoke-interface/range {v100 .. v100}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v100 .. v100}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5314
    .restart local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v99, :cond_18

    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-nez v4, :cond_18

    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-nez v4, :cond_18

    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    if-eqz v4, :cond_18

    .line 5318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get8(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->checkStoreDeKey(I)V

    .line 5320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 5321
    move-object/from16 v0, v99

    iget-object v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    if-eqz v4, :cond_19

    move-object/from16 v0, v99

    iget-object v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5322
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap41(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5324
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v99

    iget-object v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 5325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 5326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Lcom/android/server/pm/PersonaManagerService;->getPreviousState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap43(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaState;I)V

    .line 5329
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 5331
    const/4 v4, 0x1

    :try_start_8
    move-object/from16 v0, v99

    iput-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    .line 5332
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v99

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; pi.upgradeInProgress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v99

    iget-boolean v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get21(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v99

    invoke-virtual {v4, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v5

    .line 5336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get30(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 5337
    const/16 v64, 0x0

    .line 5339
    .local v64, "in":Ljava/io/InputStream;
    :try_start_9
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "reading from xml resource for fota"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5340
    new-instance v56, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "enterprisedata.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5342
    .local v56, "file":Ljava/io/File;
    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 5343
    new-instance v65, Ljava/io/FileInputStream;

    move-object/from16 v0, v65

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 5344
    .local v65, "in":Ljava/io/InputStream;
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .end local v64    # "in":Ljava/io/InputStream;
    move-result-object v90

    .line 5345
    .local v90, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object/from16 v0, v90

    move-object/from16 v1, v65

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5346
    new-instance v52, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v52

    move-object/from16 v1, v90

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5347
    .local v52, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 5348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-set7(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    .line 5349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-set9(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 v64, v65

    .line 5357
    .end local v52    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v65    # "in":Ljava/io/InputStream;
    .end local v90    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_c
    if-eqz v64, :cond_1c

    .line 5359
    :try_start_b
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 5366
    .end local v56    # "file":Ljava/io/File;
    :cond_1c
    :goto_d
    const/16 v55, 0x1

    .line 5368
    .local v55, "exist":Z
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    const-string/jumbo v5, "com.google.android.webview"

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v8}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v28

    .line 5369
    .local v28, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v28, :cond_1d

    .line 5370
    const/16 v55, 0x0

    .line 5372
    :cond_1d
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Webview package is in Knox container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 5377
    .end local v28    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_e
    if-nez v55, :cond_1e

    .line 5378
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Webview package is not in Knox container, hence install that package"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const-string/jumbo v8, "com.google.android.webview"

    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap14(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    .line 5382
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap31(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    .line 5385
    .end local v55    # "exist":Z
    :cond_1f
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_24

    .line 5387
    :try_start_d
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "calling SDP onBoot "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v62

    .line 5389
    .local v62, "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-nez v4, :cond_2a

    const/16 v34, 0x1

    .line 5390
    .local v34, "bootres":Z
    :goto_f
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5391
    if-nez v34, :cond_20

    .line 5392
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SDP on-boot failed. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_d .. :try_end_d} :catch_9

    .line 5438
    .end local v34    # "bootres":Z
    .end local v62    # "ident":J
    :cond_20
    :goto_10
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_21

    .line 5439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v8, 0x1

    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap2(Lcom/android/server/pm/PersonaManagerService;II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 5464
    :cond_21
    :goto_11
    const-string/jumbo v4, "sdp"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v119

    check-cast v119, Lcom/android/server/SdpManagerService;

    .line 5465
    .local v119, "sdpService":Lcom/android/server/SdpManagerService;
    if-eqz v119, :cond_22

    .line 5466
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v119

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SdpManagerService;->adjustSdpMinor(ZI)V

    .line 5470
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap3(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 5472
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    if-nez v4, :cond_23

    .line 5473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v8, 0x1

    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap53(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5476
    :cond_23
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-nez v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 5534
    .end local v119    # "sdpService":Lcom/android/server/SdpManagerService;
    :cond_24
    :goto_12
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get13(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 5539
    :cond_25
    :goto_13
    invoke-virtual/range {v99 .. v99}, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 5540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_43

    .line 5542
    const/16 v78, 0x1

    .line 5543
    .local v78, "mountStatus":Z
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get8(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->isMounted(I)Z

    move-result v4

    if-nez v4, :cond_26

    .line 5544
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 5545
    const/16 v14, 0x10

    .line 5547
    .local v14, "storageFlag":I
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get8(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v8

    move-object/from16 v0, v99

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual/range {v99 .. v99}, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureStorageEnabled()Z

    move-result v11

    .line 5548
    invoke-virtual/range {v99 .. v99}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaEcrytfsIndex()I

    move-result v12

    move-object/from16 v0, v99

    iget-boolean v13, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    .line 5547
    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/sec/knox/container/util/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZI)Z

    move-result v78

    .line 5550
    .end local v14    # "storageFlag":I
    .end local v78    # "mountStatus":Z
    :cond_26
    if-nez v78, :cond_3b

    .line 5551
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "File system not mounted successfully for"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 5614
    :cond_27
    :goto_15
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemReady: getDeviceFirmwareVersion = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "; pi.fwversion = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget-object v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 5616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v99

    iget-object v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 5618
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pi.removePersona = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget-boolean v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "; pi.state = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 5621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap60(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    goto/16 :goto_b

    .line 5329
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 5351
    .restart local v56    # "file":Ljava/io/File;
    .restart local v64    # "in":Ljava/io/InputStream;
    :cond_28
    :try_start_f
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Failed to find enterprisedata.xml in system container"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/16 :goto_c

    .line 5353
    .end local v56    # "file":Ljava/io/File;
    :catch_4
    move-exception v46

    .line 5354
    .end local v64    # "in":Ljava/io/InputStream;
    .restart local v46    # "e":Ljava/lang/Exception;
    :goto_16
    :try_start_10
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Exception;->printStackTrace()V

    .line 5355
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 5357
    if-eqz v64, :cond_1c

    .line 5359
    :try_start_11
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_d

    .line 5360
    :catch_5
    move-exception v46

    goto/16 :goto_d

    .end local v46    # "e":Ljava/lang/Exception;
    .restart local v56    # "file":Ljava/io/File;
    :catch_6
    move-exception v46

    .restart local v46    # "e":Ljava/lang/Exception;
    goto/16 :goto_d

    .line 5356
    .end local v46    # "e":Ljava/lang/Exception;
    .end local v56    # "file":Ljava/io/File;
    :catchall_3
    move-exception v4

    .line 5357
    :goto_17
    if-eqz v64, :cond_29

    .line 5359
    :try_start_12
    invoke-virtual/range {v64 .. v64}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 5356
    :cond_29
    :goto_18
    throw v4

    .line 5360
    :catch_7
    move-exception v46

    .restart local v46    # "e":Ljava/lang/Exception;
    goto :goto_18

    .line 5373
    .end local v46    # "e":Ljava/lang/Exception;
    .restart local v55    # "exist":Z
    :catch_8
    move-exception v46

    .line 5374
    .restart local v46    # "e":Ljava/lang/Exception;
    const/16 v55, 0x0

    goto/16 :goto_e

    .line 5389
    .end local v46    # "e":Ljava/lang/Exception;
    .end local v55    # "exist":Z
    .restart local v62    # "ident":J
    :cond_2a
    const/16 v34, 0x0

    .restart local v34    # "bootres":Z
    goto/16 :goto_f

    .line 5394
    .end local v34    # "bootres":Z
    .end local v62    # "ident":J
    :catch_9
    move-exception v120

    .line 5395
    .local v120, "se":Lcom/samsung/android/knox/sdp/core/SdpException;
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "SDP version mismatch. migration detected"

    move-object/from16 v0, v120

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5397
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_2e

    .line 5401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v118

    .line 5402
    .local v118, "rstToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    .line 5403
    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/4 v9, 0x2

    .line 5402
    move-object/from16 v0, v118

    invoke-static {v4, v5, v0, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap18(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 5404
    .local v6, "cmk":Ljava/lang/String;
    if-eqz v6, :cond_2b

    .line 5405
    const/16 v42, 0x0

    .line 5406
    .local v42, "decodedCMK":[B
    move-object/from16 v0, v99

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2d

    .line 5407
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    .line 5411
    .local v42, "decodedCMK":[B
    :goto_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v62

    .line 5412
    .restart local v62    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v8, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v4, v5, v8, v0}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    .line 5413
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5415
    .end local v42    # "decodedCMK":[B
    .end local v62    # "ident":J
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v118

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap63(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->-wrap63(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5427
    .end local v6    # "cmk":Ljava/lang/String;
    .end local v118    # "rstToken":Ljava/lang/String;
    :goto_1a
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v62

    .line 5428
    .restart local v62    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-eqz v4, :cond_2c

    .line 5429
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SDP on-boot failed. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    :cond_2c
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_10

    .line 5432
    .end local v62    # "ident":J
    :catch_a
    move-exception v46

    .line 5433
    .restart local v46    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "SDP on-boot failed"

    move-object/from16 v0, v120

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 5409
    .end local v46    # "e":Ljava/lang/Exception;
    .restart local v6    # "cmk":Ljava/lang/String;
    .local v42, "decodedCMK":[B
    .restart local v118    # "rstToken":Ljava/lang/String;
    :cond_2d
    const/4 v4, 0x0

    invoke-static {v6, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v42

    .local v42, "decodedCMK":[B
    goto :goto_19

    .line 5421
    .end local v6    # "cmk":Ljava/lang/String;
    .end local v42    # "decodedCMK":[B
    .end local v118    # "rstToken":Ljava/lang/String;
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v62

    .line 5422
    .restart local v62    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    .line 5423
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1a

    .line 5440
    .end local v62    # "ident":J
    .end local v120    # "se":Lcom/samsung/android/knox/sdp/core/SdpException;
    :cond_2f
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Boot time recovery: CMK not found..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5441
    new-instance v137, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v137

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5442
    .local v137, "utils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v4

    if-nez v4, :cond_30

    .line 5444
    move-object/from16 v0, v99

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v137

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    const v5, 0x61000

    if-ne v4, v5, :cond_21

    .line 5445
    :cond_30
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Boot time recovery: Backup password of fingerprint has never enrolled so far..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    const/4 v6, 0x0

    .line 5448
    .local v6, "cmk":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v7

    .line 5450
    .local v7, "resetToken":Ljava/lang/String;
    if-eqz v7, :cond_21

    .line 5451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/4 v9, 0x2

    invoke-static {v4, v5, v7, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap18(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 5452
    .local v6, "cmk":Ljava/lang/String;
    if-eqz v6, :cond_31

    .line 5453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v99

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/4 v8, 0x1

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PersonaManagerService;->-wrap9(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    .line 5452
    if-eqz v4, :cond_31

    .line 5454
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Boot time recovery: CMK restored successfully!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4, v7}, Lcom/android/server/pm/PersonaManagerService;->-wrap63(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->-wrap63(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 5478
    .end local v6    # "cmk":Ljava/lang/String;
    .end local v7    # "resetToken":Ljava/lang/String;
    .end local v137    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v119    # "sdpService":Lcom/android/server/SdpManagerService;
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_33

    .line 5479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;

    .line 5481
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 5482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5484
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 5485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    goto/16 :goto_12

    .line 5489
    :cond_35
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_24

    .line 5498
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "inside systemReady keyguard is disabled sdp minor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap53(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v108

    .line 5504
    .local v108, "pwdResetToken":Ljava/lang/String;
    if-eqz v108, :cond_24

    .line 5506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/4 v9, 0x2

    move-object/from16 v0, v108

    invoke-static {v4, v5, v0, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap18(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v38

    .line 5507
    .local v38, "containerMasterKey":Ljava/lang/String;
    if-eqz v38, :cond_38

    .line 5509
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v42

    .line 5510
    .restart local v42    # "decodedCMK":[B
    move-object/from16 v0, v99

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_37

    .line 5511
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    .line 5515
    :goto_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v62

    .line 5516
    .restart local v62    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_36

    .line 5517
    const-string/jumbo v4, "PersonaManagerService.KeyMgnt"

    const-string/jumbo v5, "Failed to unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    :cond_36
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap62(Lcom/android/server/pm/PersonaManagerService;[B)V

    .line 5521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap63(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 5513
    .end local v62    # "ident":J
    :cond_37
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v42

    goto :goto_1b

    .line 5527
    .end local v42    # "decodedCMK":[B
    :cond_38
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "CMK is NULL : can\'t unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 5534
    .end local v38    # "containerMasterKey":Ljava/lang/String;
    .end local v108    # "pwdResetToken":Ljava/lang/String;
    .end local v119    # "sdpService":Lcom/android/server/SdpManagerService;
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 5535
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " resetPersonaOnReboot:  resetting persona :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v8, 0x1

    invoke-static {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap15(Lcom/android/server/pm/PersonaManagerService;IZ)I

    goto/16 :goto_13

    .line 5546
    .restart local v78    # "mountStatus":Z
    :cond_3a
    const/16 v14, 0x110

    .restart local v14    # "storageFlag":I
    goto/16 :goto_14

    .line 5553
    .end local v14    # "storageFlag":I
    .end local v78    # "mountStatus":Z
    :cond_3b
    :try_start_14
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "File system successfully mounted for"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get28(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get28(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_27

    .line 5556
    move-object/from16 v0, v99

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v37

    .line 5557
    .local v37, "configType":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    if-eqz v37, :cond_27

    .line 5558
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v29

    .line 5559
    .local v29, "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v32

    .line 5560
    .local v32, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Positive Delta for Knox upgrade : Before"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5561
    if-eqz v29, :cond_27

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 5562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 5563
    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/16 v8, 0x80

    .line 5562
    invoke-virtual {v4, v8, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v88

    .line 5564
    .local v88, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "App install list from PM for"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "::"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v88

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    if-eqz v88, :cond_3c

    invoke-interface/range {v88 .. v88}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 5576
    :cond_3c
    :goto_1c
    if-eqz v29, :cond_27

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 5577
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Persona firmware version : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget-object v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 5579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v99

    iget-object v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 5581
    move-object/from16 v0, v99

    iget-object v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v4, :cond_3d

    .line 5582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap41(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5585
    :cond_3d
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "appName$iterator":Ljava/util/Iterator;
    :goto_1d
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    .line 5587
    .local v30, "appName":Ljava/lang/String;
    :try_start_15
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Application upgrade-Add : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    if-eqz v4, :cond_41

    .line 5589
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip adding for KEA container : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_1d

    .line 5593
    :catch_b
    move-exception v46

    .line 5594
    .restart local v46    # "e":Ljava/lang/Exception;
    :try_start_16
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to install "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " for Persona "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_1d

    .line 5605
    .end local v29    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "appName":Ljava/lang/String;
    .end local v31    # "appName$iterator":Ljava/util/Iterator;
    .end local v32    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "configType":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v46    # "e":Ljava/lang/Exception;
    .end local v88    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_c
    move-exception v46

    .line 5606
    .restart local v46    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to mount file system. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 5566
    .end local v46    # "e":Ljava/lang/Exception;
    .restart local v29    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "configType":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v88    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_3e
    :try_start_17
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "App install list from PM for"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " size::"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v88 .. v88}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    invoke-interface/range {v88 .. v88}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v93

    .local v93, "personaApp$iterator":Ljava/util/Iterator;
    :cond_3f
    invoke-interface/range {v93 .. v93}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface/range {v93 .. v93}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Landroid/content/pm/PackageInfo;

    .line 5568
    .local v92, "personaApp":Landroid/content/pm/PackageInfo;
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "App installed for persona"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v92

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5569
    :goto_1e
    move-object/from16 v0, v92

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 5570
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "App installed for persona"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v92

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "present in Ent Install List;Remove"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    move-object/from16 v0, v92

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 5574
    .end local v92    # "personaApp":Landroid/content/pm/PackageInfo;
    :cond_40
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Positive Delta for Knox upgrade:After"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_1c

    .line 5592
    .end local v93    # "personaApp$iterator":Ljava/util/Iterator;
    .restart local v30    # "appName":Ljava/lang/String;
    .restart local v31    # "appName$iterator":Ljava/util/Iterator;
    :cond_41
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v30

    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap14(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto/16 :goto_1d

    .line 5597
    .end local v30    # "appName":Ljava/lang/String;
    :cond_42
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get22(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsDataForPersona(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto/16 :goto_15

    .line 5609
    .end local v29    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "appName$iterator":Ljava/util/Iterator;
    .end local v32    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "configType":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .end local v88    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_43
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Did not mount file system for superLocked persona "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " or due to container state."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 5630
    .end local v96    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v100    # "pi$iterator":Ljava/util/Iterator;
    :pswitch_16
    :try_start_1a
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    .line 5631
    const-string/jumbo v5, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    .line 5630
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 5634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;->onBootComplete()V

    .line 5638
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 5639
    const-string/jumbo v5, "persona"

    .line 5638
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Lcom/samsung/android/knox/SemPersonaManager;

    .line 5641
    .local v97, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v97, :cond_0

    .line 5643
    const/4 v4, 0x0

    .line 5642
    move-object/from16 v0, v97

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v96

    .line 5644
    .restart local v96    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v96, :cond_0

    invoke-interface/range {v96 .. v96}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 5645
    invoke-interface/range {v96 .. v96}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v94, v0

    .line 5646
    .local v94, "personaIds":[I
    const/16 v80, 0x0

    .line 5647
    .local v80, "n":I
    invoke-interface/range {v96 .. v96}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v100

    .restart local v100    # "pi$iterator":Ljava/util/Iterator;
    move/from16 v81, v80

    .end local v80    # "n":I
    .local v81, "n":I
    :goto_1f
    invoke-interface/range {v100 .. v100}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface/range {v100 .. v100}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5648
    .restart local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-nez v99, :cond_45

    move/from16 v80, v81

    .end local v81    # "n":I
    .restart local v80    # "n":I
    :goto_20
    move/from16 v81, v80

    .end local v80    # "n":I
    .restart local v81    # "n":I
    goto :goto_1f

    .line 5650
    :cond_45
    add-int/lit8 v80, v81, 0x1

    .end local v81    # "n":I
    .restart local v80    # "n":I
    move-object/from16 v0, v99

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    aput v4, v94, v81

    .line 5652
    new-instance v48, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5653
    .local v48, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v99

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v84

    .line 5655
    .local v84, "ownerUid":I
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v49

    .line 5656
    .local v49, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v0, v84

    invoke-direct {v5, v0, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v71

    .line 5657
    .local v71, "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 5658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v99

    iget-object v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 5659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap8(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 5660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo v5, "com.sec.knox.shortcutsms"

    const-string/jumbo v8, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v99

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v10, 0x1

    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->-wrap29(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5664
    :goto_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap6(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 5665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo v5, "com.sec.knox.shortcutsms"

    const-string/jumbo v8, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v99

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v10, 0x1

    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->-wrap29(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5670
    :goto_22
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Persona firmware version : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget-object v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5671
    move-object/from16 v0, v99

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v37

    .line 5672
    .restart local v37    # "configType":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    if-eqz v71, :cond_47

    if-eqz v37, :cond_47

    .line 5673
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v22

    .line 5674
    .local v22, "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_46

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 5684
    :cond_46
    :goto_23
    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v23

    .line 5685
    .local v23, "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "FOTA Boot receiver re_enable: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5686
    if-eqz v23, :cond_47

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 5699
    .end local v22    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_47
    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    .line 5700
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v99

    iput-object v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    .line 5701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap61(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :try_start_1c
    monitor-exit v5

    .line 5706
    .end local v37    # "configType":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_48
    invoke-virtual/range {v99 .. v99}, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 5707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 5710
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v26

    .line 5711
    .local v26, "adminuid":I
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BOOT_COMPLETE - adminuid - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " and personaId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5712
    invoke-static/range {v26 .. v26}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    if-eq v4, v5, :cond_52

    .line 5713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get8(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v117

    .line 5714
    .local v117, "retVal":Z
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BOOT_COMPLETE - persona is in SUPER_LOCKED state, hence unmounting the filesystem = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v117

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5721
    .end local v26    # "adminuid":I
    .end local v117    # "retVal":Z
    :cond_4a
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 5726
    :cond_4b
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap30(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    goto/16 :goto_20

    .line 5752
    .end local v48    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v49    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v71    # "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v80    # "n":I
    .end local v84    # "ownerUid":I
    .end local v94    # "personaIds":[I
    .end local v96    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v97    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v100    # "pi$iterator":Ljava/util/Iterator;
    :catch_d
    move-exception v46

    .line 5753
    .restart local v46    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PersonaManagerService"

    .line 5754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5755
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 5754
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5753
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5662
    .end local v46    # "e":Ljava/lang/Exception;
    .restart local v48    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v49    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .restart local v71    # "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .restart local v80    # "n":I
    .restart local v84    # "ownerUid":I
    .restart local v94    # "personaIds":[I
    .restart local v96    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .restart local v97    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v100    # "pi$iterator":Ljava/util/Iterator;
    :cond_4c
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo v5, "com.sec.knox.shortcutsms"

    const-string/jumbo v8, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v99

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v10, 0x0

    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->-wrap29(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_21

    .line 5667
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo v5, "com.sec.knox.shortcutsms"

    const-string/jumbo v8, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v99

    iget v9, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    const/4 v10, 0x0

    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->-wrap29(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_22

    .line 5675
    .restart local v22    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37    # "configType":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    :cond_4e
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    .line 5676
    .local v106, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v68

    .local v68, "info$iterator":Ljava/util/Iterator;
    :goto_27
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Ljava/lang/String;

    .line 5677
    .local v67, "info":Ljava/lang/String;
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FOTA Boot receiver AppUpgradeInfo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v67

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5678
    move-object/from16 v0, v106

    move-object/from16 v1, v67

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 5680
    .end local v67    # "info":Ljava/lang/String;
    :cond_4f
    invoke-interface/range {v106 .. v106}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v106

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Ljava/lang/String;

    .line 5681
    .local v43, "disablePackages":[Ljava/lang/String;
    invoke-virtual/range {v71 .. v71}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    goto/16 :goto_23

    .line 5687
    .end local v43    # "disablePackages":[Ljava/lang/String;
    .end local v68    # "info$iterator":Ljava/util/Iterator;
    .end local v106    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_50
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FOTA Boot receiver re_enable:Size:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 5689
    .local v51, "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v103

    .local v103, "pkgInfo$iterator":Ljava/util/Iterator;
    :goto_28
    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface/range {v103 .. v103}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Ljava/lang/String;

    .line 5690
    .local v102, "pkgInfo":Ljava/lang/String;
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FOTA Boot receiver AppUpgradeInfo for re_enable: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v102

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    move-object/from16 v0, v51

    move-object/from16 v1, v102

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 5693
    .end local v102    # "pkgInfo":Ljava/lang/String;
    :cond_51
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FOTA Boot receiver AppUpgradeInfo for re_enable:Enable pks size "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5694
    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v50

    check-cast v50, [Ljava/lang/String;

    .line 5695
    .local v50, "enablePackages":[Ljava/lang/String;
    invoke-virtual/range {v71 .. v71}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v50

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    goto/16 :goto_24

    .line 5699
    .end local v22    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v50    # "enablePackages":[Ljava/lang/String;
    .end local v51    # "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v103    # "pkgInfo$iterator":Ljava/util/Iterator;
    :catchall_4
    move-exception v4

    monitor-exit v5

    throw v4

    .line 5716
    .end local v37    # "configType":Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .restart local v26    # "adminuid":I
    :cond_52
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "BOOT_COMPLETE - BYOD admin. Ignoring unmounting...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 5722
    .end local v26    # "adminuid":I
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.knox.action.CONTAINER_UPGRADE_COMPLETE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_26

    .line 5729
    .end local v48    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v49    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v71    # "kmcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v80    # "n":I
    .end local v84    # "ownerUid":I
    .end local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v81    # "n":I
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    move-result v4

    if-nez v4, :cond_57

    .line 5730
    const/16 v60, 0x0

    .line 5732
    .restart local v60    # "i":I
    const/16 v60, 0x0

    :goto_29
    move/from16 v0, v60

    move/from16 v1, v81

    if-ge v0, v1, :cond_56

    .line 5733
    :try_start_1e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    aget v5, v94, v60

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    .line 5734
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_55

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting contaienr "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v8, v94, v60

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " in background after reboot"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e

    .line 5732
    :cond_55
    add-int/lit8 v60, v60, 0x1

    goto :goto_29

    .line 5736
    :catch_e
    move-exception v46

    .line 5737
    .restart local v46    # "e":Ljava/lang/Exception;
    :try_start_1f
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_56

    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot start container "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v8, v94, v60

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " in background after reboot: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5743
    .end local v46    # "e":Ljava/lang/Exception;
    .end local v60    # "i":I
    :cond_56
    :goto_2a
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "BOOT_COMPLETE - Sending broadcast to start Knox Apps Update Process"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5744
    new-instance v125, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.knox.appsupdateagent.intent.action.START_KNOX_APPS_UPDATE"

    move-object/from16 v0, v125

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5745
    .local v125, "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.samsung.knox.appsupdateagent"

    move-object/from16 v0, v125

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5746
    const/16 v4, 0x20

    move-object/from16 v0, v125

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v8, "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

    move-object/from16 v0, v125

    invoke-virtual {v4, v0, v5, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5740
    .end local v125    # "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSettingsValueforCOM()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_d

    goto :goto_2a

    .line 5762
    .end local v81    # "n":I
    .end local v94    # "personaIds":[I
    .end local v96    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v97    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v100    # "pi$iterator":Ljava/util/Iterator;
    :pswitch_17
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    :try_start_20
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5766
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get21(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5767
    .local v95, "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-nez v95, :cond_58

    .line 5768
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    return-void

    .line 5772
    :cond_58
    invoke-virtual/range {v95 .. v95}, Lcom/samsung/android/knox/SemPersonaInfo;->getParentId()I

    move-result v89

    .line 5774
    .local v89, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 5776
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v4, :cond_59

    .line 5777
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    .line 5778
    const-string/jumbo v5, "isKnoxKioskMode"

    const-string/jumbo v8, "false"

    .line 5777
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5782
    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v89

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    move-result v115

    .line 5783
    .local v115, "result":Z
    if-eqz v115, :cond_5a

    .line 5784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v35

    .line 5785
    .local v35, "code":I
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRemovingPersona return code is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_f

    goto/16 :goto_0

    .line 5792
    .end local v21    # "personaId":I
    .end local v35    # "code":I
    .end local v89    # "parentUserId":I
    .end local v95    # "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v115    # "result":Z
    :catch_f
    move-exception v46

    .line 5793
    .restart local v46    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 5788
    .end local v46    # "e":Ljava/lang/Exception;
    .restart local v21    # "personaId":I
    .restart local v89    # "parentUserId":I
    .restart local v95    # "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v115    # "result":Z
    :cond_5a
    :try_start_21
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "Failed to switch persona. Aborted removing of persona..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f

    goto/16 :goto_0

    .line 5799
    .end local v21    # "personaId":I
    .end local v89    # "parentUserId":I
    .end local v95    # "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v115    # "result":Z
    :pswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5800
    .restart local v21    # "personaId":I
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v66

    .line 5803
    .local v66, "info":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v66, :cond_5b

    move-object/from16 v0, v66

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_5b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get13(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 5808
    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap1(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v116

    .line 5809
    .local v116, "ret":Z
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v116

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5803
    .end local v116    # "ret":Z
    :cond_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 5804
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPartition is skipped. It\'s already done in AMS.SystemReady"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5805
    return-void

    .line 5823
    .end local v21    # "personaId":I
    .end local v66    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    :pswitch_19
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPerson is not called from anywhere now. So disalbed. Please contacts container team!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5828
    :pswitch_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5829
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v126

    .line 5830
    .local v126, "state":Lcom/samsung/android/knox/SemPersonaState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v25

    .line 5831
    .local v25, "adminUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v40

    .line 5832
    .local v40, "currentUser":I
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyKeyguardShow(false) on MSG_SUPER_LOCK_PERSONA for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    .line 5834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get21(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5835
    .restart local v95    # "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-nez v95, :cond_5d

    .line 5836
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5837
    return-void

    .line 5840
    :cond_5d
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " current user from AMS: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " adminUid= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5841
    const/16 v115, 0x1

    .line 5843
    .local v115, "result":Z
    move/from16 v0, v21

    move/from16 v1, v40

    if-ne v0, v1, :cond_5e

    .line 5844
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "MSG_SUPER_LOCK_PERSONA: current user from AMS is the one being super-locked, not stopping persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5845
    const/16 v115, 0x0

    .line 5848
    :cond_5e
    move-object/from16 v0, v95

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-nez v4, :cond_5f

    .line 5849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5850
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    :cond_5f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 5854
    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, v21

    if-ne v4, v0, :cond_61

    .line 5855
    const-string/jumbo v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ActivityManagerService;

    .line 5856
    .local v27, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v27, :cond_60

    .line 5857
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    .line 5859
    :cond_60
    const/16 v115, 0x0

    .line 5860
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5863
    .end local v27    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_61
    const/16 v114, -0x1

    .line 5864
    .local v114, "res":I
    if-eqz v115, :cond_63

    .line 5865
    move-object/from16 v0, v95

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    if-nez v4, :cond_62

    .line 5866
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopping persona for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    move-result v114

    .line 5869
    :cond_62
    if-eqz v114, :cond_63

    .line 5870
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ActivityManagerNative.getDefault().stopUser failed to execure with error code:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v114

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5874
    :cond_63
    if-nez v115, :cond_64

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_65

    .line 5875
    :cond_64
    if-eqz v114, :cond_68

    .line 5877
    :cond_65
    new-instance v48, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5878
    .restart local v48    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v48

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v84

    .line 5879
    .restart local v84    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v84

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v105

    .line 5880
    .local v105, "pkgNames":[Ljava/lang/String;
    if-eqz v105, :cond_66

    .line 5881
    const/4 v4, 0x0

    move-object/from16 v0, v105

    array-length v5, v0

    :goto_2b
    if-ge v4, v5, :cond_67

    aget-object v104, v105, v4

    .line 5882
    .local v104, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v104

    move/from16 v1, v21

    move/from16 v2, v84

    invoke-static {v8, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap51(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5881
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 5885
    .end local v104    # "pkgName":Ljava/lang/String;
    :cond_66
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v21

    move/from16 v1, v84

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap51(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5887
    :cond_67
    const/4 v4, 0x0

    move-object/from16 v0, v95

    iput-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    .line 5891
    .end local v48    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v84    # "ownerUid":I
    .end local v105    # "pkgNames":[Ljava/lang/String;
    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v95

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v4, :cond_0

    .line 5893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v62

    .line 5895
    .restart local v62    # "ident":J
    :try_start_22
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v107

    .line 5896
    .local v107, "pm":Landroid/content/pm/IPackageManager;
    const-string/jumbo v4, "com.sec.knox.home.crossprofilefilter"

    const/4 v5, 0x0

    move-object/from16 v0, v107

    invoke-interface {v0, v5, v4}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_10
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    .line 5900
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5903
    .end local v107    # "pm":Landroid/content/pm/IPackageManager;
    :goto_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v95 .. v95}, Lcom/samsung/android/knox/SemPersonaInfo;->getParentId()I

    move-result v5

    const/4 v8, 0x1

    move/from16 v0, v21

    invoke-static {v4, v5, v0, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap55(Lcom/android/server/pm/PersonaManagerService;III)V

    goto/16 :goto_0

    .line 5897
    :catch_10
    move-exception v111

    .line 5898
    .local v111, "re":Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual/range {v111 .. v111}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    .line 5900
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    .line 5899
    .end local v111    # "re":Landroid/os/RemoteException;
    :catchall_5
    move-exception v4

    .line 5900
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5899
    throw v4

    .line 5909
    .end local v21    # "personaId":I
    .end local v25    # "adminUid":I
    .end local v40    # "currentUser":I
    .end local v62    # "ident":J
    .end local v95    # "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v114    # "res":I
    .end local v115    # "result":Z
    .end local v126    # "state":Lcom/samsung/android/knox/SemPersonaState;
    :pswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5914
    .restart local v21    # "personaId":I
    :try_start_24
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x6

    move/from16 v0, v21

    invoke-interface {v4, v0, v5}, Landroid/app/IActivityManager;->updateKnoxContainerRuntimeState(II)V

    .line 5915
    const-string/jumbo v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ActivityManagerService;

    .line 5916
    .restart local v27    # "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v27, :cond_69

    .line 5917
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_11

    .line 5924
    .end local v27    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_69
    :goto_2d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6b

    const/16 v112, 0x1

    .line 5925
    .local v112, "removePersona":Z
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get21(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 5926
    .restart local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v112, :cond_6c

    .line 5927
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "userStopped triggered removal process..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5928
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v87

    .line 5930
    .local v87, "pList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    if-eqz v87, :cond_6a

    invoke-interface/range {v87 .. v87}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6a

    .line 5931
    const-string/jumbo v4, "sys.knox.exists"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5934
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "handleMessage(MSG_PERSONA_STOPPED) no more Containers, M-Permission roll back on critical apps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    .line 5936
    const/16 v8, 0x10

    const/16 v9, -0x11

    const/4 v10, 0x0

    .line 5935
    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/pm/PersonaManagerService;->-wrap0(Lcom/android/server/pm/PersonaManagerService;IIII)Z

    .line 5941
    :cond_6a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap46(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5919
    .end local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v87    # "pList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v112    # "removePersona":Z
    :catch_11
    move-exception v111

    .line 5920
    .restart local v111    # "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "handleMessage() MSG_PERSONA_STOPPED remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 5924
    .end local v111    # "re":Landroid/os/RemoteException;
    :cond_6b
    const/16 v112, 0x0

    .restart local v112    # "removePersona":Z
    goto :goto_2e

    .line 5942
    .restart local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :cond_6c
    if-eqz v85, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->SUPER_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v85 .. v85}, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5944
    :try_start_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get8(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v117

    .line 5945
    .restart local v117    # "retVal":Z
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unmounting file system due to super lock: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v117

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5947
    new-instance v48, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5948
    .restart local v48    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v48

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v84

    .line 5949
    .restart local v84    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v84

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v105

    .line 5950
    .restart local v105    # "pkgNames":[Ljava/lang/String;
    if-eqz v105, :cond_6d

    .line 5951
    const/4 v4, 0x0

    move-object/from16 v0, v105

    array-length v5, v0

    :goto_2f
    if-ge v4, v5, :cond_6e

    aget-object v104, v105, v4

    .line 5952
    .restart local v104    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v104

    move/from16 v1, v21

    move/from16 v2, v84

    invoke-static {v8, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap51(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5951
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 5955
    .end local v104    # "pkgName":Ljava/lang/String;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v21

    move/from16 v1, v84

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap51(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_12
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    .line 5960
    .end local v48    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v84    # "ownerUid":I
    .end local v105    # "pkgNames":[Ljava/lang/String;
    .end local v117    # "retVal":Z
    :cond_6e
    :goto_30
    const/4 v4, 0x0

    move-object/from16 v0, v85

    iput-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .line 5957
    :catch_12
    move-exception v111

    .line 5958
    .restart local v111    # "re":Landroid/os/RemoteException;
    :try_start_26
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Failed to unmount file system on super lock."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    goto :goto_30

    .line 5959
    .end local v111    # "re":Landroid/os/RemoteException;
    :catchall_6
    move-exception v4

    .line 5960
    const/4 v5, 0x0

    move-object/from16 v0, v85

    iput-boolean v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    .line 5959
    throw v4

    .line 5967
    .end local v21    # "personaId":I
    .end local v85    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v112    # "removePersona":Z
    :pswitch_1c
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "Start lock timer: persona is in background."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5968
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5969
    .restart local v21    # "personaId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v82

    .line 5970
    .restart local v82    # "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v74

    .line 5971
    .local v74, "lastTimeToBackground":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v128

    .line 5972
    .local v128, "timeOutValue":J
    sub-long v4, v82, v74

    sub-long v130, v128, v4

    .line 5973
    .restart local v130    # "timeRemaining":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    move/from16 v0, v21

    move-wide/from16 v1, v130

    invoke-static {v4, v0, v5, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap50(Lcom/android/server/pm/PersonaManagerService;IIJ)V

    goto/16 :goto_0

    .line 5978
    .end local v21    # "personaId":I
    .end local v74    # "lastTimeToBackground":J
    .end local v82    # "now":J
    .end local v128    # "timeOutValue":J
    .end local v130    # "timeRemaining":J
    :pswitch_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5979
    .restart local v21    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v113, v0

    .line 5980
    .local v113, "requestId":I
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Stop timer with request id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v113

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " persona Id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    move/from16 v1, v113

    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap40(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_0

    .line 5986
    .end local v21    # "personaId":I
    .end local v113    # "requestId":I
    :pswitch_1e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5987
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v66

    .line 5988
    .restart local v66    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v66, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5989
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to lock timeout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->lockPersona(I)V

    goto/16 :goto_0

    .line 5996
    .end local v21    # "personaId":I
    .end local v66    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    :pswitch_1f
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to reset timeout.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5997
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 5998
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap27(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v66

    .line 6000
    .restart local v66    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v66, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v66

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 6003
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;

    .line 6004
    :cond_6f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v8, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v5, v8, v0}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 6005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 6006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(I)V

    goto/16 :goto_0

    .line 6023
    .end local v21    # "personaId":I
    .end local v66    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    :pswitch_20
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "received MSG_ACTIVATE_SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6025
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6028
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v66

    .line 6029
    .restart local v66    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v66, :cond_70

    move-object/from16 v0, v66

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    if-eqz v4, :cond_71

    .line 6039
    :cond_70
    :goto_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap26(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 6050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get18(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6051
    const-string/jumbo v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ActivityManagerService;

    .line 6052
    .restart local v27    # "ams":Lcom/android/server/am/ActivityManagerService;
    const-string/jumbo v4, "com.android.settings"

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6030
    .end local v27    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_71
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "activating sdp.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    move/from16 v0, v21

    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap53(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 6032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v62

    .line 6033
    .restart local v62    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/SdpManagerService;->onDeviceLocked(I)Z

    move-result v4

    if-nez v4, :cond_72

    .line 6034
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Failed to lock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6035
    :cond_72
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 6058
    .end local v21    # "personaId":I
    .end local v62    # "ident":J
    .end local v66    # "info":Lcom/samsung/android/knox/SemPersonaInfo;
    :pswitch_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6059
    .restart local v21    # "personaId":I
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received MSG_CALM_SDP... "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v99

    .line 6063
    .restart local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    if-nez v99, :cond_73

    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid persona : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6064
    :cond_73
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    if-nez v4, :cond_74

    .line 6065
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persona : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " sdp not-active (skip calming)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap26(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 6070
    :cond_74
    const/16 v38, 0x0

    .line 6072
    .local v38, "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get7(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 6076
    const-string/jumbo v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "inside MSG_CALM_SDP 1 found encoded pwd. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6077
    new-instance v38, Ljava/lang/String;

    .end local v38    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get7(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6111
    :cond_75
    :goto_32
    if-eqz v38, :cond_7b

    .line 6112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap53(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 6115
    const/16 v42, 0x0

    .line 6116
    .local v42, "decodedCMK":[B
    move-object/from16 v0, v99

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_7a

    .line 6117
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->getBytes()[B

    move-result-object v42

    .line 6121
    .local v42, "decodedCMK":[B
    :goto_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v62

    .line 6122
    .restart local v62    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v4, v0, v1}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_76

    .line 6123
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "Failed to SDP unlock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6125
    :cond_76
    invoke-static/range {v62 .. v63}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap62(Lcom/android/server/pm/PersonaManagerService;[B)V

    .line 6127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap63(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 6133
    .end local v42    # "decodedCMK":[B
    .end local v62    # "ident":J
    :goto_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap26(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 6134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap27(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 6078
    .restart local v38    # "containerMasterKey":Ljava/lang/String;
    :cond_77
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get18(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 6079
    const-string/jumbo v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "inside MSG_CALM_SDP 2 found pwd. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6080
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 6081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get18(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v99

    iget v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/4 v9, 0x1

    .line 6080
    move/from16 v0, v21

    invoke-static {v5, v0, v4, v9, v8}, Lcom/android/server/pm/PersonaManagerService;->-wrap18(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v38

    .local v38, "containerMasterKey":Ljava/lang/String;
    goto/16 :goto_32

    .line 6082
    .local v38, "containerMasterKey":Ljava/lang/String;
    :cond_78
    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_75

    move-object/from16 v0, v99

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_75

    .line 6083
    const-string/jumbo v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persona : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "(SDP-MINOR) check if finger print"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6085
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v121

    check-cast v121, Lcom/android/server/LockSettingsService;

    .line 6086
    .local v121, "service":Lcom/android/server/LockSettingsService;
    if-eqz v121, :cond_75

    .line 6087
    const/16 v127, 0x0

    .line 6089
    .local v127, "token":Ljava/lang/String;
    :try_start_27
    const-string/jumbo v4, "lockscreen.password_type"

    .line 6090
    const-wide/16 v8, 0x0

    .line 6089
    move-object/from16 v0, v121

    move/from16 v1, v21

    invoke-virtual {v0, v4, v8, v9, v1}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v109, v0

    .line 6091
    .local v109, "quality":I
    const-string/jumbo v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persona : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "password is not present in map CMK generating form pwd token "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v109

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6092
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v8

    .line 6091
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v127

    .line 6095
    .local v127, "token":Ljava/lang/String;
    if-eqz v127, :cond_79

    .line 6096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 6097
    move-object/from16 v0, v99

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    const/4 v8, 0x2

    .line 6096
    move/from16 v0, v21

    move-object/from16 v1, v127

    invoke-static {v4, v0, v1, v8, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap18(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v38

    .local v38, "containerMasterKey":Ljava/lang/String;
    goto/16 :goto_32

    .line 6099
    .local v38, "containerMasterKey":Ljava/lang/String;
    :cond_79
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "No token from TIMA"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_13

    goto/16 :goto_32

    .line 6102
    .end local v109    # "quality":I
    .end local v127    # "token":Ljava/lang/String;
    :catch_13
    move-exception v111

    .line 6103
    .restart local v111    # "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "error in MSG_CALM_SDP while getting password quality"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 6119
    .end local v38    # "containerMasterKey":Ljava/lang/String;
    .end local v111    # "re":Landroid/os/RemoteException;
    .end local v121    # "service":Lcom/android/server/LockSettingsService;
    .local v42, "decodedCMK":[B
    :cond_7a
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v42

    .local v42, "decodedCMK":[B
    goto/16 :goto_33

    .line 6129
    .end local v42    # "decodedCMK":[B
    :cond_7b
    const-string/jumbo v4, "PersonaManagerService.KeyMgnt"

    const-string/jumbo v5, "In CALM_SDP: Container master key is NULL!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 6140
    .end local v21    # "personaId":I
    .end local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap32(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 6146
    :pswitch_23
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6147
    .restart local v21    # "personaId":I
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_PROCESS_ACTIVE_USER_CHANGE is called for personaId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap58(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 6151
    const/16 v4, 0x64

    move/from16 v0, v21

    if-lt v0, v4, :cond_7f

    .line 6152
    :try_start_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_enabled"

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v138

    .line 6153
    .local v138, "value":I
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_PROCESS_ACTIVE_USER_CHANGE Owner accessability value->"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v138

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6154
    const/4 v4, 0x1

    move/from16 v0, v138

    if-ne v0, v4, :cond_7c

    .line 6155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap7(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 6156
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "MSG_PROCESS_ACTIVE_USER_CHANGE stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enabled_accessibility_services"

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 6158
    .local v24, "accessibilityServices":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_enabled"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enabled_accessibility_services"

    const-string/jumbo v8, ""

    const/4 v9, 0x0

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-set0(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 6161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-set8(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 6167
    .end local v24    # "accessibilityServices":Ljava/lang/String;
    :cond_7c
    :goto_35
    new-instance v69, Landroid/content/Intent;

    invoke-direct/range {v69 .. v69}, Landroid/content/Intent;-><init>()V

    .line 6168
    .restart local v69    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.sec.app.accesscontrol.ACTION_STOP_SELF"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v69

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    .line 6186
    .end local v69    # "intent":Landroid/content/Intent;
    .end local v138    # "value":I
    :cond_7d
    :goto_36
    if-eqz v21, :cond_0

    .line 6187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v79

    .line 6188
    .local v79, "msg1":Landroid/os/Message;
    move/from16 v0, v21

    move-object/from16 v1, v79

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 6189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get20(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 6163
    .end local v79    # "msg1":Landroid/os/Message;
    .restart local v138    # "value":I
    :cond_7e
    :try_start_29
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "MSG_PROCESS_ACTIVE_USER_CHANGE not stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_14

    goto :goto_35

    .line 6182
    .end local v138    # "value":I
    :catch_14
    move-exception v46

    .line 6183
    .restart local v46    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 6171
    .end local v46    # "e":Ljava/lang/Exception;
    :cond_7f
    :try_start_2a
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_PROCESS_ACTIVE_USER_CHANGE restartAccessibilityServiceForOwner -"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->-get29(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get29(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 6173
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "MSG_PROCESS_ACTIVE_USER_CHANGE starting owner accessibility"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "accessibility_enabled"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get3(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 6176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enabled_accessibility_services"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->-get3(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-set0(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 6179
    :cond_80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-set8(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_14

    goto/16 :goto_36

    .line 6196
    .end local v21    # "personaId":I
    :pswitch_24
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MSG_NOTIFY_EXT_SDCARD_UPDATE is called for persona - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6197
    const/16 v95, 0x0

    .line 6198
    .local v95, "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6199
    .restart local v21    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v95

    .line 6200
    .local v95, "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v95, :cond_82

    move-object/from16 v0, v95

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    if-eqz v4, :cond_82

    .line 6201
    const/16 v70, 0x0

    .line 6202
    .local v70, "isSdcardAlertAlreadyShown":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get26(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 6203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get26(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v70

    .line 6205
    .end local v70    # "isSdcardAlertAlreadyShown":Z
    :cond_81
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state -"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " and needsRestart-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v95

    iget-boolean v8, v0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " and isSdcardAlertAlreadyShown"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v70

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    move/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v70, :cond_0

    move-object/from16 v0, v95

    iget-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    if-nez v4, :cond_0

    .line 6207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap42(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 6210
    :cond_82
    const-string/jumbo v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "Sdcard policy has not been updated..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6216
    .end local v21    # "personaId":I
    .end local v95    # "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :pswitch_25
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6217
    .restart local v21    # "personaId":I
    const-string/jumbo v4, "PersonaManagerService"

    const-string/jumbo v5, "PersonaManagerService$PersonaHandler.handleMessage() launchPersonaHome for kioskModeEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 6221
    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v59

    .line 6222
    .local v59, "forceUpdateMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 6227
    .end local v21    # "personaId":I
    .end local v59    # "forceUpdateMsg":Landroid/os/Message;
    :pswitch_26
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6228
    .restart local v21    # "personaId":I
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "force update wallpaper for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap12(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    goto/16 :goto_0

    .line 6235
    .end local v21    # "personaId":I
    :pswitch_27
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6236
    .restart local v21    # "personaId":I
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyKeyguardShow(false) on MSG_DELETING_PERSONA for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 6238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo v5, "container_adminlock"

    const/4 v8, 0x0

    move/from16 v0, v21

    invoke-static {v4, v0, v8, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap20(Lcom/android/server/pm/PersonaManagerService;IZLjava/lang/String;)V

    .line 6239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap19(Lcom/android/server/pm/PersonaManagerService;Z)V

    .line 6241
    :cond_83
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    goto/16 :goto_0

    .line 6248
    .end local v21    # "personaId":I
    :pswitch_28
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6249
    .restart local v21    # "personaId":I
    const/16 v95, 0x0

    .line 6250
    .local v95, "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v95

    .line 6251
    .local v95, "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v95, :cond_84

    .line 6252
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Persona is in Urgent Update State, So not switching from Recent tasks to: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v95 .. v95}, Lcom/samsung/android/knox/SemPersonaInfo;->getParentId()I

    move-result v5

    const/4 v8, 0x5

    const/4 v9, 0x1

    move/from16 v0, v21

    invoke-static {v4, v5, v0, v8, v9}, Lcom/android/server/pm/PersonaManagerService;->-wrap56(Lcom/android/server/pm/PersonaManagerService;IIIZ)V

    .line 6255
    :cond_84
    return-void

    .line 6261
    .end local v21    # "personaId":I
    .end local v95    # "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    :pswitch_29
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6262
    .restart local v21    # "personaId":I
    const-string/jumbo v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Setup completed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get19(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 6265
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-get21(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 6266
    .local v91, "persona":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v91, :cond_85

    .line 6267
    const/4 v4, 0x1

    move-object/from16 v0, v91

    iput-boolean v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    .line 6268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap61(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    .line 6269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap59(Lcom/android/server/pm/PersonaManagerService;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    :cond_85
    monitor-exit v5

    .line 6272
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    .line 6273
    const-string/jumbo v19, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Admin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap16(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6274
    const-string/jumbo v5, " has successfully created container "

    .line 6273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 6272
    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v15 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6264
    .end local v91    # "persona":Lcom/samsung/android/knox/SemPersonaInfo;
    :catchall_7
    move-exception v4

    monitor-exit v5

    throw v4

    .line 6280
    .end local v21    # "personaId":I
    :pswitch_2a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 6281
    .restart local v21    # "personaId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_86

    const/16 v124, 0x1

    .line 6282
    .local v124, "showWhenLocked":Z
    :goto_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/content/ComponentName;

    .line 6283
    .local v36, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v21

    move-object/from16 v1, v36

    move/from16 v2, v124

    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap28(Lcom/android/server/pm/PersonaManagerService;ILandroid/content/ComponentName;Z)V

    goto/16 :goto_0

    .line 6281
    .end local v36    # "component":Landroid/content/ComponentName;
    .end local v124    # "showWhenLocked":Z
    :cond_86
    const/16 v124, 0x0

    .restart local v124    # "showWhenLocked":Z
    goto :goto_37

    .line 6289
    .end local v21    # "personaId":I
    .end local v124    # "showWhenLocked":Z
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap44(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_0

    .line 5356
    .restart local v56    # "file":Ljava/io/File;
    .restart local v65    # "in":Ljava/io/InputStream;
    .restart local v96    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .restart local v99    # "pi":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v100    # "pi$iterator":Ljava/util/Iterator;
    :catchall_8
    move-exception v4

    move-object/from16 v64, v65

    .end local v65    # "in":Ljava/io/InputStream;
    .local v64, "in":Ljava/io/InputStream;
    goto/16 :goto_17

    .line 5353
    .end local v64    # "in":Ljava/io/InputStream;
    .restart local v65    # "in":Ljava/io/InputStream;
    :catch_15
    move-exception v46

    .restart local v46    # "e":Ljava/lang/Exception;
    move-object/from16 v64, v65

    .end local v65    # "in":Ljava/io/InputStream;
    .restart local v64    # "in":Ljava/io/InputStream;
    goto/16 :goto_16

    .line 5017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_a
        :pswitch_b
        :pswitch_1b
        :pswitch_8
        :pswitch_20
        :pswitch_21
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_22
        :pswitch_10
        :pswitch_24
        :pswitch_12
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_11
        :pswitch_2
        :pswitch_29
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_14
    .end packed-switch
.end method
