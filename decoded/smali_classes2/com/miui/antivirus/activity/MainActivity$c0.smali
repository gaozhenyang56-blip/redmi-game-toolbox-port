.class Lcom/miui/antivirus/activity/MainActivity$c0;
.super Lw4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c0"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Lw4/e;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$c0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$c0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_e

    const/16 v2, 0x3f4

    if-eq v1, v2, :cond_d

    const/16 v2, 0x403

    if-eq v1, v2, :cond_c

    const/16 v2, 0x406

    if-eq v1, v2, :cond_b

    const/16 v2, 0x40d

    if-eq v1, v2, :cond_a

    const/16 v2, 0x40f

    if-eq v1, v2, :cond_9

    const/16 v2, 0x3f6

    if-eq v1, v2, :cond_8

    const/16 v2, 0x3f7

    if-eq v1, v2, :cond_7

    const/16 v2, 0x400

    if-eq v1, v2, :cond_6

    const/16 v2, 0x401

    if-eq v1, v2, :cond_5

    const/16 v2, 0x415

    if-eq v1, v2, :cond_4

    const/16 v2, 0x416

    if-eq v1, v2, :cond_3

    const/16 v2, 0x426

    if-eq v1, v2, :cond_2

    const/16 v2, 0x427

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/antivirus/model/a;

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->z0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/a;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->C0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/antivirus/model/a;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->y1(Lcom/miui/antivirus/model/a;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/antivirus/model/a;

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->B0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/a;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lcom/miui/antivirus/activity/MainActivity$r0;->c:Lcom/miui/antivirus/activity/MainActivity$r0;

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->E0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$r0;)Lcom/miui/antivirus/activity/MainActivity$r0;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->F0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lr2/a;

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->u0(Lcom/miui/antivirus/activity/MainActivity;Lr2/a;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/antivirus/model/a$a;

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->t0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/a$a;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->s0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/guardprovider/aidl/UpdateInfo;

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->O0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/guardprovider/aidl/UpdateInfo;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->K0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->w0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->v0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->J0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antivirus/ui/MainActivityView;->j()V

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/miui/antivirus/activity/MainActivity;->b:Z

    invoke-virtual {v0}, Lcom/miui/antivirus/activity/MainActivity;->R1()V

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->n0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->H0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_8
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->e1(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->x0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_a
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->L0(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_b
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->G0(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->I0(Lcom/miui/antivirus/activity/MainActivity;F)V

    goto :goto_0

    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/antivirus/model/d;

    invoke-static {v0, p1}, Lcom/miui/antivirus/activity/MainActivity;->y0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/d;)V

    goto :goto_0

    :cond_e
    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->g0(Lcom/miui/antivirus/activity/MainActivity;)V

    :cond_f
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x408
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x419
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
