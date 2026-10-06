.class Lcom/miui/powercenter/PowerSaveMainFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/PowerSaveMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.method constructor <init>(Lcom/miui/powercenter/PowerSaveMainFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/PowerSaveMainFragment$b;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/PowerSaveMainFragment$b;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lme/q;->z()Z

    move-result v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/miui/powercenter/PowerSaveMainFragment$b$a;

    invoke-direct {v2, p0, v0}, Lcom/miui/powercenter/PowerSaveMainFragment$b$a;-><init>(Lcom/miui/powercenter/PowerSaveMainFragment$b;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/PowerMainActivity;->d0()Lcom/miui/powercenter/batteryhistory/l;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSaveMainFragment$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-static {v1}, Lcom/miui/powercenter/PowerSaveMainFragment;->c0(Lcom/miui/powercenter/PowerSaveMainFragment;)Lcom/miui/powercenter/PowerSaveMainFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/l;->u(Lcom/miui/powercenter/batteryhistory/w;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/powercenter/PowerSaveMainFragment;->h:Ljava/lang/String;

    const-string v2, "registerHistoryResult error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
