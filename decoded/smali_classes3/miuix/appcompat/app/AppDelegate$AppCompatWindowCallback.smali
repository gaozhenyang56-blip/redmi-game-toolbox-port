.class Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;
.super Landroidx/appcompat/view/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AppDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AppDelegate;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppDelegate;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    invoke-direct {p0, p2}, Landroidx/appcompat/view/k;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/v;->k(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/k;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/v;->m(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/k;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/v;->p(Landroidx/fragment/app/FragmentManager;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/k;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/v;->s(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/k;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/appcompat/app/v;->t(Landroidx/fragment/app/FragmentManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/view/k;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/appcompat/app/AppDelegate$AppCompatWindowCallback;->this$0:Lmiuix/appcompat/app/AppDelegate;

    iget-object v0, v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/v;->r(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Landroid/view/Menu;I)V

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/k;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method
