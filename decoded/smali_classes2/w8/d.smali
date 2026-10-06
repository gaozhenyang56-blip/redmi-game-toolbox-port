.class public Lw8/d;
.super Lw4/e;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 1

    invoke-direct {p0}, Lw4/e;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lw8/d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lw8/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lw4/e;->handleMessage(Landroid/os/Message;)V

    iget-object v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->d:Lw8/j;

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7b

    if-eq p1, v2, :cond_2

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lw8/j;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->t0()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lw8/j;->c()V

    :cond_3
    :goto_0
    return-void
.end method
