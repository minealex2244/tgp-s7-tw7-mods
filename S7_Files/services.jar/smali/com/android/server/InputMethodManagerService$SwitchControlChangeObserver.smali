.class Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchControlChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 6531
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    .line 6532
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6531
    return-void
.end method

.method private restorePreviousUsedInputMethod()V
    .locals 6

    .prologue
    .line 6580
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get15(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6581
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Failed to return the previous IME becuase the stored info is null"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6582
    return-void

    .line 6584
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->-get15(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 6585
    .local v1, "info":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->-wrap4(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 6586
    .local v0, "currentIME":Ljava/lang/String;
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " UniversalSwitch restorePreviousUsedInputMethod  previous inputmethod : : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->-get15(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " currentIME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " InputMethodinfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6587
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->-get15(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6578
    :cond_1
    :goto_0
    return-void

    .line 6589
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->-get15(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v3

    .line 6590
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->-get15(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 6589
    invoke-virtual {v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setDefaultUniversalSwitchInputMethod()V
    .locals 4

    .prologue
    .line 6553
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6554
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v1, "com.samsung.inputmethod/.SamsungIME"

    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->-wrap2(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6556
    const-string/jumbo v0, "com.samsung.inputmethod/.SamsungIME"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6557
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v1, "com.samsung.inputmethod/.SamsungIME"

    .line 6558
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 6557
    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 6552
    :cond_0
    :goto_0
    return-void

    .line 6562
    :cond_1
    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6563
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    .line 6564
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 6563
    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_0

    .line 6567
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->-wrap3(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6569
    const-string/jumbo v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6570
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_0

    .line 6572
    :cond_3
    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6573
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v1, "com.sec.android.inputmethod/.SamsungKeypad"

    .line 6574
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 6573
    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 6536
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6537
    const-string/jumbo v4, "universal_switch_enabled"

    .line 6536
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6538
    .local v1, "universalSwitchState":I
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "universalSwitchState changed to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    if-ne v1, v2, :cond_0

    move v0, v2

    .line 6540
    .local v0, "isUniversalSwitchEnabled":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 6541
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6542
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 6541
    invoke-static {v4, v5, v6}, Lcom/android/server/InputMethodManagerService;->-wrap4(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService;->-set5(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 6543
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->setDefaultUniversalSwitchInputMethod()V

    .line 6544
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    .line 6535
    :goto_0
    return-void

    .line 6547
    :cond_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$SwitchControlChangeObserver;->restorePreviousUsedInputMethod()V

    goto :goto_0
.end method
