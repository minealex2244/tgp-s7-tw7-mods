.class Lcom/android/launcher3/util/logging/SALogging$21;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertChangeGridLog(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$isHomeGrid:Z

.field final synthetic val$statusLogOnly:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;ZIIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$21;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-boolean p2, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    iput p4, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    iput-boolean p5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$statusLogOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x5

    .line 1177
    sget-object v5, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1178
    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    if-eqz v5, :cond_2

    const v5, 0x7f08018a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1180
    .local v3, "screenID":Ljava/lang/String;
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    if-eqz v5, :cond_3

    const v5, 0x7f08014a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1182
    .local v1, "eventID":Ljava/lang/String;
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    if-eqz v5, :cond_4

    const v5, 0x7f0801ae

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1184
    .local v4, "statusID":Ljava/lang/String;
    :goto_2
    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$isHomeGrid:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v7, :cond_5

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v6, :cond_5

    const-string v0, "1"

    .line 1187
    .local v0, "detail":Ljava/lang/String;
    :cond_0
    :goto_3
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v5, v4, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-boolean v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$statusLogOnly:Z

    if-nez v5, :cond_1

    .line 1189
    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v5, v3, v1, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    :cond_1
    return-void

    .line 1178
    .end local v0    # "detail":Ljava/lang/String;
    .end local v1    # "eventID":Ljava/lang/String;
    .end local v3    # "screenID":Ljava/lang/String;
    .end local v4    # "statusID":Ljava/lang/String;
    :cond_2
    const v5, 0x7f08017e

    .line 1179
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1180
    .restart local v3    # "screenID":Ljava/lang/String;
    :cond_3
    const v5, 0x7f08014b

    .line 1181
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1182
    .restart local v1    # "eventID":Ljava/lang/String;
    :cond_4
    const v5, 0x7f08019b

    .line 1183
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1184
    .restart local v4    # "statusID":Ljava/lang/String;
    :cond_5
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v7, :cond_6

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v8, :cond_6

    const-string v0, "2"

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v6, :cond_0

    const-string v0, "3"

    goto :goto_3

    :cond_7
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v7, :cond_8

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v8, :cond_8

    const-string v0, "1"

    goto :goto_3

    :cond_8
    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$x:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$21;->val$y:I

    if-ne v5, v8, :cond_0

    const-string v0, "2"

    goto :goto_3
.end method
