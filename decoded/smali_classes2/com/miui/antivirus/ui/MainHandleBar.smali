.class public Lcom/miui/antivirus/ui/MainHandleBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/ui/MainHandleBar$b;,
        Lcom/miui/antivirus/ui/MainHandleBar$c;,
        Lcom/miui/antivirus/ui/MainHandleBar$d;
    }
.end annotation


# instance fields
.field private a:Lw4/e;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private h:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private i:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private j:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private k:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/content/Context;

.field private o:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/ui/MainHandleBar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->n:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antivirus/ui/MainHandleBar;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->m:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/miui/antivirus/ui/MainHandleBar$d;Lcom/miui/antivirus/ui/MainHandleBar$c;)V
    .locals 5

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f080f12

    const v2, 0x7f080f0c

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lw2/t;->A()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->j:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->f:Landroid/widget/ImageView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->b:Lcom/miui/antivirus/ui/MainHandleBar$c;

    if-ne v0, p2, :cond_6

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->i:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->e:Landroid/widget/ImageView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->b:Lcom/miui/antivirus/ui/MainHandleBar$c;

    if-ne v0, p2, :cond_6

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->k:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->d:Landroid/widget/ImageView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->b:Lcom/miui/antivirus/ui/MainHandleBar$c;

    if-ne v0, p2, :cond_6

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->h:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->c:Landroid/widget/ImageView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->b:Lcom/miui/antivirus/ui/MainHandleBar$c;

    if-ne v0, p2, :cond_6

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->g:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->b:Landroid/widget/ImageView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->c:Lcom/miui/antivirus/ui/MainHandleBar$c;

    if-ne v0, p2, :cond_5

    const v1, 0x7f080f14

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->b:Lcom/miui/antivirus/ui/MainHandleBar$c;

    if-ne v0, p2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01a2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->a:Lw4/e;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->o:Landroid/content/res/Configuration;

    const v0, 0x7f0b04b8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->b:Landroid/widget/ImageView;

    const v1, 0x7f0b04ba

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->c:Landroid/widget/ImageView;

    const v1, 0x7f0b04bc

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->d:Landroid/widget/ImageView;

    const v1, 0x7f0b04c5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->e:Landroid/widget/ImageView;

    const v1, 0x7f0b04be

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/antivirus/ui/MainHandleBar;->f:Landroid/widget/ImageView;

    const v2, 0x7f0b04b7

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v3, p0, Lcom/miui/antivirus/ui/MainHandleBar;->g:Lmiuix/androidbasewidget/widget/ProgressBar;

    const v3, 0x7f0b04b9

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v3, p0, Lcom/miui/antivirus/ui/MainHandleBar;->h:Lmiuix/androidbasewidget/widget/ProgressBar;

    const v3, 0x7f0b04c4

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v3, p0, Lcom/miui/antivirus/ui/MainHandleBar;->i:Lmiuix/androidbasewidget/widget/ProgressBar;

    const v3, 0x7f0b04bb

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v3, p0, Lcom/miui/antivirus/ui/MainHandleBar;->k:Lmiuix/androidbasewidget/widget/ProgressBar;

    const v3, 0x7f0b04bd

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v4, p0, Lcom/miui/antivirus/ui/MainHandleBar;->j:Lmiuix/androidbasewidget/widget/ProgressBar;

    const v4, 0x7f0b01a2

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/miui/antivirus/ui/MainHandleBar;->l:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b0b2a

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/antivirus/ui/MainHandleBar;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/antivirus/ui/MainHandleBar;->n:Landroid/content/Context;

    new-instance v4, Lcom/miui/antivirus/ui/MainHandleBar$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/antivirus/ui/MainHandleBar$b;-><init>(Lcom/miui/antivirus/ui/MainHandleBar;Lcom/miui/antivirus/ui/MainHandleBar$a;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v5, 0x7f0b04bf

    const/16 v6, 0x8

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f120c0a

    invoke-static {v2, v4}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lx4/t;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070147

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    invoke-static {}, Lw2/t;->A()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b04c1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setActionButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEventHandler(Lw4/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainHandleBar;->a:Lw4/e;

    return-void
.end method

.method public setHandleActionButtonEnabled(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->l:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainHandleBar;->l:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
