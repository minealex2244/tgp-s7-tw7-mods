.class public Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfo"
.end annotation


# instance fields
.field public executeCount:I

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public supportMultiInstance:Z

.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/RecentsAppListLoader;

    .prologue
    const/4 v1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->executeCount:I

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->supportMultiInstance:Z

    .line 43
    return-void
.end method
