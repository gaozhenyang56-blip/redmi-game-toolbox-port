.class public Lcom/miui/powercenter/batteryhistory/d0;
.super Lcom/miui/powercenter/batteryhistory/z$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/d0$r;,
        Lcom/miui/powercenter/batteryhistory/d0$p;,
        Lcom/miui/powercenter/batteryhistory/d0$q;
    }
.end annotation


# static fields
.field private static O:Z


# instance fields
.field private A:Z

.field public B:Z

.field public C:Z

.field private D:Ljava/lang/String;

.field private E:Landroid/animation/ValueAnimator;

.field private F:Z

.field private G:Landroid/os/Handler;

.field private H:Lmiuix/miuixbasewidget/widget/MessageView;

.field private I:Landroid/database/ContentObserver;

.field private J:Z

.field private K:Z

.field private L:I

.field public M:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private N:Landroid/view/View$OnClickListener;

.field private a:Lcom/miui/powercenter/PowerMainActivity;

.field private b:Lcom/miui/powercenter/PowerSaveMainFragment;

.field private c:Lcom/miui/powercenter/mainui/MainBatteryView;

.field private d:Lcom/miui/powercenter/batteryhistory/d0$q;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private h:Landroid/view/View;

.field private i:Lcom/miui/common/ui/HoverSlidingSwitch;

.field private j:Lcom/miui/common/ui/HoverSlidingSwitch;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/RadioButton;

.field private w:Landroid/widget/RadioButton;

.field private x:Landroid/widget/RadioButton;

