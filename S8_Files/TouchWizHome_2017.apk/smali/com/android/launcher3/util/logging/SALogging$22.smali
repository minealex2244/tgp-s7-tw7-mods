.class Lcom/android/launcher3/util/logging/SALogging$22;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertClickGridButtonLog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$isHomeGrid:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$22;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-boolean p2, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$isHomeGrid:Z

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$x:I

    iput p4, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x5

    .line 1199
    sget-object v3, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1200
    .local v1, "res":Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$isHomeGrid:Z

    if-eqz v3, :cond_1

    const v3, 0x7f08018a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1202
    .local v2, "screenID":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$isHomeGrid:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$x:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$y:I

    if-ne v3, v4, :cond_2

    const v3, 0x7f08014e

    .line 1203
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "eventID":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    return-void

    .line 1200
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v2    # "screenID":Ljava/lang/String;
    :cond_1
    const v3, 0x7f08017e

    .line 1201
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1203
    .restart local v2    # "screenID":Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$x:I

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$y:I

    if-ne v3, v6, :cond_3

    const v3, 0x7f08014f

    .line 1204
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$x:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$y:I

    if-ne v3, v4, :cond_0

    const v3, 0x7f080151

    .line 1205
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$x:I

    if-ne v3, v5, :cond_5

    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$y:I

    if-ne v3, v6, :cond_5

    const v3, 0x7f080150

    .line 1206
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$x:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$22;->val$y:I

    if-ne v3, v6, :cond_0

    const v3, 0x7f080152

    .line 1207
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
