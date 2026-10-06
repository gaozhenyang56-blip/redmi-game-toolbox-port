.class Lcom/miui/powercenter/PowerCenter$b;
.super Lw4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/PowerCenter;
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
            "Lcom/miui/powercenter/PowerCenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/PowerCenter;)V
    .locals 1

    invoke-direct {p0}, Lw4/e;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerCenter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3f6

    if-eq v1, v2, :cond_9

    const/16 v2, 0x3f7

    if-eq v1, v2, :cond_8

    const/16 v2, 0x400

    if-eq v1, v2, :cond_7

    const/16 v2, 0x403

    if-eq v1, v2, :cond_6

    const/16 v2, 0x40b

    if-eq v1, v2, :cond_5

    const/16 v2, 0x41b

    if-eq v1, v2, :cond_4

    const/16 v2, 0x426

    if-eq v1, v2, :cond_3

    const/16 v2, 0x41e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x41f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/powercenter/PowerCenter;->l0(Lcom/miui/powercenter/PowerCenter;F)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->e0(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/mainui/MainActivityView;->g()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->m0(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->i0(Lcom/miui/powercenter/PowerCenter;)V

    const-string p1, "finish_scan"

    invoke-static {p1}, Lhd/a;->k1(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->h0(Lcom/miui/powercenter/PowerCenter;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->d0(Lcom/miui/powercenter/PowerCenter;)V

    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->i0(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/powercenter/PowerCenter;->k0(Lcom/miui/powercenter/PowerCenter;F)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/miui/powercenter/PowerCenter;->z0()V

    goto :goto_0

    :cond_8
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->j0(Lcom/miui/powercenter/PowerCenter;)V

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lcom/miui/powercenter/PowerCenter;->f0(Lcom/miui/powercenter/PowerCenter;)V

    :goto_0
    return-void
.end method
