.class Lcom/miui/powercenter/BatteryFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/BatteryFragment;->I0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/miui/powercenter/BatteryFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/BatteryFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iput-object p2, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v2, 0x7f0b0daf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->c0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->b0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v2, 0x7f0b0288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->g0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v2, 0x7f0b0287

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->t0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v2, 0x7f0b0286

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->v0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v2, 0x7f0b02c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->x0(Lcom/miui/powercenter/BatteryFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->w0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v2, 0x7f0b028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->z0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v2, 0x7f0b0224

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextSwitcher;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->B0(Lcom/miui/powercenter/BatteryFragment;Landroid/widget/TextSwitcher;)Landroid/widget/TextSwitcher;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v3, 0x7f0b09ba

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->D0(Lcom/miui/powercenter/BatteryFragment;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v3, 0x7f0b0294

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->F0(Lcom/miui/powercenter/BatteryFragment;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v3, 0x7f0b015b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/view/BatteryTipView;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->H0(Lcom/miui/powercenter/BatteryFragment;Lcom/miui/powercenter/view/BatteryTipView;)Lcom/miui/powercenter/view/BatteryTipView;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v3, 0x7f0b0d43

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->f0(Lcom/miui/powercenter/BatteryFragment;Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;)Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v3, 0x7f0b014e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/view/BatteryHealthNewView;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->i0(Lcom/miui/powercenter/BatteryFragment;Lcom/miui/powercenter/view/BatteryHealthNewView;)Lcom/miui/powercenter/view/BatteryHealthNewView;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->h0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/view/BatteryHealthNewView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lx4/g;->f(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/BatteryHealthNewView;->setIsTabletSpitModel(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v3, 0x7f0b014c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/miui/powercenter/BatteryFragment;->k0(Lcom/miui/powercenter/BatteryFragment;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v1, 0x7f0b0b79

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v3, 0x7f0b0222

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v4, 0x7f0b02c7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v5, 0x7f0b0559

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v5}, Lcom/miui/powercenter/BatteryFragment;->s0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5}, Lx4/h0;->d(Landroid/view/View;)V

    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v5}, Lcom/miui/powercenter/BatteryFragment;->d0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5}, Lx4/h0;->d(Landroid/view/View;)V

    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v5}, Lcom/miui/powercenter/BatteryFragment;->u0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5}, Lx4/h0;->d(Landroid/view/View;)V

    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v5}, Lcom/miui/powercenter/BatteryFragment;->C0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-static {v5}, Lx4/h0;->d(Landroid/view/View;)V

    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v5}, Lcom/miui/powercenter/BatteryFragment;->E0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-static {v5}, Lx4/h0;->d(Landroid/view/View;)V

    invoke-static {}, Lsd/b;->e()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v5}, Lcom/miui/powercenter/BatteryFragment;->y0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v5}, Lcom/miui/powercenter/BatteryFragment;->y0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    new-instance v7, Lcom/miui/powercenter/BatteryFragment$a$a;

    invoke-direct {v7, p0}, Lcom/miui/powercenter/BatteryFragment$a$a;-><init>(Lcom/miui/powercenter/BatteryFragment$a;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lme/w;->b0(Landroid/content/Context;)Z

    move-result v5

    const v7, 0x7f0b0158

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v3}, Lcom/miui/powercenter/BatteryFragment;->j0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v3}, Lcom/miui/powercenter/BatteryFragment;->j0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060bc3

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v1, 0x7f0b02c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060b9d

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v1, 0x7f0b0223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->d0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/BatteryFragment$a$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/BatteryFragment$a$b;-><init>(Lcom/miui/powercenter/BatteryFragment$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->s0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/BatteryFragment$a$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/BatteryFragment$a$c;-><init>(Lcom/miui/powercenter/BatteryFragment$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->u0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/BatteryFragment$a$d;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/BatteryFragment$a$d;-><init>(Lcom/miui/powercenter/BatteryFragment$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->E0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->e0(Lcom/miui/powercenter/BatteryFragment;)Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryTipView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->d0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lme/e0;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->u0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lme/e0;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v6

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->s0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lme/e0;->k()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    const v3, 0x7f0b0876

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0716b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v4}, Lcom/miui/powercenter/BatteryFragment;->d0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v4}, Lcom/miui/powercenter/BatteryFragment;->u0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v4}, Lcom/miui/powercenter/BatteryFragment;->s0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->E0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->C0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->C0(Lcom/miui/powercenter/BatteryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/miui/powercenter/BatteryFragment;->l0()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-static {}, Lme/e0;->g()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/miui/powercenter/BatteryFragment;->l0()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0717b2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0717b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/miui/powercenter/BatteryFragment;->l0()Z

    move-result v5

    if-eqz v5, :cond_a

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_a
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0717ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v1}, Lcom/miui/powercenter/BatteryFragment;->d0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v3}, Lcom/miui/powercenter/BatteryFragment;->d0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v1}, Lcom/miui/powercenter/BatteryFragment;->u0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v3}, Lcom/miui/powercenter/BatteryFragment;->u0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v1}, Lcom/miui/powercenter/BatteryFragment;->s0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v3}, Lcom/miui/powercenter/BatteryFragment;->s0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v1}, Lcom/miui/powercenter/BatteryFragment;->E0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v3}, Lcom/miui/powercenter/BatteryFragment;->E0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v1}, Lcom/miui/powercenter/BatteryFragment;->y0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->y0(Lcom/miui/powercenter/BatteryFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->m0(Lcom/miui/powercenter/BatteryFragment;)I

    move-result v0

    const/4 v1, 0x2

    const v3, 0x7f0717a9

    const v4, 0x7f0b0332

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0717ab

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v5, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071815

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-static {v0}, Lcom/miui/powercenter/BatteryFragment;->m0(Lcom/miui/powercenter/BatteryFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/miui/powercenter/BatteryFragment$a;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0717aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :cond_f
    :goto_4
    return-void
.end method
