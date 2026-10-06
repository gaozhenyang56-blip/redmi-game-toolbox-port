.class public Lcom/miui/antivirus/ui/WifiResultView;
.super Lcom/miui/antivirus/ui/e;
.source "SourceFile"


# instance fields
.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/ui/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/antivirus/ui/e;->b:Lw4/e;

    const/16 v0, 0x40f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lw4/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/miui/antivirus/ui/e;->onFinishInflate()V

    const v0, 0x7f0b0dc4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0dc7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0dc9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0dc6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->g:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0dc3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b01e5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b01bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const v0, 0x7f0b0dc5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121c86

    invoke-static {v1, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0dc8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121c88

    invoke-static {v1, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0dca

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121c89

    invoke-static {v1, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    new-instance p1, Lcom/miui/antivirus/model/a;

    invoke-direct {p1}, Lcom/miui/antivirus/model/a;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/model/a;->f(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    const v1, 0x7f121734

    invoke-static {v0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/model/a;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/e;->c:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/miui/antivirus/ui/e;->c(Lcom/miui/antivirus/model/a;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setWifiStatusInfo(Lcom/miui/antivirus/model/j;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/antivirus/model/j;->Y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antivirus/model/j;->a0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antivirus/model/j;->b0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/antivirus/model/j;->Z()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/antivirus/model/j;->X()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/ui/WifiResultView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/j;->W()I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
