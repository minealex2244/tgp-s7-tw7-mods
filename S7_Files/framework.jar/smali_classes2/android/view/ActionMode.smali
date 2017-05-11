.class public abstract Landroid/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionMode$Callback2;,
        Landroid/view/ActionMode$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_HIDE_DURATION:I = -0x1

.field public static final SEM_TYPE_FLOATING:I = 0x63

.field public static final TYPE_FLOATING:I = 0x1

.field public static final TYPE_PRIMARY:I


# instance fields
.field private mDelayMili:I

.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ActionMode;->mType:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ActionMode;->mDelayMili:I

    .line 34
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public getMovingOffDelay()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/view/ActionMode;->mDelayMili:I

    return v0
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Landroid/view/ActionMode;->mType:I

    return v0
.end method

.method public hide(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 252
    return-void
.end method

.method public abstract invalidate()V
.end method

.method public invalidateContentRect()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 297
    return-void
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public setMovingOffDelay(I)V
    .locals 0
    .param p1, "miliSec"    # I

    .prologue
    .line 73
    iput p1, p0, Landroid/view/ActionMode;->mDelayMili:I

    .line 72
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 94
    iput-object p1, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 0
    .param p1, "titleOptional"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    .line 170
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 211
    iput p1, p0, Landroid/view/ActionMode;->mType:I

    .line 210
    return-void
.end method