.class public Lcom/miui/gamebooster/ui/BoosterFragment$g0;
.super Lw4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g0"
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


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 1

    invoke-direct {p0}, Lw4/e;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$g0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-super {p0, p1}, Lw4/e;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->K1()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->r2()V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->v1(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->I0(Lcom/miui/gamebooster/ui/BoosterFragment;Z)Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->J0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->v1(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121ca6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->K0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, La8/k0;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->F0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->F0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->F0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_2
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->H0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r0()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->z1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->z1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v3, 0x186a0

    div-int/2addr v0, v3

    invoke-static {v0}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, La8/k0;->k(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void

    :cond_3
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->F0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->g2()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
