.class public Lcom/sec/android/app/camera/menu/MenuResourceDepot;
.super Ljava/lang/Object;
.source "MenuResourceDepot.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuResourceDepot"


# instance fields
.field protected mCameraContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/interfaces/CameraContext;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    .line 65
    return-void
.end method


# virtual methods
.method protected delete(I)V
    .locals 1
    .param p1, "menuId"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 175
    return-void
.end method

.method public getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 68
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 69
    .local v0, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 165
    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v1, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_0
    return-object v1

    .line 71
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 162
    :goto_1
    if-eqz v0, :cond_1

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 165
    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_0

    .line 74
    .end local v1    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    .line 75
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 78
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    .line 79
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 81
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FlashModeResourceData;-><init>()V

    .line 82
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 84
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontFlashModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FrontFlashModeResourceData;-><init>()V

    .line 85
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 87
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/EffectResourceData;-><init>()V

    .line 88
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 90
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/DualEffectResourceData;-><init>()V

    .line 91
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 93
    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FrontEffectResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FrontEffectResourceData;-><init>()V

    .line 94
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 96
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ExposureMeterResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ExposureMeterResourceData;-><init>()V

    .line 97
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 99
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ViewModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ViewModeResourceData;-><init>()V

    .line 100
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 102
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/CameraHDRResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/CameraHDRResourceData;-><init>()V

    .line 103
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 105
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SideQuickSettingResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/SideQuickSettingResourceData;-><init>()V

    .line 106
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 108
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/SoundAndShotModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/SoundAndShotModeResourceData;-><init>()V

    .line 109
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 111
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/GestureControlModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/GestureControlModeResourceData;-><init>()V

    .line 112
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 114
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/AntifogLevelValueResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/AntifogLevelValueResourceData;-><init>()V

    .line 115
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 117
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FoodColorTuneResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FoodColorTuneResourceData;-><init>()V

    .line 118
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 120
    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/VideoCollageTypeResourceData;-><init>()V

    .line 121
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 123
    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VideoCollageRecTimeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/VideoCollageRecTimeResourceData;-><init>()V

    .line 124
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 126
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/VideoCollageSlowRecTimeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/VideoCollageSlowRecTimeResourceData;-><init>()V

    .line 127
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 129
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BeautyMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/BeautyMenuResourceData;-><init>()V

    .line 130
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 132
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BeautyLiteMenuResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/BeautyLiteMenuResourceData;-><init>()V

    .line 133
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 135
    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/BeautyLevelValueResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/BeautyLevelValueResourceData;-><init>()V

    .line 136
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 138
    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/ColorTuneResourceData;-><init>()V

    .line 139
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 141
    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MotionPanoramaModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/MotionPanoramaModeResourceData;-><init>()V

    .line 142
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 144
    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MotionWideSelfieModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/MotionWideSelfieModeResourceData;-><init>()V

    .line 145
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 147
    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/FoodBlurTypeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/FoodBlurTypeResourceData;-><init>()V

    .line 148
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 150
    :sswitch_19
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MultiAFModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/MultiAFModeResourceData;-><init>()V

    .line 151
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 153
    :sswitch_1a
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingMotionSpeedResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/RecordingMotionSpeedResourceData;-><init>()V

    .line 154
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 156
    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/WideTeleDualModeResourceData;

    .end local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-direct {v0}, Lcom/sec/android/app/camera/resourcedata/WideTeleDualModeResourceData;-><init>()V

    .line 157
    .restart local v0    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 71
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x8 -> :sswitch_4
        0xb -> :sswitch_7
        0xc -> :sswitch_9
        0x17 -> :sswitch_8
        0x4d -> :sswitch_b
        0x54 -> :sswitch_c
        0x5a -> :sswitch_5
        0x64 -> :sswitch_1
        0x66 -> :sswitch_6
        0x71 -> :sswitch_14
        0x75 -> :sswitch_d
        0x77 -> :sswitch_15
        0x79 -> :sswitch_a
        0x80 -> :sswitch_e
        0x81 -> :sswitch_12
        0x82 -> :sswitch_13
        0x83 -> :sswitch_f
        0x84 -> :sswitch_10
        0x85 -> :sswitch_11
        0x87 -> :sswitch_16
        0x8d -> :sswitch_18
        0x91 -> :sswitch_19
        0x96 -> :sswitch_1a
        0xaa -> :sswitch_3
        0xad -> :sswitch_17
        0xb1 -> :sswitch_1b
        0xbe0 -> :sswitch_0
        0xbe1 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 178
    const-string v3, "MenuResourceDepot"

    const-string v4, "onDestroy"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object v5, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mCameraContext:Ljava/lang/ref/WeakReference;

    .line 180
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "id":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 185
    .local v2, "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "res":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 190
    iput-object v5, p0, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->mResources:Landroid/util/SparseArray;

    .line 192
    .end local v0    # "i":I
    .end local v1    # "id":I
    :cond_2
    return-void
.end method
