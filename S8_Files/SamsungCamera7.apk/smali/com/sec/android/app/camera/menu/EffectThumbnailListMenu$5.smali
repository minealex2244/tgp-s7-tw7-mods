.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1244
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v4

    const/16 v5, 0x400

    .line 1245
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    const-string v6, "com.samsung.android.provider.filterprovider.libsmartfilter.so"

    const-string v7, ""

    .line 1244
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectCountbyCategory(I)I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1247
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    add-int/lit16 v5, v0, 0x1fa4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v2

    .line 1248
    .local v2, "libName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    add-int/lit16 v5, v0, 0x1fa4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 1249
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 1250
    :cond_0
    const-string v4, "EffectThumbnailListMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is invalid filter! [FilterID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v4

    add-int/lit16 v5, v0, 0x1fa4

    invoke-virtual {v4, v5, v2, v3}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1255
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectCountbyCategory(I)I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1256
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    add-int/lit16 v5, v1, 0x2008

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v2

    .line 1257
    .restart local v2    # "libName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v4

    add-int/lit16 v5, v1, 0x2008

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 1258
    .restart local v3    # "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    .line 1259
    :cond_3
    const-string v4, "EffectThumbnailListMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This is invalid filter! [FilterID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1262
    :cond_4
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v4

    add-int/lit16 v5, v1, 0x2008

    invoke-virtual {v4, v5, v2, v3}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1264
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_5
    return-void
.end method
