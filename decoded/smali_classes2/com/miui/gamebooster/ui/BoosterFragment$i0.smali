.class Lcom/miui/gamebooster/ui/BoosterFragment$i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i0"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/BoosterFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$i0;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$i0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$i0;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$i0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x64

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$i0;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v3, 0x50

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->b1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    move-result-object v3

    const/16 v4, 0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lw4/e;->a(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
