.class Lcom/sec/android/app/camera/shootingmode/TagShot$7;
.super Ljava/lang/Object;
.source "TagShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/TagShot;->updateTagInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$7;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 953
    const-string v0, "TagShot"

    const-string v1, "fetchLocationInfo error"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-void
.end method

.method public onResult(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationKey"    # Ljava/lang/String;

    .prologue
    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$7;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    # invokes: Lcom/sec/android/app/camera/shootingmode/TagShot;->fetchForecastInfo(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2500(Lcom/sec/android/app/camera/shootingmode/TagShot;Landroid/content/Context;Ljava/lang/String;)V

    .line 959
    return-void
.end method
