.class Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;
.super Ljava/lang/Object;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewScreenInfo"
.end annotation


# instance fields
.field originalScreenId:J

.field plusIndex:I


# direct methods
.method constructor <init>(JI)V
    .locals 1
    .param p1, "screenId"    # J
    .param p3, "index"    # I

    .prologue
    .line 3768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3769
    iput-wide p1, p0, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;->originalScreenId:J

    .line 3770
    iput p3, p0, Lcom/android/launcher3/home/HomeLoader$NewScreenInfo;->plusIndex:I

    .line 3771
    return-void
.end method
