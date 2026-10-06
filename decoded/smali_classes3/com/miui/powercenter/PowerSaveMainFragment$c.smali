.class Lcom/miui/powercenter/PowerSaveMainFragment$c;
.super Lw4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/PowerSaveMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/PowerSaveMainFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/PowerSaveMainFragment;)V
    .locals 1

    invoke-direct {p0}, Lw4/e;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerSaveMainFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x40b

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/miui/powercenter/PowerSaveMainFragment;->f:Z

    invoke-static {v0}, Lcom/miui/powercenter/PowerSaveMainFragment;->e0(Lcom/miui/powercenter/PowerSaveMainFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
