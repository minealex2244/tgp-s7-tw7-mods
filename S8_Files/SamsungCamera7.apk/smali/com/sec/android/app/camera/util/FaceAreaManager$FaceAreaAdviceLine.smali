.class Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;
.super Ljava/lang/Object;
.source "FaceAreaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/FaceAreaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceAreaAdviceLine"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput v0, p0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->left:I

    .line 672
    iput v0, p0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->right:I

    .line 673
    iput v0, p0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->top:I

    .line 674
    iput v0, p0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceAreaAdviceLine;->bottom:I

    .line 675
    return-void
.end method
