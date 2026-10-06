.class public Lad/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/phonemanage/PhoneManagerFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lad/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lad/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/phonemanage/PhoneManagerFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_4

    const/16 v2, 0x259

    if-eq v1, v2, :cond_3

    const/16 v2, 0x192

    if-eq v1, v2, :cond_2

    const/16 v2, 0x193

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->j1()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->r1()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->R0()V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->l1(Lcom/miui/common/card/GridFunctionData;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0, p1}, Lcom/miui/phonemanage/PhoneManagerFragment;->P0(Lcom/miui/common/card/GridFunctionData;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->Q0()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->X0()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
