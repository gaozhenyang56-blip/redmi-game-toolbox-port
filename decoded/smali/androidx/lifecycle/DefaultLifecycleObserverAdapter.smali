.class public final Landroidx/lifecycle/DefaultLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/DefaultLifecycleObserverAdapter$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroidx/lifecycle/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/e;Landroidx/lifecycle/r;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "defaultLifecycleObserver"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    iput-object p2, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->b:Landroidx/lifecycle/r;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/l$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    invoke-interface {v0, p1}, Landroidx/lifecycle/e;->onDestroy(Landroidx/lifecycle/v;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    invoke-interface {v0, p1}, Landroidx/lifecycle/e;->onStop(Landroidx/lifecycle/v;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    invoke-interface {v0, p1}, Landroidx/lifecycle/e;->onPause(Landroidx/lifecycle/v;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    invoke-interface {v0, p1}, Landroidx/lifecycle/e;->onResume(Landroidx/lifecycle/v;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    invoke-interface {v0, p1}, Landroidx/lifecycle/e;->onStart(Landroidx/lifecycle/v;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    invoke-interface {v0, p1}, Landroidx/lifecycle/e;->onCreate(Landroidx/lifecycle/v;)V

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;->b:Landroidx/lifecycle/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
