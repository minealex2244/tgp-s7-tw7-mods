.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$2;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
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
    .line 265
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 2
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    const/16 v1, 0x1e78

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    .line 270
    return-void
.end method

.method public onCreateDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 275
    return-void
.end method

.method public onDismissDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 280
    return-void
.end method

.method public onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 2
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    const/16 v1, 0x1e78

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    .line 286
    return-void
.end method

.method public onPositiveButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V
    .locals 0
    .param p1, "id"    # Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    .prologue
    .line 291
    return-void
.end method
