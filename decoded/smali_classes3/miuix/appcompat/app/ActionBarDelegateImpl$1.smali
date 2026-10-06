.class Lmiuix/appcompat/app/ActionBarDelegateImpl$1;
.super Landroidx/activity/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/ActionBarDelegateImpl;->updateOnBackPressedCallbackState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Z)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;->this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    invoke-direct {p0, p2}, Landroidx/activity/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;->this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    iget-boolean v1, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mIsDelegateAnimRunning:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method
