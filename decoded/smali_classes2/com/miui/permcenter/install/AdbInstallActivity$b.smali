.class Lcom/miui/permcenter/install/AdbInstallActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/install/AdbInstallActivity;
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
            "Lcom/miui/permcenter/install/AdbInstallActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/permcenter/install/AdbInstallActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/install/AdbInstallActivity;Lcom/miui/permcenter/install/AdbInstallActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/AdbInstallActivity$b;-><init>(Lcom/miui/permcenter/install/AdbInstallActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/AdbInstallActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->j0(Lcom/miui/permcenter/install/AdbInstallActivity;)I

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->i0(Lcom/miui/permcenter/install/AdbInstallActivity;)I

    move-result p1

    if-gez p1, :cond_1

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->k0(Lcom/miui/permcenter/install/AdbInstallActivity;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->l0(Lcom/miui/permcenter/install/AdbInstallActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
