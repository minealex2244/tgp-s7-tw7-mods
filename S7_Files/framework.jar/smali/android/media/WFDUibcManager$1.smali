.class Landroid/media/WFDUibcManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 111
    iput-object p1, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intent received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :try_start_0
    const-string/jumbo v3, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    const-string/jumbo v3, "displayName"

    const/16 v4, 0x6f

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 120
    .local v2, "name":I
    iget-object v3, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    const-string/jumbo v4, "displayID"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/media/WFDUibcManager;->-set2(Landroid/media/WFDUibcManager;I)I

    .line 121
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Presentation Display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v5}, Landroid/media/WFDUibcManager;->-get8(Landroid/media/WFDUibcManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v2    # "name":I
    :cond_1
    :goto_0
    const-string/jumbo v3, "com.samsung.android.video.START_PRESENTATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.samsung.android.gallery.action.slideshow.start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    :cond_2
    iget-object v3, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/WFDUibcManager;->-set0(Landroid/media/WFDUibcManager;Z)Z

    .line 132
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WFDUibcManager"

    const-string/jumbo v4, "SlideShow or Video playing with presentation : TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_3
    :goto_1
    return-void

    .line 122
    :cond_4
    :try_start_1
    const-string/jumbo v3, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    const-string/jumbo v3, "displayName"

    const/16 v4, 0x6f

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 124
    .restart local v2    # "name":I
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Presentation Display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    invoke-static {v5}, Landroid/media/WFDUibcManager;->-get8(Landroid/media/WFDUibcManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .end local v2    # "name":I
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEM_PRESENTATION_START Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 133
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_5
    const-string/jumbo v3, "com.samsung.android.video.END_PRESENTATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "com.samsung.android.gallery.action.slideshow.finish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    :cond_6
    iget-object v3, p0, Landroid/media/WFDUibcManager$1;->this$0:Landroid/media/WFDUibcManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/WFDUibcManager;->-set0(Landroid/media/WFDUibcManager;Z)Z

    .line 135
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WFDUibcManager"

    const-string/jumbo v4, "SlideShow or Video playing with presentation : FALSE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
