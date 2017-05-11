.class public Lcom/android/launcher3/folder/view/FolderNameEditText;
.super Landroid/widget/EditText;
.source "FolderNameEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;
    }
.end annotation


# instance fields
.field private mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 59
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    invoke-interface {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;->onPreImeBackKey()Z

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    invoke-interface {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;->onLayoutUpdated()V

    .line 75
    :cond_0
    return-void
.end method

.method setOnEventListener(Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderNameEditText;->mOnEventListener:Lcom/android/launcher3/folder/view/FolderNameEditText$OnEventListener;

    .line 54
    return-void
.end method
