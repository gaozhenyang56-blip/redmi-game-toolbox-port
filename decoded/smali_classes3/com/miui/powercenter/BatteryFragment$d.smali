.class Lcom/miui/powercenter/BatteryFragment$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/BatteryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/BatteryFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/powercenter/BatteryFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/BatteryFragment$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/BatteryFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->j0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->G0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/view/BatteryTipView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->h0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/view/BatteryHealthNewView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->e0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->e0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;

    move-result-object p1

    new-instance v1, Lcom/miui/powercenter/BatteryFragment$d$c;

    invoke-direct {v1, p0, v0}, Lcom/miui/powercenter/BatteryFragment$d$c;-><init>(Lcom/miui/powercenter/BatteryFragment$d;Lcom/miui/powercenter/BatteryFragment;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->E0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->E0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v1, Lcom/miui/powercenter/BatteryFragment$d$b;

    invoke-direct {v1, p0, v0}, Lcom/miui/powercenter/BatteryFragment$d$b;-><init>(Lcom/miui/powercenter/BatteryFragment$d;Lcom/miui/powercenter/BatteryFragment;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->j0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->G0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/view/BatteryTipView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->h0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/view/BatteryHealthNewView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/miui/powercenter/BatteryFragment;->q0()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/powercenter/BatteryFragment;->r0(Lcom/miui/powercenter/BatteryFragment;I)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->A0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->o0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/ViewSwitcher$ViewFactory;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->w0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->w0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v5, "bo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lx4/y;->s()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lx4/y;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lx4/g;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->w0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->w0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-virtual {v0}, Lcom/miui/powercenter/BatteryFragment;->M0()V

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_7

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->C0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->C0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/BatteryFragment$d$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/BatteryFragment$d$a;-><init>(Lcom/miui/powercenter/BatteryFragment$d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->C0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/miui/powercenter/BatteryFragment;->p0(Lcom/miui/powercenter/BatteryFragment;Loe/a;)Loe/a;

    :cond_8
    :goto_1
    return-void
.end method