.field private y:Landroid/view/ViewStub;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/miui/powercenter/PowerMainActivity;Lcom/miui/powercenter/PowerSaveMainFragment;)V
    .locals 6

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e03ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/z$d;-><init>(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->B:Z

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->C:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->D:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->F:Z

    new-instance p1, Lcom/miui/powercenter/batteryhistory/d0$k;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/batteryhistory/d0$k;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->M:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance p1, Lcom/miui/powercenter/batteryhistory/d0$l;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/batteryhistory/d0$l;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->N:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0886

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p2}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lme/e0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0717f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_0
    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/d0;->b:Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-static {}, Lce/g;->q()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->C:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0887

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/MessageView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    invoke-static {}, Lsd/b;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->J:Z

    invoke-static {}, Lme/b;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lme/b;->L()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->K:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->Y(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b08e1

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->k:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0b29

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->l:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b088b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/mainui/MainBatteryView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->c:Lcom/miui/powercenter/mainui/MainBatteryView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0825

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->u:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b08e2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->n:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b08e0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->o:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b09ee

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->m:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b040a

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->z:Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0157

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->e:Landroid/widget/TextView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0154

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->f:Landroid/widget/ImageView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0155

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0156

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->g:Lmiuix/androidbasewidget/widget/ProgressBar;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0a9a

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/common/ui/HoverSlidingSwitch;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->i:Lcom/miui/common/ui/HoverSlidingSwitch;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b09b5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->s:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->i:Lcom/miui/common/ui/HoverSlidingSwitch;

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/d0;->M:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->i:Lcom/miui/common/ui/HoverSlidingSwitch;

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {p3}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b0b34

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->C:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->c0()V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->c:Lcom/miui/powercenter/mainui/MainBatteryView;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->setPerformanceModeStatus(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->c:Lcom/miui/powercenter/mainui/MainBatteryView;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->setSaveModeStatus(Z)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$g;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/d0$g;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lme/e0;->g()Z

    move-result p1

    const v0, 0x7f0b0b28

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0717fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object p1, p2, Lcom/miui/powercenter/PowerMainActivity;->e:Landroid/content/res/Configuration;

    invoke-static {p1}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b02d0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071754

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071755

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071752

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-static {p2}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0717e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v3, v2, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0717ff

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0717fe

    :goto_1
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p2, 0x7f0b0a9b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/common/ui/HoverSlidingSwitch;

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->j:Lcom/miui/common/ui/HoverSlidingSwitch;

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0;->M:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {p1}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/d0;->g0()V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->W()V

    return-void
.end method

.method static synthetic A(Lcom/miui/powercenter/batteryhistory/d0;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/d0;->L(ZZ)V

    return-void
.end method

.method static synthetic B(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->x:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic C(Lcom/miui/powercenter/batteryhistory/d0;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->k0(I)V

    return-void
.end method

.method static synthetic D(Lcom/miui/powercenter/batteryhistory/d0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->A:Z

    return p0
.end method

.method static synthetic E(Lcom/miui/powercenter/batteryhistory/d0;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->M(Z)V

    return-void
.end method

.method static synthetic F(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->t:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic G(Lcom/miui/powercenter/batteryhistory/d0;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->O(Z)V

    return-void
.end method

.method static synthetic H(Lcom/miui/powercenter/batteryhistory/d0;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->j0(I)V

    return-void
.end method

.method static synthetic I(Lcom/miui/powercenter/batteryhistory/d0;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->l0(I)V

    return-void
.end method

.method static synthetic J(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/mainui/MainBatteryView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->c:Lcom/miui/powercenter/mainui/MainBatteryView;

    return-object p0
.end method

.method static synthetic K()Z
    .locals 1

    sget-boolean v0, Lcom/miui/powercenter/batteryhistory/d0;->O:Z

    return v0
.end method

.method private L(ZZ)V
    .locals 1

    const-string v0, "diting"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/s;->c(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/powercenter/batteryhistory/d0$e;-><init>(Lcom/miui/powercenter/batteryhistory/d0;ZZ)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private M(Z)V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$f;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/batteryhistory/d0$f;-><init>(Lcom/miui/powercenter/batteryhistory/d0;Z)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private N(Z)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-static {}, Lme/e0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v1, 0x7f0e03e4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b06fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v2}, Lme/w;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const v4, 0x7f0b0882

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v2}, Lme/w;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0d26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->U()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12125e

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/powercenter/batteryhistory/d0$c;

    invoke-direct {v2, p0, p1}, Lcom/miui/powercenter/batteryhistory/d0$c;-><init>(Lcom/miui/powercenter/batteryhistory/d0;Z)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/miui/powercenter/batteryhistory/d0$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/batteryhistory/d0$b;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/d0$a;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->O(Z)V

    invoke-static {p1}, Lhd/a;->h1(Z)V

    :goto_1
    invoke-static {}, Lhd/a;->V()V

    return-void
.end method

.method private O(Z)V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$d;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/batteryhistory/d0$d;-><init>(Lcom/miui/powercenter/batteryhistory/d0;Z)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lhd/a;->E(I)V

    return-void
.end method

.method private P()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->J:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lgd/c;->W0()Z

    move-result v0

    invoke-static {}, Lgd/c;->U0()Z

    move-result v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_fast_charge_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {}, Lgd/c;->C0()I

    move-result v5

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v4, 0x7f1210c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/miuixbasewidget/widget/MessageView;->setMessage(Ljava/lang/CharSequence;)V

    iput v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->L:I

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->L:I

    :cond_3
    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->K:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lme/b;->o()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v2, 0x7f120ffb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/MessageView;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->L:I

    invoke-static {}, Lhd/a;->D0()V

    :cond_4
    return-void
.end method

.method private Q(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;
    .locals 5

    :try_start_0
    const-class v0, Landroid/text/style/TypefaceSpan;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Typeface;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/style/TypefaceSpan;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static R(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    sget-boolean v1, Lcom/miui/powercenter/batteryhistory/d0;->O:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1000ef

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1000f0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f1212aa

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%d"

    invoke-static {v1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f1212a8

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static S(Landroid/content/Context;III)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->R(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private T()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "performanceMode"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "powerSave"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/w;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "balancedMode"

    return-object v0

    :cond_2
    invoke-static {}, Lce/g;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private U()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result v0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lme/b0;->i(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f100069

    invoke-virtual {v5, v7, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lme/b0;->i(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f10006a

    invoke-virtual {v1, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const v0, 0x7f120c99

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/miui/powercenter/batteryhistory/d0;->O:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v2, 0x7f121231

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v2, 0x7f121230

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static V(Landroid/content/Context;II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lpg/f;->a(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->R(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private W()V
    .locals 4

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/d0$q;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->d:Lcom/miui/powercenter/batteryhistory/d0$q;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.ACTION_QUICK_CHARGE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.ACTION_WIRELESS_TX_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->C:Z

    if-eqz v1, :cond_0

    const-string v1, "miui.intent.action.HIDE_MODE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->d:Lcom/miui/powercenter/batteryhistory/d0$q;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->d:Lcom/miui/powercenter/batteryhistory/d0$q;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/d0$q;->e(Z)V

    invoke-static {}, Lme/w;->c0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/powercenter/batteryhistory/d0;->O:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    if-gt v0, v3, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v1}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/d0;->j0(I)V

    :cond_1
    return-void
.end method

.method private X()V
    .locals 4

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$h;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/d0$h;-><init>(Lcom/miui/powercenter/batteryhistory/d0;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->I:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "key_fast_charge_enabled_default"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->I:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private Y(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/miuixbasewidget/widget/MessageView;->setClosable(Z)V

    const v0, 0x7f0b025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/a0;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/a0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/b0;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/b0;-><init>()V

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/MessageView;->setOnMessageViewCloseListener(Lmiuix/miuixbasewidget/widget/MessageView$b;)V

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->J:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->K:Z

    if-eqz p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->P()V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/c0;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/c0;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->J:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->X()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic Z(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static synthetic a0()V
    .locals 0

    return-void
.end method

.method private synthetic b0(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->L:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const-class v1, Lcom/miui/powercenter/charge/ChargeFeatureActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "fast_charge_activity_enterway"

    const-string v1, "security_center"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {p1}, Lme/b;->J(Landroid/content/Context;)V

    invoke-static {}, Lhd/a;->C0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private c0()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0db1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->y:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b094a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->v:Landroid/widget/RadioButton;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0942

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->w:Landroid/widget/RadioButton;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b094d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->x:Landroid/widget/RadioButton;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0cb2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->p:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0c35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->q:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0cc9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->r:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b08e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->t:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/miui/powercenter/batteryhistory/d0$r;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/batteryhistory/d0$r;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->s:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b06fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->T()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/d0;->n0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/powercenter/batteryhistory/d0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->b0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/powercenter/batteryhistory/d0;->Z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/d0;->a0()V

    return-void
.end method

.method private f0()V
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->v:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v2, 0x7f0e0441

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b08df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v5, 0x7f1212a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v7, 0x78

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->A:Z

    const-string v4, "diting"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v6}, Lme/w;->A(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v5, :cond_0

    iput-boolean v5, p0, Lcom/miui/powercenter/batteryhistory/d0;->A:Z

    move v6, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v4}, Lme/s;->b(Landroid/content/Context;)I

    move-result v4

    move v6, v1

    :goto_0
    const/16 v7, 0x3c

    if-ne v4, v7, :cond_1

    move v1, v5

    :cond_1
    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "is_smart_fps_before"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "state_of_screen_fps_before"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    new-instance v5, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lpg/i;->H()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f120ffd

    goto :goto_1

    :cond_3
    const v6, 0x7f121094

    :goto_1
    invoke-virtual {v5, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f121093

    invoke-virtual {v5, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    if-eqz v1, :cond_4

    move-object v3, v0

    :cond_4
    invoke-virtual {v5, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v3, Lcom/miui/powercenter/batteryhistory/d0$o;

    invoke-direct {v3, p0, v2, v4}, Lcom/miui/powercenter/batteryhistory/d0$o;-><init>(Lcom/miui/powercenter/batteryhistory/d0;Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/miui/powercenter/batteryhistory/d0$n;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/batteryhistory/d0$n;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/batteryhistory/d0$m;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/batteryhistory/d0$m;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    invoke-static {}, Lhd/a;->V0()V

    return-void
.end method

.method static synthetic g(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerSaveMainFragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->b:Lcom/miui/powercenter/PowerSaveMainFragment;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->P()V

    return-void
.end method

.method static synthetic i(Lcom/miui/powercenter/batteryhistory/d0;)Lmiuix/miuixbasewidget/widget/MessageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->H:Lmiuix/miuixbasewidget/widget/MessageView;

    return-object p0
.end method

.method private i0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0716ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07171b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    return-object p0
.end method

.method private j0(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->G:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/batteryhistory/d0$i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/miui/powercenter/batteryhistory/d0$i;-><init>(Lcom/miui/powercenter/batteryhistory/d0;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->G:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0x3e8

    if-le p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->F:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->G:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->F:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->G:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->F:Z

    :cond_2
    return-void
.end method

.method static synthetic k(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method private k0(I)V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lme/w;->L(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/powercenter/batteryhistory/d0;->O:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v1, 0x7f12121c

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v1, 0x7f12121a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/d0;->m0()V

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, v2}, Lcom/miui/powercenter/batteryhistory/d0;->S(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v2, v0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->V(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic l(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->G:Landroid/os/Handler;

    return-object p0
.end method

.method private l0(I)V
    .locals 3

    sget-boolean v0, Lcom/miui/powercenter/batteryhistory/d0;->O:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v1, 0x7f12121c

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v1, 0x7f12121a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/d0;->m0()V

    sget-boolean v0, Lcom/miui/powercenter/batteryhistory/d0;->O:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->j0(I)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->F:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->G:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->F:Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic m(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic n(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method private n0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->D:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->D:Ljava/lang/String;

    const-string v0, "performanceMode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const-string v0, "powerSave"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    move v1, v2

    goto :goto_0

    :cond_2
    move p1, v2

    move v2, v1

    move v1, p1

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->v:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->w:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->x:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method static synthetic o(Lcom/miui/powercenter/batteryhistory/d0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->i0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Landroid/content/Context;III)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/powercenter/batteryhistory/d0;->S(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic r(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic s(Lcom/miui/powercenter/batteryhistory/d0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->F:Z

    return p1
.end method

.method static synthetic t(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/common/ui/HoverSlidingSwitch;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->i:Lcom/miui/common/ui/HoverSlidingSwitch;

    return-object p0
.end method

.method static synthetic u(Lcom/miui/powercenter/batteryhistory/d0;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->T()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcom/miui/powercenter/batteryhistory/d0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->n0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w(Lcom/miui/powercenter/batteryhistory/d0;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->N(Z)V

    return-void
.end method

.method static synthetic x(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/common/ui/HoverSlidingSwitch;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->j:Lcom/miui/common/ui/HoverSlidingSwitch;

    return-object p0
.end method

.method static synthetic y(Lcom/miui/powercenter/batteryhistory/d0;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->f0()V

    return-void
.end method

.method static synthetic z(Lcom/miui/powercenter/batteryhistory/d0;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d0;->w:Landroid/widget/RadioButton;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/miui/powercenter/batteryhistory/z$d;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/miui/powercenter/batteryhistory/z$d;->c()V

    return-void
.end method

.method public d0()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/d0;->g0()V

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->C:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/d0;->T()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/d0;->n0(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->j:Lcom/miui/common/ui/HoverSlidingSwitch;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->j:Lcom/miui/common/ui/HoverSlidingSwitch;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v1}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->j:Lcom/miui/common/ui/HoverSlidingSwitch;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->M:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method public e0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->d:Lcom/miui/powercenter/batteryhistory/d0$q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->d:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->c:Lcom/miui/powercenter/mainui/MainBatteryView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainBatteryView;->r()V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->G:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->G:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->F:Z

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->I:Landroid/database/ContentObserver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->I:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    return-void
.end method

.method public g0()V
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->b:Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->b:Lcom/miui/powercenter/PowerSaveMainFragment;

    iget-boolean v0, v0, Lcom/miui/powercenter/PowerSaveMainFragment;->f:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v4, 0x7f12153d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->g:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080de7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060bed

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v3

    invoke-virtual {v3}, Lfe/l;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/d0;->e:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000f9

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v5, v6, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->g:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080de6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060c22

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->f:Landroid/widget/ImageView;

    const v1, 0x7f080894

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->e:Landroid/widget/TextView;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v4, 0x7f12122b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000fd

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->g:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->f:Landroid/widget/ImageView;

    const v1, 0x7f080893

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080de5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060c20

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public h0(J)V
    .locals 13

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->b:Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-boolean v0, Lcom/miui/powercenter/batteryhistory/d0;->O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->d:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0$q;->a(Lcom/miui/powercenter/batteryhistory/d0$q;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->d:Lcom/miui/powercenter/batteryhistory/d0$q;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0$q;->c(Lcom/miui/powercenter/batteryhistory/d0$q;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12037e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0;->i0(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v0}, Lme/c0;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071df9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071e2a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-wide/32 v3, 0x36ee80

    div-long v5, p1, v3

    long-to-int v5, v5

    int-to-long v6, v5

    mul-long/2addr v6, v3

    sub-long/2addr p1, v6

    const-wide/32 v3, 0xea60

    div-long/2addr p1, v3

    const-wide/16 v3, 0x3c

    rem-long/2addr p1, v3

    long-to-int p1, p1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1000f5

    invoke-virtual {p2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000f6

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object p2, v6, v5

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v8

    const/4 p1, 0x3

    aput-object v3, v6, p1

    const-string p1, "%d %s %d %s"

    invoke-static {v4, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v8, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v9, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v9, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v10, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v10, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    const/16 v12, 0x11

    invoke-virtual {v4, v6, v2, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v11, 0x12

    invoke-virtual {v4, v8, v2, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v1, v2, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v2, v5

    invoke-virtual {v4, v9, v1, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v10, v1, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/d0;->Q(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/d0;->Q(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v1, v7, v2, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    add-int/2addr v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, v0, v1, p1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0;->o:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    if-eqz p2, :cond_3

    iput v7, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d0;->o:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public m0()V
    .locals 7

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->b:Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/o;->a(Landroid/content/Context;)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/d0;->B:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/4 v2, 0x0

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/miui/powercenter/batteryhistory/d0;->h0(J)V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_1

    new-array v4, v6, [F

    aput v5, v4, v2

    long-to-float v0, v0

    aput v0, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/powercenter/batteryhistory/d0$j;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/batteryhistory/d0$j;-><init>(Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    new-array v6, v6, [F

    aput v5, v6, v2

    long-to-float v0, v0

    aput v0, v6, v3

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/d0;->h0(J)V

    :goto_1
    iput-boolean v3, p0, Lcom/miui/powercenter/batteryhistory/d0;->B:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public o0()V
    .locals 3

    :try_start_0
    const-string v0, "#Intent;action=miui.intent.action.POWER_SCAN;end"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_homepage_way"

    const-string v2, "00002"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "track_gamebooster_enter_way"

    const-string v2, "00001"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    invoke-static {v1, v0}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0;->a:Lcom/miui/powercenter/PowerMainActivity;

    const v1, 0x7f120210

    invoke-static {v0, v1}, Lx4/y1;->j(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
