.class Lcom/miui/autotask/activity/BluetoothSelectActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/activity/BluetoothSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/activity/BluetoothSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/autotask/activity/BluetoothSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    iget-boolean v0, p1, Lcom/miui/autotask/activity/BaseSelectActivity;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iput-boolean v1, p1, Lcom/miui/autotask/activity/BaseSelectActivity;->i:Z

    iget-object v0, p1, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    new-instance v2, Lcom/miui/autotask/bean/l;

    const v3, 0x7f12031d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/miui/autotask/bean/l;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    iget-object v0, p1, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    iget-object p1, p1, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    :cond_3
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-static {p2, p1, v1}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->A0(Lcom/miui/autotask/activity/BluetoothSelectActivity;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->C0(Lcom/miui/autotask/activity/BluetoothSelectActivity;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-virtual {p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->o0()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-virtual {p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->v0()V

    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->B0(Lcom/miui/autotask/activity/BluetoothSelectActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-virtual {p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->p0()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/miui/autotask/activity/BluetoothSelectActivity$a;->a:Lcom/miui/autotask/activity/BluetoothSelectActivity;

    invoke-virtual {p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->m0()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
