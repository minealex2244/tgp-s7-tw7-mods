.class public Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
.super Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
.source "FrontCameraShootingModeResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrontCameraShootingModeResourceData"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 35
    const v0, 0x7f0a00ee

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;-><init>(I)V

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 39
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontCameraShootingModeOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addIntegratedMode(ILcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;)V
    .locals 5
    .param p1, "commandId"    # I
    .param p2, "mode"    # Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .param p3, "resIDs"    # Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    .prologue
    const/4 v4, 0x0

    .line 143
    if-eqz p2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->BACK:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    iget-object v2, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->cameraType:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    if-eq v1, v2, :cond_0

    .line 144
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v1, 0x7

    new-array v1, v1, [I

    iget v2, p3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v2, v1, v4

    const/4 v2, 0x1

    iget v3, p3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput p1, v1, v2

    const/4 v2, 0x4

    iget v3, p3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    iget v3, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->downloaded:I

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 146
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setPackage(Ljava/lang/String;)V

    .line 147
    iget-object v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setName(Ljava/lang/String;)V

    .line 148
    iget v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->id:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setId(I)V

    .line 149
    iget v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->downloaded:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setDownloaded(I)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_0
    return-void
.end method

.method private addSeparatedMode(ILcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;)V
    .locals 5
    .param p1, "commandId"    # I
    .param p2, "mode"    # Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    .prologue
    const/4 v4, 0x0

    .line 162
    if-eqz p2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->BACK:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    iget-object v2, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->cameraType:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    if-eq v1, v2, :cond_0

    .line 163
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v1, 0x7

    new-array v1, v1, [I

    iget v2, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->iconId:I

    aput v2, v1, v4

    const/4 v2, 0x1

    iget v3, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->pressedIconId:I

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput p1, v1, v2

    const/4 v2, 0x4

    aput v4, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    iget v3, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->downloaded:I

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 165
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setPackage(Ljava/lang/String;)V

    .line 166
    iget-object v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setName(Ljava/lang/String;)V

    .line 167
    iget-object v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setDescription(Ljava/lang/String;)V

    .line 168
    iget v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->id:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setId(I)V

    .line 169
    iget v1, p2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->downloaded:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setDownloaded(I)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_0
    return-void
.end method

.method public static appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "data"    # Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .prologue
    const/16 v2, 0x3a

    .line 54
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->saveOrder()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 66
    invoke-super {p0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;->cleanUpResources()V

    .line 67
    return-void
.end method

.method public getOrderString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v1, "orderString":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 73
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 74
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized resetOrder(Ljava/lang/String;)V
    .locals 17
    .param p1, "orderString"    # Ljava/lang/String;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 82
    const-string v12, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 83
    .local v11, "st":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 85
    .local v7, "order":I
    array-length v13, v11

    const/4 v12, 0x0

    move v8, v7

    .end local v7    # "order":I
    .local v8, "order":I
    :goto_0
    if-ge v12, v13, :cond_7

    aget-object v5, v11, v12

    .line 87
    .local v5, "itemString":Ljava/lang/String;
    const-string v14, ":"

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 89
    .local v4, "itemName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 91
    .local v3, "id":I
    array-length v14, v9

    if-eqz v14, :cond_0

    array-length v14, v9

    const/4 v15, 0x3

    if-gt v14, v15, :cond_0

    const/4 v14, 0x0

    aget-object v14, v9, v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 92
    :cond_0
    const-string v14, "FrontCameraShootingModeResourceData"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Obtained invalid string "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 85
    .end local v8    # "order":I
    .restart local v7    # "order":I
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move v8, v7

    .end local v7    # "order":I
    .restart local v8    # "order":I
    goto :goto_0

    .line 94
    :cond_1
    array-length v14, v9

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 95
    const/4 v14, 0x1

    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 101
    :cond_2
    :goto_2
    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "commandId":I
    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    move v7, v8

    .line 105
    .end local v8    # "order":I
    .restart local v7    # "order":I
    goto :goto_1

    .line 96
    .end local v2    # "commandId":I
    .end local v7    # "order":I
    .restart local v8    # "order":I
    :cond_3
    array-length v14, v9

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 97
    const/4 v14, 0x1

    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 98
    const/4 v14, 0x2

    aget-object v4, v9, v14

    goto :goto_2

    .line 109
    .restart local v2    # "commandId":I
    :cond_4
    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 110
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v6

    .line 111
    .local v6, "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->addSeparatedMode(ILcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;)V

    .line 123
    .end local v6    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    :goto_3
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v14, :cond_8

    .line 124
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v6

    .line 125
    .restart local v6    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "order":I
    .restart local v7    # "order":I
    iput v8, v6, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->frontOrder:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 80
    .end local v2    # "commandId":I
    .end local v3    # "id":I
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v5    # "itemString":Ljava/lang/String;
    .end local v6    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v7    # "order":I
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v11    # "st":[Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 112
    .restart local v2    # "commandId":I
    .restart local v3    # "id":I
    .restart local v4    # "itemName":Ljava/lang/String;
    .restart local v5    # "itemString":Ljava/lang/String;
    .restart local v8    # "order":I
    .restart local v9    # "parts":[Ljava/lang/String;
    .restart local v11    # "st":[Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-boolean v14, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_SHOOTING_MODES:Z

    if-eqz v14, :cond_6

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isIntegratedMode(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 113
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v6

    .line 114
    .restart local v6    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v10

    .line 115
    .local v10, "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v10}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->addIntegratedMode(ILcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;)V

    goto :goto_3

    .line 117
    .end local v6    # "mode":Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
    .end local v10    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_6
    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v10

    .line 118
    .restart local v10    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v14, 0x6

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    iget v0, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x2

    iget v0, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x3

    aput v2, v14, v15

    const/4 v15, 0x4

    iget v0, v10, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-direct {v1, v14}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 119
    .local v1, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setId(I)V

    .line 120
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setName(Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 128
    .end local v1    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v2    # "commandId":I
    .end local v3    # "id":I
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v5    # "itemString":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_7
    monitor-exit p0

    return-void

    .restart local v2    # "commandId":I
    .restart local v3    # "id":I
    .restart local v4    # "itemName":Ljava/lang/String;
    .restart local v5    # "itemString":Ljava/lang/String;
    .restart local v9    # "parts":[Ljava/lang/String;
    :cond_8
    move v7, v8

    .end local v8    # "order":I
    .restart local v7    # "order":I
    goto/16 :goto_1
.end method

.method public saveOrder()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method
