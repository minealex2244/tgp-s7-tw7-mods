.class Lcom/android/systemui/recents/model/RecentsAppListLoader$1;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/RecentsAppListLoader;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;)I
    .locals 4
    .param p1, "object1"    # Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;
    .param p2, "object2"    # Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "res":I
    iget-object v1, p1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v2, p1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->title:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 166
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;->compare(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;)I

    move-result v0

    return v0
.end method
