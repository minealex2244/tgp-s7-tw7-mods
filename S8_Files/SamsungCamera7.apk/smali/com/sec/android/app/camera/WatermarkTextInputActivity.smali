.class public Lcom/sec/android/app/camera/WatermarkTextInputActivity;
.super Landroid/app/Activity;
.source "WatermarkTextInputActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkTextInputActivity"


# instance fields
.field private mNewString:Ljava/lang/String;

.field private mRemainText:Landroid/widget/TextView;

.field private mText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mText:Landroid/widget/EditText;

    .line 51
    iput-object v0, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mRemainText:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mNewString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/WatermarkTextInputActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/WatermarkTextInputActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mNewString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/WatermarkTextInputActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/WatermarkTextInputActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mNewString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/WatermarkTextInputActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/WatermarkTextInputActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mRemainText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const-string v0, "WatermarkTextInputActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->setContentView(I)V

    .line 73
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 58
    const-string v0, "904"

    const-string v1, "9041"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->finish()V

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "WatermarkTextInputActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 89
    const-string v3, "WatermarkTextInputActivity"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0900bb

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    .local v0, "extras":Landroid/os/Bundle;
    const v3, 0x7f0f005b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mText:Landroid/widget/EditText;

    .line 98
    const-string v3, "OriString"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "originalText":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mNewString:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 100
    iput-object v2, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mNewString:Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mNewString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 104
    iget-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mText:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 105
    iget-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mText:Landroid/widget/EditText;

    new-instance v4, Lcom/sec/android/app/camera/WatermarkTextInputActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/WatermarkTextInputActivity$1;-><init>(Lcom/sec/android/app/camera/WatermarkTextInputActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 122
    const v3, 0x7f0f005c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mRemainText:Landroid/widget/TextView;

    .line 123
    iget-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mRemainText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/sec/android/app/camera/WatermarkTextInputActivity;->mText:Landroid/widget/EditText;

    new-instance v4, Lcom/sec/android/app/camera/WatermarkTextInputActivity$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/WatermarkTextInputActivity$2;-><init>(Lcom/sec/android/app/camera/WatermarkTextInputActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    return-void
.end method
